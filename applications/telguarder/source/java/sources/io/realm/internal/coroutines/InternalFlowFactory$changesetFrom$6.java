package io.realm.internal.coroutines;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import io.realm.DynamicRealmObject;
import io.realm.ObjectChangeSet;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmObject;
import io.realm.RealmObjectChangeListener;
import io.realm.p023rx.ObjectChange;
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
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001*\u0016\u0012\u0012\u0012\u0010\u0012\f\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u00030\u0002H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, m400d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "Lio/realm/rx/ObjectChange;", "Lio/realm/DynamicRealmObject;", "kotlin.jvm.PlatformType", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m399k = 3, m398mv = {1, 1, 16})
@DebugMetadata(m392c = "io.realm.internal.coroutines.InternalFlowFactory$changesetFrom$6", m391f = "InternalFlowFactory.kt", m390i = {0, 1, 1, 1}, m389l = {674, 702}, m388m = "invokeSuspend", m387n = {"$this$callbackFlow", "$this$callbackFlow", "flowRealm", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER}, m386s = {"L$0", "L$0", "L$1", "L$2"})
/* loaded from: classes2-dex2jar.jar:io/realm/internal/coroutines/InternalFlowFactory$changesetFrom$6.class */
public final class InternalFlowFactory$changesetFrom$6 extends SuspendLambda implements Function2<ProducerScope<? super ObjectChange<DynamicRealmObject>>, Continuation<? super Unit>, Object> {
    final /* synthetic */ RealmConfiguration $config;
    final /* synthetic */ DynamicRealmObject $dynamicRealmObject;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* renamed from: p$ */
    private ProducerScope f1307p$;
    final /* synthetic */ InternalFlowFactory this$0;

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m400d2 = {"<anonymous>", "", "invoke"}, m399k = 3, m398mv = {1, 1, 16})
    /* renamed from: io.realm.internal.coroutines.InternalFlowFactory$changesetFrom$6$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/coroutines/InternalFlowFactory$changesetFrom$6$1.class */
    public static final class C24281 extends Lambda implements Function0<Unit> {
        public static final C24281 INSTANCE = new C24281();

        C24281() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
        }
    }

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m400d2 = {"<anonymous>", "", "invoke"}, m399k = 3, m398mv = {1, 1, 16})
    /* renamed from: io.realm.internal.coroutines.InternalFlowFactory$changesetFrom$6$2 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/coroutines/InternalFlowFactory$changesetFrom$6$2.class */
    public static final class C24292 extends Lambda implements Function0<Unit> {
        final /* synthetic */ Realm $flowRealm;
        final /* synthetic */ RealmObjectChangeListener $listener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C24292(Realm realm, RealmObjectChangeListener realmObjectChangeListener) {
            super(0);
            InternalFlowFactory$changesetFrom$6.this = r4;
            this.$flowRealm = realm;
            this.$listener = realmObjectChangeListener;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
            Realm flowRealm = this.$flowRealm;
            Intrinsics.checkExpressionValueIsNotNull(flowRealm, "flowRealm");
            if (!flowRealm.isClosed()) {
                RealmObject.removeChangeListener(InternalFlowFactory$changesetFrom$6.this.$dynamicRealmObject, this.$listener);
                this.$flowRealm.close();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InternalFlowFactory$changesetFrom$6(InternalFlowFactory internalFlowFactory, DynamicRealmObject dynamicRealmObject, RealmConfiguration realmConfiguration, Continuation continuation) {
        super(2, continuation);
        this.this$0 = internalFlowFactory;
        this.$dynamicRealmObject = dynamicRealmObject;
        this.$config = realmConfiguration;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> completion) {
        Intrinsics.checkParameterIsNotNull(completion, "completion");
        InternalFlowFactory$changesetFrom$6 internalFlowFactory$changesetFrom$6 = new InternalFlowFactory$changesetFrom$6(this.this$0, this.$dynamicRealmObject, this.$config, completion);
        internalFlowFactory$changesetFrom$6.f1307p$ = (ProducerScope) obj;
        return internalFlowFactory$changesetFrom$6;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super ObjectChange<DynamicRealmObject>> producerScope, Continuation<? super Unit> continuation) {
        return ((InternalFlowFactory$changesetFrom$6) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                RealmObjectChangeListener realmObjectChangeListener = (RealmObjectChangeListener) this.L$2;
                Realm realm = (Realm) this.L$1;
                ProducerScope producerScope2 = (ProducerScope) this.L$0;
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
        }
        ResultKt.throwOnFailure(obj);
        final ProducerScope producerScope3 = this.f1307p$;
        if (!RealmObject.isValid(this.$dynamicRealmObject)) {
            this.L$0 = producerScope3;
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope3, C24281.INSTANCE, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
        Realm realm2 = Realm.getInstance(this.$config);
        RealmObjectChangeListener<DynamicRealmObject> realmObjectChangeListener2 = new RealmObjectChangeListener<DynamicRealmObject>() { // from class: io.realm.internal.coroutines.InternalFlowFactory$changesetFrom$6$listener$1
            public final void onChange(DynamicRealmObject listenerObject, ObjectChangeSet objectChangeSet) {
                boolean z2;
                Intrinsics.checkParameterIsNotNull(listenerObject, "listenerObject");
                if (CoroutineScopeKt.isActive(producerScope3)) {
                    z2 = InternalFlowFactory$changesetFrom$6.this.this$0.returnFrozenObjects;
                    if (z2) {
                        producerScope3.offer(new ObjectChange(RealmObject.freeze(listenerObject), objectChangeSet));
                    } else {
                        producerScope3.offer(new ObjectChange(listenerObject, objectChangeSet));
                    }
                }
            }
        };
        RealmObject.addChangeListener(this.$dynamicRealmObject, realmObjectChangeListener2);
        if (RealmObject.isLoaded(this.$dynamicRealmObject)) {
            z = this.this$0.returnFrozenObjects;
            if (z) {
                producerScope3.offer(new ObjectChange(RealmObject.freeze(this.$dynamicRealmObject), null));
            } else {
                producerScope3.offer(new ObjectChange(this.$dynamicRealmObject, null));
            }
        }
        this.L$0 = producerScope3;
        this.L$1 = realm2;
        this.L$2 = realmObjectChangeListener2;
        this.label = 2;
        if (ProduceKt.awaitClose(producerScope3, new C24292(realm2, realmObjectChangeListener2), this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }
}
