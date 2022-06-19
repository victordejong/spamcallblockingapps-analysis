package p193e.p1575l.p1576a;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
/* renamed from: e.l.a.f */
/* loaded from: classes2-dex2jar.jar:e/l/a/f.class */
public class RunnableC23980f implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Runnable f66454a;

    /* renamed from: b */
    public final /* synthetic */ C23981g f66455b;

    public RunnableC23980f(C23981g c23981g, Runnable runnable) {
        this.f66455b = c23981g;
        this.f66454a = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        int[] iArr = new int[2];
        this.f66455b.f66456u.getLocationOnScreen(iArr);
        C23981g c23981g = this.f66455b;
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[0];
        c23981g.f66353e = new Rect(i, i2, this.f66455b.f66456u.getWidth() + i3, this.f66455b.f66456u.getHeight() + iArr[1]);
        C23981g c23981g2 = this.f66455b;
        if (c23981g2.f66354f == null && c23981g2.f66456u.getWidth() > 0 && this.f66455b.f66456u.getHeight() > 0) {
            Bitmap createBitmap = Bitmap.createBitmap(this.f66455b.f66456u.getWidth(), this.f66455b.f66456u.getHeight(), Bitmap.Config.ARGB_8888);
            this.f66455b.f66456u.draw(new Canvas(createBitmap));
            this.f66455b.f66354f = new BitmapDrawable(this.f66455b.f66456u.getContext().getResources(), createBitmap);
            Drawable drawable = this.f66455b.f66354f;
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), this.f66455b.f66354f.getIntrinsicHeight());
        }
        this.f66454a.run();
    }
}
