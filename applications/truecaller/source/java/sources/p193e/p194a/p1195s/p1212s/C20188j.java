package p193e.p194a.p1195s.p1212s;

import android.content.Context;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import java.io.File;
import javax.inject.Inject;
import p193e.p1577m.p1578a.p1596c.p1599d1.C24251c;
import p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24279e;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24399f;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p;
import p193e.p1577m.p1578a.p1596c.p1620l1.C24547t;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24748r;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24751u;
import p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24713g;
import p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24731t;
import p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24733v;
import p193e.p194a.p1195s.p1205o.AbstractC20102d;
import p193e.p194a.p372b0.p394b.p400j.p401e.AbstractC8403d;
import p193e.p194a.p372b0.p394b.p400j.p401e.C8401b;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.s.s.j */
/* loaded from: classes17-dex2jar.jar:e/a/s/s/j.class */
public final class C20188j implements AbstractC20187i {

    /* renamed from: a */
    public final C24713g f56883a;

    /* renamed from: b */
    public final AbstractC20102d f56884b;

    @e(c = "com.truecaller.callhero_assistant.utils.VoiceRepositoryImpl", f = "VoiceRepository.kt", l = {46}, m = "getVoices")
    /* renamed from: e.a.s.s.j$a */
    /* loaded from: classes17-dex2jar.jar:e/a/s/s/j$a.class */
    public static final class C20189a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f56885d;

        /* renamed from: e */
        public int f56886e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20189a(d dVar) {
            super(dVar);
            C20188j.this = r4;
        }

        /* renamed from: s */
        public final Object m11402s(Object obj) {
            this.f56885d = obj;
            this.f56886e |= Integer.MIN_VALUE;
            return C20188j.this.mo11403b(this);
        }
    }

    @Inject
    public C20188j(Context context, AbstractC20102d abstractC20102d, AbstractC8403d abstractC8403d) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC20102d, "restAdapter");
        l.e(abstractC8403d, "userAgentProvider");
        this.f56884b = abstractC20102d;
        this.f56883a = new C24713g(new C24733v(new File(context.getCacheDir(), "CallAssistantVoices"), new C24731t(2097152L), new C24251c(context)), new C24748r(context, ((C8401b) abstractC8403d).mo28610a(), null));
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20187i
    /* renamed from: a */
    public AbstractC24531p mo11404a(String str) {
        l.e(str, "url");
        C24547t c24547t = new C24547t(Uri.parse(str), this.f56883a, new C24399f(), AbstractC24279e.f67328a, new C24751u(), null, 1048576, null);
        l.d(c24547t, "ProgressiveMediaSource.F…diaSource(Uri.parse(url))");
        return c24547t;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|27|(2:10|(2:12|13)(2:14|15))(4:16|17|18|(2:20|21))|22|25|26))|7|8|27|(0)(0)|22|25|26) */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0087, code lost:
        r6 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005a  */
    @Override // p193e.p194a.p1195s.p1212s.AbstractC20187i
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo11403b(s1.w.d<? super java.util.List<com.truecaller.callhero_assistant.data.Voice>> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p1195s.p1212s.C20188j.C20189a
            if (r0 == 0) goto L25
            r0 = r6
            e.a.s.s.j$a r0 = (p193e.p194a.p1195s.p1212s.C20188j.C20189a) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f56886e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f56886e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.s.s.j$a r0 = new e.a.s.s.j$a
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f56885d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f56886e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L5a
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L50
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)     // Catch: java.lang.Exception -> L86
            r0 = r7
            r6 = r0
            goto L7b
        L50:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5a:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.s.o.d r0 = r0.f56884b     // Catch: java.lang.Exception -> L86
            r7 = r0
            r0 = r6
            r1 = 1
            r0.f56886e = r1     // Catch: java.lang.Exception -> L86
            r0 = r7
            r1 = r6
            java.lang.Object r0 = r0.mo11535h(r1)     // Catch: java.lang.Exception -> L86
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L7b
            r0 = r9
            return r0
        L7b:
            r0 = r6
            com.truecaller.callhero_assistant.data.ListVoicesResponseDto r0 = (com.truecaller.callhero_assistant.data.ListVoicesResponseDto) r0     // Catch: java.lang.Exception -> L86
            java.util.List r0 = r0.getVoices()     // Catch: java.lang.Exception -> L86
            r6 = r0
            goto L89
        L86:
            r6 = move-exception
            r0 = 0
            r6 = r0
        L89:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1195s.p1212s.C20188j.mo11403b(s1.w.d):java.lang.Object");
    }
}
