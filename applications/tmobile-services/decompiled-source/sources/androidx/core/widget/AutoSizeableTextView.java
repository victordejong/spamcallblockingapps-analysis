package androidx.core.widget;

import android.os.Build;
import androidx.annotation.RestrictTo;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/core/widget/AutoSizeableTextView.class */
public interface AutoSizeableTextView {
    @RestrictTo

    /* renamed from: a */
    public static final boolean f3388a;

    static {
        f3388a = Build.VERSION.SDK_INT >= 27;
    }

    void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException;
}
