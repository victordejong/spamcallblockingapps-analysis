package androidx.core.graphics;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/Insets.class */
public final class Insets {
    @NonNull

    /* renamed from: e */
    public static final Insets f3015e = new Insets(0, 0, 0, 0);

    /* renamed from: a */
    public final int f3016a;

    /* renamed from: b */
    public final int f3017b;

    /* renamed from: c */
    public final int f3018c;

    /* renamed from: d */
    public final int f3019d;

    private Insets(int i, int i2, int i3, int i4) {
        this.f3016a = i;
        this.f3017b = i2;
        this.f3018c = i3;
        this.f3019d = i4;
    }

    @NonNull
    /* renamed from: a */
    public static Insets m19583a(int i, int i2, int i3, int i4) {
        return (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) ? f3015e : new Insets(i, i2, i3, i4);
    }

    @NonNull
    @RequiresApi
    /* renamed from: b */
    public static Insets m19582b(@NonNull android.graphics.Insets insets) {
        return m19583a(insets.left, insets.top, insets.right, insets.bottom);
    }

    @NonNull
    @RequiresApi
    /* renamed from: c */
    public android.graphics.Insets m19581c() {
        return android.graphics.Insets.of(this.f3016a, this.f3017b, this.f3018c, this.f3019d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Insets.class != obj.getClass()) {
            return false;
        }
        Insets insets = (Insets) obj;
        return this.f3019d == insets.f3019d && this.f3016a == insets.f3016a && this.f3018c == insets.f3018c && this.f3017b == insets.f3017b;
    }

    public int hashCode() {
        return (((((this.f3016a * 31) + this.f3017b) * 31) + this.f3018c) * 31) + this.f3019d;
    }

    public String toString() {
        return "Insets{left=" + this.f3016a + ", top=" + this.f3017b + ", right=" + this.f3018c + ", bottom=" + this.f3019d + '}';
    }
}
