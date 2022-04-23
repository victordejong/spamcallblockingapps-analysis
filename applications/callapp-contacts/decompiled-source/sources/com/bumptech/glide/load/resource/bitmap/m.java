package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.a.f;
import com.bumptech.glide.load.engine.u;
import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/m.class */
final class m {

    /* renamed from: a  reason: collision with root package name */
    private static final e f7675a = new f() { // from class: com.bumptech.glide.load.resource.bitmap.m.1
        @Override // com.bumptech.glide.load.engine.a.f, com.bumptech.glide.load.engine.a.e
        public final void a(Bitmap bitmap) {
        }
    };

    private m() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u<Bitmap> a(e eVar, Drawable drawable, int i, int i2) {
        boolean z;
        Bitmap bitmap;
        Drawable current = drawable.getCurrent();
        if (current instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) current).getBitmap();
            z = false;
        } else if (!(current instanceof Animatable)) {
            bitmap = b(eVar, current, i, i2);
            z = true;
        } else {
            bitmap = null;
            z = false;
        }
        if (!z) {
            eVar = f7675a;
        }
        return e.a(bitmap, eVar);
    }

    private static Bitmap b(e eVar, Drawable drawable, int i, int i2) {
        if (i != Integer.MIN_VALUE || drawable.getIntrinsicWidth() > 0) {
            if (i2 != Integer.MIN_VALUE || drawable.getIntrinsicHeight() > 0) {
                if (drawable.getIntrinsicWidth() > 0) {
                    i = drawable.getIntrinsicWidth();
                }
                if (drawable.getIntrinsicHeight() > 0) {
                    i2 = drawable.getIntrinsicHeight();
                }
                Lock a2 = y.a();
                a2.lock();
                Bitmap a3 = eVar.a(i, i2, Bitmap.Config.ARGB_8888);
                try {
                    Canvas canvas = new Canvas(a3);
                    drawable.setBounds(0, 0, i, i2);
                    drawable.draw(canvas);
                    canvas.setBitmap(null);
                    return a3;
                } finally {
                    a2.unlock();
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
