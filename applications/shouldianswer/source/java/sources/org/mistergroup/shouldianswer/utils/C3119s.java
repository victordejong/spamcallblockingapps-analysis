package org.mistergroup.shouldianswer.utils;

import androidx.customview.p026a.AbstractC0610a;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1632d;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1786ad;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.EnumC2378a;
/* renamed from: org.mistergroup.shouldianswer.utils.s */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/s.class */
public final class C3119s {

    /* renamed from: a */
    public static final C3119s f9188a = new C3119s();

    /* renamed from: org.mistergroup.shouldianswer.utils.s$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/s$a.class */
    public static final class C3120a {

        /* renamed from: a */
        private boolean f9189a;

        /* renamed from: b */
        private boolean f9190b;

        /* renamed from: c */
        private boolean f9191c;

        /* renamed from: d */
        private boolean f9192d;

        /* renamed from: e */
        private boolean f9193e;

        /* renamed from: f */
        private boolean f9194f;

        /* renamed from: g */
        private boolean f9195g;

        /* renamed from: h */
        private boolean f9196h;

        /* renamed from: i */
        private boolean f9197i;

        /* renamed from: j */
        private boolean f9198j;

        /* renamed from: k */
        private boolean f9199k;

        public C3120a() {
            this(false, false, false, false, false, false, false, false, false, false, false, 2047, null);
        }

        public C3120a(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11) {
            this.f9189a = z;
            this.f9190b = z2;
            this.f9191c = z3;
            this.f9192d = z4;
            this.f9193e = z5;
            this.f9194f = z6;
            this.f9195g = z7;
            this.f9196h = z8;
            this.f9197i = z9;
            this.f9198j = z10;
            this.f9199k = z11;
        }

        public /* synthetic */ C3120a(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, int i, C1691e c1691e) {
            this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? false : z3, (i & 8) != 0 ? false : z4, (i & 16) != 0 ? false : z5, (i & 32) != 0 ? false : z6, (i & 64) != 0 ? false : z7, (i & 128) != 0 ? false : z8, (i & 256) != 0 ? false : z9, (i & 512) != 0 ? false : z10, (i & 1024) != 0 ? false : z11);
        }

        /* renamed from: a */
        public final void m92a(boolean z) {
            this.f9189a = z;
        }

        /* renamed from: a */
        public final boolean m93a() {
            return this.f9189a;
        }

        /* renamed from: b */
        public final void m90b(boolean z) {
            this.f9190b = z;
        }

        /* renamed from: b */
        public final boolean m91b() {
            return this.f9190b;
        }

        /* renamed from: c */
        public final void m88c(boolean z) {
            this.f9191c = z;
        }

        /* renamed from: c */
        public final boolean m89c() {
            return this.f9191c;
        }

        /* renamed from: d */
        public final void m86d(boolean z) {
            this.f9192d = z;
        }

        /* renamed from: d */
        public final boolean m87d() {
            return this.f9192d;
        }

        /* renamed from: e */
        public final void m84e(boolean z) {
            this.f9193e = z;
        }

