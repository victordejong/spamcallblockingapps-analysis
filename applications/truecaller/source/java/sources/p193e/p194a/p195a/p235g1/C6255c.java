package p193e.p194a.p195a.p235g1;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.SystemClock;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_language_id.zzaj;
import com.google.android.gms.internal.mlkit_language_id.zzcv;
import com.google.android.gms.internal.mlkit_language_id.zzy;
import com.google.android.gms.internal.mlkit_translate.zzbj;
import com.google.android.gms.internal.mlkit_translate.zzbu;
import com.google.android.gms.internal.mlkit_translate.zzhx;
import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskExecutors;
import com.google.android.gms.tasks.Tasks;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.google.mlkit.nl.languageid.LanguageIdentifierImpl;
import com.google.mlkit.nl.languageid.internal.LanguageIdentificationJni;
import com.google.mlkit.nl.translate.TranslatorImpl;
import com.google.mlkit.nl.translate.internal.TranslateJni;
import com.google.mlkit.p075nl.languageid.IdentifiedLanguage;
import com.google.mlkit.p075nl.languageid.LanguageIdentifierImpl$a;
import com.google.mlkit.p075nl.translate.TranslatorImpl$a;
import com.razorpay.AnalyticsConstants;
import e.m.a.f.q.b0;
import e.m.h.a.d.j;
import e.m.h.a.d.n.h;
import e.m.h.b.a.f;
import e.m.h.b.b.b;
import e.m.h.b.b.e.n;
import e.m.h.b.b.e.q;
import e.m.h.b.b.u;
import e.m.h.b.b.v;
import e.m.h.b.b.w;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.i;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.g1.c */
/* loaded from: classes7-dex2jar.jar:e/a/a/g1/c.class */
public final class C6255c implements AbstractC6254b {

    /* renamed from: a */
    public final g f21012a;

    /* renamed from: b */
    public final Context f21013b;

    /* renamed from: c */
    public final C20592g f21014c;

    /* renamed from: e.a.a.g1.c$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/g1/c$a.class */
    public static final class C6256a extends m implements a<Pattern> {

        /* renamed from: b */
        public static final C6256a f21015b = new C6256a();

        public C6256a() {
            super(0);
        }

        public Object invoke() {
            return Pattern.compile(C6270d.f21042a);
        }
    }

    /* renamed from: e.a.a.g1.c$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/g1/c$b.class */
    public static final class C6257b<TResult> implements OnSuccessListener<Void> {

        /* renamed from: a */
        public final /* synthetic */ a f21016a;

        public C6257b(a aVar) {
            this.f21016a = aVar;
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public void onSuccess(Void r3) {
            a aVar = this.f21016a;
            if (aVar != null) {
                s sVar = (s) aVar.invoke();
            }
        }
    }

    /* renamed from: e.a.a.g1.c$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/g1/c$c.class */
    public static final class C6258c<TResult> implements OnSuccessListener<Void> {

        /* renamed from: a */
        public final /* synthetic */ l f21017a;

        public C6258c(l lVar) {
            this.f21017a = lVar;
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public void onSuccess(Void r4) {
            l lVar = this.f21017a;
            if (lVar != null) {
                s sVar = (s) lVar.d(Boolean.TRUE);
            }
        }
    }

    /* renamed from: e.a.a.g1.c$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/g1/c$d.class */
    public static final class C6259d implements OnFailureListener {

        /* renamed from: a */
        public final /* synthetic */ l f21018a;

        public C6259d(l lVar) {
            this.f21018a = lVar;
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public final void onFailure(Exception exc) {
            s1.z.c.l.e(exc, "it");
            l lVar = this.f21018a;
            if (lVar != null) {
                s sVar = (s) lVar.d(Boolean.FALSE);
            }
        }
    }

    /* renamed from: e.a.a.g1.c$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/g1/c$e.class */
    public static final class C6260e<TResult> implements OnSuccessListener<Set<b>> {

        /* renamed from: a */
        public final /* synthetic */ d f21019a;

