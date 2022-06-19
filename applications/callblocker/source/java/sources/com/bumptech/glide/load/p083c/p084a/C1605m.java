package com.bumptech.glide.load.p083c.p084a;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.load.engine.p090a.AbstractC1678e;
import com.bumptech.glide.load.engine.p090a.C1679f;
import java.util.concurrent.locks.Lock;
/* renamed from: com.bumptech.glide.load.c.a.m */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/m.class */
final class C1605m {

    /* renamed from: a */
    private static final AbstractC1678e f4992a = new C1679f() { // from class: com.bumptech.glide.load.c.a.m.1
        @Override // com.bumptech.glide.load.engine.p090a.C1679f, com.bumptech.glide.load.engine.p090a.AbstractC1678e
        /* renamed from: a */
        public void mo16540a(Bitmap bitmap) {
        }
    };

    /* renamed from: a */
    public static AbstractC1771t<Bitmap> m16751a(AbstractC1678e abstractC1678e, Drawable drawable, int i, int i2) {
        boolean z;
        Drawable current = drawable.getCurrent();
        Bitmap bitmap = null;
        if (current instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) current).getBitmap();
            z = false;
        } else if (!(current instanceof Animatable)) {
            bitmap = m16750b(abstractC1678e, current, i, i2);
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            abstractC1678e = f4992a;
        }
        return C1583d.m16797a(bitmap, abstractC1678e);
    }

    /* renamed from: b */
    private static Bitmap m16750b(AbstractC1678e abstractC1678e, Drawable drawable, int i, int i2) {
        Bitmap mo16543a;
        if (i == Integer.MIN_VALUE && drawable.getIntrinsicWidth() <= 0) {
            mo16543a = null;
            if (Log.isLoggable("DrawableToBitmap", 5)) {
                Log.w("DrawableToBitmap", "Unable to draw " + drawable + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width");
                mo16543a = null;
            }
        } else if (i2 != Integer.MIN_VALUE || drawable.getIntrinsicHeight() > 0) {
            if (drawable.getIntrinsicWidth() > 0) {
                i = drawable.getIntrinsicWidth();
            }
            if (drawable.getIntrinsicHeight() > 0) {
                i2 = drawable.getIntrinsicHeight();
            }
            Lock m16728a = C1617v.m16728a();
            m16728a.lock();
            mo16543a = abstractC1678e.mo16543a(i, i2, Bitmap.Config.ARGB_8888);
            try {
                Canvas canvas = new Canvas(mo16543a);
                drawable.setBounds(0, 0, i, i2);
                drawable.draw(canvas);
                canvas.setBitmap(null);
            } finally {
                m16728a.unlock();
            }
        } else {
            mo16543a = null;
            if (Log.isLoggable("DrawableToBitmap", 5)) {
                Log.w("DrawableToBitmap", "Unable to draw " + drawable + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height");
                mo16543a = null;
            }
        }
        return mo16543a;
    }
}
