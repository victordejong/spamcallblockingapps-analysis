package androidx.media;

import android.os.Build;
/* renamed from: androidx.media.h */
/* loaded from: classes-dex2jar.jar:androidx/media/h.class */
public final class C0400h {

    /* renamed from: a */
    AbstractC0401i f2140a;

    public C0400h(String str, int i, int i2) {
        this.f2140a = Build.VERSION.SDK_INT >= 28 ? new j(str, i, i2) : new k(str, i, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0400h) {
            return this.f2140a.equals(((C0400h) obj).f2140a);
        }
        return false;
    }

    public int hashCode() {
        return this.f2140a.hashCode();
    }
}
