package io.realm.internal.coroutines;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import io.realm.OrderedCollectionChangeSet;
import io.realm.OrderedRealmCollectionChangeListener;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmList;
import io.realm.p023rx.CollectionChange;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.SendChannel;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0018\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*2\u0012.\u0012,\u0012(\u0012&\u0012\f\u0012\n \u0006*\u0004\u0018\u0001H\u0002H\u0002 \u0006*\u0012\u0012\f\u0012\n \u0006*\u0004\u0018\u0001H\u0002H\u0002\u0018\u00010\u00050\u00050\u00040\u0003H\u008a@¢\u0006\u0004\b\u0007\u0010\b"}, m400d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/channels/ProducerScope;", "Lio/realm/rx/CollectionChange;", "Lio/realm/RealmList;", "kotlin.jvm.PlatformType", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m399k = 3, m398mv = {1, 1, 16})
@DebugMetadata(m392c = "io.realm.internal.coroutines.InternalFlowFactory$changesetFrom$3", m391f = "InternalFlowFactory.kt", m390i = {0, 1, 1, 1}, m389l = {366, 394}, m388m = "invokeSuspend", m387n = {"$this$callbackFlow", "$this$callbackFlow", "flowRealm", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER}, m386s = {"L$0", "L$0", "L$1", "L$2"})
/* loaded from: classes2-dex2jar.jar:io/realm/internal/coroutines/InternalFlowFactory$changesetFrom$3.class */
public final class InternalFlowFactory$changesetFrom$3 extends SuspendLambda implements Function2<ProducerScope<? super CollectionChange<RealmList<T>>>, Continuation<? super Unit>, Object> {
    final /* synthetic */ RealmConfiguration $config;
    final /* synthetic */ RealmList $list;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* renamed from: p$ */
    private ProducerScope f1304p$;
    final /* synthetic */ InternalFlowFactory this$0;

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, m400d2 = {"<anonymous>", "", "T", "invoke"}, m399k = 3, m398mv = {1, 1, 16})
    /* renamed from: io.realm.internal.coroutines.InternalFlowFactory$changesetFrom$3$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/coroutines/InternalFlowFactory$changesetFrom$3$1.class */
    public static final class C24221 extends Lambda implements Function0<Unit> {
        public static final C24221 INSTANCE = new C24221();

        C24221() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
        }
    }

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, m400d2 = {"<anonymous>", "", "T", "invoke"}, m399k = 3, m398mv = {1, 1, 16})
    /* renamed from: io.realm.internal.coroutines.InternalFlowFactory$changesetFrom$3$2 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/coroutines/InternalFlowFactory$changesetFrom$3$2.class */
    public static final class C24232 extends Lambda implements Function0<Unit> {
        final /* synthetic */ Realm $flowRealm;
        final /* synthetic */ OrderedRealmCollectionChangeListener $listener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C24232(Realm realm, OrderedRealmCollectionChangeListener orderedRealmCollectionChangeListener) {
            super(0);
            InternalFlowFactory$changesetFrom$3.this = r4;
            this.$flowRealm = realm;
            this.$listener = orderedRealmCollectionChangeListener;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
            Realm flowRealm = this.$flowRealm;
            Intrinsics.checkExpressionValueIsNotNull(flowRealm, "flowRealm");
            if (!flowRealm.isClosed()) {
                InternalFlowFactory$changesetFrom$3.this.$list.removeChangeListener(this.$listener);
                this.$flowRealm.close();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InternalFlowFactory$changesetFrom$3(InternalFlowFactory internalFlowFactory, RealmList realmList, RealmConfiguration realmConfiguration, Continuation continuation) {
        super(2, continuation);
        this.this$0 = internalFlowFactory;
        this.$list = realmList;
        this.$config = realmConfiguration;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> completion) {
        Intrinsics.checkParameterIsNotNull(completion, "completion");
        InternalFlowFactory$changesetFrom$3 internalFlowFactory$changesetFrom$3 = new InternalFlowFactory$changesetFrom$3(this.this$0, this.$list, this.$config, completion);
        internalFlowFactory$changesetFrom$3.f1304p$ = (ProducerScope) obj;
        return internalFlowFactory$changesetFrom$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super Unit> continuation) {
        return ((InternalFlowFactory$changesetFrom$3) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ProducerScope producerScope = (ProducerScope) this.L$0;
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            } else if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                OrderedRealmCollectionChangeListener orderedRealmCollectionChangeListener = (OrderedRealmCollectionChangeListener) this.L$2;
                Realm realm = (Realm) this.L$1;
                ProducerScope producerScope2 = (ProducerScope) this.L$0;
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
        }
        ResultKt.throwOnFailure(obj);
        final ProducerScope producerScope3 = this.f1304p$;
        if (!this.$list.isValid()) {
            this.L$0 = producerScope3;
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope3, C24221.INSTANCE, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
        Realm realm2 = Realm.getInstance(this.$config);
        OrderedRealmCollectionChangeListener orderedRealmCollectionChangeListener2 = new OrderedRealmCollectionChangeListener<RealmList<T>>() { // from class: io.realm.internal.coroutines.InternalFlowFactory$changesetFrom$3$listener$1
            public final void onChange(RealmList<T> listenerList, OrderedCollectionChangeSet changeSet) {
                boolean z2;
                Intrinsics.checkParameterIsNotNull(listenerList, "listenerList");
                Intrinsics.checkParameterIsNotNull(changeSet, "changeSet");
                if (CoroutineScopeKt.isActive(producerScope3)) {
                    if (!listenerList.isValid()) {
                        SendChannel.DefaultImpls.close$default(producerScope3, (Throwable) null, 1, (Object) null);
                        return;
                    }
                    z2 = InternalFlowFactory$changesetFrom$3.this.this$0.returnFrozenObjects;
                    if (z2) {
                        producerScope3.offer(new CollectionChange(listenerList.freeze(), changeSet));
                    } else {
                        producerScope3.offer(new CollectionChange(listenerList, changeSet));
                    }
                }
            }

            @Override // io.realm.OrderedRealmCollectionChangeListener
            public /* bridge */ /* synthetic */ void onChange(Object obj2, OrderedCollectionChangeSet orderedCollectionChangeSet) {
                onChange((RealmList) ((RealmList) obj2), orderedCollectionChangeSet);
            }
        };
        this.$list.addChangeListener(orderedRealmCollectionChangeListener2);
        z = this.this$0.returnFrozenObjects;
        if (z) {
            producerScope3.offer(new CollectionChange(this.$list.freeze(), null));
        } else {
            producerScope3.offer(new CollectionChange(this.$list, null));
        }
        this.L$0 = producerScope3;
        this.L$1 = realm2;
        this.L$2 = orderedRealmCollectionChangeListener2;
        this.label = 2;
        if (ProduceKt.awaitClose(producerScope3, new C24232(realm2, orderedRealmCollectionChangeListener2), this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }
}
