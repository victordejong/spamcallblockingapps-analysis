package p193e.p1451f.p1452a.p1457n.p1466q.p1467d;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import java.util.concurrent.locks.Lock;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22303d;
/* renamed from: e.f.a.n.q.d.o */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/o.class */
public final class C22515o {

    /* renamed from: a */
    public static final AbstractC22303d f62399a = new a();

    /* renamed from: a */
    public static AbstractC22394w<Bitmap> m8179a(AbstractC22303d abstractC22303d, Drawable drawable, int i, int i2) {
        Drawable current = drawable.getCurrent();
        boolean z = false;
        Bitmap bitmap = null;
        if (current instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) current).getBitmap();
        } else if (!(current instanceof Animatable)) {
            if (i == Integer.MIN_VALUE && current.getIntrinsicWidth() <= 0) {
                bitmap = null;
                if (Log.isLoggable("DrawableToBitmap", 5)) {
                    String str = "Unable to draw " + current + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width";
                    bitmap = null;
                }
            } else if (i2 != Integer.MIN_VALUE || current.getIntrinsicHeight() > 0) {
                if (current.getIntrinsicWidth() > 0) {
                    i = current.getIntrinsicWidth();
                }
                if (current.getIntrinsicHeight() > 0) {
                    i2 = current.getIntrinsicHeight();
                }
                Lock lock = C22485c0.f62356e;
                lock.lock();
                bitmap = abstractC22303d.mo8325e(i, i2, Bitmap.Config.ARGB_8888);
                try {
                    Canvas canvas = new Canvas(bitmap);
                    current.setBounds(0, 0, i, i2);
                    current.draw(canvas);
                    canvas.setBitmap(null);
                } finally {
                    lock.unlock();
                }
            } else {
                bitmap = null;
                if (Log.isLoggable("DrawableToBitmap", 5)) {
                    String str2 = "Unable to draw " + current + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height";
                    bitmap = null;
                }
            }
            z = true;
        }
        if (!z) {
            abstractC22303d = f62399a;
        }
        return C22490e.m8203d(bitmap, abstractC22303d);
    }
}
