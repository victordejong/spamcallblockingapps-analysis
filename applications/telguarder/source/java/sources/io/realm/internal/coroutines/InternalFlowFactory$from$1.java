package io.realm.internal.coroutines;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import io.realm.Realm;
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
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001*\u0010\u0012\f\u0012\n \u0004*\u0004\u0018\u00010\u00030\u00030\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, m400d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "Lio/realm/Realm;", "kotlin.jvm.PlatformType", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m399k = 3, m398mv = {1, 1, 16})
@DebugMetadata(m392c = "io.realm.internal.coroutines.InternalFlowFactory$from$1", m391f = "InternalFlowFactory.kt", m390i = {0, 0, 0}, m389l = {64}, m388m = "invokeSuspend", m387n = {"$this$callbackFlow", "flowRealm", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER}, m386s = {"L$0", "L$1", "L$2"})
/* loaded from: classes2-dex2jar.jar:io/realm/internal/coroutines/InternalFlowFactory$from$1.class */
public final class InternalFlowFactory$from$1 extends SuspendLambda implements Function2<ProducerScope<? super Realm>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Realm $realm;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* renamed from: p$ */
    private ProducerScope f1308p$;
    final /* synthetic */ InternalFlowFactory this$0;

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m400d2 = {"<anonymous>", "", "invoke"}, m399k = 3, m398mv = {1, 1, 16})
    /* renamed from: io.realm.internal.coroutines.InternalFlowFactory$from$1$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/coroutines/InternalFlowFactory$from$1$1.class */
    public static final class C24301 extends Lambda implements Function0<Unit> {
        final /* synthetic */ Realm $flowRealm;
        final /* synthetic */ RealmChangeListener $listener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C24301(Realm realm, RealmChangeListener realmChangeListener) {
            super(0);
            this.$flowRealm = realm;
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
    public InternalFlowFactory$from$1(InternalFlowFactory internalFlowFactory, Realm realm, Continuation continuation) {
        super(2, continuation);
        this.this$0 = internalFlowFactory;
        this.$realm = realm;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> completion) {
        Intrinsics.checkParameterIsNotNull(completion, "completion");
        InternalFlowFactory$from$1 internalFlowFactory$from$1 = new InternalFlowFactory$from$1(this.this$0, this.$realm, completion);
        internalFlowFactory$from$1.f1308p$ = (ProducerScope) obj;
        return internalFlowFactory$from$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super Realm> producerScope, Continuation<? super Unit> continuation) {
        return ((InternalFlowFactory$from$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final ProducerScope producerScope = this.f1308p$;
            Realm realm = Realm.getInstance(this.$realm.getConfiguration());
            RealmChangeListener<Realm> realmChangeListener = new RealmChangeListener<Realm>() { // from class: io.realm.internal.coroutines.InternalFlowFactory$from$1$listener$1
                public final void onChange(Realm listenerRealm) {
                    boolean z2;
                    Intrinsics.checkParameterIsNotNull(listenerRealm, "listenerRealm");
                    if (CoroutineScopeKt.isActive(producerScope)) {
                        z2 = InternalFlowFactory$from$1.this.this$0.returnFrozenObjects;
                        if (z2) {
                            producerScope.offer(InternalFlowFactory$from$1.this.$realm.freeze());
                        } else {
                            producerScope.offer(listenerRealm);
                        }
                    }
                }
            };
            realm.addChangeListener(realmChangeListener);
            z = this.this$0.returnFrozenObjects;
            if (z) {
                producerScope.offer(realm.freeze());
            } else {
                producerScope.offer(realm);
            }
            this.L$0 = producerScope;
            this.L$1 = realm;
            this.L$2 = realmChangeListener;
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, new C24301(realm, realmChangeListener), this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            RealmChangeListener realmChangeListener2 = (RealmChangeListener) this.L$2;
            Realm realm2 = (Realm) this.L$1;
            ProducerScope producerScope2 = (ProducerScope) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
