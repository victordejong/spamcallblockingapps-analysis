package p193e.p194a.p1272u3;

import com.truecaller.featuretoggles.FeatureKey;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.u3.s */
/* loaded from: classes9-dex2jar.jar:e/a/u3/s.class */
public final class C20610s implements AbstractC20608q, AbstractC20583b {

    /* renamed from: a */
    public final g f58113a = C25225a.m3978P1(new C20611a());

    /* renamed from: b */
    public final String f58114b;

    /* renamed from: c */
    public final boolean f58115c;

    /* renamed from: d */
    public final AbstractC20585d f58116d;

    /* renamed from: e */
    public final AbstractC20583b f58117e;

    /* renamed from: f */
    public final boolean f58118f;

    /* renamed from: e.a.u3.s$a */
    /* loaded from: classes9-dex2jar.jar:e/a/u3/s$a.class */
    public static final class C20611a extends m implements a<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20611a() {
            super(0);
            C20610s.this = r4;
        }

        public Object invoke() {
            return Boolean.valueOf(C20610s.this.m10925m());
        }
    }

    /* renamed from: e.a.u3.s$b */
    /* loaded from: classes9-dex2jar.jar:e/a/u3/s$b.class */
    public static final class C20612b extends m implements l<AbstractC20599k, s> {

        /* renamed from: b */
        public final /* synthetic */ boolean f58120b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20612b(boolean z) {
            super(1);
            this.f58120b = z;
        }

        /* renamed from: d */
        public Object m10923d(Object obj) {
            AbstractC20599k abstractC20599k = (AbstractC20599k) obj;
            s1.z.c.l.e(abstractC20599k, "it");
            abstractC20599k.setEnabled(this.f58120b);
            return s.a;
        }
    }

    /* renamed from: e.a.u3.s$c */
    /* loaded from: classes9-dex2jar.jar:e/a/u3/s$c.class */
    public static final class C20613c extends m implements l<AbstractC20599k, s> {

        /* renamed from: b */
        public static final C20613c f58121b = new C20613c();

        public C20613c() {
            super(1);
        }

        /* renamed from: d */
        public Object m10922d(Object obj) {
            AbstractC20599k abstractC20599k = (AbstractC20599k) obj;
            s1.z.c.l.e(abstractC20599k, "it");
            abstractC20599k.mo10927k();
            return s.a;
        }
    }

    public C20610s(String str, boolean z, AbstractC20585d abstractC20585d, AbstractC20583b abstractC20583b, boolean z2) {
        s1.z.c.l.e(str, "remoteKey");
        s1.z.c.l.e(abstractC20585d, "prefs");
        s1.z.c.l.e(abstractC20583b, "delegate");
        this.f58114b = str;
        this.f58115c = z;
        this.f58116d = abstractC20585d;
        this.f58117e = abstractC20583b;
        this.f58118f = z2;
    }

    @Override // p193e.p194a.p1272u3.AbstractC20609r
    /* renamed from: b */
    public void mo10931b(boolean z) {
        this.f58116d.putBoolean(this.f58114b, z);
    }

    @Override // p193e.p194a.p1272u3.AbstractC20609r
    /* renamed from: c */
    public String mo10930c() {
        return this.f58114b;
    }

    @Override // p193e.p194a.p1272u3.AbstractC20609r
    /* renamed from: e */
    public boolean mo10929e() {
        return this.f58117e.isEnabled();
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20610s)) {
                return false;
            }
            C20610s c20610s = (C20610s) obj;
            return s1.z.c.l.a(this.f58114b, c20610s.f58114b) && this.f58115c == c20610s.f58115c && s1.z.c.l.a(this.f58116d, c20610s.f58116d) && s1.z.c.l.a(this.f58117e, c20610s.f58117e) && this.f58118f == c20610s.f58118f;
        }
        return true;
    }

    @Override // p193e.p194a.p1272u3.AbstractC20609r
    /* renamed from: f */
    public boolean mo10928f() {
        return this.f58116d.getBoolean(this.f58114b, false);
    }

    @Override // p193e.p194a.p1272u3.AbstractC20583b
    public String getDescription() {
        return this.f58117e.getDescription();
    }

    @Override // p193e.p194a.p1272u3.AbstractC20583b
    public FeatureKey getKey() {
        return this.f58117e.getKey();
    }

    public int hashCode() {
        String str = this.f58114b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        boolean z = this.f58115c;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        AbstractC20585d abstractC20585d = this.f58116d;
        int hashCode2 = abstractC20585d != null ? abstractC20585d.hashCode() : 0;
        AbstractC20583b abstractC20583b = this.f58117e;
        if (abstractC20583b != null) {
            i = abstractC20583b.hashCode();
        }
        boolean z2 = this.f58118f;
        if (!z2) {
            i2 = z2 ? 1 : 0;
        }
        return (((((((hashCode * 31) + i3) * 31) + hashCode2) * 31) + i) * 31) + i2;
    }

    @Override // p193e.p194a.p1272u3.AbstractC20583b
    public boolean isEnabled() {
        return this.f58118f ? ((Boolean) this.f58113a.getValue()).booleanValue() : m10925m();
    }

    @Override // p193e.p194a.p1272u3.AbstractC20599k
    /* renamed from: k */
    public void mo10927k() {
        m10924n(C20613c.f58121b);
    }

    @Override // p193e.p194a.p1272u3.AbstractC20609r
    /* renamed from: l */
    public boolean mo10926l() {
        return this.f58115c;
    }

    /* renamed from: m */
    public final boolean m10925m() {
        return this.f58117e.isEnabled() && (this.f58115c || mo10928f());
    }

    /* renamed from: n */
    public final void m10924n(l<? super AbstractC20599k, s> lVar) {
        AbstractC20583b abstractC20583b = this.f58117e;
        if (abstractC20583b instanceof AbstractC20599k) {
            lVar.d(abstractC20583b);
            return;
        }
        StringBuilder m8728C = C22128a.m8728C("Attempted to mutate compile time value in release mode. Feature: ");
        m8728C.append(getKey());
        m8728C.append(" + ");
        m8728C.append(getDescription());
        throw new IllegalStateException(m8728C.toString());
    }

    @Override // p193e.p194a.p1272u3.AbstractC20599k
    public void setEnabled(boolean z) {
        m10924n(new C20612b(z));
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RemoteFeatureImpl(remoteKey=");
        m8728C.append(this.f58114b);
        m8728C.append(", ignoreRemote=");
        m8728C.append(this.f58115c);
        m8728C.append(", prefs=");
        m8728C.append(this.f58116d);
        m8728C.append(", delegate=");
        m8728C.append(this.f58117e);
        m8728C.append(", keepInitialValue=");
        return C22128a.m8590o(m8728C, this.f58118f, ")");
    }
}
