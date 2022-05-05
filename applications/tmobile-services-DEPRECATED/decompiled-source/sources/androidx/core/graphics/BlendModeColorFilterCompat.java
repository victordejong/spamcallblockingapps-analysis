package androidx.core.graphics;

import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/BlendModeColorFilterCompat.class */
public class BlendModeColorFilterCompat {
    private BlendModeColorFilterCompat() {
    }

    @Nullable
    /* renamed from: a */
    public static ColorFilter m19590a(int i, @NonNull BlendModeCompat blendModeCompat) {
        PorterDuffColorFilter porterDuffColorFilter = null;
        BlendModeColorFilter blendModeColorFilter = null;
        if (Build.VERSION.SDK_INT >= 29) {
            BlendMode a = BlendModeUtils.m19589a(blendModeCompat);
            if (a != null) {
                blendModeColorFilter = new BlendModeColorFilter(i, a);
            }
            return blendModeColorFilter;
        }
        PorterDuff.Mode b = BlendModeUtils.m19588b(blendModeCompat);
        if (b != null) {
            porterDuffColorFilter = new PorterDuffColorFilter(i, b);
        }
        return porterDuffColorFilter;
    }
}
