package p193o8;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.provider.MediaStore;
/* renamed from: o8.k */
/* loaded from: classes2-dex2jar.jar:o8/k.class */
public class C3958k {

    /* renamed from: a */
    public int f12452a;

    /* renamed from: b */
    public String f12453b;

    /* renamed from: c */
    public Context f12454c;

    public C3958k(Context context, String str, int i, int i2, int i3) {
        this.f12452a = i3;
        this.f12453b = str;
        this.f12454c = context;
    }

    /* renamed from: a */
    public final Bitmap m1587a(Bitmap bitmap) {
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
        paint.setColor(this.f12452a);
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

    /* renamed from: b */
    public BitmapDrawable m1586b() {
        Bitmap decodeResource = BitmapFactory.decodeResource(this.f12454c.getResources(), 2131230944);
        Bitmap bitmap = decodeResource;
        if (this.f12453b != null) {
            bitmap = decodeResource;
            try {
                Bitmap bitmap2 = MediaStore.Images.Media.getBitmap(this.f12454c.getContentResolver(), Uri.parse(this.f12453b));
                bitmap = bitmap2;
                bitmap = m1587a(bitmap2);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return new BitmapDrawable(this.f12454c.getResources(), bitmap);
    }
}
