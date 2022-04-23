package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.bumptech.glide.load.engine.AbstractC0764s;
import com.bumptech.glide.load.engine.p020x.AbstractC0770e;
import java.util.concurrent.locks.Lock;
/* renamed from: com.bumptech.glide.load.resource.bitmap.m */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/m.class */
final class C0821m {

    /* renamed from: a */
    private static final AbstractC0770e f3754a = new a();

    /* renamed from: a */
    static AbstractC0764s<Bitmap> m10881a(AbstractC0770e eVar, Drawable drawable, int i, int i2) {
        boolean z;
        Bitmap bitmap;
        Drawable current = drawable.getCurrent();
        if (current instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) current).getBitmap();
            z = false;
        } else if (!(current instanceof Animatable)) {
            bitmap = m10880b(eVar, current, i, i2);
            z = true;
        } else {
            bitmap = null;
            z = false;
        }
        if (!z) {
            eVar = f3754a;
        }
        return e.f(bitmap, eVar);
    }

    /* renamed from: b */
    private static Bitmap m10880b(AbstractC0770e eVar, Drawable drawable, int i, int i2) {
        if (i != Integer.MIN_VALUE || drawable.getIntrinsicWidth() > 0) {
            if (i2 != Integer.MIN_VALUE || drawable.getIntrinsicHeight() > 0) {
                if (drawable.getIntrinsicWidth() > 0) {
                    i = drawable.getIntrinsicWidth();
                }
                if (drawable.getIntrinsicHeight() > 0) {
                    i2 = drawable.getIntrinsicHeight();
                }
                Lock i3 = C0824x.m10858i();
                i3.lock();
                Bitmap c = eVar.m11064c(i, i2, Bitmap.Config.ARGB_8888);
                try {
                    Canvas canvas = new Canvas(c);
                    drawable.setBounds(0, 0, i, i2);
                    drawable.draw(canvas);
                    canvas.setBitmap(null);
                    return c;
                } finally {
                    i3.unlock();
                }
            } else if (!Log.isLoggable("DrawableToBitmap", 5)) {
                return null;
            } else {
                Log.w("DrawableToBitmap", "Unable to draw " + drawable + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height");
                return null;
            }
        } else if (!Log.isLoggable("DrawableToBitmap", 5)) {
            return null;
        } else {
            Log.w("DrawableToBitmap", "Unable to draw " + drawable + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width");
            return null;
        }
    }
}