        /* renamed from: e */
        public final boolean m85e() {
            return this.f9193e;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C3120a)) {
                    return false;
                }
                C3120a c3120a = (C3120a) obj;
                if (!(this.f9189a == c3120a.f9189a)) {
                    return false;
                }
                if (!(this.f9190b == c3120a.f9190b)) {
                    return false;
                }
                if (!(this.f9191c == c3120a.f9191c)) {
                    return false;
                }
                if (!(this.f9192d == c3120a.f9192d)) {
                    return false;
                }
                if (!(this.f9193e == c3120a.f9193e)) {
                    return false;
                }
                if (!(this.f9194f == c3120a.f9194f)) {
                    return false;
                }
                if (!(this.f9195g == c3120a.f9195g)) {
                    return false;
                }
                if (!(this.f9196h == c3120a.f9196h)) {
                    return false;
                }
                if (!(this.f9197i == c3120a.f9197i)) {
                    return false;
                }
                if (!(this.f9198j == c3120a.f9198j)) {
                    return false;
                }
                return this.f9199k == c3120a.f9199k;
            }
            return true;
        }

        /* renamed from: f */
        public final void m82f(boolean z) {
            this.f9194f = z;
        }

        /* renamed from: f */
        public final boolean m83f() {
            return this.f9194f;
        }

        /* renamed from: g */
        public final void m80g(boolean z) {
            this.f9195g = z;
        }

        /* renamed from: g */
        public final boolean m81g() {
            return this.f9195g;
        }

        /* renamed from: h */
        public final void m78h(boolean z) {
            this.f9196h = z;
        }

        /* renamed from: h */
        public final boolean m79h() {
            return this.f9196h;
        }

        public int hashCode() {
            boolean z = this.f9189a;
            int i = 1;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            boolean z3 = this.f9190b;
            boolean z4 = z3;
            if (z3) {
                z4 = true;
            }
            boolean z5 = this.f9191c;
            boolean z6 = z5;
            if (z5) {
                z6 = true;
            }
            boolean z7 = this.f9192d;
            boolean z8 = z7;
            if (z7) {
                z8 = true;
            }
            boolean z9 = this.f9193e;
            boolean z10 = z9;
            if (z9) {
                z10 = true;
            }
            boolean z11 = this.f9194f;
            boolean z12 = z11;
            if (z11) {
                z12 = true;
            }
            boolean z13 = this.f9195g;
            boolean z14 = z13;
            if (z13) {
                z14 = true;
            }
            boolean z15 = this.f9196h;
            boolean z16 = z15;
            if (z15) {
                z16 = true;
            }
            boolean z17 = this.f9197i;
            boolean z18 = z17;
            if (z17) {
                z18 = true;
            }
            boolean z19 = this.f9198j;
            boolean z20 = z19;
            if (z19) {
                z20 = true;
            }
            boolean z21 = this.f9199k;
            if (!z21) {
                i = z21;
            }
            return ((((((((((((((((((((z2 ? 1 : 0) * 31) + (z4 ? 1 : 0)) * 31) + (z6 ? 1 : 0)) * 31) + (z8 ? 1 : 0)) * 31) + (z10 ? 1 : 0)) * 31) + (z12 ? 1 : 0)) * 31) + (z14 ? 1 : 0)) * 31) + (z16 ? 1 : 0)) * 31) + (z18 ? 1 : 0)) * 31) + (z20 ? 1 : 0)) * 31) + i;
        }

        /* renamed from: i */
        public final void m76i(boolean z) {
            this.f9197i = z;
        }

        /* renamed from: i */
        public final boolean m77i() {
            return this.f9197i;
        }

        /* renamed from: j */
        public final void m74j(boolean z) {
            this.f9198j = z;
        }

        /* renamed from: j */
        public final boolean m75j() {
            return this.f9198j;
        }

        /* renamed from: k */
        public final void m72k(boolean z) {
            this.f9199k = z;
        }

        /* renamed from: k */
        public final boolean m73k() {
            return this.f9199k;
        }

        public String toString() {
            return "Status(defaultPhoneApp=" + this.f9189a + ", defaultPhoneAppRequired=" + this.f9190b + ", defaultCallScreeningRequired=" + this.f9191c + ", defaultCallScreening=" + this.f9192d + ", drawOverOtherApps=" + this.f9193e + ", drawOverOtherAppsRequired=" + this.f9194f + ", phonePermissions=" + this.f9195g + ", phonePermissionsRequired=" + this.f9196h + ", contactsPermissions=" + this.f9197i + ", contactsPermissionsRequired=" + this.f9198j + ", integrityIsOk=" + this.f9199k + ")";
        }
    }

    @AbstractC1634f(m3162b = "ProtectionIntegrityChecker.kt", m3161c = {42}, m3160d = "check", m3159e = "org.mistergroup.shouldianswer.utils.ProtectionIntegrityChecker")
    /* renamed from: org.mistergroup.shouldianswer.utils.s$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/s$b.class */
    public static final class C3121b extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f9200a;

        /* renamed from: b */
        int f9201b;

        /* renamed from: d */
        Object f9203d;

        /* renamed from: e */
        Object f9204e;

        /* renamed from: f */
        Object f9205f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C3121b(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C3119s.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f9200a = obj;
            this.f9201b |= AbstractC0610a.INVALID_ID;
            return C3119s.this.m94a(this);
        }
    }

    @AbstractC1634f(m3162b = "ProtectionIntegrityChecker.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.utils.ProtectionIntegrityChecker$check$2$1")
    /* renamed from: org.mistergroup.shouldianswer.utils.s$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/s$c.class */
    public static final class C3122c extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        int f9206a;

        /* renamed from: b */
        final /* synthetic */ C3120a f9207b;

        /* renamed from: c */
        private AbstractC1786ad f9208c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C3122c(C3120a c3120a, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            this.f9207b = c3120a;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C3122c) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C3122c c3122c = new C3122c(this.f9207b, abstractC1641c);
            c3122c.f9208c = (AbstractC1786ad) obj;
            return c3122c;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            C1622b.m3174a();
            if (this.f9206a == 0) {
                C1771k.m2979a(obj);
                AbstractC1786ad abstractC1786ad = this.f9208c;
                this.f9207b.m82f(C2398ai.f6930a.m1275e() == EnumC2378a.POPUP);
                this.f9207b.m84e(C3115o.f9175a.m111l());
                return C1775o.f4450a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private C3119s() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x01c9, code lost:
        if (r18.m93a() != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01db, code lost:
        if (r18.m87d() != false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01ed, code lost:
        if (r18.m81g() != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01ff, code lost:
        if (r18.m85e() != false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0211, code lost:
        if (r18.m77i() != false) goto L73;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0209  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m94a(kotlin.p075c.AbstractC1641c<? super org.mistergroup.shouldianswer.utils.C3119s.C3120a> r17) {
        /*
            Method dump skipped, instructions count: 543
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.utils.C3119s.m94a(kotlin.c.c):java.lang.Object");
    }
}
