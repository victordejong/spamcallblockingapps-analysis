package androidx.media;

import android.text.TextUtils;
import p020b.p041h.p049k.C1592c;
/* renamed from: androidx.media.h */
/* loaded from: classes-dex2jar.jar:androidx/media/h.class */
class C0882h implements AbstractC0880f {

    /* renamed from: a */
    private String f3883a;

    /* renamed from: b */
    private int f3884b;

    /* renamed from: c */
    private int f3885c;

    public C0882h(String str, int i, int i2) {
        this.f3883a = str;
        this.f3884b = i;
        this.f3885c = i2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0882h)) {
            return false;
        }
        C0882h c0882h = (C0882h) obj;
        if (!TextUtils.equals(this.f3883a, c0882h.f3883a) || this.f3884b != c0882h.f3884b || this.f3885c != c0882h.f3885c) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return C1592c.m29667b(this.f3883a, Integer.valueOf(this.f3884b), Integer.valueOf(this.f3885c));
    }
}
