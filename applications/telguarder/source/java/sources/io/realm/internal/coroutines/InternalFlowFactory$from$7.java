package io.realm.internal.coroutines;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import io.realm.Realm;
import io.realm.RealmChangeListener;
import io.realm.RealmConfiguration;
import io.realm.RealmModel;
import io.realm.RealmObject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TypeCastException;
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
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0014\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, m400d2 = {"<anonymous>", "", "T", "Lio/realm/RealmModel;", "Lkotlinx/coroutines/channels/ProducerScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m399k = 3, m398mv = {1, 1, 16})
@DebugMetadata(m392c = "io.realm.internal.coroutines.InternalFlowFactory$from$7", m391f = "InternalFlowFactory.kt", m390i = {0, 1, 1, 1}, m389l = {517, 545}, m388m = "invokeSuspend", m387n = {"$this$callbackFlow", "$this$callbackFlow", "flowRealm", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER}, m386s = {"L$0", "L$0", "L$1", "L$2"})
/* loaded from: classes2-dex2jar.jar:io/realm/internal/coroutines/InternalFlowFactory$from$7.class */
public final class InternalFlowFactory$from$7 extends SuspendLambda implements Function2<ProducerScope<? super T>, Continuation<? super Unit>, Object> {
    final /* synthetic */ RealmConfiguration $config;
    final /* synthetic */ Realm $realm;
    final /* synthetic */ RealmModel $realmObject;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* renamed from: p$ */
    private ProducerScope f1314p$;
    final /* synthetic */ InternalFlowFactory this$0;

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m400d2 = {"<anonymous>", "", "T", "Lio/realm/RealmModel;", "invoke"}, m399k = 3, m398mv = {1, 1, 16})
    /* renamed from: io.realm.internal.coroutines.InternalFlowFactory$from$7$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/coroutines/InternalFlowFactory$from$7$1.class */
    public static final class C24401 extends Lambda implements Function0<Unit> {
        public static final C24401 INSTANCE = new C24401();

        C24401() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
        }
    }

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m400d2 = {"<anonymous>", "", "T", "Lio/realm/RealmModel;", "invoke"}, m399k = 3, m398mv = {1, 1, 16})
    /* renamed from: io.realm.internal.coroutines.InternalFlowFactory$from$7$2 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/coroutines/InternalFlowFactory$from$7$2.class */
    public static final class C24412 extends Lambda implements Function0<Unit> {
        final /* synthetic */ Realm $flowRealm;
        final /* synthetic */ RealmChangeListener $listener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C24412(Realm realm, RealmChangeListener realmChangeListener) {
            super(0);
            InternalFlowFactory$from$7.this = r4;
            this.$flowRealm = realm;
            this.$listener = realmChangeListener;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
            Realm flowRealm = this.$flowRealm;
            Intrinsics.checkExpressionValueIsNotNull(flowRealm, "flowRealm");
            if (!flowRealm.isClosed()) {
                RealmObject.removeChangeListener(InternalFlowFactory$from$7.this.$realmObject, this.$listener);
                this.$flowRealm.close();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InternalFlowFactory$from$7(InternalFlowFactory internalFlowFactory, Realm realm, RealmConfiguration realmConfiguration, RealmModel realmModel, Continuation continuation) {
        super(2, continuation);
        this.this$0 = internalFlowFactory;
        this.$realm = realm;
        this.$config = realmConfiguration;
        this.$realmObject = realmModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> completion) {
        Intrinsics.checkParameterIsNotNull(completion, "completion");
        InternalFlowFactory$from$7 internalFlowFactory$from$7 = new InternalFlowFactory$from$7(this.this$0, this.$realm, this.$config, this.$realmObject, completion);
        internalFlowFactory$from$7.f1314p$ = (ProducerScope) obj;
        return internalFlowFactory$from$7;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super Unit> continuation) {
        return ((InternalFlowFactory$from$7) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
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
                RealmChangeListener realmChangeListener = (RealmChangeListener) this.L$2;
                Realm realm = (Realm) this.L$1;
                ProducerScope producerScope2 = (ProducerScope) this.L$0;
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
        }
        ResultKt.throwOnFailure(obj);
        final ProducerScope producerScope3 = this.f1314p$;
        if (this.$realm.isClosed()) {
            this.L$0 = producerScope3;
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope3, C24401.INSTANCE, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
        Realm realm2 = Realm.getInstance(this.$config);
        RealmChangeListener realmChangeListener2 = new RealmChangeListener<T>() { // from class: io.realm.internal.coroutines.InternalFlowFactory$from$7$listener$1
            /* JADX WARN: Incorrect types in method signature: (TT;)V */
            public final void onChange(RealmModel listenerObj) {
                boolean z2;
                Intrinsics.checkParameterIsNotNull(listenerObj, "listenerObj");
                if (CoroutineScopeKt.isActive(producerScope3)) {
                    z2 = InternalFlowFactory$from$7.this.this$0.returnFrozenObjects;
                    if (!z2) {
                        producerScope3.offer(listenerObj);
                        return;
                    }
                    ProducerScope producerScope4 = producerScope3;
                    RealmModel freeze = RealmObject.freeze(listenerObj);
                    if (freeze == null) {
                        throw new TypeCastException("null cannot be cast to non-null type T");
                    }
                    producerScope4.offer(freeze);
                }
            }
        };
        RealmObject.addChangeListener(this.$realmObject, realmChangeListener2);
        if (RealmObject.isLoaded(this.$realmObject)) {
            z = this.this$0.returnFrozenObjects;
            if (z) {
                RealmModel freeze = RealmObject.freeze(this.$realmObject);
                Intrinsics.checkExpressionValueIsNotNull(freeze, "RealmObject.freeze(realmObject)");
                producerScope3.offer(freeze);
            } else {
                producerScope3.offer(this.$realmObject);
            }
        }
        this.L$0 = producerScope3;
        this.L$1 = realm2;
        this.L$2 = realmChangeListener2;
        this.label = 2;
        if (ProduceKt.awaitClose(producerScope3, new C24412(realm2, realmChangeListener2), this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }
}
