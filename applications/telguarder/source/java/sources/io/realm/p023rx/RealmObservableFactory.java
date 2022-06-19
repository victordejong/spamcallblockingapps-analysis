package io.realm.p023rx;

import android.os.Looper;
import io.reactivex.BackpressureStrategy;
import io.reactivex.Flowable;
import io.reactivex.FlowableEmitter;
import io.reactivex.FlowableOnSubscribe;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.Scheduler;
import io.reactivex.Single;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposables;
import io.realm.DynamicRealm;
import io.realm.DynamicRealmObject;
import io.realm.ObjectChangeSet;
import io.realm.OrderedCollectionChangeSet;
import io.realm.OrderedRealmCollectionChangeListener;
import io.realm.Realm;
import io.realm.RealmChangeListener;
import io.realm.RealmConfiguration;
import io.realm.RealmList;
import io.realm.RealmModel;
import io.realm.RealmObject;
import io.realm.RealmObjectChangeListener;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import java.util.IdentityHashMap;
import java.util.Map;
/* renamed from: io.realm.rx.RealmObservableFactory */
/* loaded from: classes2-dex2jar.jar:io/realm/rx/RealmObservableFactory.class */
public class RealmObservableFactory implements RxObservableFactory {
    private static final BackpressureStrategy BACK_PRESSURE_STRATEGY = BackpressureStrategy.LATEST;
    private final boolean returnFrozenObjects;
    private ThreadLocal<StrongReferenceCounter<RealmResults>> resultsRefs = new ThreadLocal<StrongReferenceCounter<RealmResults>>() { // from class: io.realm.rx.RealmObservableFactory.1
        @Override // java.lang.ThreadLocal
        public StrongReferenceCounter<RealmResults> initialValue() {
            return new StrongReferenceCounter<>();
        }
    };
    private ThreadLocal<StrongReferenceCounter<RealmList>> listRefs = new ThreadLocal<StrongReferenceCounter<RealmList>>() { // from class: io.realm.rx.RealmObservableFactory.2
        @Override // java.lang.ThreadLocal
        public StrongReferenceCounter<RealmList> initialValue() {
            return new StrongReferenceCounter<>();
        }
    };
    private ThreadLocal<StrongReferenceCounter<RealmModel>> objectRefs = new ThreadLocal<StrongReferenceCounter<RealmModel>>() { // from class: io.realm.rx.RealmObservableFactory.3
        @Override // java.lang.ThreadLocal
        public StrongReferenceCounter<RealmModel> initialValue() {
            return new StrongReferenceCounter<>();
        }
    };

    /* renamed from: io.realm.rx.RealmObservableFactory$StrongReferenceCounter */
    /* loaded from: classes2-dex2jar.jar:io/realm/rx/RealmObservableFactory$StrongReferenceCounter.class */
    public static class StrongReferenceCounter<K> {
        private final Map<K, Integer> references;

        private StrongReferenceCounter() {
            this.references = new IdentityHashMap();
        }

        public void acquireReference(K k) {
            Integer num = this.references.get(k);
            if (num == null) {
                this.references.put(k, 1);
            } else {
                this.references.put(k, Integer.valueOf(num.intValue() + 1));
            }
        }

        public void releaseReference(K k) {
            Integer num = this.references.get(k);
            if (num == null) {
                throw new IllegalStateException("Object does not have any references: " + k);
            } else if (num.intValue() > 1) {
                this.references.put(k, Integer.valueOf(num.intValue() - 1));
            } else if (num.intValue() == 1) {
                this.references.remove(k);
            } else {
                throw new IllegalStateException("Invalid reference count: " + num);
            }
        }
    }

    public RealmObservableFactory(boolean z) {
        this.returnFrozenObjects = z;
    }

