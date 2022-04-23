package p613k.p614d;

import java.lang.ref.WeakReference;
/* renamed from: k.d.j */
/* loaded from: classes2-dex2jar.jar:k/d/j.class */
public final class C10458j extends C10465o {

    /* renamed from: B */
    public WeakReference<Object> f38698B;

    /* renamed from: C */
    public String f38699C;

    /* renamed from: D */
    public AbstractC10459k f38700D;

    public C10458j() {
    }

    public C10458j(Object obj, String str) {
        m104a(obj);
        m102a(str);
    }

    /* renamed from: a */
    public static C10458j m103a(Object obj, String str, float... fArr) {
        C10458j jVar = new C10458j(obj, str);
        jVar.mo72a(fArr);
        return jVar;
    }

    /* renamed from: a */
    public void m104a(Object obj) {
        if (m100w() != obj) {
            if (m57l()) {
                m68c();
            }
            this.f38698B = obj == null ? null : new WeakReference<>(obj);
            this.f38740k = false;
        }
    }

    /* renamed from: a */
    public void m102a(String str) {
        C10460l[] lVarArr = this.f38747r;
        if (lVarArr != null) {
            C10460l lVar = lVarArr[0];
            String e = lVar.m87e();
            lVar.m92a(str);
            this.f38748s.remove(e);
            this.f38748s.put(str, lVar);
        }
        this.f38699C = str;
        this.f38740k = false;
    }

    @Override // p613k.p614d.C10465o
    /* renamed from: a */
    public void mo72a(float... fArr) {
        C10460l[] lVarArr = this.f38747r;
        if (lVarArr == null || lVarArr.length == 0) {
            AbstractC10459k kVar = this.f38700D;
            if (kVar != null) {
                m71a(C10460l.m89a(kVar, fArr));
            } else {
                m71a(C10460l.m90a(this.f38699C, fArr));
            }
        } else {
            super.mo72a(fArr);
        }
    }

    /* renamed from: b */
    public void m101b(boolean z) {
    }

    @Override // p613k.p614d.C10465o
    /* renamed from: c */
    public void mo67c(float f) {
        Object w = m100w();
        if (this.f38698B == null || w != null) {
            super.mo67c(f);
            C10460l[] lVarArr = this.f38747r;
            int length = lVarArr.length;
            for (C10460l lVar : lVarArr) {
                lVar.mo83b(w);
            }
            return;
        }
        m68c();
    }

    @Override // p613k.p614d.C10465o, p613k.p614d.AbstractC10446a
    public C10458j clone() {
        return (C10458j) super.clone();
    }

    @Override // p613k.p614d.C10465o
    /* renamed from: d */
    public C10458j mo64d(long j) {
        super.mo64d(j);
        return this;
    }

    @Override // p613k.p614d.C10465o
    /* renamed from: j */
    public void mo59j() {
        if (!this.f38740k) {
            Object w = m100w();
            if (w != null) {
                C10460l[] lVarArr = this.f38747r;
                int length = lVarArr.length;
                for (C10460l lVar : lVarArr) {
                    lVar.m88c(w);
                }
            }
            super.mo59j();
        }
    }

    @Override // p613k.p614d.C10465o
    /* renamed from: m */
    public void mo56m() {
        super.mo56m();
    }

    @Override // p613k.p614d.C10465o
    public String toString() {
        String str = "ObjectAnimator@" + Integer.toHexString(hashCode()) + ", target " + m100w();
        C10460l[] lVarArr = this.f38747r;
        String str2 = str;
        if (lVarArr != null) {
            int length = lVarArr.length;
            int i = 0;
            while (true) {
                str2 = str;
                if (i >= length) {
                    break;
                }
                C10460l lVar = lVarArr[i];
                str = str + "\n    " + lVar.toString();
                i++;
            }
        }
        return str2;
    }

    /* renamed from: w */
    public Object m100w() {
        WeakReference<Object> weakReference = this.f38698B;
        return weakReference == null ? null : weakReference.get();
    }
}
