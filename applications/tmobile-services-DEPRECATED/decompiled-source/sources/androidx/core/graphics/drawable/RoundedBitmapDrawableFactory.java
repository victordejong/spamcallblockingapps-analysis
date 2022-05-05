package androidx.core.graphics.drawable;

import android.graphics.Rect;
import androidx.core.view.GravityCompat;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/RoundedBitmapDrawableFactory.class */
public final class RoundedBitmapDrawableFactory {

    /* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable.class */
    private static class DefaultRoundedBitmapDrawable extends RoundedBitmapDrawable {
        @Override // androidx.core.graphics.drawable.RoundedBitmapDrawable
        /* renamed from: b */
        void mo19468b(int i, int i2, int i3, Rect rect, Rect rect2) {
            GravityCompat.m19305a(i, i2, i3, rect, rect2, 0);
        }
    }

    private RoundedBitmapDrawableFactory() {
    }
}
