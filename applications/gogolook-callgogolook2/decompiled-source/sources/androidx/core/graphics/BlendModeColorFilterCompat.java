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
    @Nullable
    public static ColorFilter createBlendModeColorFilterCompat(int i, @NonNull BlendModeCompat blendModeCompat) {
        PorterDuffColorFilter porterDuffColorFilter = null;
        BlendModeColorFilter blendModeColorFilter = null;
        if (Build.VERSION.SDK_INT >= 29) {
            BlendMode obtainBlendModeFromCompat = BlendModeUtils.obtainBlendModeFromCompat(blendModeCompat);
            if (obtainBlendModeFromCompat != null) {
                blendModeColorFilter = new BlendModeColorFilter(i, obtainBlendModeFromCompat);
            }
            return blendModeColorFilter;
        }
        PorterDuff.Mode obtainPorterDuffFromCompat = BlendModeUtils.obtainPorterDuffFromCompat(blendModeCompat);
        if (obtainPorterDuffFromCompat != null) {
            porterDuffColorFilter = new PorterDuffColorFilter(i, obtainPorterDuffFromCompat);
        }
        return porterDuffColorFilter;
    }
}
