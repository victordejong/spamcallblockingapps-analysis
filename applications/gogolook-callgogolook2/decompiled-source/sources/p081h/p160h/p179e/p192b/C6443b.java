package p081h.p160h.p179e.p192b;

import android.content.Context;
import com.flurry.sdk.C3496r;
import com.gogolook.whoscallsdk.p051ml.MLSdkManager;
import com.gogolook.whoscallsdk.p051ml.model.ModelStatus;
import com.gogolook.whoscallsdk.p051ml.model.ModelType;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.Locale;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import p081h.p160h.p179e.p192b.p197f.p199e.C6474b;
import p081h.p203i.p204a.p224e.p293r.AbstractC9130b;
import p081h.p203i.p204a.p224e.p293r.AbstractC9134d;
import p081h.p203i.p204a.p224e.p293r.AbstractC9137e;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p325c.p373y.p374a.p377c.C10047c;
import p081h.p203i.p325c.p373y.p374a.p377c.C10049d;
import p081h.p203i.p325c.p373y.p378b.C10055a;
import p626l.C14979k;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.C15056i;
import p626l.p634w.p635j.C15059b;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n��\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH��¢\u0006\u0002\b\u0010J3\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0012H\u0080@ø\u0001��¢\u0006\u0004\b\u0016\u0010\u0017J\u001d\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH��¢\u0006\u0002\b\u0019J.\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u00142\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00120\u001dH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/FirebaseModelHelper;", "", "()V", "helperScope", "Lkotlinx/coroutines/CoroutineScope;", "acquireMetadata", "", "context", "Landroid/content/Context;", "firebaseCustomRemoteModel", "Lcom/google/firebase/ml/custom/FirebaseCustomRemoteModel;", "buildRemoteModel", "modelType", "Lcom/gogolook/whoscallsdk/ml/model/ModelType;", "region", "", "buildRemoteModel$whoscallSDK_ml_release", "downloadIfNeeded", "", "firebaseModelDownloadConditions", "Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;", "forceUpdate", "downloadIfNeeded$whoscallSDK_ml_release", "(Landroid/content/Context;Lcom/google/firebase/ml/custom/FirebaseCustomRemoteModel;Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getModelName", "getModelName$whoscallSDK_ml_release", "triggerNewDownload", "conditions", "continuation", "Lkotlin/coroutines/Continuation;", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.e.b.b */
/* loaded from: classes2-dex2jar.jar:h/h/e/b/b.class */
public final class C6443b {

    /* renamed from: b */
    public static final C6443b f16063b = new C6443b();

    /* renamed from: a */
    public static final CoroutineScope f16062a = CoroutineScopeKt.MainScope();

    @AbstractC15070f(m473c = "com/gogolook/whoscallsdk/ml/FirebaseModelHelper$acquireMetadata$1", m472f = "FirebaseModelHelper.kt", m471l = {92}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004"}, m815d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: h.h.e.b.b$a */
    /* loaded from: classes2-dex2jar.jar:h/h/e/b/b$a.class */
    public static final class C6444a extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f16064a;

        /* renamed from: b */
        public int f16065b;

        /* renamed from: c */
        public final /* synthetic */ C10055a f16066c;

        /* renamed from: d */
        public final /* synthetic */ Context f16067d;

        /* renamed from: h.h.e.b.b$a$a */
        /* loaded from: classes2-dex2jar.jar:h/h/e/b/b$a$a.class */
        public static final class C6445a<TResult> implements AbstractC9137e<File> {
            public C6445a() {
            }

            /* renamed from: a  reason: avoid collision after fix types in other method */
            public final void mo3758a(File file) {
                RandomAccessFile randomAccessFile;
                try {
                    C6474b.f16134a.m22504a(C6444a.this.f16067d, new RandomAccessFile(file, C3496r.f6031a));
                    MLSdkManager.INSTANCE.getModelStatusLiveData().postValue(ModelStatus.UpdateMetadataFinished.INSTANCE);
                    C14989s sVar = C14989s.f33022a;
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
        }

        /* renamed from: h.h.e.b.b$a$b */
        /* loaded from: classes2-dex2jar.jar:h/h/e/b/b$a$b.class */
        public static final class C6446b implements AbstractC9134d {

            /* renamed from: a */
            public final /* synthetic */ CoroutineScope f16069a;

            public C6446b(CoroutineScope coroutineScope) {
                this.f16069a = coroutineScope;
            }

            @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9134d
            /* renamed from: a */
            public final void mo3757a(Exception exc) {
                C15149k.m377b(exc, "it");
                C6442a.m22561a(this.f16069a);
                String str = "Exception : " + exc;
                MLSdkManager.INSTANCE.getModelStatusLiveData().postValue(new ModelStatus.C3546a(exc));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6444a(C10055a aVar, Context context, AbstractC15044d dVar) {
            super(2, dVar);
            this.f16066c = aVar;
            this.f16067d = context;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C6444a aVar = new C6444a(this.f16066c, this.f16067d, dVar);
            aVar.f16064a = (CoroutineScope) obj;
            return aVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C6444a) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f16065b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                CoroutineScope coroutineScope = this.f16064a;
                AbstractC9143h<File> a = C10049d.m13535a().m13533a(this.f16066c);
                a.mo16023a(new C6445a());
                a.mo16024a(new C6446b(coroutineScope));
                return C14989s.f33022a;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    /* renamed from: h.h.e.b.b$b */
    /* loaded from: classes2-dex2jar.jar:h/h/e/b/b$b.class */
    public static final class C6447b<TResult> implements AbstractC9137e<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC15044d f16070a;

        /* renamed from: b */
        public final /* synthetic */ C10055a f16071b;

        /* renamed from: c */
        public final /* synthetic */ boolean f16072c;

        /* renamed from: d */
        public final /* synthetic */ Context f16073d;

        /* renamed from: e */
        public final /* synthetic */ C10047c f16074e;

        public C6447b(AbstractC15044d dVar, C10055a aVar, boolean z, Context context, C10047c cVar) {
            this.f16070a = dVar;
            this.f16071b = aVar;
            this.f16072c = z;
            this.f16073d = context;
            this.f16074e = cVar;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public final void mo3758a(Boolean bool) {
            if (!this.f16072c) {
                C15149k.m383a((Object) bool, "isDownloaded");
                if (bool.booleanValue()) {
                    C6442a.m22561a(C6443b.f16063b);
                    MLSdkManager.INSTANCE.getModelStatusLiveData().postValue(ModelStatus.ModelExist.INSTANCE);
                    AbstractC15044d dVar = this.f16070a;
                    C14979k.C14980a aVar = C14979k.f33013a;
                    C14979k.m657a(true);
                    dVar.resumeWith(true);
                    return;
                }
            }
            C6443b.f16063b.m22558a(this.f16073d, this.f16071b, this.f16074e, this.f16070a);
        }
    }

    /* renamed from: h.h.e.b.b$c */
    /* loaded from: classes2-dex2jar.jar:h/h/e/b/b$c.class */
    public static final class C6448c implements AbstractC9134d {

        /* renamed from: a */
        public final /* synthetic */ AbstractC15044d f16075a;

        public C6448c(AbstractC15044d dVar) {
            this.f16075a = dVar;
        }

        @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9134d
        /* renamed from: a */
        public final void mo3757a(Exception exc) {
            C15149k.m377b(exc, "e");
            MLSdkManager.INSTANCE.getModelStatusLiveData().postValue(new ModelStatus.C3547b(exc));
            AbstractC15044d dVar = this.f16075a;
            C14979k.C14980a aVar = C14979k.f33013a;
            Object a = C14982l.m652a((Throwable) exc);
            C14979k.m657a(a);
            dVar.resumeWith(a);
        }
    }

    /* renamed from: h.h.e.b.b$d */
    /* loaded from: classes2-dex2jar.jar:h/h/e/b/b$d.class */
    public static final class C6449d implements AbstractC9130b {

        /* renamed from: a */
        public final /* synthetic */ AbstractC15044d f16076a;

        public C6449d(AbstractC15044d dVar) {
            this.f16076a = dVar;
        }

        @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9130b
        /* renamed from: a */
        public final void mo15258a() {
            AbstractC15044d dVar = this.f16076a;
            C14979k.C14980a aVar = C14979k.f33013a;
            C14979k.m657a(false);
            dVar.resumeWith(false);
        }
    }

    @AbstractC15070f(m473c = "com/gogolook/whoscallsdk/ml/FirebaseModelHelper$triggerNewDownload$1", m472f = "FirebaseModelHelper.kt", m471l = {68}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004"}, m815d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: h.h.e.b.b$e */
    /* loaded from: classes2-dex2jar.jar:h/h/e/b/b$e.class */
    public static final class C6450e extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f16077a;

        /* renamed from: b */
        public int f16078b;

        /* renamed from: c */
        public final /* synthetic */ C10055a f16079c;

        /* renamed from: d */
        public final /* synthetic */ C10047c f16080d;

        /* renamed from: e */
        public final /* synthetic */ AbstractC15044d f16081e;

        /* renamed from: f */
        public final /* synthetic */ Context f16082f;

        /* renamed from: h.h.e.b.b$e$a */
        /* loaded from: classes2-dex2jar.jar:h/h/e/b/b$e$a.class */
        public static final class C6451a<TResult> implements AbstractC9137e<Void> {
            public C6451a() {
            }

            /* renamed from: a  reason: avoid collision after fix types in other method */
            public final void mo3758a(Void r5) {
                MLSdkManager.INSTANCE.getModelStatusLiveData().postValue(ModelStatus.DownloadFinished.INSTANCE);
                AbstractC15044d dVar = C6450e.this.f16081e;
                C14979k.C14980a aVar = C14979k.f33013a;
                C14979k.m657a(true);
                dVar.resumeWith(true);
                C6443b bVar = C6443b.f16063b;
                C6450e eVar = C6450e.this;
                bVar.m22559a(eVar.f16082f, eVar.f16079c);
            }
        }

        /* renamed from: h.h.e.b.b$e$b */
        /* loaded from: classes2-dex2jar.jar:h/h/e/b/b$e$b.class */
        public static final class C6452b implements AbstractC9134d {
            public C6452b() {
            }

            @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9134d
            /* renamed from: a */
            public final void mo3757a(Exception exc) {
                C15149k.m377b(exc, "it");
                MLSdkManager.INSTANCE.getModelStatusLiveData().postValue(new ModelStatus.C3548c(exc));
                AbstractC15044d dVar = C6450e.this.f16081e;
                C14979k.C14980a aVar = C14979k.f33013a;
                Object a = C14982l.m652a((Throwable) exc);
                C14979k.m657a(a);
                dVar.resumeWith(a);
            }
        }

        /* renamed from: h.h.e.b.b$e$c */
        /* loaded from: classes2-dex2jar.jar:h/h/e/b/b$e$c.class */
        public static final class C6453c implements AbstractC9130b {
            public C6453c() {
            }

            @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9130b
            /* renamed from: a */
            public final void mo15258a() {
                AbstractC15044d dVar = C6450e.this.f16081e;
                C14979k.C14980a aVar = C14979k.f33013a;
                C14979k.m657a(false);
                dVar.resumeWith(false);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6450e(C10055a aVar, C10047c cVar, AbstractC15044d dVar, Context context, AbstractC15044d dVar2) {
            super(2, dVar2);
            this.f16079c = aVar;
            this.f16080d = cVar;
            this.f16081e = dVar;
            this.f16082f = context;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C6450e eVar = new C6450e(this.f16079c, this.f16080d, this.f16081e, this.f16082f, dVar);
            eVar.f16077a = (CoroutineScope) obj;
            return eVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C6450e) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f16078b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                AbstractC9143h<Void> a = C10049d.m13535a().m13532a(this.f16079c, this.f16080d);
                a.mo16023a(new C6451a());
                a.mo16024a(new C6452b());
                a.mo16026a(new C6453c());
                return C14989s.f33022a;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    /* renamed from: a */
    public final C10055a m22556a(ModelType modelType, String str) {
        C15149k.m377b(modelType, "modelType");
        C15149k.m377b(str, "region");
        C10055a a = new C10055a.C10056a(m22553b(modelType, str)).m13520a();
        C15149k.m383a((Object) a, "FirebaseCustomRemoteMode…delType, region)).build()");
        return a;
    }

    /* renamed from: a */
    public final Object m22557a(Context context, C10055a aVar, C10047c cVar, boolean z, AbstractC15044d<? super Boolean> dVar) {
        C15056i iVar = new C15056i(C15059b.m481a(dVar));
        AbstractC9143h<Boolean> b = C10049d.m13535a().m13530b(aVar);
        b.mo16023a(new C6447b(iVar, aVar, z, context, cVar));
        b.mo16024a(new C6448c(iVar));
        b.mo16026a(new C6449d(iVar));
        Object a = iVar.m482a();
        if (a == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return a;
    }

    /* renamed from: a */
    public final void m22559a(Context context, C10055a aVar) {
        C6442a.m22561a(this);
        BuildersKt__Builders_commonKt.launch$default(f16062a, Dispatchers.getIO(), null, new C6444a(aVar, context, null), 2, null);
    }

    /* renamed from: a */
    public final void m22558a(Context context, C10055a aVar, C10047c cVar, AbstractC15044d<? super Boolean> dVar) {
        C6442a.m22561a(this);
        BuildersKt__Builders_commonKt.launch$default(f16062a, Dispatchers.getIO(), null, new C6450e(aVar, cVar, dVar, context, null), 2, null);
    }

    /* renamed from: b */
    public final String m22553b(ModelType modelType, String str) {
        String str2;
        C15149k.m377b(modelType, "modelType");
        C15149k.m377b(str, "region");
        if (!(modelType instanceof ModelType.SmsFilterRemote) && !C15149k.m384a(modelType, ModelType.SmsFilterLocal.INSTANCE)) {
            str2 = "";
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("sms-filter");
            sb.append('-');
            Locale locale = Locale.ROOT;
            C15149k.m383a((Object) locale, "Locale.ROOT");
            String lowerCase = str.toLowerCase(locale);
            C15149k.m383a((Object) lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            sb.append(lowerCase);
            str2 = sb.toString();
        }
        return str2;
    }
}
