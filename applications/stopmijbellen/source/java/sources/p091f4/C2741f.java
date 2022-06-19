package p091f4;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import p029c4.C0822f;
import p029c4.C0827i;
/* renamed from: f4.f */
/* loaded from: classes-dex2jar.jar:f4/f.class */
public class C2741f extends C0822f {

    /* renamed from: A */
    public final RectF f9395A;

    /* renamed from: B */
    public int f9396B;

    /* renamed from: z */
    public final Paint f9397z;

    public C2741f() {
        this(null);
    }

    public C2741f(C0827i c0827i) {
        super(c0827i == null ? new C0827i() : c0827i);
        Paint paint = new Paint(1);
        this.f9397z = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.f9395A = new RectF();
    }

    @Override // p029c4.C0822f, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (callback instanceof View) {
            View view = (View) callback;
            if (view.getLayerType() != 2) {
                view.setLayerType(2, null);
            }
        } else {
            this.f9396B = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
        }
        super.draw(canvas);
        if (!(getCallback() instanceof View)) {
            canvas.restoreToCount(this.f9396B);
        }
    }

    @Override // p029c4.C0822f
    /* renamed from: h */
    public void mo3186h(Canvas canvas) {
        if (this.f9395A.isEmpty()) {
            super.mo3186h(canvas);
            return;
        }
        Bitmap createBitmap = Bitmap.createBitmap(canvas.getWidth(), canvas.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(createBitmap);
        super.mo3186h(canvas2);
        canvas2.drawRect(this.f9395A, this.f9397z);
        canvas.drawBitmap(createBitmap, 0.0f, 0.0f, (Paint) null);
    }

    /* renamed from: y */
    public void m3185y(float f, float f2, float f3, float f4) {
        RectF rectF = this.f9395A;
        if (f == rectF.left && f2 == rectF.top && f3 == rectF.right && f4 == rectF.bottom) {
            return;
        }
        rectF.set(f, f2, f3, f4);
        invalidateSelf();
    }
}