    private Scheduler getScheduler() {
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            return AndroidSchedulers.from(myLooper);
        }
        throw new IllegalStateException("No looper found");
    }

    @Override // io.realm.p023rx.RxObservableFactory
    public Observable<ObjectChange<DynamicRealmObject>> changesetsFrom(DynamicRealm dynamicRealm, final DynamicRealmObject dynamicRealmObject) {
        if (dynamicRealm.isFrozen()) {
            return Observable.just(new ObjectChange(dynamicRealmObject, null));
        }
        final RealmConfiguration configuration = dynamicRealm.getConfiguration();
        Scheduler scheduler = getScheduler();
        return Observable.create(new ObservableOnSubscribe<ObjectChange<DynamicRealmObject>>() { // from class: io.realm.rx.RealmObservableFactory.17
            public void subscribe(final ObservableEmitter<ObjectChange<DynamicRealmObject>> observableEmitter) {
                if (!RealmObject.isValid(dynamicRealmObject)) {
                    return;
                }
                final DynamicRealm dynamicRealm2 = DynamicRealm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).acquireReference(dynamicRealmObject);
                final RealmObjectChangeListener<DynamicRealmObject> realmObjectChangeListener = new RealmObjectChangeListener<DynamicRealmObject>() { // from class: io.realm.rx.RealmObservableFactory.17.1
                    public void onChange(DynamicRealmObject dynamicRealmObject2, ObjectChangeSet objectChangeSet) {
                        if (!observableEmitter.isDisposed()) {
                            ObservableEmitter observableEmitter2 = observableEmitter;
                            DynamicRealmObject dynamicRealmObject3 = dynamicRealmObject2;
                            if (RealmObservableFactory.this.returnFrozenObjects) {
                                dynamicRealmObject3 = (DynamicRealmObject) RealmObject.freeze(dynamicRealmObject2);
                            }
                            observableEmitter2.onNext(new ObjectChange(dynamicRealmObject3, objectChangeSet));
                        }
                    }
                };
                dynamicRealmObject.addChangeListener(realmObjectChangeListener);
                observableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.17.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!dynamicRealm2.isClosed()) {
                            RealmObject.removeChangeListener(dynamicRealmObject, realmObjectChangeListener);
                            dynamicRealm2.close();
                        }
                        ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).releaseReference(dynamicRealmObject);
                    }
                }));
                observableEmitter.onNext(new ObjectChange(RealmObservableFactory.this.returnFrozenObjects ? (DynamicRealmObject) RealmObject.freeze(dynamicRealmObject) : dynamicRealmObject, null));
            }
        }).subscribeOn(scheduler).unsubscribeOn(scheduler);
    }

    @Override // io.realm.p023rx.RxObservableFactory
    public <E> Observable<CollectionChange<RealmList<E>>> changesetsFrom(DynamicRealm dynamicRealm, final RealmList<E> realmList) {
        if (dynamicRealm.isFrozen()) {
            return Observable.just(new CollectionChange(realmList, null));
        }
        final RealmConfiguration configuration = dynamicRealm.getConfiguration();
        Scheduler scheduler = getScheduler();
        return Observable.create(new ObservableOnSubscribe<CollectionChange<RealmList<E>>>() { // from class: io.realm.rx.RealmObservableFactory.13
            public void subscribe(final ObservableEmitter<CollectionChange<RealmList<E>>> observableEmitter) {
                if (!realmList.isValid()) {
                    return;
                }
                final DynamicRealm dynamicRealm2 = DynamicRealm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).acquireReference(realmList);
                final OrderedRealmCollectionChangeListener<RealmList<E>> orderedRealmCollectionChangeListener = new OrderedRealmCollectionChangeListener<RealmList<E>>() { // from class: io.realm.rx.RealmObservableFactory.13.1
                    public void onChange(RealmList<E> realmList2, OrderedCollectionChangeSet orderedCollectionChangeSet) {
                        if (!realmList2.isValid()) {
                            observableEmitter.onComplete();
                        } else if (observableEmitter.isDisposed()) {
                        } else {
                            ObservableEmitter observableEmitter2 = observableEmitter;
                            RealmList realmList3 = realmList2;
                            if (RealmObservableFactory.this.returnFrozenObjects) {
                                realmList3 = realmList2.freeze();
                            }
                            observableEmitter2.onNext(new CollectionChange(realmList3, orderedCollectionChangeSet));
                        }
                    }
                };
                realmList.addChangeListener(orderedRealmCollectionChangeListener);
                observableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.13.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!dynamicRealm2.isClosed()) {
                            realmList.removeChangeListener(orderedRealmCollectionChangeListener);
                            dynamicRealm2.close();
                        }
                        ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).releaseReference(realmList);
                    }
                }));
                observableEmitter.onNext(new CollectionChange(RealmObservableFactory.this.returnFrozenObjects ? realmList.freeze() : realmList, null));
            }
        }).subscribeOn(scheduler).unsubscribeOn(scheduler);
    }

    @Override // io.realm.p023rx.RxObservableFactory
    public <E> Observable<CollectionChange<RealmResults<E>>> changesetsFrom(DynamicRealm dynamicRealm, final RealmResults<E> realmResults) {
        if (dynamicRealm.isFrozen()) {
            return Observable.just(new CollectionChange(realmResults, null));
        }
        final RealmConfiguration configuration = dynamicRealm.getConfiguration();
        Scheduler scheduler = getScheduler();
        return Observable.create(new ObservableOnSubscribe<CollectionChange<RealmResults<E>>>() { // from class: io.realm.rx.RealmObservableFactory.9
            public void subscribe(final ObservableEmitter<CollectionChange<RealmResults<E>>> observableEmitter) {
                if (!realmResults.isValid()) {
                    return;
                }
                final DynamicRealm dynamicRealm2 = DynamicRealm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).acquireReference(realmResults);
                final OrderedRealmCollectionChangeListener<RealmResults<E>> orderedRealmCollectionChangeListener = new OrderedRealmCollectionChangeListener<RealmResults<E>>() { // from class: io.realm.rx.RealmObservableFactory.9.1
                    public void onChange(RealmResults<E> realmResults2, OrderedCollectionChangeSet orderedCollectionChangeSet) {
                        if (!observableEmitter.isDisposed()) {
                            ObservableEmitter observableEmitter2 = observableEmitter;
                            RealmResults realmResults3 = realmResults2;
                            if (RealmObservableFactory.this.returnFrozenObjects) {
                                realmResults3 = realmResults2.freeze();
                            }
                            observableEmitter2.onNext(new CollectionChange(realmResults3, orderedCollectionChangeSet));
                        }
                    }
                };
                realmResults.addChangeListener(orderedRealmCollectionChangeListener);
                observableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.9.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!dynamicRealm2.isClosed()) {
                            realmResults.removeChangeListener(orderedRealmCollectionChangeListener);
                            dynamicRealm2.close();
                        }
                        ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).releaseReference(realmResults);
                    }
                }));
                observableEmitter.onNext(new CollectionChange(RealmObservableFactory.this.returnFrozenObjects ? realmResults.freeze() : realmResults, null));
            }
        }).subscribeOn(scheduler).unsubscribeOn(scheduler);
    }

    @Override // io.realm.p023rx.RxObservableFactory
    public <E> Observable<CollectionChange<RealmList<E>>> changesetsFrom(Realm realm, final RealmList<E> realmList) {
        if (realm.isFrozen()) {
            return Observable.just(new CollectionChange(realmList, null));
        }
        final RealmConfiguration configuration = realm.getConfiguration();
        Scheduler scheduler = getScheduler();
        return Observable.create(new ObservableOnSubscribe<CollectionChange<RealmList<E>>>() { // from class: io.realm.rx.RealmObservableFactory.11
            public void subscribe(final ObservableEmitter<CollectionChange<RealmList<E>>> observableEmitter) {
                if (!realmList.isValid()) {
                    return;
                }
                final Realm realm2 = Realm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).acquireReference(realmList);
                final OrderedRealmCollectionChangeListener<RealmList<E>> orderedRealmCollectionChangeListener = new OrderedRealmCollectionChangeListener<RealmList<E>>() { // from class: io.realm.rx.RealmObservableFactory.11.1
                    public void onChange(RealmList<E> realmList2, OrderedCollectionChangeSet orderedCollectionChangeSet) {
                        if (!realmList2.isValid()) {
                            observableEmitter.onComplete();
                        } else if (observableEmitter.isDisposed()) {
                        } else {
                            ObservableEmitter observableEmitter2 = observableEmitter;
                            RealmList realmList3 = realmList2;
                            if (RealmObservableFactory.this.returnFrozenObjects) {
                                realmList3 = realmList2.freeze();
                            }
                            observableEmitter2.onNext(new CollectionChange(realmList3, orderedCollectionChangeSet));
                        }
                    }
                };
                realmList.addChangeListener(orderedRealmCollectionChangeListener);
                observableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.11.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!realm2.isClosed()) {
                            realmList.removeChangeListener(orderedRealmCollectionChangeListener);
                            realm2.close();
                        }
                        ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).releaseReference(realmList);
                    }
                }));
                observableEmitter.onNext(new CollectionChange(RealmObservableFactory.this.returnFrozenObjects ? realmList.freeze() : realmList, null));
            }
        }).subscribeOn(scheduler).unsubscribeOn(scheduler);
    }

    @Override // io.realm.p023rx.RxObservableFactory
    public <E extends RealmModel> Observable<ObjectChange<E>> changesetsFrom(Realm realm, final E e) {
        if (realm.isFrozen()) {
            return Observable.just(new ObjectChange(e, null));
        }
        final RealmConfiguration configuration = realm.getConfiguration();
        Scheduler scheduler = getScheduler();
        return Observable.create(new ObservableOnSubscribe<ObjectChange<E>>() { // from class: io.realm.rx.RealmObservableFactory.15
            public void subscribe(final ObservableEmitter<ObjectChange<E>> observableEmitter) {
                if (!RealmObject.isValid(e)) {
                    return;
                }
                final Realm realm2 = Realm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).acquireReference(e);
                final RealmObjectChangeListener<E> realmObjectChangeListener = new RealmObjectChangeListener<E>() { // from class: io.realm.rx.RealmObservableFactory.15.1
                    @Override // io.realm.RealmObjectChangeListener
                    public void onChange(RealmModel realmModel, ObjectChangeSet objectChangeSet) {
                        if (!observableEmitter.isDisposed()) {
                            ObservableEmitter observableEmitter2 = observableEmitter;
                            RealmModel realmModel2 = realmModel;
                            if (RealmObservableFactory.this.returnFrozenObjects) {
                                realmModel2 = RealmObject.freeze(realmModel);
                            }
                            observableEmitter2.onNext(new ObjectChange(realmModel2, objectChangeSet));
                        }
                    }
                };
                RealmObject.addChangeListener(e, (RealmObjectChangeListener<RealmModel>) realmObjectChangeListener);
                observableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.15.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!realm2.isClosed()) {
                            RealmObject.removeChangeListener(e, realmObjectChangeListener);
                            realm2.close();
                        }
                        ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).releaseReference(e);
                    }
                }));
                observableEmitter.onNext(new ObjectChange(RealmObservableFactory.this.returnFrozenObjects ? RealmObject.freeze(e) : e, null));
            }
        }).subscribeOn(scheduler).unsubscribeOn(scheduler);
    }

    @Override // io.realm.p023rx.RxObservableFactory
    public <E> Observable<CollectionChange<RealmResults<E>>> changesetsFrom(Realm realm, final RealmResults<E> realmResults) {
        if (realm.isFrozen()) {
            return Observable.just(new CollectionChange(realmResults, null));
        }
        final RealmConfiguration configuration = realm.getConfiguration();
        Scheduler scheduler = getScheduler();
        return Observable.create(new ObservableOnSubscribe<CollectionChange<RealmResults<E>>>() { // from class: io.realm.rx.RealmObservableFactory.7
            public void subscribe(final ObservableEmitter<CollectionChange<RealmResults<E>>> observableEmitter) {
                if (!realmResults.isValid()) {
                    return;
                }
                final Realm realm2 = Realm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).acquireReference(realmResults);
                final OrderedRealmCollectionChangeListener<RealmResults<E>> orderedRealmCollectionChangeListener = new OrderedRealmCollectionChangeListener<RealmResults<E>>() { // from class: io.realm.rx.RealmObservableFactory.7.1
                    public void onChange(RealmResults<E> realmResults2, OrderedCollectionChangeSet orderedCollectionChangeSet) {
                        if (!observableEmitter.isDisposed()) {
                            observableEmitter.onNext(new CollectionChange(RealmObservableFactory.this.returnFrozenObjects ? realmResults.freeze() : realmResults, orderedCollectionChangeSet));
                        }
                    }
                };
                realmResults.addChangeListener(orderedRealmCollectionChangeListener);
                observableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.7.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!realm2.isClosed()) {
                            realmResults.removeChangeListener(orderedRealmCollectionChangeListener);
                            realm2.close();
                        }
                        ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).releaseReference(realmResults);
                    }
                }));
                observableEmitter.onNext(new CollectionChange(RealmObservableFactory.this.returnFrozenObjects ? realmResults.freeze() : realmResults, null));
            }
        }).subscribeOn(scheduler).unsubscribeOn(scheduler);
    }

    public boolean equals(Object obj) {
        return obj instanceof RealmObservableFactory;
    }

    @Override // io.realm.p023rx.RxObservableFactory
    public Flowable<DynamicRealm> from(DynamicRealm dynamicRealm) {
        if (dynamicRealm.isFrozen()) {
            return Flowable.just(dynamicRealm);
        }
        final RealmConfiguration configuration = dynamicRealm.getConfiguration();
        Scheduler scheduler = getScheduler();
        return Flowable.create(new FlowableOnSubscribe<DynamicRealm>() { // from class: io.realm.rx.RealmObservableFactory.5
            public void subscribe(final FlowableEmitter<DynamicRealm> flowableEmitter) throws Exception {
                final DynamicRealm dynamicRealm2 = DynamicRealm.getInstance(configuration);
                final RealmChangeListener<DynamicRealm> realmChangeListener = new RealmChangeListener<DynamicRealm>() { // from class: io.realm.rx.RealmObservableFactory.5.1
                    public void onChange(DynamicRealm dynamicRealm3) {
                        if (!flowableEmitter.isCancelled()) {
                            FlowableEmitter flowableEmitter2 = flowableEmitter;
                            DynamicRealm dynamicRealm4 = dynamicRealm3;
                            if (RealmObservableFactory.this.returnFrozenObjects) {
                                dynamicRealm4 = dynamicRealm3.freeze();
                            }
                            flowableEmitter2.onNext(dynamicRealm4);
                        }
                    }
                };
                dynamicRealm2.addChangeListener(realmChangeListener);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.5.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!dynamicRealm2.isClosed()) {
                            dynamicRealm2.removeChangeListener(realmChangeListener);
                            dynamicRealm2.close();
                        }
                    }
                }));
                DynamicRealm dynamicRealm3 = dynamicRealm2;
                if (RealmObservableFactory.this.returnFrozenObjects) {
                    dynamicRealm3 = dynamicRealm2.freeze();
                }
                flowableEmitter.onNext(dynamicRealm3);
            }
        }, BACK_PRESSURE_STRATEGY).subscribeOn(scheduler).unsubscribeOn(scheduler);
    }

    @Override // io.realm.p023rx.RxObservableFactory
    public Flowable<DynamicRealmObject> from(final DynamicRealm dynamicRealm, final DynamicRealmObject dynamicRealmObject) {
        if (dynamicRealm.isFrozen()) {
            return Flowable.just(dynamicRealmObject);
        }
        final RealmConfiguration configuration = dynamicRealm.getConfiguration();
        Scheduler scheduler = getScheduler();
        return Flowable.create(new FlowableOnSubscribe<DynamicRealmObject>() { // from class: io.realm.rx.RealmObservableFactory.16
            public void subscribe(final FlowableEmitter<DynamicRealmObject> flowableEmitter) {
                if (dynamicRealm.isClosed()) {
                    return;
                }
                final DynamicRealm dynamicRealm2 = DynamicRealm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).acquireReference(dynamicRealmObject);
                final RealmChangeListener<DynamicRealmObject> realmChangeListener = new RealmChangeListener<DynamicRealmObject>() { // from class: io.realm.rx.RealmObservableFactory.16.1
                    public void onChange(DynamicRealmObject dynamicRealmObject2) {
                        if (!flowableEmitter.isCancelled()) {
                            FlowableEmitter flowableEmitter2 = flowableEmitter;
                            DynamicRealmObject dynamicRealmObject3 = dynamicRealmObject2;
                            if (RealmObservableFactory.this.returnFrozenObjects) {
                                dynamicRealmObject3 = (DynamicRealmObject) RealmObject.freeze(dynamicRealmObject2);
                            }
                            flowableEmitter2.onNext(dynamicRealmObject3);
                        }
                    }
                };
                RealmObject.addChangeListener(dynamicRealmObject, realmChangeListener);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.16.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!dynamicRealm2.isClosed()) {
                            RealmObject.removeChangeListener(dynamicRealmObject, realmChangeListener);
                            dynamicRealm2.close();
                        }
                        ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).releaseReference(dynamicRealmObject);
                    }
                }));
                flowableEmitter.onNext(RealmObservableFactory.this.returnFrozenObjects ? (DynamicRealmObject) RealmObject.freeze(dynamicRealmObject) : dynamicRealmObject);
            }
        }, BACK_PRESSURE_STRATEGY).subscribeOn(scheduler).unsubscribeOn(scheduler);
    }

    @Override // io.realm.p023rx.RxObservableFactory
    public <E> Flowable<RealmList<E>> from(DynamicRealm dynamicRealm, final RealmList<E> realmList) {
        if (dynamicRealm.isFrozen()) {
            return Flowable.just(realmList);
        }
        final RealmConfiguration configuration = dynamicRealm.getConfiguration();
        Scheduler scheduler = getScheduler();
        return Flowable.create(new FlowableOnSubscribe<RealmList<E>>() { // from class: io.realm.rx.RealmObservableFactory.12
            public void subscribe(final FlowableEmitter<RealmList<E>> flowableEmitter) {
                if (!realmList.isValid()) {
                    return;
                }
                final DynamicRealm dynamicRealm2 = DynamicRealm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).acquireReference(realmList);
                final RealmChangeListener<RealmList<E>> realmChangeListener = new RealmChangeListener<RealmList<E>>() { // from class: io.realm.rx.RealmObservableFactory.12.1
                    public void onChange(RealmList<E> realmList2) {
                        if (!realmList2.isValid()) {
                            flowableEmitter.onComplete();
                        } else if (flowableEmitter.isCancelled()) {
                        } else {
                            FlowableEmitter flowableEmitter2 = flowableEmitter;
                            RealmList realmList3 = realmList2;
                            if (RealmObservableFactory.this.returnFrozenObjects) {
                                realmList3 = realmList2.freeze();
                            }
                            flowableEmitter2.onNext(realmList3);
                        }
                    }
                };
                realmList.addChangeListener(realmChangeListener);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.12.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!dynamicRealm2.isClosed()) {
                            realmList.removeChangeListener(realmChangeListener);
                            dynamicRealm2.close();
                        }
                        ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).releaseReference(realmList);
                    }
                }));
                flowableEmitter.onNext(RealmObservableFactory.this.returnFrozenObjects ? realmList.freeze() : realmList);
            }
        }, BACK_PRESSURE_STRATEGY).subscribeOn(scheduler).unsubscribeOn(scheduler);
    }

    @Override // io.realm.p023rx.RxObservableFactory
    public <E> Flowable<RealmResults<E>> from(DynamicRealm dynamicRealm, final RealmResults<E> realmResults) {
        if (dynamicRealm.isFrozen()) {
            return Flowable.just(realmResults);
        }
        final RealmConfiguration configuration = dynamicRealm.getConfiguration();
        Scheduler scheduler = getScheduler();
        return Flowable.create(new FlowableOnSubscribe<RealmResults<E>>() { // from class: io.realm.rx.RealmObservableFactory.8
            public void subscribe(final FlowableEmitter<RealmResults<E>> flowableEmitter) {
                if (!realmResults.isValid()) {
                    return;
                }
                final DynamicRealm dynamicRealm2 = DynamicRealm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).acquireReference(realmResults);
                final RealmChangeListener<RealmResults<E>> realmChangeListener = new RealmChangeListener<RealmResults<E>>() { // from class: io.realm.rx.RealmObservableFactory.8.1
                    public void onChange(RealmResults<E> realmResults2) {
                        if (!flowableEmitter.isCancelled()) {
                            FlowableEmitter flowableEmitter2 = flowableEmitter;
                            RealmResults realmResults3 = realmResults2;
                            if (RealmObservableFactory.this.returnFrozenObjects) {
                                realmResults3 = realmResults2.freeze();
                            }
                            flowableEmitter2.onNext(realmResults3);
                        }
                    }
                };
                realmResults.addChangeListener(realmChangeListener);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.8.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!dynamicRealm2.isClosed()) {
                            realmResults.removeChangeListener(realmChangeListener);
                            dynamicRealm2.close();
                        }
                        ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).releaseReference(realmResults);
                    }
                }));
                flowableEmitter.onNext(RealmObservableFactory.this.returnFrozenObjects ? realmResults.freeze() : realmResults);
            }
        }, BACK_PRESSURE_STRATEGY).subscribeOn(scheduler).unsubscribeOn(scheduler);
    }

    @Override // io.realm.p023rx.RxObservableFactory
    public Flowable<Realm> from(Realm realm) {
        if (realm.isFrozen()) {
            return Flowable.just(realm);
        }
        final RealmConfiguration configuration = realm.getConfiguration();
        Scheduler scheduler = getScheduler();
        return Flowable.create(new FlowableOnSubscribe<Realm>() { // from class: io.realm.rx.RealmObservableFactory.4
            public void subscribe(final FlowableEmitter<Realm> flowableEmitter) throws Exception {
                final Realm realm2 = Realm.getInstance(configuration);
                final RealmChangeListener<Realm> realmChangeListener = new RealmChangeListener<Realm>() { // from class: io.realm.rx.RealmObservableFactory.4.1
                    public void onChange(Realm realm3) {
                        if (!flowableEmitter.isCancelled()) {
                            FlowableEmitter flowableEmitter2 = flowableEmitter;
                            Realm realm4 = realm3;
                            if (RealmObservableFactory.this.returnFrozenObjects) {
                                realm4 = realm3.freeze();
                            }
                            flowableEmitter2.onNext(realm4);
                        }
                    }
                };
                realm2.addChangeListener(realmChangeListener);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.4.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!realm2.isClosed()) {
                            realm2.removeChangeListener(realmChangeListener);
                            realm2.close();
                        }
                    }
                }));
                Realm realm3 = realm2;
                if (RealmObservableFactory.this.returnFrozenObjects) {
                    realm3 = realm2.freeze();
                }
                flowableEmitter.onNext(realm3);
            }
        }, BACK_PRESSURE_STRATEGY).subscribeOn(scheduler).unsubscribeOn(scheduler);
    }

    @Override // io.realm.p023rx.RxObservableFactory
    public <E> Flowable<RealmList<E>> from(Realm realm, final RealmList<E> realmList) {
        if (realm.isFrozen()) {
            return Flowable.just(realmList);
        }
        final RealmConfiguration configuration = realm.getConfiguration();
        Scheduler scheduler = getScheduler();
        return Flowable.create(new FlowableOnSubscribe<RealmList<E>>() { // from class: io.realm.rx.RealmObservableFactory.10
            public void subscribe(final FlowableEmitter<RealmList<E>> flowableEmitter) {
                if (!realmList.isValid()) {
                    return;
                }
                final Realm realm2 = Realm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).acquireReference(realmList);
                final RealmChangeListener<RealmList<E>> realmChangeListener = new RealmChangeListener<RealmList<E>>() { // from class: io.realm.rx.RealmObservableFactory.10.1
                    public void onChange(RealmList<E> realmList2) {
                        if (!realmList2.isValid()) {
                            flowableEmitter.onComplete();
                        } else if (flowableEmitter.isCancelled()) {
                        } else {
                            FlowableEmitter flowableEmitter2 = flowableEmitter;
                            RealmList realmList3 = realmList2;
                            if (RealmObservableFactory.this.returnFrozenObjects) {
                                realmList3 = realmList2.freeze();
                            }
                            flowableEmitter2.onNext(realmList3);
                        }
                    }
                };
                realmList.addChangeListener(realmChangeListener);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.10.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!realm2.isClosed()) {
                            realmList.removeChangeListener(realmChangeListener);
                            realm2.close();
                        }
                        ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).releaseReference(realmList);
                    }
                }));
                flowableEmitter.onNext(RealmObservableFactory.this.returnFrozenObjects ? realmList.freeze() : realmList);
            }
        }, BACK_PRESSURE_STRATEGY).subscribeOn(scheduler).unsubscribeOn(scheduler);
    }

    @Override // io.realm.p023rx.RxObservableFactory
    public <E extends RealmModel> Flowable<E> from(final Realm realm, final E e) {
        if (realm.isFrozen()) {
            return Flowable.just(e);
        }
        final RealmConfiguration configuration = realm.getConfiguration();
        Scheduler scheduler = getScheduler();
        return Flowable.create(new FlowableOnSubscribe<E>() { // from class: io.realm.rx.RealmObservableFactory.14
            public void subscribe(final FlowableEmitter<E> flowableEmitter) {
                if (realm.isClosed()) {
                    return;
                }
                final Realm realm2 = Realm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).acquireReference(e);
                final RealmChangeListener<E> realmChangeListener = new RealmChangeListener<E>() { // from class: io.realm.rx.RealmObservableFactory.14.1
                    public void onChange(RealmModel realmModel) {
                        if (!flowableEmitter.isCancelled()) {
                            FlowableEmitter flowableEmitter2 = flowableEmitter;
                            RealmModel realmModel2 = realmModel;
                            if (RealmObservableFactory.this.returnFrozenObjects) {
                                realmModel2 = RealmObject.freeze(realmModel);
                            }
                            flowableEmitter2.onNext(realmModel2);
                        }
                    }
                };
                RealmObject.addChangeListener(e, (RealmChangeListener<RealmModel>) realmChangeListener);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.14.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!realm2.isClosed()) {
                            RealmObject.removeChangeListener(e, realmChangeListener);
                            realm2.close();
                        }
                        ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).releaseReference(e);
                    }
                }));
                flowableEmitter.onNext(RealmObservableFactory.this.returnFrozenObjects ? RealmObject.freeze(e) : e);
            }
        }, BACK_PRESSURE_STRATEGY).subscribeOn(scheduler).unsubscribeOn(scheduler);
    }

    @Override // io.realm.p023rx.RxObservableFactory
    public <E> Flowable<RealmResults<E>> from(Realm realm, final RealmResults<E> realmResults) {
        if (realm.isFrozen()) {
            return Flowable.just(realmResults);
        }
        final RealmConfiguration configuration = realm.getConfiguration();
        Scheduler scheduler = getScheduler();
        return Flowable.create(new FlowableOnSubscribe<RealmResults<E>>() { // from class: io.realm.rx.RealmObservableFactory.6
            public void subscribe(final FlowableEmitter<RealmResults<E>> flowableEmitter) {
                if (!realmResults.isValid()) {
                    return;
                }
                final Realm realm2 = Realm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).acquireReference(realmResults);
                final RealmChangeListener<RealmResults<E>> realmChangeListener = new RealmChangeListener<RealmResults<E>>() { // from class: io.realm.rx.RealmObservableFactory.6.1
                    public void onChange(RealmResults<E> realmResults2) {
                        if (!flowableEmitter.isCancelled()) {
                            FlowableEmitter flowableEmitter2 = flowableEmitter;
                            RealmResults realmResults3 = realmResults2;
                            if (RealmObservableFactory.this.returnFrozenObjects) {
                                realmResults3 = realmResults2.freeze();
                            }
                            flowableEmitter2.onNext(realmResults3);
                        }
                    }
                };
                realmResults.addChangeListener(realmChangeListener);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.6.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!realm2.isClosed()) {
                            realmResults.removeChangeListener(realmChangeListener);
                            realm2.close();
                        }
                        ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).releaseReference(realmResults);
                    }
                }));
                flowableEmitter.onNext(RealmObservableFactory.this.returnFrozenObjects ? realmResults.freeze() : realmResults);
            }
        }, BACK_PRESSURE_STRATEGY).subscribeOn(scheduler).unsubscribeOn(scheduler);
    }

    @Override // io.realm.p023rx.RxObservableFactory
    public <E> Single<RealmQuery<E>> from(DynamicRealm dynamicRealm, RealmQuery<E> realmQuery) {
        throw new RuntimeException("RealmQuery not supported yet.");
    }

    @Override // io.realm.p023rx.RxObservableFactory
    public <E> Single<RealmQuery<E>> from(Realm realm, RealmQuery<E> realmQuery) {
        throw new RuntimeException("RealmQuery not supported yet.");
    }

    public int hashCode() {
        return 37;
    }
}
