package io.realm.internal.coroutines;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import io.realm.DynamicRealm;
import io.realm.RealmChangeListener;
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
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001*\u0010\u0012\f\u0012\n \u0004*\u0004\u0018\u00010\u00030\u00030\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, m400d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "Lio/realm/DynamicRealm;", "kotlin.jvm.PlatformType", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m399k = 3, m398mv = {1, 1, 16})
@DebugMetadata(m392c = "io.realm.internal.coroutines.InternalFlowFactory$from$2", m391f = "InternalFlowFactory.kt", m390i = {0, 0, 0}, m389l = {97}, m388m = "invokeSuspend", m387n = {"$this$callbackFlow", "flowRealm", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER}, m386s = {"L$0", "L$1", "L$2"})
/* loaded from: classes2-dex2jar.jar:io/realm/internal/coroutines/InternalFlowFactory$from$2.class */
public final class InternalFlowFactory$from$2 extends SuspendLambda implements Function2<ProducerScope<? super DynamicRealm>, Continuation<? super Unit>, Object> {
    final /* synthetic */ DynamicRealm $dynamicRealm;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* renamed from: p$ */
    private ProducerScope f1309p$;
    final /* synthetic */ InternalFlowFactory this$0;

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m400d2 = {"<anonymous>", "", "invoke"}, m399k = 3, m398mv = {1, 1, 16})
    /* renamed from: io.realm.internal.coroutines.InternalFlowFactory$from$2$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/coroutines/InternalFlowFactory$from$2$1.class */
    public static final class C24311 extends Lambda implements Function0<Unit> {
        final /* synthetic */ DynamicRealm $flowRealm;
        final /* synthetic */ RealmChangeListener $listener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C24311(DynamicRealm dynamicRealm, RealmChangeListener realmChangeListener) {
            super(0);
            this.$flowRealm = dynamicRealm;
            this.$listener = realmChangeListener;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
            this.$flowRealm.removeChangeListener(this.$listener);
            this.$flowRealm.close();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InternalFlowFactory$from$2(InternalFlowFactory internalFlowFactory, DynamicRealm dynamicRealm, Continuation continuation) {
        super(2, continuation);
        this.this$0 = internalFlowFactory;
        this.$dynamicRealm = dynamicRealm;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> completion) {
        Intrinsics.checkParameterIsNotNull(completion, "completion");
        InternalFlowFactory$from$2 internalFlowFactory$from$2 = new InternalFlowFactory$from$2(this.this$0, this.$dynamicRealm, completion);
        internalFlowFactory$from$2.f1309p$ = (ProducerScope) obj;
        return internalFlowFactory$from$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super DynamicRealm> producerScope, Continuation<? super Unit> continuation) {
        return ((InternalFlowFactory$from$2) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final ProducerScope producerScope = this.f1309p$;
            DynamicRealm dynamicRealm = DynamicRealm.getInstance(this.$dynamicRealm.getConfiguration());
            RealmChangeListener<DynamicRealm> realmChangeListener = new RealmChangeListener<DynamicRealm>() { // from class: io.realm.internal.coroutines.InternalFlowFactory$from$2$listener$1
                public final void onChange(DynamicRealm listenerRealm) {
                    boolean z2;
                    Intrinsics.checkParameterIsNotNull(listenerRealm, "listenerRealm");
                    if (CoroutineScopeKt.isActive(producerScope)) {
                        z2 = InternalFlowFactory$from$2.this.this$0.returnFrozenObjects;
                        if (z2) {
                            producerScope.offer(InternalFlowFactory$from$2.this.$dynamicRealm.freeze());
                        } else {
                            producerScope.offer(listenerRealm);
                        }
                    }
                }
            };
            dynamicRealm.addChangeListener(realmChangeListener);
            z = this.this$0.returnFrozenObjects;
            if (z) {
                producerScope.offer(dynamicRealm.freeze());
            } else {
                producerScope.offer(dynamicRealm);
            }
            this.L$0 = producerScope;
            this.L$1 = dynamicRealm;
            this.L$2 = realmChangeListener;
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, new C24311(dynamicRealm, realmChangeListener), this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            RealmChangeListener realmChangeListener2 = (RealmChangeListener) this.L$2;
            DynamicRealm dynamicRealm2 = (DynamicRealm) this.L$1;
            ProducerScope producerScope2 = (ProducerScope) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
