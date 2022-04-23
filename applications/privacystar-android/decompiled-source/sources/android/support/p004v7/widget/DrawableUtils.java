package android.support.p004v7.widget;

import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.p001v4.graphics.drawable.WrappedDrawable;
import android.support.p004v7.graphics.drawable.DrawableWrapper;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.widget.DrawableUtils */
/* loaded from: classes-dex2jar.jar:android/support/v7/widget/DrawableUtils.class */
public class DrawableUtils {
    public static final Rect INSETS_NONE = new Rect();
    private static final String TAG = "DrawableUtils";
    private static final String VECTOR_DRAWABLE_CLAZZ_NAME = "android.graphics.drawable.VectorDrawable";
    private static Class<?> sInsetsClazz;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                sInsetsClazz = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException e) {
            }
        }
    }

    private DrawableUtils() {
    }

    public static boolean canSafelyMutateDrawable(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof InsetDrawable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof GradientDrawable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 17 && (drawable instanceof LayerDrawable)) {
            return false;
        }
        if (drawable instanceof DrawableContainer) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (!(constantState instanceof DrawableContainer.DrawableContainerState)) {
                return true;
            }
            for (Drawable drawable2 : ((DrawableContainer.DrawableContainerState) constantState).getChildren()) {
                if (!canSafelyMutateDrawable(drawable2)) {
                    return false;
                }
            }
            return true;
        } else if (drawable instanceof WrappedDrawable) {
            return canSafelyMutateDrawable(((WrappedDrawable) drawable).getWrappedDrawable());
        } else {
            if (drawable instanceof DrawableWrapper) {
                return canSafelyMutateDrawable(((DrawableWrapper) drawable).getWrappedDrawable());
            }
            if (drawable instanceof ScaleDrawable) {
                return canSafelyMutateDrawable(((ScaleDrawable) drawable).getDrawable());
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void fixDrawable(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT == 21 && VECTOR_DRAWABLE_CLAZZ_NAME.equals(drawable.getClass().getName())) {
            fixVectorDrawableTinting(drawable);
        }
    }

    private static void fixVectorDrawableTinting(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(ThemeUtils.CHECKED_STATE_SET);
        } else {
            drawable.setState(ThemeUtils.EMPTY_STATE_SET);
        }
        drawable.setState(state);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00db A[Catch: Exception -> 0x0114, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0114, blocks: (B:4:0x0006, B:6:0x0025, B:11:0x0046, B:20:0x0073, B:24:0x0083, B:28:0x0093, B:32:0x00a3, B:39:0x00db, B:40:0x00e8, B:41:0x00f5, B:42:0x0102, B:43:0x010c), top: B:50:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e8 A[Catch: Exception -> 0x0114, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0114, blocks: (B:4:0x0006, B:6:0x0025, B:11:0x0046, B:20:0x0073, B:24:0x0083, B:28:0x0093, B:32:0x00a3, B:39:0x00db, B:40:0x00e8, B:41:0x00f5, B:42:0x0102, B:43:0x010c), top: B:50:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00f5 A[Catch: Exception -> 0x0114, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0114, blocks: (B:4:0x0006, B:6:0x0025, B:11:0x0046, B:20:0x0073, B:24:0x0083, B:28:0x0093, B:32:0x00a3, B:39:0x00db, B:40:0x00e8, B:41:0x00f5, B:42:0x0102, B:43:0x010c), top: B:50:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0102 A[Catch: Exception -> 0x0114, TRY_ENTER, TryCatch #0 {Exception -> 0x0114, blocks: (B:4:0x0006, B:6:0x0025, B:11:0x0046, B:20:0x0073, B:24:0x0083, B:28:0x0093, B:32:0x00a3, B:39:0x00db, B:40:0x00e8, B:41:0x00f5, B:42:0x0102, B:43:0x010c), top: B:50:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x010c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Rect getOpticalBounds(android.graphics.drawable.Drawable r4) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p004v7.widget.DrawableUtils.getOpticalBounds(android.graphics.drawable.Drawable):android.graphics.Rect");
    }

    public static PorterDuff.Mode parseTintMode(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }
}
