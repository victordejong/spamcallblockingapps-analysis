package androidx.media;

import android.os.Build;
/* renamed from: androidx.media.e */
/* loaded from: classes-dex2jar.jar:androidx/media/e.class */
public final class C0879e {

    /* renamed from: a */
    AbstractC0880f f3881a;

    public C0879e(String str, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f3881a = new C0881g(str, i, i2);
        } else {
            this.f3881a = new C0882h(str, i, i2);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0879e) {
            return this.f3881a.equals(((C0879e) obj).f3881a);
        }
        return false;
    }

    public int hashCode() {
        return this.f3881a.hashCode();
    }
}