        public C6260e(d dVar) {
            this.f21019a = dVar;
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public void onSuccess(Set<b> set) {
            Set<b> set2 = set;
            d dVar = this.f21019a;
            s1.z.c.l.d(set2, "models");
            ArrayList arrayList = new ArrayList(C25225a.m4004J(set2, 10));
            for (b bVar : set2) {
                s1.z.c.l.d(bVar, "it");
                String str = bVar.e;
                s1.z.c.l.d(str, "it.language");
                arrayList.add(str);
            }
            dVar.c(arrayList);
        }
    }

    /* renamed from: e.a.a.g1.c$f */
    /* loaded from: classes7-dex2jar.jar:e/a/a/g1/c$f.class */
    public static final class C6261f implements OnFailureListener {

        /* renamed from: a */
        public final /* synthetic */ d f21020a;

        public C6261f(d dVar) {
            this.f21020a = dVar;
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public final void onFailure(Exception exc) {
            s1.z.c.l.e(exc, "it");
            this.f21020a.c(s1.u.s.a);
        }
    }

    /* renamed from: e.a.a.g1.c$g */
    /* loaded from: classes7-dex2jar.jar:e/a/a/g1/c$g.class */
    public static final class C6262g<TResult> implements OnSuccessListener<List<IdentifiedLanguage>> {

        /* renamed from: a */
        public final /* synthetic */ d f21021a;

        /* renamed from: b */
        public final /* synthetic */ C6255c f21022b;

