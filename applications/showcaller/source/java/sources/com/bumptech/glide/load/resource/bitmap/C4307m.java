package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.engine.p209x.AbstractC4096e;
import com.bumptech.glide.load.engine.p209x.C4097f;
import java.util.concurrent.locks.Lock;
/* renamed from: com.bumptech.glide.load.resource.bitmap.m */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/m.class */
final class C4307m {

    /* renamed from: a */
    private static final AbstractC4096e f13269a = new C4308a();

    /* renamed from: com.bumptech.glide.load.resource.bitmap.m$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/m$a.class */
    class C4308a extends C4097f {
        C4308a() {
        }

        @Override // com.bumptech.glide.load.engine.p209x.C4097f, com.bumptech.glide.load.engine.p209x.AbstractC4096e
        /* renamed from: c */
        public void mo22911c(Bitmap bitmap) {
        }
    }

    /* renamed from: a */
    public static AbstractC4083s<Bitmap> m22913a(AbstractC4096e abstractC4096e, Drawable drawable, int i, int i2) {
        boolean z;
        Bitmap bitmap;
        Drawable current = drawable.getCurrent();
        if (current instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) current).getBitmap();
            z = false;
        } else if (!(current instanceof Animatable)) {
            bitmap = m22912b(abstractC4096e, current, i, i2);
            z = true;
        } else {
            bitmap = null;
            z = false;
        }
        if (!z) {
            abstractC4096e = f13269a;
        }
        return C4297e.m22944f(bitmap, abstractC4096e);
    }

    /* renamed from: b */
    private static Bitmap m22912b(AbstractC4096e abstractC4096e, Drawable drawable, int i, int i2) {
        if (i == Integer.MIN_VALUE && drawable.getIntrinsicWidth() <= 0) {
            if (!Log.isLoggable("DrawableToBitmap", 5)) {
                return null;
            }
            Log.w("DrawableToBitmap", "Unable to draw " + drawable + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width");
            return null;
        } else if (i2 == Integer.MIN_VALUE && drawable.getIntrinsicHeight() <= 0) {
            if (!Log.isLoggable("DrawableToBitmap", 5)) {
                return null;
            }
            Log.w("DrawableToBitmap", "Unable to draw " + drawable + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height");
            return null;
        } else {
            if (drawable.getIntrinsicWidth() > 0) {
                i = drawable.getIntrinsicWidth();
            }
            if (drawable.getIntrinsicHeight() > 0) {
                i2 = drawable.getIntrinsicHeight();
            }
            Lock m22869i = C4322x.m22869i();
            m22869i.lock();
            Bitmap mo23258d = abstractC4096e.mo23258d(i, i2, Bitmap.Config.ARGB_8888);
            try {
                Canvas canvas = new Canvas(mo23258d);
                drawable.setBounds(0, 0, i, i2);
                drawable.draw(canvas);
                canvas.setBitmap(null);
                return mo23258d;
            } finally {
                m22869i.unlock();
            }
        }
    }
}
