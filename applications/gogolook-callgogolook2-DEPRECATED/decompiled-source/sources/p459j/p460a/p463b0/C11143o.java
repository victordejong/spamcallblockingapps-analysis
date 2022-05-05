package p459j.p460a.p463b0;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.b0.o */
/* loaded from: classes2-dex2jar.jar:j/a/b0/o.class */
public final class C11143o {

    /* renamed from: a */
    public final EnumC11144p f25029a;

    /* renamed from: b */
    public final Class<?> f25030b;

    /* renamed from: c */
    public final int f25031c;

    /* renamed from: d */
    public final int f25032d;

    /* renamed from: e */
    public final int f25033e;

    /* renamed from: f */
    public final Bundle f25034f;

    /* renamed from: g */
    public final boolean f25035g;

    public C11143o(EnumC11144p pVar, Class<?> cls, int i, int i2, int i3, Bundle bundle, boolean z) {
        C15149k.m377b(pVar, "pageEnum");
        this.f25029a = pVar;
        this.f25030b = cls;
        this.f25031c = i;
        this.f25032d = i2;
        this.f25033e = i3;
        this.f25034f = bundle;
        this.f25035g = z;
    }

    public /* synthetic */ C11143o(EnumC11144p pVar, Class cls, int i, int i2, int i3, Bundle bundle, boolean z, int i4, C15145g gVar) {
        this(pVar, cls, i, i2, i3, (i4 & 32) != 0 ? null : bundle, (i4 & 64) != 0 ? false : z);
    }

    /* renamed from: a */
    public final Fragment m10193a() {
        Class<?> cls = this.f25030b;
        Fragment fragment = null;
        if (cls != null) {
            Object newInstance = cls.getConstructor(new Class[0]).newInstance(new Object[0]);
            Object obj = newInstance;
            if (!(newInstance instanceof Fragment)) {
                obj = null;
            }
            Fragment fragment2 = (Fragment) obj;
            fragment = null;
            if (fragment2 != null) {
                fragment2.setArguments(this.f25034f);
                fragment = fragment2;
            }
        }
        return fragment;
    }

    /* renamed from: b */
    public final EnumC11144p m10192b() {
        return this.f25029a;
    }

    /* renamed from: c */
    public final int m10191c() {
        return this.f25031c;
    }

    /* renamed from: d */
    public final int m10190d() {
        return this.f25032d;
    }

    /* renamed from: e */
    public final int m10189e() {
        return this.f25033e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C11143o)) {
            return false;
        }
        C11143o oVar = (C11143o) obj;
        if (!C15149k.m384a(this.f25029a, oVar.f25029a) || !C15149k.m384a(this.f25030b, oVar.f25030b)) {
            return false;
        }
        if (!(this.f25031c == oVar.f25031c)) {
            return false;
        }
        if (!(this.f25032d == oVar.f25032d)) {
            return false;
        }
        if (!(this.f25033e == oVar.f25033e) || !C15149k.m384a(this.f25034f, oVar.f25034f)) {
            return false;
        }
        return this.f25035g == oVar.f25035g;
    }

    /* renamed from: f */
    public final boolean m10188f() {
        return this.f25035g;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        EnumC11144p pVar = this.f25029a;
        int i = 0;
        int hashCode4 = pVar != null ? pVar.hashCode() : 0;
        Class<?> cls = this.f25030b;
        int hashCode5 = cls != null ? cls.hashCode() : 0;
        hashCode = Integer.valueOf(this.f25031c).hashCode();
        hashCode2 = Integer.valueOf(this.f25032d).hashCode();
        hashCode3 = Integer.valueOf(this.f25033e).hashCode();
        Bundle bundle = this.f25034f;
        if (bundle != null) {
            i = bundle.hashCode();
        }
        boolean z = this.f25035g;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((((((((hashCode4 * 31) + hashCode5) * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + i) * 31) + i2;
    }

    public String toString() {
        return "PageConfig(pageEnum=" + this.f25029a + ", fragmentClass=" + this.f25030b + ", tabSelectedIconResId=" + this.f25031c + ", tabUnselectedIconResId=" + this.f25032d + ", titleStrId=" + this.f25033e + ", fragmentArgs=" + this.f25034f + ", isShowRedIcon=" + this.f25035g + ")";
    }
}
