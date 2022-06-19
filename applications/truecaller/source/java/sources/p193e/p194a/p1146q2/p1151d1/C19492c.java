package p193e.p194a.p1146q2.p1151d1;

import android.content.ContentResolver;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.p1148b1.AbstractC19469a;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.q2.d1.c */
/* loaded from: classes5-dex2jar.jar:e/a/q2/d1/c.class */
public final class C19492c {

    /* renamed from: a */
    public final g f54103a = C25225a.m3978P1(new C19493a());

    /* renamed from: b */
    public final AbstractC19469a f54104b;

    /* renamed from: c */
    public final ContentResolver f54105c;

    /* renamed from: e.a.q2.d1.c$a */
    /* loaded from: classes5-dex2jar.jar:e/a/q2/d1/c$a.class */
    public static final class C19493a extends m implements a<String> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19493a() {
            super(0);
            C19492c.this = r4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0041, code lost:
            if (r5 != null) goto L22;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object invoke() {
            /*
                r4 = this;
                r0 = r4
                e.a.q2.d1.c r0 = p193e.p194a.p1146q2.p1151d1.C19492c.this
                e.a.q2.b1.a r0 = r0.f54104b
                java.lang.String r1 = "clientId"
                java.lang.String r0 = r0.getString(r1)
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L16
                goto L7c
            L16:
                r0 = r4
                e.a.q2.d1.c r0 = p193e.p194a.p1146q2.p1151d1.C19492c.this
                android.content.ContentResolver r0 = r0.f54105c
                java.lang.String r1 = "android_id"
                java.lang.String r0 = android.provider.Settings.Secure.getString(r0, r1)
                r5 = r0
                r0 = 1
                r6 = r0
                r0 = r5
                if (r0 == 0) goto L47
                r0 = r5
                int r0 = r0.length()
                if (r0 != 0) goto L35
                r0 = 1
                r7 = r0
                goto L37
            L35:
                r0 = 0
                r7 = r0
            L37:
                r0 = r7
                if (r0 != 0) goto L3e
                goto L40
            L3e:
                r0 = 0
                r5 = r0
            L40:
                r0 = r5
                if (r0 == 0) goto L47
                goto L64
            L47:
                java.lang.String r0 = "it"
                java.lang.String r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8627e2(r0)
                r5 = r0
                r0 = r5
                int r0 = r0.length()
                if (r0 != 0) goto L59
                r0 = r6
                r7 = r0
                goto L5b
            L59:
                r0 = 0
                r7 = r0
            L5b:
                r0 = r7
                if (r0 != 0) goto L62
                goto L64
            L62:
                r0 = 0
                r5 = r0
            L64:
                r0 = r5
                if (r0 == 0) goto L7a
                r0 = r4
                e.a.q2.d1.c r0 = p193e.p194a.p1146q2.p1151d1.C19492c.this
                e.a.q2.b1.a r0 = r0.f54104b
                java.lang.String r1 = "clientId"
                r2 = r5
                r0.putString(r1, r2)
                goto L7c
            L7a:
                r0 = 0
                r5 = r0
            L7c:
                r0 = r5
                if (r0 == 0) goto L83
                goto L86
            L83:
                java.lang.String r0 = ""
                r5 = r0
            L86:
                r0 = r5
                java.lang.String r1 = "settings.getString(Analy…, it) }\n            ?: \"\""
                s1.z.c.l.d(r0, r1)
                r0 = r5
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1146q2.p1151d1.C19492c.C19493a.invoke():java.lang.Object");
        }
    }

    public C19492c(AbstractC19469a abstractC19469a, ContentResolver contentResolver) {
        l.e(abstractC19469a, "settings");
        l.e(contentResolver, "contentResolver");
        this.f54104b = abstractC19469a;
        this.f54105c = contentResolver;
    }
}
