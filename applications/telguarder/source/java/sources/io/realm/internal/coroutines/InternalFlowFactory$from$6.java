package io.realm.internal.coroutines;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import io.realm.DynamicRealm;
import io.realm.RealmChangeListener;
import io.realm.RealmConfiguration;
import io.realm.RealmList;
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
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0014\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*,\u0012(\u0012&\u0012\f\u0012\n \u0005*\u0004\u0018\u0001H\u0002H\u0002 \u0005*\u0012\u0012\f\u0012\n \u0005*\u0004\u0018\u0001H\u0002H\u0002\u0018\u00010\u00040\u00040\u0003H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, m400d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/channels/ProducerScope;", "Lio/realm/RealmList;", "kotlin.jvm.PlatformType", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m399k = 3, m398mv = {1, 1, 16})
@DebugMetadata(m392c = "io.realm.internal.coroutines.InternalFlowFactory$from$6", m391f = "InternalFlowFactory.kt", m390i = {0, 1, 1, 1}, m389l = {415, 443}, m388m = "invokeSuspend", m387n = {"$this$callbackFlow", "$this$callbackFlow", "flowRealm", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER}, m386s = {"L$0", "L$0", "L$1", "L$2"})
/* loaded from: classes2-dex2jar.jar:io/realm/internal/coroutines/InternalFlowFactory$from$6.class */
public final class InternalFlowFactory$from$6 extends SuspendLambda implements Function2<ProducerScope<? super RealmList<T>>, Continuation<? super Unit>, Object> {
    final /* synthetic */ RealmConfiguration $config;
    final /* synthetic */ RealmList $realmList;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* renamed from: p$ */
    private ProducerScope f1313p$;
    final /* synthetic */ InternalFlowFactory this$0;

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, m400d2 = {"<anonymous>", "", "T", "invoke"}, m399k = 3, m398mv = {1, 1, 16})
    /* renamed from: io.realm.internal.coroutines.InternalFlowFactory$from$6$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/coroutines/InternalFlowFactory$from$6$1.class */
    public static final class C24381 extends Lambda implements Function0<Unit> {
        public static final C24381 INSTANCE = new C24381();

        C24381() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
        }
    }

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, m400d2 = {"<anonymous>", "", "T", "invoke"}, m399k = 3, m398mv = {1, 1, 16})
    /* renamed from: io.realm.internal.coroutines.InternalFlowFactory$from$6$2 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/coroutines/InternalFlowFactory$from$6$2.class */
    public static final class C24392 extends Lambda implements Function0<Unit> {
        final /* synthetic */ DynamicRealm $flowRealm;
        final /* synthetic */ RealmChangeListener $listener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C24392(DynamicRealm dynamicRealm, RealmChangeListener realmChangeListener) {
            super(0);
            InternalFlowFactory$from$6.this = r4;
            this.$flowRealm = dynamicRealm;
            this.$listener = realmChangeListener;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
            DynamicRealm flowRealm = this.$flowRealm;
            Intrinsics.checkExpressionValueIsNotNull(flowRealm, "flowRealm");
            if (!flowRealm.isClosed()) {
                InternalFlowFactory$from$6.this.$realmList.removeChangeListener(this.$listener);
                this.$flowRealm.close();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InternalFlowFactory$from$6(InternalFlowFactory internalFlowFactory, RealmList realmList, RealmConfiguration realmConfiguration, Continuation continuation) {
        super(2, continuation);
        this.this$0 = internalFlowFactory;
        this.$realmList = realmList;
        this.$config = realmConfiguration;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> completion) {
        Intrinsics.checkParameterIsNotNull(completion, "completion");
        InternalFlowFactory$from$6 internalFlowFactory$from$6 = new InternalFlowFactory$from$6(this.this$0, this.$realmList, this.$config, completion);
        internalFlowFactory$from$6.f1313p$ = (ProducerScope) obj;
        return internalFlowFactory$from$6;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super Unit> continuation) {
        return ((InternalFlowFactory$from$6) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
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
                DynamicRealm dynamicRealm = (DynamicRealm) this.L$1;
                ProducerScope producerScope2 = (ProducerScope) this.L$0;
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
        }
        ResultKt.throwOnFailure(obj);
        final ProducerScope producerScope3 = this.f1313p$;
        if (!this.$realmList.isValid()) {
            this.L$0 = producerScope3;
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope3, C24381.INSTANCE, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
        DynamicRealm dynamicRealm2 = DynamicRealm.getInstance(this.$config);
        RealmChangeListener realmChangeListener2 = new RealmChangeListener<RealmList<T>>() { // from class: io.realm.internal.coroutines.InternalFlowFactory$from$6$listener$1
            public final void onChange(RealmList<T> listenerResults) {
                boolean z2;
                Intrinsics.checkParameterIsNotNull(listenerResults, "listenerResults");
                if (CoroutineScopeKt.isActive(producerScope3)) {
                    if (!listenerResults.isValid()) {
                        SendChannel.DefaultImpls.close$default(producerScope3, (Throwable) null, 1, (Object) null);
                        return;
                    }
                    z2 = InternalFlowFactory$from$6.this.this$0.returnFrozenObjects;
                    if (z2) {
                        producerScope3.offer(listenerResults.freeze());
                    } else {
                        producerScope3.offer(listenerResults);
                    }
                }
            }

            @Override // io.realm.RealmChangeListener
            public /* bridge */ /* synthetic */ void onChange(Object obj2) {
                onChange((RealmList) ((RealmList) obj2));
            }
        };
        this.$realmList.addChangeListener(realmChangeListener2);
        z = this.this$0.returnFrozenObjects;
        if (z) {
            producerScope3.offer(this.$realmList.freeze());
        } else {
            producerScope3.offer(this.$realmList);
        }
        this.L$0 = producerScope3;
        this.L$1 = dynamicRealm2;
        this.L$2 = realmChangeListener2;
        this.label = 2;
        if (ProduceKt.awaitClose(producerScope3, new C24392(dynamicRealm2, realmChangeListener2), this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }
}
