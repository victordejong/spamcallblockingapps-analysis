package android.support.v4.a.a;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build;
import android.support.v4.view.d;
/* loaded from: classes-dex2jar.jar:android/support/v4/a/a/j.class */
public final class j {

    /* loaded from: classes-dex2jar.jar:android/support/v4/a/a/j$a.class */
    private static final class a extends h {
        a(Resources resources, Bitmap bitmap) {
            super(resources, bitmap);
        }

        @Override // android.support.v4.a.a.h
        final void a(int i, int i2, int i3, Rect rect, Rect rect2) {
            d.a(i, i2, i3, rect, rect2);
        }
    }

    public static h a(Resources resources, Bitmap bitmap) {
        return Build.VERSION.SDK_INT >= 21 ? new i(resources, bitmap) : new a(resources, bitmap);
    }
}
