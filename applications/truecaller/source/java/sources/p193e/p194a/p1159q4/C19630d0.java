package p193e.p194a.p1159q4;

import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1220s4.AbstractC20235a;
import p193e.p194a.p1334w.p1336b.AbstractC21179b;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import s1.z.c.l;
/* renamed from: e.a.q4.d0 */
/* loaded from: classes12-dex2jar.jar:e/a/q4/d0.class */
public final class C19630d0 {

    /* renamed from: a */
    public final a<AbstractC20235a> f54553a;

    /* renamed from: b */
    public final a<AbstractC8438a> f54554b;

    /* renamed from: c */
    public final a<AbstractC8432l> f54555c;

    /* renamed from: d */
    public final a<AbstractC21179b> f54556d;

    /* renamed from: e */
    public final AbstractC17197v0 f54557e;

    @Inject
    public C19630d0(a<AbstractC20235a> aVar, a<AbstractC8438a> aVar2, a<AbstractC8432l> aVar3, a<AbstractC21179b> aVar4, AbstractC17197v0 abstractC17197v0) {
        l.e(aVar, "remoteConfig");
        l.e(aVar2, "accountSettings");
        l.e(aVar3, "truecallerAccountManager");
        l.e(aVar4, "referralSettings");
        l.e(abstractC17197v0, "premiumStateSettings");
        this.f54553a = aVar;
        this.f54554b = aVar2;
        this.f54555c = aVar3;
        this.f54556d = aVar4;
        this.f54557e = abstractC17197v0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0057, code lost:
        if ((r0 != null && r0.length() > 0) != false) goto L19;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m13092a() {
        /*
            r3 = this;
            r0 = r3
            o3.a<e.a.w.b.b> r0 = r0.f54556d
            java.lang.Object r0 = r0.get()
            e.a.w.b.b r0 = (p193e.p194a.p1334w.p1336b.AbstractC21179b) r0
            java.lang.String r1 = "referralCode"
            java.lang.String r0 = r0.getString(r1)
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L28
            r0 = r4
            int r0 = r0.length()
            if (r0 <= 0) goto L28
            r0 = 1
            r6 = r0
            goto L2a
        L28:
            r0 = 0
            r6 = r0
        L2a:
            r0 = r6
            if (r0 == 0) goto L5d
            r0 = r3
            o3.a<e.a.w.b.b> r0 = r0.f54556d
            java.lang.Object r0 = r0.get()
            e.a.w.b.b r0 = (p193e.p194a.p1334w.p1336b.AbstractC21179b) r0
            java.lang.String r1 = "referralLink"
            java.lang.String r0 = r0.getString(r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L54
            r0 = r4
            int r0 = r0.length()
            if (r0 <= 0) goto L54
            r0 = 1
            r6 = r0
            goto L56
        L54:
            r0 = 0
            r6 = r0
        L56:
            r0 = r6
            if (r0 == 0) goto L5d
            goto L5f
        L5d:
            r0 = 0
            r5 = r0
        L5f:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1159q4.C19630d0.m13092a():boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00b7, code lost:
        if (r11 != false) goto L13;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m13091b() {
        /*
            r6 = this;
            r0 = r6
            o3.a<e.a.w.b.b> r0 = r0.f54556d
            java.lang.Object r0 = r0.get()
            e.a.w.b.b r0 = (p193e.p194a.p1334w.p1336b.AbstractC21179b) r0
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            java.lang.String r1 = "qaEnableInviteTab"
            r2 = 0
            boolean r0 = r0.getBoolean(r1, r2)
            if (r0 != 0) goto Lba
            r0 = r6
            o3.a<e.a.b0.e.l> r0 = r0.f54555c
            java.lang.Object r0 = r0.get()
            e.a.b0.e.l r0 = (p193e.p194a.p372b0.p406e.AbstractC8432l) r0
            java.lang.String r0 = r0.mo28578f()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L34
            goto L48
        L34:
            r0 = r6
            o3.a<e.a.b0.e.r.a> r0 = r0.f54554b
            java.lang.Object r0 = r0.get()
            e.a.b0.e.r.a r0 = (p193e.p194a.p372b0.p406e.p409r.AbstractC8438a) r0
            java.lang.String r1 = "profileCountryIso"
            java.lang.String r0 = r0.getString(r1)
            r7 = r0
        L48:
            r0 = r7
            if (r0 == 0) goto Lb2
            r0 = r6
            o3.a<e.a.s4.a> r0 = r0.f54553a
            java.lang.Object r0 = r0.get()
            e.a.s4.a r0 = (p193e.p194a.p1220s4.AbstractC20235a) r0
            java.lang.String r1 = "growthMarkets_24425"
            java.lang.String r0 = r0.getString(r1)
            r9 = r0
            java.util.Locale r0 = java.util.Locale.ENGLISH
            r10 = r0
            r0 = r10
            java.lang.String r1 = "Locale.ENGLISH"
            s1.z.c.l.d(r0, r1)
            r0 = r9
            java.lang.String r1 = "null cannot be cast to non-null type java.lang.String"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r9
            r1 = r10
            java.lang.String r0 = r0.toLowerCase(r1)
            r9 = r0
            r0 = r9
            java.lang.String r1 = "(this as java.lang.String).toLowerCase(locale)"
            s1.z.c.l.d(r0, r1)
            r0 = r9
            r1 = 1
            java.lang.String[] r1 = new java.lang.String[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = ","
            r2[r3] = r4
            r2 = 0
            r3 = 0
            r4 = 6
            java.util.List r0 = s1.f0.v.U(r0, r1, r2, r3, r4)
            r9 = r0
            r0 = r10
            java.lang.String r1 = "Locale.ENGLISH"
            s1.z.c.l.d(r0, r1)
            r0 = r7
            r1 = r10
            java.lang.String r0 = r0.toLowerCase(r1)
            r7 = r0
            r0 = r7
            java.lang.String r1 = "(this as java.lang.String).toLowerCase(locale)"
            s1.z.c.l.d(r0, r1)
            r0 = r9
            r1 = r7
            boolean r0 = r0.contains(r1)
            r11 = r0
            goto Lb5
        Lb2:
            r0 = 0
            r11 = r0
        Lb5:
            r0 = r11
            if (r0 == 0) goto Lbc
        Lba:
            r0 = 1
            r8 = r0
        Lbc:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1159q4.C19630d0.m13091b():boolean");
    }

    /* renamed from: c */
    public final boolean m13090c() {
        return m13092a() && m13091b() && !this.f54557e.mo16408H();
    }
}