        public C6262g(d dVar, C6255c c6255c, String str) {
            this.f21021a = dVar;
            this.f21022b = c6255c;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0035, code lost:
            if (r9 != null) goto L13;
         */
        @Override // com.google.android.gms.tasks.OnSuccessListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onSuccess(java.util.List<com.google.mlkit.p075nl.languageid.IdentifiedLanguage> r8) {
            /*
                r7 = this;
                r0 = r8
                java.util.List r0 = (java.util.List) r0
                r9 = r0
                r0 = r9
                java.lang.String r1 = "it"
                s1.z.c.l.d(r0, r1)
                r0 = r9
                boolean r0 = r0.isEmpty()
                r10 = r0
                r0 = 0
                r8 = r0
                r0 = r10
                r1 = 1
                r0 = r0 ^ r1
                if (r0 == 0) goto L1d
                goto L1f
            L1d:
                r0 = 0
                r9 = r0
            L1f:
                r0 = r9
                if (r0 == 0) goto L2b
                r0 = r9
                java.lang.Object r0 = s1.u.i.B(r0)
                com.google.mlkit.nl.languageid.IdentifiedLanguage r0 = (com.google.mlkit.p075nl.languageid.IdentifiedLanguage) r0
                r8 = r0
            L2b:
                r0 = r8
                if (r0 == 0) goto L3b
                r0 = r8
                java.lang.String r0 = r0.f7095a
                r9 = r0
                r0 = r9
                if (r0 == 0) goto L3b
                goto L3e
            L3b:
                java.lang.String r0 = "und"
                r9 = r0
            L3e:
                r0 = r7
                s1.w.d r0 = r0.f21021a
                r11 = r0
                r0 = r8
                if (r0 == 0) goto L51
                r0 = r8
                float r0 = r0.f7096b
                r12 = r0
                goto L54
            L51:
                r0 = 0
                r12 = r0
            L54:
                r0 = r11
                e.a.a.g1.a r1 = new e.a.a.g1.a
                r2 = r1
                r3 = r9
                r4 = r12
                r5 = r7
                e.a.a.g1.c r5 = r5.f21022b
                java.lang.String r5 = r5.mo31545d()
                r2.<init>(r3, r4, r5)
                r0.c(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p235g1.C6255c.C6262g.onSuccess(java.lang.Object):void");
        }
    }

    /* renamed from: e.a.a.g1.c$h */
    /* loaded from: classes7-dex2jar.jar:e/a/a/g1/c$h.class */
    public static final class C6263h implements OnFailureListener {

        /* renamed from: a */
        public final /* synthetic */ d f21023a;

        /* renamed from: b */
        public final /* synthetic */ C6255c f21024b;

        public C6263h(d dVar, C6255c c6255c, String str) {
            this.f21023a = dVar;
            this.f21024b = c6255c;
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public final void onFailure(Exception exc) {
            s1.z.c.l.e(exc, "it");
            this.f21023a.c(new C6253a("und", 0.0f, this.f21024b.mo31545d()));
        }
    }

    /* renamed from: e.a.a.g1.c$i */
    /* loaded from: classes7-dex2jar.jar:e/a/a/g1/c$i.class */
    public static final class C6264i<TResult> implements OnSuccessListener<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ d f21025a;

        public C6264i(d dVar) {
            this.f21025a = dVar;
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public void onSuccess(Boolean bool) {
            this.f21025a.c(bool);
        }
    }

    /* renamed from: e.a.a.g1.c$j */
    /* loaded from: classes7-dex2jar.jar:e/a/a/g1/c$j.class */
    public static final class C6265j implements OnFailureListener {

        /* renamed from: a */
        public final /* synthetic */ d f21026a;

        public C6265j(d dVar) {
            this.f21026a = dVar;
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public final void onFailure(Exception exc) {
            s1.z.c.l.e(exc, "it");
            this.f21026a.c(Boolean.FALSE);
        }
    }

    /* renamed from: e.a.a.g1.c$k */
    /* loaded from: classes7-dex2jar.jar:e/a/a/g1/c$k.class */
    public static final class C6266k implements OnCanceledListener {

        /* renamed from: a */
        public final /* synthetic */ d f21027a;

        public C6266k(d dVar) {
            this.f21027a = dVar;
        }

        @Override // com.google.android.gms.tasks.OnCanceledListener
        public final void onCanceled() {
            this.f21027a.c(Boolean.FALSE);
        }
    }

    @e(c = "com.truecaller.messaging.translate.TranslateManagerImpl", f = "TranslateManagerImpl.kt", l = {111, 117, 120}, m = "translate")
    /* renamed from: e.a.a.g1.c$l */
    /* loaded from: classes7-dex2jar.jar:e/a/a/g1/c$l.class */
    public static final class C6267l extends c {

        /* renamed from: d */
        public /* synthetic */ Object f21028d;

        /* renamed from: e */
        public int f21029e;

        /* renamed from: g */
        public Object f21031g;

        /* renamed from: h */
        public Object f21032h;

        /* renamed from: i */
        public Object f21033i;

        /* renamed from: j */
        public Object f21034j;

        /* renamed from: k */
        public Object f21035k;

        /* renamed from: l */
        public Object f21036l;

        /* renamed from: m */
        public int f21037m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6267l(d dVar) {
            super(dVar);
            C6255c.this = r4;
        }

        /* renamed from: s */
        public final Object m31538s(Object obj) {
            this.f21028d = obj;
            this.f21029e |= Integer.MIN_VALUE;
            return C6255c.this.mo31543f(null, null, null, null, this);
        }
    }

    /* renamed from: e.a.a.g1.c$m */
    /* loaded from: classes7-dex2jar.jar:e/a/a/g1/c$m.class */
    public static final class C6268m<TResult> implements OnSuccessListener<String> {

        /* renamed from: a */
        public final /* synthetic */ d f21038a;

        /* renamed from: b */
        public final /* synthetic */ e.m.h.b.b.c f21039b;

        public C6268m(d dVar, e.m.h.b.b.c cVar) {
            this.f21038a = dVar;
            this.f21039b = cVar;
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public void onSuccess(String str) {
            this.f21038a.c(str);
            this.f21039b.close();
        }
    }

    /* renamed from: e.a.a.g1.c$n */
    /* loaded from: classes7-dex2jar.jar:e/a/a/g1/c$n.class */
    public static final class C6269n implements OnFailureListener {

        /* renamed from: a */
        public final /* synthetic */ d f21040a;

        /* renamed from: b */
        public final /* synthetic */ e.m.h.b.b.c f21041b;

        public C6269n(d dVar, e.m.h.b.b.c cVar) {
            this.f21040a = dVar;
            this.f21041b = cVar;
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public final void onFailure(Exception exc) {
            s1.z.c.l.e(exc, "it");
            this.f21040a.c((Object) null);
            this.f21041b.close();
        }
    }

    @Inject
    public C6255c(Context context, C20592g c20592g) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(c20592g, "featuresRegistry");
        this.f21013b = context;
        this.f21014c = c20592g;
        try {
            e.m.h.a.d.g.d(context);
        } catch (IllegalStateException e) {
        }
        this.f21012a = C25225a.m3978P1(C6256a.f21015b);
    }

    @Override // p193e.p194a.p195a.p235g1.AbstractC6254b
    /* renamed from: a */
    public Object mo31548a(String str, d<? super Boolean> dVar) {
        i iVar = new i(C25225a.m3844s1(dVar));
        e.m.h.a.c.c a = e.m.h.a.c.c.a();
        s1.z.c.l.d(a, "RemoteModelManager.getInstance()");
        b bVar = new b(str, (e.m.h.b.b.s) null);
        s1.z.c.l.d(bVar, "TranslateRemoteModel.Builder(languageCode).build()");
        Preconditions.m38897k(bVar, "RemoteModel cannot be null");
        Task d = a.b(bVar.getClass()).d(bVar);
        s1.z.c.l.d(d, "modelManager.isModelDownloaded(model)");
        d.m38530h(new C6264i(iVar));
        d.m38533e(new C6265j(iVar));
        d.m38537a(new C6266k(iVar));
        Object a2 = iVar.a();
        if (a2 == s1.w.j.a.a) {
            s1.z.c.l.e(dVar, "frame");
        }
        return a2;
    }

    @Override // p193e.p194a.p195a.p235g1.AbstractC6254b
    /* renamed from: b */
    public String mo31547b(String str) {
        s1.z.c.l.e(str, "languageCode");
        String displayLanguage = new Locale(str).getDisplayLanguage();
        s1.z.c.l.d(displayLanguage, "Locale(languageCode).displayLanguage");
        return displayLanguage;
    }

    /* renamed from: c */
    public final Object m31546c(e.m.h.b.b.d dVar, String str, d<? super String> dVar2) {
        i iVar = new i(C25225a.m3844s1(dVar2));
        TranslatorImpl$a translatorImpl$a = (TranslatorImpl$a) e.m.h.a.d.g.c().a(TranslatorImpl$a.class);
        e.m.d.v.b<q.a> bVar = translatorImpl$a.f7100a;
        TranslateJni translateJni = (TranslateJni) translatorImpl$a.f7101b.get(dVar);
        n a = translatorImpl$a.f7102c.a(dVar.a());
        e.m.h.a.d.d dVar3 = translatorImpl$a.f7104e;
        Executor executor = dVar.c;
        Objects.requireNonNull(dVar3);
        if (executor == null) {
            executor = (Executor) dVar3.a.get();
        }
        TranslatorImpl translatorImpl = new TranslatorImpl(dVar, bVar, translateJni, a, executor, translatorImpl$a.f7105f, translatorImpl$a.f7106g, (v) null);
        e.m.h.b.b.e.v vVar = translatorImpl$a.f7103d;
        ((j) ((TranslateJni) translatorImpl.b.get())).a.incrementAndGet();
        n nVar = translatorImpl.c;
        Objects.requireNonNull(nVar);
        nVar.c(nVar.a(zzbj.zzaf.zzb()), zzbu.ON_DEVICE_TRANSLATOR_CREATE);
        vVar.a.zza(zzhx.zzb);
        s1.z.c.l.d(translatorImpl, "Translation.getClient(options)");
        Preconditions.m38897k(str, "Input can't be null");
        TranslateJni translateJni2 = (TranslateJni) translatorImpl.b.get();
        Preconditions.m38895m(translateJni2 != null, "Translator has been closed");
        long elapsedRealtime = SystemClock.elapsedRealtime();
        boolean b = translateJni2.b();
        b0 a2 = translateJni2.a(translatorImpl.d, new u(translateJni2, str), translatorImpl.f);
        a2.m38535c(new w(translatorImpl, str, !b, elapsedRealtime));
        C6268m c6268m = new C6268m(iVar, translatorImpl);
        b0 b0Var = a2;
        Executor executor2 = TaskExecutors.f6494a;
        b0Var.i(executor2, c6268m);
        b0Var.f(executor2, new C6269n(iVar, translatorImpl));
        Object a3 = iVar.a();
        if (a3 == s1.w.j.a.a) {
            s1.z.c.l.e(dVar2, "frame");
        }
        return a3;
    }

    @Override // p193e.p194a.p195a.p235g1.AbstractC6254b
    /* renamed from: d */
    public String mo31545d() {
        Resources resources = this.f21013b.getResources();
        s1.z.c.l.d(resources, "context.resources");
        Configuration configuration = resources.getConfiguration();
        s1.z.c.l.d(configuration, "context.resources.configuration");
        Locale locale = Build.VERSION.SDK_INT >= 24 ? configuration.getLocales().get(0) : configuration.locale;
        s1.z.c.l.d(locale, AnalyticsConstants.LOCALE);
        String language = locale.getLanguage();
        s1.z.c.l.d(language, "locale.language");
        return language;
    }

    @Override // p193e.p194a.p195a.p235g1.AbstractC6254b
    /* renamed from: e */
    public Object mo31544e(d<? super List<String>> dVar) {
        i iVar = new i(C25225a.m3844s1(dVar));
        ((h) ((e.m.d.v.b) e.m.h.a.c.c.a().a.get(b.class)).get()).b().m38530h(new C6260e(iVar)).m38533e(new C6261f(iVar));
        Object a = iVar.a();
        if (a == s1.w.j.a.a) {
            s1.z.c.l.e(dVar, "frame");
        }
        return a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x028a  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0394  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x0267 -> B:41:0x027b). Please submit an issue!!! */
    @Override // p193e.p194a.p195a.p235g1.AbstractC6254b
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo31543f(java.lang.String r8, java.lang.String r9, java.lang.String r10, java.lang.String[] r11, s1.w.d<? super java.lang.String> r12) {
        /*
            Method dump skipped, instructions count: 926
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p235g1.C6255c.mo31543f(java.lang.String, java.lang.String, java.lang.String, java.lang.String[], s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p195a.p235g1.AbstractC6254b
    /* renamed from: g */
    public Object mo31542g(String str, d<? super C6253a> dVar) {
        if (str.length() == 0) {
            return new C6253a("und", 0.0f, mo31545d());
        }
        i iVar = new i(C25225a.m3844s1(dVar));
        C20592g c20592g = this.f21014c;
        float f = 0.5f;
        Float valueOf = Float.valueOf(((AbstractC20597i) c20592g.f57970l3.m10941a(c20592g, C20592g.f57695p6[220])).mo10937i(0.5f));
        double floatValue = valueOf.floatValue();
        if (!(floatValue >= PlaceLikelihood.LIKELIHOOD_MIN_VALUE && floatValue <= 1.0d)) {
            valueOf = null;
        }
        if (valueOf != null) {
            f = valueOf.floatValue();
        }
        Preconditions.m38905c(f >= 0.0f && f <= 1.0f, "Threshold value %f should be between 0 and 1", Float.valueOf(f));
        e.m.h.b.a.a aVar = new e.m.h.b.a.a(Float.valueOf(f), (Executor) null, (e.m.h.b.a.e) null);
        s1.z.c.l.d(aVar, "LanguageIdentificationOp…nce)\n            .build()");
        Preconditions.m38897k(aVar, "LanguageIdentificationOptions can not be null");
        LanguageIdentifierImpl$a languageIdentifierImpl$a = (LanguageIdentifierImpl$a) e.m.h.a.d.g.c().a(LanguageIdentifierImpl$a.class);
        LanguageIdentificationJni languageIdentificationJni = languageIdentifierImpl$a.f7098b;
        zzcv zzcvVar = languageIdentifierImpl$a.f7097a;
        e.m.h.a.d.d dVar2 = languageIdentifierImpl$a.f7099c;
        Executor executor = aVar.b;
        Objects.requireNonNull(dVar2);
        if (executor == null) {
            executor = (Executor) dVar2.a.get();
        }
        LanguageIdentifierImpl languageIdentifierImpl = new LanguageIdentifierImpl(aVar, languageIdentificationJni, zzcvVar, executor);
        zzcvVar.zza(zzy.zzad.zzb().zza(true).zza(zzy.zzau.zza().zza(languageIdentifierImpl.a.a())), zzaj.ON_DEVICE_LANGUAGE_IDENTIFICATION_CREATE);
        ((j) ((LanguageIdentificationJni) languageIdentifierImpl.d.get())).a.incrementAndGet();
        s1.z.c.l.d(languageIdentifierImpl, "LanguageIdentification.getClient(options)");
        Preconditions.m38897k(str, "Text can not be null");
        LanguageIdentificationJni languageIdentificationJni2 = (LanguageIdentificationJni) languageIdentifierImpl.d.get();
        boolean z = false;
        if (languageIdentificationJni2 != null) {
            z = true;
        }
        Preconditions.m38895m(z, "LanguageIdentification has been closed");
        boolean b = languageIdentificationJni2.b();
        Executor executor2 = languageIdentifierImpl.c;
        f fVar = new f(languageIdentifierImpl, languageIdentificationJni2, str, true ^ b);
        e.m.a.f.q.g gVar = languageIdentifierImpl.e.f6491a;
        AtomicReference atomicReference = new AtomicReference(Thread.currentThread());
        b0 a = languageIdentificationJni2.a(new e.m.h.b.a.b.b(languageIdentificationJni2, atomicReference, executor2), fVar, gVar);
        atomicReference.set(null);
        C6262g c6262g = new C6262g(iVar, this, str);
        b0 b0Var = a;
        Objects.requireNonNull(b0Var);
        Executor executor3 = TaskExecutors.f6494a;
        b0Var.i(executor3, c6262g);
        b0Var.f(executor3, new C6263h(iVar, this, str));
        Object a2 = iVar.a();
        if (a2 == s1.w.j.a.a) {
            s1.z.c.l.e(dVar, "frame");
        }
        return a2;
    }

    @Override // p193e.p194a.p195a.p235g1.AbstractC6254b
    /* renamed from: h */
    public List<String> mo31541h() {
        List<String> a = e.m.h.b.b.a.a();
        s1.z.c.l.d(a, "TranslateLanguage.getAllLanguages()");
        return a;
    }

    @Override // p193e.p194a.p195a.p235g1.AbstractC6254b
    /* renamed from: i */
    public void mo31540i(String str, a<s> aVar) {
        s1.z.c.l.e(str, "languageCode");
        e.m.h.a.c.c a = e.m.h.a.c.c.a();
        s1.z.c.l.d(a, "RemoteModelManager.getInstance()");
        b bVar = new b(str, (e.m.h.b.b.s) null);
        s1.z.c.l.d(bVar, "TranslateRemoteModel.Builder(languageCode).build()");
        Preconditions.m38897k(bVar, "RemoteModel cannot be null");
        a.b(b.class).c(bVar).m38530h(new C6257b(aVar));
    }

    @Override // p193e.p194a.p195a.p235g1.AbstractC6254b
    /* renamed from: j */
    public void mo31539j(String str, boolean z, boolean z2, l<? super Boolean, s> lVar) {
        Task task;
        s1.z.c.l.e(str, "languageCode");
        e.m.h.a.c.c a = e.m.h.a.c.c.a();
        s1.z.c.l.d(a, "RemoteModelManager.getInstance()");
        b bVar = new b(str, (e.m.h.b.b.s) null);
        s1.z.c.l.d(bVar, "TranslateRemoteModel.Builder(languageCode).build()");
        e.m.h.a.c.a aVar = new e.m.h.a.c.a(false, !z && z2, (e.m.h.a.c.d) null);
        s1.z.c.l.d(aVar, "DownloadConditions.Build…      }\n        }.build()");
        Preconditions.m38897k(bVar, "RemoteModel cannot be null");
        Preconditions.m38897k(aVar, "DownloadConditions cannot be null");
        if (a.a.containsKey(b.class)) {
            task = a.b(b.class).a(bVar, aVar);
        } else {
            String simpleName = b.class.getSimpleName();
            task = Tasks.m38510e(new e.m.h.a.a(C22128a.m8671R1(simpleName.length() + 70, "Feature model '", simpleName, "' doesn't have a corresponding modelmanager registered."), 13));
        }
        task.m38530h(new C6258c(lVar)).m38533e(new C6259d(lVar));
    }
}
