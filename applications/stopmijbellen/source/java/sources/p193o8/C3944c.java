package p193o8;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import p007a6.C0033h;
import p107g9.AbstractC2919b0;
/* renamed from: o8.c */
/* loaded from: classes2-dex2jar.jar:o8/c.class */
public class C3944c implements AbstractC2919b0 {

    /* renamed from: a */
    public int f12429a;

    public C3944c(int i, int i2, int i3) {
        this.f12429a = i3;
    }

    @Override // p107g9.AbstractC2919b0
    /* renamed from: a */
    public Bitmap mo1593a(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, bitmap.getConfig());
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawARGB(0, 0, 0, 0);
        Paint paint = new Paint(1);
        Rect rect = new Rect(0, 0, width, height);
        RectF rectF = new RectF(rect);
        float f = 100;
        canvas.drawRoundRect(rectF, f, f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        int i = width + 2;
        int i2 = height + 2;
        Bitmap createBitmap2 = Bitmap.createBitmap(i, i2, bitmap.getConfig());
        canvas.setBitmap(createBitmap2);
        canvas.drawARGB(0, 0, 0, 0);
        Rect rect2 = new Rect(0, 0, i, i2);
        paint.setXfermode(null);
        paint.setColor(this.f12429a);
        paint.setStyle(Paint.Style.FILL);
        RectF rectF2 = new RectF(rect2);
        float f2 = 100;
        canvas.drawRoundRect(rectF2, f2, f2, paint);
        float f3 = 1;
        canvas.drawBitmap(createBitmap, f3, f3, (Paint) null);
        if (bitmap != createBitmap2) {
            bitmap.recycle();
        }
        return createBitmap2;
    }

    @Override // p107g9.AbstractC2919b0
    /* renamed from: b */
    public String mo1592b() {
        StringBuilder sb = new StringBuilder();
        sb.append("bitmapBorder(borderSize=");
        sb.append(1);
        sb.append(", cornerRadius=");
        sb.append(100);
        sb.append(", color=");
        return C0033h.m8885l(sb, this.f12429a, ")");
    }
}
