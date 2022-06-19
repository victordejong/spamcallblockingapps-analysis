package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import com.bumptech.glide.load.engine.p119a.C3713f;
import java.util.concurrent.locks.Lock;
/* renamed from: com.bumptech.glide.load.resource.bitmap.m */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/m.class */
final class C3881m {

    /* renamed from: a */
    private static final AbstractC3712e f14253a = new C3713f() { // from class: com.bumptech.glide.load.resource.bitmap.m.1
        @Override // com.bumptech.glide.load.engine.p119a.C3713f, com.bumptech.glide.load.engine.p119a.AbstractC3712e
        /* renamed from: a */
        public final void mo37266a(Bitmap bitmap) {
        }
    };

    private C3881m() {
    }

    /* renamed from: a */
    public static AbstractC3811u<Bitmap> m37268a(AbstractC3712e abstractC3712e, Drawable drawable, int i, int i2) {
        boolean z;
        Bitmap bitmap;
        Drawable current = drawable.getCurrent();
        if (current instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) current).getBitmap();
            z = false;
        } else if (!(current instanceof Animatable)) {
            bitmap = m37267b(abstractC3712e, current, i, i2);
            z = true;
        } else {
            bitmap = null;
            z = false;
        }
        if (!z) {
            abstractC3712e = f14253a;
        }
        return C3864e.m37283a(bitmap, abstractC3712e);
    }

    /* renamed from: b */
    private static Bitmap m37267b(AbstractC3712e abstractC3712e, Drawable drawable, int i, int i2) {
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
            Lock m37245a = C3898y.m37245a();
            m37245a.lock();
            Bitmap mo37460a = abstractC3712e.mo37460a(i, i2, Bitmap.Config.ARGB_8888);
            try {
                Canvas canvas = new Canvas(mo37460a);
                drawable.setBounds(0, 0, i, i2);
                drawable.draw(canvas);
                canvas.setBitmap(null);
                return mo37460a;
            } finally {
                m37245a.unlock();
            }
        }
    }
}
