package p1727n3.p1807k.p1824j;

import android.os.Build;
/* renamed from: n3.k.j.f */
/* loaded from: classes-dex2jar.jar:n3/k/j/f.class */
public interface AbstractC26635f {

    /* renamed from: F */
    public static final boolean f74562F;

    static {
        f74562F = Build.VERSION.SDK_INT >= 27;
    }

    void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException;

    void setAutoSizeTextTypeWithDefaults(int i);
}
