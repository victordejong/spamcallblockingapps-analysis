package com.gogolook.whoscallsdk.p051ml;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import com.gogolook.whoscallsdk.p051ml.client.SmsFilterClient;
import com.gogolook.whoscallsdk.p051ml.model.ModelStatus;
import com.gogolook.whoscallsdk.p051ml.model.ModelType;
import java.util.Locale;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import p081h.p160h.p179e.p192b.C6442a;
import p081h.p160h.p179e.p192b.C6443b;
import p081h.p160h.p179e.p192b.p196e.C6461a;
import p081h.p160h.p179e.p192b.p197f.C6466c;
import p081h.p160h.p179e.p192b.p197f.p199e.C6473a;
import p081h.p160h.p179e.p192b.p197f.p199e.C6474b;
import p081h.p203i.p325c.p373y.p374a.p377c.C10047c;
import p081h.p203i.p325c.p373y.p378b.C10055a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14979k;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p634w.AbstractC15037a;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u001bH\u0007J6\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001d\u001a\u00020\u001e2\b\b\u0002\u0010\u001f\u001a\u00020 H\u0007J\u0012\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010\u0016\u001a\u00020\u0017H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u000e\u001a\u00020\u000f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0010\u0010\u0011¨\u0006#"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/MLSdkManager;", "", "()V", "dispatcherProvider", "Lcom/gogolook/whoscallsdk/ml/dispatcher/DefaultDispatcherProvider;", "managerScope", "Lkotlinx/coroutines/CoroutineScope;", "modelStatusLiveData", "Landroidx/lifecycle/MutableLiveData;", "Lcom/gogolook/whoscallsdk/ml/model/ModelStatus;", "getModelStatusLiveData", "()Landroidx/lifecycle/MutableLiveData;", "sdkExceptionHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "smsFilterClient", "Lcom/gogolook/whoscallsdk/ml/client/SmsFilterClient;", "getSmsFilterClient", "()Lcom/gogolook/whoscallsdk/ml/client/SmsFilterClient;", "smsFilterClient$delegate", "Lkotlin/Lazy;", "initModel", "", "context", "Landroid/content/Context;", "modelType", "Lcom/gogolook/whoscallsdk/ml/model/ModelType;", "region", "", "preDownload", "forceUpdate", "", "conditions", "Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;", "retrieveMetadata", "Lcom/gogolook/whoscallsdk/ml/model/metadata/Metadata;", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: com.gogolook.whoscallsdk.ml.MLSdkManager */
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/MLSdkManager.class */
public final class MLSdkManager {
    public static final /* synthetic */ AbstractC14906i[] $$delegatedProperties;
    public static final MLSdkManager INSTANCE = new MLSdkManager();
    public static final CoroutineExceptionHandler sdkExceptionHandler = new C3534a(CoroutineExceptionHandler.Key);
    public static final C6461a dispatcherProvider = new C6461a();
    public static final CoroutineScope managerScope = CoroutineScopeKt.CoroutineScope(dispatcherProvider.mo22524b().plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null)).plus(sdkExceptionHandler));
    public static final MutableLiveData<ModelStatus> modelStatusLiveData = new MutableLiveData<>();
    public static final AbstractC14974f smsFilterClient$delegate = C14975g.m662a(C3537d.f6178a);

    /* renamed from: com.gogolook.whoscallsdk.ml.MLSdkManager$a */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/MLSdkManager$a.class */
    public static final class C3534a extends AbstractC15037a implements CoroutineExceptionHandler {
        public C3534a(AbstractC15049g.AbstractC15054c cVar) {
            super(cVar);
        }

        @Override // kotlinx.coroutines.CoroutineExceptionHandler
        public void handleException(AbstractC15049g gVar, Throwable th) {
            C6442a.m22561a(MLSdkManager.INSTANCE);
            StringBuilder sb = new StringBuilder();
            sb.append("sdk handler: ");
            th.printStackTrace();
            sb.append(C14989s.f33022a);
            sb.toString();
        }
    }

    @AbstractC15070f(m473c = "com/gogolook/whoscallsdk/ml/MLSdkManager$initModel$1", m472f = "MLSdkManager.kt", m471l = {73, 75}, m470m = "invokeSuspend")
    /* renamed from: com.gogolook.whoscallsdk.ml.MLSdkManager$b */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/MLSdkManager$b.class */
    public static final class C3535b extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f6165a;

        /* renamed from: b */
        public int f6166b;

        /* renamed from: c */
        public final /* synthetic */ Context f6167c;

        /* renamed from: d */
        public final /* synthetic */ ModelType f6168d;

        /* renamed from: e */
        public final /* synthetic */ String f6169e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3535b(Context context, ModelType modelType, String str, AbstractC15044d dVar) {
            super(2, dVar);
            this.f6167c = context;
            this.f6168d = modelType;
            this.f6169e = str;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C3535b bVar = new C3535b(this.f6167c, this.f6168d, this.f6169e, dVar);
            bVar.f6165a = (CoroutineScope) obj;
            return bVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C3535b) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.f6166b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                C6466c a2 = C6466c.f16106d.m22509a();
                Context context = this.f6167c;
                ModelType modelType = this.f6168d;
                String str = this.f6169e;
                MLSdkManager mLSdkManager = MLSdkManager.INSTANCE;
                C6461a aVar = MLSdkManager.dispatcherProvider;
                this.f6166b = 1;
                if (a2.m22515a(context, modelType, str, aVar, this) == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            return C14989s.f33022a;
        }
    }

    @AbstractC15070f(m473c = "com/gogolook/whoscallsdk/ml/MLSdkManager$preDownload$1", m472f = "MLSdkManager.kt", m471l = {61, 64}, m470m = "invokeSuspend")
    /* renamed from: com.gogolook.whoscallsdk.ml.MLSdkManager$c */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/MLSdkManager$c.class */
    public static final class C3536c extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f6170a;

        /* renamed from: b */
        public Object f6171b;

        /* renamed from: c */
        public int f6172c;

        /* renamed from: d */
        public final /* synthetic */ ModelType f6173d;

        /* renamed from: e */
        public final /* synthetic */ String f6174e;

        /* renamed from: f */
        public final /* synthetic */ Context f6175f;

        /* renamed from: g */
        public final /* synthetic */ C10047c f6176g;

        /* renamed from: h */
        public final /* synthetic */ boolean f6177h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3536c(ModelType modelType, String str, Context context, C10047c cVar, boolean z, AbstractC15044d dVar) {
            super(2, dVar);
            this.f6173d = modelType;
            this.f6174e = str;
            this.f6175f = context;
            this.f6176g = cVar;
            this.f6177h = z;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C3536c cVar = new C3536c(this.f6173d, this.f6174e, this.f6175f, this.f6176g, this.f6177h, dVar);
            cVar.f6170a = (CoroutineScope) obj;
            return cVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C3536c) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.f6172c;
            if (i != 0) {
                if (i == 1) {
                    C10055a aVar = (C10055a) this.f6171b;
                    if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                C10055a a2 = C6443b.f16063b.m22556a(this.f6173d, this.f6174e);
                C6443b bVar = C6443b.f16063b;
                Context context = this.f6175f;
                C10047c cVar = this.f6176g;
                boolean z = this.f6177h;
                this.f6171b = a2;
                this.f6172c = 1;
                if (bVar.m22557a(context, a2, cVar, z, this) == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            return C14989s.f33022a;
        }
    }

    /* renamed from: com.gogolook.whoscallsdk.ml.MLSdkManager$d */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/MLSdkManager$d.class */
    public static final class C3537d extends AbstractC15150l implements AbstractC15107a<SmsFilterClient> {

        /* renamed from: a */
        public static final C3537d f6178a = new C3537d();

        public C3537d() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final SmsFilterClient invoke() {
            MLSdkManager mLSdkManager = MLSdkManager.INSTANCE;
            CoroutineScope CoroutineScope = CoroutineScopeKt.CoroutineScope(MLSdkManager.dispatcherProvider.mo22524b().plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null)));
            MLSdkManager mLSdkManager2 = MLSdkManager.INSTANCE;
            return new SmsFilterClient(CoroutineScope, MLSdkManager.dispatcherProvider);
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(MLSdkManager.class), "smsFilterClient", "getSmsFilterClient()Lcom/gogolook/whoscallsdk/ml/client/SmsFilterClient;");
        C15131a0.m412a(sVar);
        $$delegatedProperties = new AbstractC14906i[]{sVar};
    }

    public static final void initModel(Context context, ModelType modelType, String str) {
        C15149k.m377b(context, "context");
        C15149k.m377b(modelType, "modelType");
        C15149k.m377b(str, "region");
        BuildersKt__Builders_commonKt.launch$default(managerScope, null, null, new C3535b(context, modelType, str, null), 3, null);
    }

    public static /* synthetic */ void initModel$default(Context context, ModelType modelType, String str, int i, Object obj) {
        if ((i & 4) != 0) {
            Locale locale = Locale.TAIWAN;
            C15149k.m383a((Object) locale, "Locale.TAIWAN");
            String country = locale.getCountry();
            C15149k.m383a((Object) country, "Locale.TAIWAN.country");
            Locale locale2 = Locale.ROOT;
            C15149k.m383a((Object) locale2, "Locale.ROOT");
            if (country != null) {
                str = country.toLowerCase(locale2);
                C15149k.m383a((Object) str, "(this as java.lang.String).toLowerCase(locale)");
            } else {
                throw new C14986p("null cannot be cast to non-null type java.lang.String");
            }
        }
        initModel(context, modelType, str);
    }

    public static final void preDownload(Context context, ModelType modelType, String str, boolean z, C10047c cVar) {
        C15149k.m377b(context, "context");
        C15149k.m377b(modelType, "modelType");
        C15149k.m377b(str, "region");
        C15149k.m377b(cVar, "conditions");
        BuildersKt__Builders_commonKt.launch$default(managerScope, dispatcherProvider.mo22525a(), null, new C3536c(modelType, str, context, cVar, z, null), 2, null);
    }

    public static /* synthetic */ void preDownload$default(Context context, ModelType modelType, String str, boolean z, C10047c cVar, int i, Object obj) {
        if ((i & 4) != 0) {
            Locale locale = Locale.TAIWAN;
            C15149k.m383a((Object) locale, "Locale.TAIWAN");
            String country = locale.getCountry();
            C15149k.m383a((Object) country, "Locale.TAIWAN.country");
            Locale locale2 = Locale.ROOT;
            C15149k.m383a((Object) locale2, "Locale.ROOT");
            if (country != null) {
                str = country.toLowerCase(locale2);
                C15149k.m383a((Object) str, "(this as java.lang.String).toLowerCase(locale)");
            } else {
                throw new C14986p("null cannot be cast to non-null type java.lang.String");
            }
        }
        if ((i & 8) != 0) {
            z = false;
        }
        if ((i & 16) != 0) {
            cVar = new C10047c.C10048a().m13536a();
            C15149k.m383a((Object) cVar, "FirebaseModelDownloadConditions.Builder().build()");
        }
        preDownload(context, modelType, str, z, cVar);
    }

    public static final C6473a retrieveMetadata(Context context) {
        C15149k.m377b(context, "context");
        return C6474b.f16134a.m22505a(context);
    }

    public final MutableLiveData<ModelStatus> getModelStatusLiveData() {
        return modelStatusLiveData;
    }

    public final SmsFilterClient getSmsFilterClient() {
        AbstractC14974f fVar = smsFilterClient$delegate;
        AbstractC14906i iVar = $$delegatedProperties[0];
        return (SmsFilterClient) fVar.getValue();
    }
}
