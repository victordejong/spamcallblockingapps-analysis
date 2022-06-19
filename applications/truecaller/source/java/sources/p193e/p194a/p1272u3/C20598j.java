package p193e.p194a.p1272u3;

import com.truecaller.featuretoggles.FeatureKey;
import com.truecaller.featuretoggles.FirebaseFlavor;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1220s4.AbstractC20235a;
import s1.z.c.l;
/* renamed from: e.a.u3.j */
/* loaded from: classes9-dex2jar.jar:e/a/u3/j.class */
public final class C20598j implements AbstractC20607p, AbstractC20583b {

    /* renamed from: a */
    public final AbstractC20583b f58088a;

    /* renamed from: b */
    public final AbstractC20235a f58089b;

    /* renamed from: c */
    public final String f58090c;

    /* renamed from: d */
    public final AbstractC20585d f58091d;

    /* renamed from: e */
    public final FirebaseFlavor f58092e;

    public C20598j(AbstractC20583b abstractC20583b, AbstractC20235a abstractC20235a, String str, AbstractC20585d abstractC20585d, FirebaseFlavor firebaseFlavor) {
        l.e(abstractC20583b, "feature");
        l.e(abstractC20235a, "remoteConfig");
        l.e(str, "firebaseKey");
        l.e(abstractC20585d, "prefs");
        l.e(firebaseFlavor, "firebaseFlavor");
        this.f58088a = abstractC20583b;
        this.f58089b = abstractC20235a;
        this.f58090c = str;
        this.f58091d = abstractC20585d;
        this.f58092e = firebaseFlavor;
    }

    @Override // p193e.p194a.p1272u3.AbstractC20597i
    /* renamed from: a */
    public String mo10940a() {
        return this.f58090c;
    }

    @Override // p193e.p194a.p1272u3.AbstractC20597i
    /* renamed from: d */
    public long mo10939d(long j) {
        return this.f58091d.mo11009p1(this.f58090c, j, this.f58089b);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20598j)) {
                return false;
            }
            C20598j c20598j = (C20598j) obj;
            return l.a(this.f58088a, c20598j.f58088a) && l.a(this.f58089b, c20598j.f58089b) && l.a(this.f58090c, c20598j.f58090c) && l.a(this.f58091d, c20598j.f58091d) && l.a(this.f58092e, c20598j.f58092e);
        }
        return true;
    }

    @Override // p193e.p194a.p1272u3.AbstractC20597i
    /* renamed from: g */
    public String mo10938g() {
        String str = "";
        if (this.f58092e != FirebaseFlavor.BOOLEAN) {
            AbstractC20585d abstractC20585d = this.f58091d;
            String str2 = this.f58090c;
            String string = abstractC20585d.getString(str2, this.f58089b.getString(str2));
            str = "";
            if (string != null) {
                str = string;
            }
        }
        return str;
    }

    @Override // p193e.p194a.p1272u3.AbstractC20583b
    public String getDescription() {
        return this.f58088a.getDescription();
    }

    @Override // p193e.p194a.p1272u3.AbstractC20597i
    public int getInt(int i) {
        return this.f58091d.mo11010W0(this.f58090c, i, this.f58089b);
    }

    @Override // p193e.p194a.p1272u3.AbstractC20583b
    public FeatureKey getKey() {
        return this.f58088a.getKey();
    }

    @Override // p193e.p194a.p1272u3.AbstractC20607p
    /* renamed from: h */
    public void mo10932h(String str) {
        l.e(str, "newValue");
        if (this.f58092e != FirebaseFlavor.BOOLEAN) {
            this.f58091d.putString(this.f58090c, str);
            return;
        }
        throw new RuntimeException("Firebase flavor can not be boolean when setting new value!");
    }

    public int hashCode() {
        AbstractC20583b abstractC20583b = this.f58088a;
        int i = 0;
        int hashCode = abstractC20583b != null ? abstractC20583b.hashCode() : 0;
        AbstractC20235a abstractC20235a = this.f58089b;
        int hashCode2 = abstractC20235a != null ? abstractC20235a.hashCode() : 0;
        String str = this.f58090c;
        int hashCode3 = str != null ? str.hashCode() : 0;
        AbstractC20585d abstractC20585d = this.f58091d;
        int hashCode4 = abstractC20585d != null ? abstractC20585d.hashCode() : 0;
        FirebaseFlavor firebaseFlavor = this.f58092e;
        if (firebaseFlavor != null) {
            i = firebaseFlavor.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    @Override // p193e.p194a.p1272u3.AbstractC20597i
    /* renamed from: i */
    public float mo10937i(float f) {
        return this.f58091d.mo11011K(this.f58090c, f, this.f58089b);
    }

    @Override // p193e.p194a.p1272u3.AbstractC20597i, p193e.p194a.p1272u3.AbstractC20583b
    public boolean isEnabled() {
        boolean z = false;
        if (this.f58092e == FirebaseFlavor.BOOLEAN) {
            AbstractC20585d abstractC20585d = this.f58091d;
            String str = this.f58090c;
            z = abstractC20585d.getBoolean(str, this.f58089b.mo11313a(str, false));
        }
        return z;
    }

    @Override // p193e.p194a.p1272u3.AbstractC20597i
    /* renamed from: j */
    public FirebaseFlavor mo10936j() {
        return this.f58092e;
    }

    @Override // p193e.p194a.p1272u3.AbstractC20599k
    /* renamed from: k */
    public void mo10927k() {
        this.f58091d.remove(this.f58090c);
    }

    @Override // p193e.p194a.p1272u3.AbstractC20599k
    public void setEnabled(boolean z) {
        if (this.f58092e == FirebaseFlavor.BOOLEAN) {
            this.f58091d.putBoolean(this.f58090c, z);
        }
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FirebaseFeatureImpl(feature=");
        m8728C.append(this.f58088a);
        m8728C.append(", remoteConfig=");
        m8728C.append(this.f58089b);
        m8728C.append(", firebaseKey=");
        m8728C.append(this.f58090c);
        m8728C.append(", prefs=");
        m8728C.append(this.f58091d);
        m8728C.append(", firebaseFlavor=");
        m8728C.append(this.f58092e);
        m8728C.append(")");
        return m8728C.toString();
    }
}
