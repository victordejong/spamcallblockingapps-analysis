package io.realm.p008rx;

import android.os.Looper;
import io.reactivex.BackpressureStrategy;
import io.reactivex.Flowable;
import io.reactivex.FlowableEmitter;
import io.reactivex.FlowableOnSubscribe;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.Scheduler;
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
import io.realm.RealmResults;
import java.util.IdentityHashMap;
import java.util.Map;
/* renamed from: io.realm.rx.RealmObservableFactory */
/* loaded from: classes2-dex2jar.jar:io/realm/rx/RealmObservableFactory.class */
public class RealmObservableFactory implements RxObservableFactory {

    /* renamed from: e */
    private static final BackpressureStrategy f20285e = BackpressureStrategy.LATEST;

    /* renamed from: a */
    private final boolean f20286a;

    /* renamed from: b */
    private ThreadLocal<StrongReferenceCounter<RealmResults>> f20287b = new ThreadLocal<StrongReferenceCounter<RealmResults>>(this) { // from class: io.realm.rx.RealmObservableFactory.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public StrongReferenceCounter<RealmResults> initialValue() {
            return new StrongReferenceCounter<>();
        }
    };

    /* renamed from: c */
    private ThreadLocal<StrongReferenceCounter<RealmList>> f20288c = new ThreadLocal<StrongReferenceCounter<RealmList>>(this) { // from class: io.realm.rx.RealmObservableFactory.2
        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public StrongReferenceCounter<RealmList> initialValue() {
            return new StrongReferenceCounter<>();
        }
    };

    /* renamed from: d */
    private ThreadLocal<StrongReferenceCounter<RealmModel>> f20289d = new ThreadLocal<StrongReferenceCounter<RealmModel>>(this) { // from class: io.realm.rx.RealmObservableFactory.3
        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public StrongReferenceCounter<RealmModel> initialValue() {
            return new StrongReferenceCounter<>();
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.realm.rx.RealmObservableFactory$10 */
    /* loaded from: classes2-dex2jar.jar:io/realm/rx/RealmObservableFactory$10.class */
    public class C221410 implements FlowableOnSubscribe<RealmList<E>> {

        /* renamed from: a */
        final /* synthetic */ RealmList f20290a;

        /* renamed from: b */
        final /* synthetic */ RealmConfiguration f20291b;

        /* renamed from: c */
        final /* synthetic */ RealmObservableFactory f20292c;

        @Override // io.reactivex.FlowableOnSubscribe
        /* renamed from: a */
        public void mo2507a(final FlowableEmitter<RealmList<E>> flowableEmitter) {
            if (this.f20290a.isValid()) {
                final Realm I0 = Realm.m3062I0(this.f20291b);
                ((StrongReferenceCounter) this.f20292c.f20288c.get()).m2501a(this.f20290a);
                final RealmChangeListener<RealmList<E>> realmChangeListener = new RealmChangeListener<RealmList<E>>() { // from class: io.realm.rx.RealmObservableFactory.10.1
                    /* renamed from: b */
                    public void mo2506a(RealmList<E> realmList) {
                        if (!flowableEmitter.isCancelled()) {
                            FlowableEmitter flowableEmitter2 = flowableEmitter;
                            RealmList realmList2 = realmList;
                            if (C221410.this.f20292c.f20286a) {
                                realmList2 = realmList.m2951t();
                            }
                            flowableEmitter2.onNext(realmList2);
                        }
                    }
                };
                this.f20290a.m2956k(realmChangeListener);
                flowableEmitter.mo4263a(Disposables.m4439c(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.10.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!I0.isClosed()) {
                            C221410.this.f20290a.m2965A(realmChangeListener);
                            I0.close();
                        }
                        ((StrongReferenceCounter) C221410.this.f20292c.f20288c.get()).m2500b(C221410.this.f20290a);
                    }
                }));
                flowableEmitter.onNext(this.f20292c.f20286a ? this.f20290a.m2951t() : this.f20290a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.realm.rx.RealmObservableFactory$11 */
    /* loaded from: classes2-dex2jar.jar:io/realm/rx/RealmObservableFactory$11.class */
    public class C221711 implements ObservableOnSubscribe<CollectionChange<RealmList<E>>> {

        /* renamed from: a */
        final /* synthetic */ RealmList f20298a;

        /* renamed from: b */
        final /* synthetic */ RealmConfiguration f20299b;

        /* renamed from: c */
        final /* synthetic */ RealmObservableFactory f20300c;

        @Override // io.reactivex.ObservableOnSubscribe
        /* renamed from: a */
        public void mo2504a(final ObservableEmitter<CollectionChange<RealmList<E>>> observableEmitter) {
            if (this.f20298a.isValid()) {
                final Realm I0 = Realm.m3062I0(this.f20299b);
                ((StrongReferenceCounter) this.f20300c.f20288c.get()).m2501a(this.f20298a);
                final OrderedRealmCollectionChangeListener<RealmList<E>> orderedRealmCollectionChangeListener = new OrderedRealmCollectionChangeListener<RealmList<E>>() { // from class: io.realm.rx.RealmObservableFactory.11.1
                    /* renamed from: b */
                    public void mo2503a(RealmList<E> realmList, OrderedCollectionChangeSet orderedCollectionChangeSet) {
                        if (!observableEmitter.isDisposed()) {
                            ObservableEmitter observableEmitter2 = observableEmitter;
                            RealmList realmList2 = realmList;
                            if (C221711.this.f20300c.f20286a) {
                                realmList2 = realmList.m2951t();
                            }
                            observableEmitter2.onNext(new CollectionChange(realmList2, orderedCollectionChangeSet));
                        }
                    }
                };
                this.f20298a.m2957j(orderedRealmCollectionChangeListener);
                observableEmitter.mo3860a(Disposables.m4439c(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.11.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!I0.isClosed()) {
                            C221711.this.f20298a.m2945z(orderedRealmCollectionChangeListener);
                            I0.close();
                        }
                        ((StrongReferenceCounter) C221711.this.f20300c.f20288c.get()).m2500b(C221711.this.f20298a);
                    }
                }));
                observableEmitter.onNext(new CollectionChange(this.f20300c.f20286a ? this.f20298a.m2951t() : this.f20298a, null));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.realm.rx.RealmObservableFactory$12 */
    /* loaded from: classes2-dex2jar.jar:io/realm/rx/RealmObservableFactory$12.class */
    public class C222012 implements FlowableOnSubscribe<RealmList<E>> {

        /* renamed from: a */
        final /* synthetic */ RealmList f20306a;

        /* renamed from: b */
        final /* synthetic */ RealmConfiguration f20307b;

        /* renamed from: c */
        final /* synthetic */ RealmObservableFactory f20308c;

        @Override // io.reactivex.FlowableOnSubscribe
        /* renamed from: a */
        public void mo2507a(final FlowableEmitter<RealmList<E>> flowableEmitter) {
            if (this.f20306a.isValid()) {
                final DynamicRealm o0 = DynamicRealm.m3127o0(this.f20307b);
                ((StrongReferenceCounter) this.f20308c.f20288c.get()).m2501a(this.f20306a);
                final RealmChangeListener<RealmList<E>> realmChangeListener = new RealmChangeListener<RealmList<E>>() { // from class: io.realm.rx.RealmObservableFactory.12.1
                    /* renamed from: b */
                    public void mo2506a(RealmList<E> realmList) {
                        if (!flowableEmitter.isCancelled()) {
                            FlowableEmitter flowableEmitter2 = flowableEmitter;
                            RealmList realmList2 = realmList;
                            if (C222012.this.f20308c.f20286a) {
                                realmList2 = realmList.m2951t();
                            }
                            flowableEmitter2.onNext(realmList2);
                        }
                    }
                };
                this.f20306a.m2956k(realmChangeListener);
                flowableEmitter.mo4263a(Disposables.m4439c(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.12.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!o0.isClosed()) {
                            C222012.this.f20306a.m2965A(realmChangeListener);
                            o0.close();
                        }
                        ((StrongReferenceCounter) C222012.this.f20308c.f20288c.get()).m2500b(C222012.this.f20306a);
                    }
                }));
                flowableEmitter.onNext(this.f20308c.f20286a ? this.f20306a.m2951t() : this.f20306a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.realm.rx.RealmObservableFactory$13 */
    /* loaded from: classes2-dex2jar.jar:io/realm/rx/RealmObservableFactory$13.class */
    public class C222313 implements ObservableOnSubscribe<CollectionChange<RealmList<E>>> {

        /* renamed from: a */
        final /* synthetic */ RealmList f20314a;

        /* renamed from: b */
        final /* synthetic */ RealmConfiguration f20315b;

        /* renamed from: c */
        final /* synthetic */ RealmObservableFactory f20316c;

        @Override // io.reactivex.ObservableOnSubscribe
        /* renamed from: a */
        public void mo2504a(final ObservableEmitter<CollectionChange<RealmList<E>>> observableEmitter) {
            if (this.f20314a.isValid()) {
                final DynamicRealm o0 = DynamicRealm.m3127o0(this.f20315b);
                ((StrongReferenceCounter) this.f20316c.f20288c.get()).m2501a(this.f20314a);
                final OrderedRealmCollectionChangeListener<RealmList<E>> orderedRealmCollectionChangeListener = new OrderedRealmCollectionChangeListener<RealmList<E>>() { // from class: io.realm.rx.RealmObservableFactory.13.1
                    /* renamed from: b */
                    public void mo2503a(RealmList<E> realmList, OrderedCollectionChangeSet orderedCollectionChangeSet) {
                        if (!observableEmitter.isDisposed()) {
                            ObservableEmitter observableEmitter2 = observableEmitter;
                            RealmList realmList2 = realmList;
                            if (C222313.this.f20316c.f20286a) {
                                realmList2 = realmList.m2951t();
                            }
                            observableEmitter2.onNext(new CollectionChange(realmList2, orderedCollectionChangeSet));
                        }
                    }
                };
                this.f20314a.m2957j(orderedRealmCollectionChangeListener);
                observableEmitter.mo3860a(Disposables.m4439c(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.13.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!o0.isClosed()) {
                            C222313.this.f20314a.m2945z(orderedRealmCollectionChangeListener);
                            o0.close();
                        }
                        ((StrongReferenceCounter) C222313.this.f20316c.f20288c.get()).m2500b(C222313.this.f20314a);
                    }
                }));
                observableEmitter.onNext(new CollectionChange(this.f20316c.f20286a ? this.f20314a.m2951t() : this.f20314a, null));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.realm.rx.RealmObservableFactory$4 */
    /* loaded from: classes2-dex2jar.jar:io/realm/rx/RealmObservableFactory$4.class */
    public class C22404 implements FlowableOnSubscribe<Realm> {

        /* renamed from: a */
        final /* synthetic */ RealmConfiguration f20356a;

        /* renamed from: b */
        final /* synthetic */ RealmObservableFactory f20357b;

        @Override // io.reactivex.FlowableOnSubscribe
        /* renamed from: a */
        public void mo2507a(final FlowableEmitter<Realm> flowableEmitter) throws Exception {
            final Realm I0 = Realm.m3062I0(this.f20356a);
            final RealmChangeListener<Realm> realmChangeListener = new RealmChangeListener<Realm>() { // from class: io.realm.rx.RealmObservableFactory.4.1
                /* renamed from: b */
                public void mo2506a(Realm realm) {
                    if (!flowableEmitter.isCancelled()) {
                        FlowableEmitter flowableEmitter2 = flowableEmitter;
                        Realm realm2 = realm;
                        if (C22404.this.f20357b.f20286a) {
                            realm2 = realm.mo3047t();
                        }
                        flowableEmitter2.onNext(realm2);
                    }
                }
            };
            I0.m3052d0(realmChangeListener);
            flowableEmitter.mo4263a(Disposables.m4439c(new Runnable(this) { // from class: io.realm.rx.RealmObservableFactory.4.2
                @Override // java.lang.Runnable
                public void run() {
                    if (!I0.isClosed()) {
                        I0.m3055O0(realmChangeListener);
                        I0.close();
                    }
                }
            }));
            Realm realm = I0;
            if (this.f20357b.f20286a) {
                realm = I0.mo3047t();
            }
            flowableEmitter.onNext(realm);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.realm.rx.RealmObservableFactory$5 */
    /* loaded from: classes2-dex2jar.jar:io/realm/rx/RealmObservableFactory$5.class */
    public class C22435 implements FlowableOnSubscribe<DynamicRealm> {

        /* renamed from: a */
        final /* synthetic */ RealmConfiguration f20362a;

        /* renamed from: b */
        final /* synthetic */ RealmObservableFactory f20363b;

        @Override // io.reactivex.FlowableOnSubscribe
        /* renamed from: a */
        public void mo2507a(final FlowableEmitter<DynamicRealm> flowableEmitter) throws Exception {
            final DynamicRealm o0 = DynamicRealm.m3127o0(this.f20362a);
            final RealmChangeListener<DynamicRealm> realmChangeListener = new RealmChangeListener<DynamicRealm>() { // from class: io.realm.rx.RealmObservableFactory.5.1
                /* renamed from: b */
                public void mo2506a(DynamicRealm dynamicRealm) {
                    if (!flowableEmitter.isCancelled()) {
                        FlowableEmitter flowableEmitter2 = flowableEmitter;
                        DynamicRealm dynamicRealm2 = dynamicRealm;
                        if (C22435.this.f20363b.f20286a) {
                            dynamicRealm2 = dynamicRealm.mo3047t();
                        }
                        flowableEmitter2.onNext(dynamicRealm2);
                    }
                }
            };
            o0.m3131d0(realmChangeListener);
            flowableEmitter.mo4263a(Disposables.m4439c(new Runnable(this) { // from class: io.realm.rx.RealmObservableFactory.5.2
                @Override // java.lang.Runnable
                public void run() {
                    if (!o0.isClosed()) {
                        o0.m3126u0(realmChangeListener);
                        o0.close();
                    }
                }
            }));
            DynamicRealm dynamicRealm = o0;
            if (this.f20363b.f20286a) {
                dynamicRealm = o0.mo3047t();
            }
            flowableEmitter.onNext(dynamicRealm);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.realm.rx.RealmObservableFactory$6 */
    /* loaded from: classes2-dex2jar.jar:io/realm/rx/RealmObservableFactory$6.class */
    public class C22466 implements FlowableOnSubscribe<RealmResults<E>> {

        /* renamed from: a */
        final /* synthetic */ RealmResults f20368a;

        /* renamed from: b */
        final /* synthetic */ RealmConfiguration f20369b;

        /* renamed from: c */
        final /* synthetic */ RealmObservableFactory f20370c;

        @Override // io.reactivex.FlowableOnSubscribe
        /* renamed from: a */
        public void mo2507a(final FlowableEmitter<RealmResults<E>> flowableEmitter) {
            if (this.f20368a.isValid()) {
                final Realm I0 = Realm.m3062I0(this.f20369b);
                ((StrongReferenceCounter) this.f20370c.f20287b.get()).m2501a(this.f20368a);
                final RealmChangeListener<RealmResults<E>> realmChangeListener = new RealmChangeListener<RealmResults<E>>() { // from class: io.realm.rx.RealmObservableFactory.6.1
                    /* renamed from: b */
                    public void mo2506a(RealmResults<E> realmResults) {
                        if (!flowableEmitter.isCancelled()) {
                            FlowableEmitter flowableEmitter2 = flowableEmitter;
                            RealmResults realmResults2 = realmResults;
                            if (C22466.this.f20370c.f20286a) {
                                realmResults2 = realmResults.m2861z();
                            }
                            flowableEmitter2.onNext(realmResults2);
                        }
                    }
                };
                this.f20368a.m2865v(realmChangeListener);
                flowableEmitter.mo4263a(Disposables.m4439c(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.6.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!I0.isClosed()) {
                            C22466.this.f20368a.m2868D(realmChangeListener);
                            I0.close();
                        }
                        ((StrongReferenceCounter) C22466.this.f20370c.f20287b.get()).m2500b(C22466.this.f20368a);
                    }
                }));
                flowableEmitter.onNext(this.f20370c.f20286a ? this.f20368a.m2861z() : this.f20368a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.realm.rx.RealmObservableFactory$7 */
    /* loaded from: classes2-dex2jar.jar:io/realm/rx/RealmObservableFactory$7.class */
    public class C22497 implements ObservableOnSubscribe<CollectionChange<RealmResults<E>>> {

        /* renamed from: a */
        final /* synthetic */ RealmResults f20376a;

        /* renamed from: b */
        final /* synthetic */ RealmConfiguration f20377b;

        /* renamed from: c */
        final /* synthetic */ RealmObservableFactory f20378c;

        @Override // io.reactivex.ObservableOnSubscribe
        /* renamed from: a */
        public void mo2504a(final ObservableEmitter<CollectionChange<RealmResults<E>>> observableEmitter) {
            if (this.f20376a.isValid()) {
                final Realm I0 = Realm.m3062I0(this.f20377b);
                ((StrongReferenceCounter) this.f20378c.f20287b.get()).m2501a(this.f20376a);
                final OrderedRealmCollectionChangeListener<RealmResults<E>> orderedRealmCollectionChangeListener = new OrderedRealmCollectionChangeListener<RealmResults<E>>() { // from class: io.realm.rx.RealmObservableFactory.7.1
                    /* renamed from: b */
                    public void mo2503a(RealmResults<E> realmResults, OrderedCollectionChangeSet orderedCollectionChangeSet) {
                        if (!observableEmitter.isDisposed()) {
                            observableEmitter.onNext(new CollectionChange(C22497.this.f20378c.f20286a ? C22497.this.f20376a.m2861z() : C22497.this.f20376a, orderedCollectionChangeSet));
                        }
                    }
                };
                this.f20376a.m2866u(orderedRealmCollectionChangeListener);
                observableEmitter.mo3860a(Disposables.m4439c(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.7.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!I0.isClosed()) {
                            C22497.this.f20376a.m2869C(orderedRealmCollectionChangeListener);
                            I0.close();
                        }
                        ((StrongReferenceCounter) C22497.this.f20378c.f20287b.get()).m2500b(C22497.this.f20376a);
                    }
                }));
                observableEmitter.onNext(new CollectionChange(this.f20378c.f20286a ? this.f20376a.m2861z() : this.f20376a, null));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.realm.rx.RealmObservableFactory$8 */
    /* loaded from: classes2-dex2jar.jar:io/realm/rx/RealmObservableFactory$8.class */
    public class C22528 implements FlowableOnSubscribe<RealmResults<E>> {

        /* renamed from: a */
        final /* synthetic */ RealmResults f20384a;

        /* renamed from: b */
        final /* synthetic */ RealmConfiguration f20385b;

        /* renamed from: c */
        final /* synthetic */ RealmObservableFactory f20386c;

        @Override // io.reactivex.FlowableOnSubscribe
        /* renamed from: a */
        public void mo2507a(final FlowableEmitter<RealmResults<E>> flowableEmitter) {
            if (this.f20384a.isValid()) {
                final DynamicRealm o0 = DynamicRealm.m3127o0(this.f20385b);
                ((StrongReferenceCounter) this.f20386c.f20287b.get()).m2501a(this.f20384a);
                final RealmChangeListener<RealmResults<E>> realmChangeListener = new RealmChangeListener<RealmResults<E>>() { // from class: io.realm.rx.RealmObservableFactory.8.1
                    /* renamed from: b */
                    public void mo2506a(RealmResults<E> realmResults) {
                        if (!flowableEmitter.isCancelled()) {
                            FlowableEmitter flowableEmitter2 = flowableEmitter;
                            RealmResults realmResults2 = realmResults;
                            if (C22528.this.f20386c.f20286a) {
                                realmResults2 = realmResults.m2861z();
                            }
                            flowableEmitter2.onNext(realmResults2);
                        }
                    }
                };
                this.f20384a.m2865v(realmChangeListener);
                flowableEmitter.mo4263a(Disposables.m4439c(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.8.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!o0.isClosed()) {
                            C22528.this.f20384a.m2868D(realmChangeListener);
                            o0.close();
                        }
                        ((StrongReferenceCounter) C22528.this.f20386c.f20287b.get()).m2500b(C22528.this.f20384a);
                    }
                }));
                flowableEmitter.onNext(this.f20386c.f20286a ? this.f20384a.m2861z() : this.f20384a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.realm.rx.RealmObservableFactory$9 */
    /* loaded from: classes2-dex2jar.jar:io/realm/rx/RealmObservableFactory$9.class */
    public class C22559 implements ObservableOnSubscribe<CollectionChange<RealmResults<E>>> {

        /* renamed from: a */
        final /* synthetic */ RealmResults f20392a;

        /* renamed from: b */
        final /* synthetic */ RealmConfiguration f20393b;

        /* renamed from: c */
        final /* synthetic */ RealmObservableFactory f20394c;

        @Override // io.reactivex.ObservableOnSubscribe
        /* renamed from: a */
        public void mo2504a(final ObservableEmitter<CollectionChange<RealmResults<E>>> observableEmitter) {
            if (this.f20392a.isValid()) {
                final DynamicRealm o0 = DynamicRealm.m3127o0(this.f20393b);
                ((StrongReferenceCounter) this.f20394c.f20287b.get()).m2501a(this.f20392a);
                final OrderedRealmCollectionChangeListener<RealmResults<E>> orderedRealmCollectionChangeListener = new OrderedRealmCollectionChangeListener<RealmResults<E>>() { // from class: io.realm.rx.RealmObservableFactory.9.1
                    /* renamed from: b */
                    public void mo2503a(RealmResults<E> realmResults, OrderedCollectionChangeSet orderedCollectionChangeSet) {
                        if (!observableEmitter.isDisposed()) {
                            ObservableEmitter observableEmitter2 = observableEmitter;
                            RealmResults realmResults2 = realmResults;
                            if (C22559.this.f20394c.f20286a) {
                                realmResults2 = realmResults.m2861z();
                            }
                            observableEmitter2.onNext(new CollectionChange(realmResults2, orderedCollectionChangeSet));
                        }
                    }
                };
                this.f20392a.m2866u(orderedRealmCollectionChangeListener);
                observableEmitter.mo3860a(Disposables.m4439c(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.9.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!o0.isClosed()) {
                            C22559.this.f20392a.m2869C(orderedRealmCollectionChangeListener);
                            o0.close();
                        }
                        ((StrongReferenceCounter) C22559.this.f20394c.f20287b.get()).m2500b(C22559.this.f20392a);
                    }
                }));
                observableEmitter.onNext(new CollectionChange(this.f20394c.f20286a ? this.f20392a.m2861z() : this.f20392a, null));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: io.realm.rx.RealmObservableFactory$StrongReferenceCounter */
    /* loaded from: classes2-dex2jar.jar:io/realm/rx/RealmObservableFactory$StrongReferenceCounter.class */
    public static class StrongReferenceCounter<K> {

        /* renamed from: a */
        private final Map<K, Integer> f20400a;

        private StrongReferenceCounter() {
            this.f20400a = new IdentityHashMap();
        }

        /* renamed from: a */
        public void m2501a(K k) {
            Integer num = this.f20400a.get(k);
            if (num == null) {
                this.f20400a.put(k, 1);
            } else {
                this.f20400a.put(k, Integer.valueOf(num.intValue() + 1));
            }
        }

        /* renamed from: b */
        public void m2500b(K k) {
            Integer num = this.f20400a.get(k);
            if (num == null) {
                throw new IllegalStateException("Object does not have any references: " + k);
            } else if (num.intValue() > 1) {
                this.f20400a.put(k, Integer.valueOf(num.intValue() - 1));
            } else if (num.intValue() == 1) {
                this.f20400a.remove(k);
            } else {
                throw new IllegalStateException("Invalid reference count: " + num);
            }
        }
    }

    public RealmObservableFactory(boolean z) {
        this.f20286a = z;
    }

    /* renamed from: i */
    private Scheduler m2523i() {
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            return AndroidSchedulers.m4450a(myLooper);
        }
        throw new IllegalStateException("No looper found");
    }

    @Override // io.realm.p008rx.RxObservableFactory
    /* renamed from: a */
    public Observable<ObjectChange<DynamicRealmObject>> mo2499a(DynamicRealm dynamicRealm, final DynamicRealmObject dynamicRealmObject) {
        if (dynamicRealm.m3160W()) {
            return Observable.just(new ObjectChange(dynamicRealmObject, null));
        }
        final RealmConfiguration J = dynamicRealm.m3164J();
        Scheduler i = m2523i();
        return Observable.create(new ObservableOnSubscribe<ObjectChange<DynamicRealmObject>>() { // from class: io.realm.rx.RealmObservableFactory.17
            @Override // io.reactivex.ObservableOnSubscribe
            /* renamed from: a */
            public void mo2504a(final ObservableEmitter<ObjectChange<DynamicRealmObject>> observableEmitter) {
                if (RealmObject.isValid(dynamicRealmObject)) {
                    final DynamicRealm o0 = DynamicRealm.m3127o0(J);
                    ((StrongReferenceCounter) RealmObservableFactory.this.f20289d.get()).m2501a(dynamicRealmObject);
                    final RealmObjectChangeListener<DynamicRealmObject> realmObjectChangeListener = new RealmObjectChangeListener<DynamicRealmObject>() { // from class: io.realm.rx.RealmObservableFactory.17.1
                        /* renamed from: b */
                        public void mo2515a(DynamicRealmObject dynamicRealmObject2, ObjectChangeSet objectChangeSet) {
                            if (!observableEmitter.isDisposed()) {
                                ObservableEmitter observableEmitter2 = observableEmitter;
                                DynamicRealmObject dynamicRealmObject3 = dynamicRealmObject2;
                                if (RealmObservableFactory.this.f20286a) {
                                    dynamicRealmObject3 = (DynamicRealmObject) RealmObject.freeze(dynamicRealmObject2);
                                }
                                observableEmitter2.onNext(new ObjectChange(dynamicRealmObject3, objectChangeSet));
                            }
                        }
                    };
                    dynamicRealmObject.addChangeListener(realmObjectChangeListener);
                    observableEmitter.mo3860a(Disposables.m4439c(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.17.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!o0.isClosed()) {
                                RealmObject.removeChangeListener(dynamicRealmObject, realmObjectChangeListener);
                                o0.close();
                            }
                            ((StrongReferenceCounter) RealmObservableFactory.this.f20289d.get()).m2500b(dynamicRealmObject);
                        }
                    }));
                    observableEmitter.onNext(new ObjectChange<>(RealmObservableFactory.this.f20286a ? (DynamicRealmObject) RealmObject.freeze(dynamicRealmObject) : dynamicRealmObject, null));
                }
            }
        }).subscribeOn(i).unsubscribeOn(i);
    }

    @Override // io.realm.p008rx.RxObservableFactory
    /* renamed from: b */
    public <E extends RealmModel> Flowable<E> mo2498b(final Realm realm, final E e) {
        if (realm.m3160W()) {
            return Flowable.m4506h(e);
        }
        final RealmConfiguration J = realm.m3164J();
        Scheduler i = m2523i();
        return Flowable.m4510d(new FlowableOnSubscribe<E>() { // from class: io.realm.rx.RealmObservableFactory.14
            @Override // io.reactivex.FlowableOnSubscribe
            /* renamed from: a */
            public void mo2507a(final FlowableEmitter<E> flowableEmitter) {
                if (!realm.isClosed()) {
                    final Realm I0 = Realm.m3062I0(J);
                    ((StrongReferenceCounter) RealmObservableFactory.this.f20289d.get()).m2501a(e);
                    final RealmChangeListener<E> realmChangeListener = new RealmChangeListener<E>() { // from class: io.realm.rx.RealmObservableFactory.14.1
                        /* JADX WARN: Incorrect types in method signature: (TE;)V */
                        /* renamed from: b */
                        public void mo2506a(RealmModel realmModel) {
                            if (!flowableEmitter.isCancelled()) {
                                FlowableEmitter flowableEmitter2 = flowableEmitter;
                                RealmModel realmModel2 = realmModel;
                                if (RealmObservableFactory.this.f20286a) {
                                    realmModel2 = RealmObject.freeze(realmModel);
                                }
                                flowableEmitter2.onNext(realmModel2);
                            }
                        }
                    };
                    RealmObject.addChangeListener(e, (RealmChangeListener<RealmModel>) realmChangeListener);
                    flowableEmitter.mo4263a(Disposables.m4439c(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.14.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!I0.isClosed()) {
                                RealmObject.removeChangeListener(e, realmChangeListener);
                                I0.close();
                            }
                            ((StrongReferenceCounter) RealmObservableFactory.this.f20289d.get()).m2500b(e);
                        }
                    }));
                    flowableEmitter.onNext(RealmObservableFactory.this.f20286a ? RealmObject.freeze(e) : e);
                }
            }
        }, f20285e).m4492x(i).m4513A(i);
    }

    @Override // io.realm.p008rx.RxObservableFactory
    /* renamed from: c */
    public <E extends RealmModel> Observable<ObjectChange<E>> mo2497c(Realm realm, final E e) {
        if (realm.m3160W()) {
            return Observable.just(new ObjectChange(e, null));
        }
        final RealmConfiguration J = realm.m3164J();
        Scheduler i = m2523i();
        return Observable.create(new ObservableOnSubscribe<ObjectChange<E>>() { // from class: io.realm.rx.RealmObservableFactory.15
            @Override // io.reactivex.ObservableOnSubscribe
            /* renamed from: a */
            public void mo2504a(final ObservableEmitter<ObjectChange<E>> observableEmitter) {
                if (RealmObject.isValid(e)) {
                    final Realm I0 = Realm.m3062I0(J);
                    ((StrongReferenceCounter) RealmObservableFactory.this.f20289d.get()).m2501a(e);
                    final RealmObjectChangeListener<E> realmObjectChangeListener = new RealmObjectChangeListener<E>() { // from class: io.realm.rx.RealmObservableFactory.15.1
                        /* JADX WARN: Incorrect types in method signature: (TE;Lio/realm/ObjectChangeSet;)V */
                        @Override // io.realm.RealmObjectChangeListener
                        /* renamed from: a */
                        public void mo2515a(RealmModel realmModel, ObjectChangeSet objectChangeSet) {
                            if (!observableEmitter.isDisposed()) {
                                ObservableEmitter observableEmitter2 = observableEmitter;
                                RealmModel realmModel2 = realmModel;
                                if (RealmObservableFactory.this.f20286a) {
                                    realmModel2 = RealmObject.freeze(realmModel);
                                }
                                observableEmitter2.onNext(new ObjectChange(realmModel2, objectChangeSet));
                            }
                        }
                    };
                    RealmObject.addChangeListener(e, (RealmObjectChangeListener<RealmModel>) realmObjectChangeListener);
                    observableEmitter.mo3860a(Disposables.m4439c(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.15.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!I0.isClosed()) {
                                RealmObject.removeChangeListener(e, realmObjectChangeListener);
                                I0.close();
                            }
                            ((StrongReferenceCounter) RealmObservableFactory.this.f20289d.get()).m2500b(e);
                        }
                    }));
                    observableEmitter.onNext(new ObjectChange(RealmObservableFactory.this.f20286a ? RealmObject.freeze(e) : e, null));
                }
            }
        }).subscribeOn(i).unsubscribeOn(i);
    }

    @Override // io.realm.p008rx.RxObservableFactory
    /* renamed from: d */
    public Flowable<DynamicRealmObject> mo2496d(final DynamicRealm dynamicRealm, final DynamicRealmObject dynamicRealmObject) {
        if (dynamicRealm.m3160W()) {
            return Flowable.m4506h(dynamicRealmObject);
        }
        final RealmConfiguration J = dynamicRealm.m3164J();
        Scheduler i = m2523i();
        return Flowable.m4510d(new FlowableOnSubscribe<DynamicRealmObject>() { // from class: io.realm.rx.RealmObservableFactory.16
            @Override // io.reactivex.FlowableOnSubscribe
            /* renamed from: a */
            public void mo2507a(final FlowableEmitter<DynamicRealmObject> flowableEmitter) {
                if (!dynamicRealm.isClosed()) {
                    final DynamicRealm o0 = DynamicRealm.m3127o0(J);
                    ((StrongReferenceCounter) RealmObservableFactory.this.f20289d.get()).m2501a(dynamicRealmObject);
                    final RealmChangeListener<DynamicRealmObject> realmChangeListener = new RealmChangeListener<DynamicRealmObject>() { // from class: io.realm.rx.RealmObservableFactory.16.1
                        /* renamed from: b */
                        public void mo2506a(DynamicRealmObject dynamicRealmObject2) {
                            if (!flowableEmitter.isCancelled()) {
                                FlowableEmitter flowableEmitter2 = flowableEmitter;
                                DynamicRealmObject dynamicRealmObject3 = dynamicRealmObject2;
                                if (RealmObservableFactory.this.f20286a) {
                                    dynamicRealmObject3 = (DynamicRealmObject) RealmObject.freeze(dynamicRealmObject2);
                                }
                                flowableEmitter2.onNext(dynamicRealmObject3);
                            }
                        }
                    };
                    RealmObject.addChangeListener(dynamicRealmObject, realmChangeListener);
                    flowableEmitter.mo4263a(Disposables.m4439c(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.16.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!o0.isClosed()) {
                                RealmObject.removeChangeListener(dynamicRealmObject, realmChangeListener);
                                o0.close();
                            }
                            ((StrongReferenceCounter) RealmObservableFactory.this.f20289d.get()).m2500b(dynamicRealmObject);
                        }
                    }));
                    flowableEmitter.onNext(RealmObservableFactory.this.f20286a ? (DynamicRealmObject) RealmObject.freeze(dynamicRealmObject) : dynamicRealmObject);
                }
            }
        }, f20285e).m4492x(i).m4513A(i);
    }

    public boolean equals(Object obj) {
        return obj instanceof RealmObservableFactory;
    }

    public int hashCode() {
        return 37;
    }
}
