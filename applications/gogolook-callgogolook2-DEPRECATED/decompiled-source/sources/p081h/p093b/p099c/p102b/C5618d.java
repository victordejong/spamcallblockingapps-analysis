package p081h.p093b.p099c.p102b;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.style.ImageSpan;
import android.util.Log;
import java.io.InputStream;
/* renamed from: h.b.c.b.d */
/* loaded from: classes-dex2jar.jar:h/b/c/b/d.class */
public class C5618d extends ImageSpan {

    /* renamed from: a */
    public Uri f14041a;

    /* renamed from: b */
    public Drawable f14042b;

    /* renamed from: c */
    public Context f14043c;

    /* renamed from: d */
    public final int f14044d;

    public C5618d(Context context, int i, int i2) {
        super(context, i);
        this.f14043c = context;
        this.f14044d = i2;
    }

    public C5618d(Context context, Uri uri, int i) {
        super(context, uri);
        this.f14043c = context;
        this.f14041a = uri;
        this.f14044d = i;
    }

    /* renamed from: a */
    public Uri m24996a() {
        return this.f14041a;
    }

    /* renamed from: a */
    public final void m24995a(Drawable drawable) {
        if (this.f14044d >= 0) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            String str = "--- rescaleBigImage:" + intrinsicWidth + "," + intrinsicHeight + "," + this.f14044d;
            int i = this.f14044d;
            int i2 = intrinsicWidth;
            int i3 = intrinsicHeight;
            if (intrinsicWidth > i) {
                i3 = (intrinsicHeight * i) / i;
                i2 = i;
            }
            drawable.setBounds(0, 0, i2, i3);
        }
    }

    @Override // android.text.style.ImageSpan, android.text.style.DynamicDrawableSpan
    public Drawable getDrawable() {
        Bitmap bitmap;
        Drawable drawable = this.f14042b;
        if (drawable != null) {
            return drawable;
        }
        if (this.f14041a != null) {
            System.gc();
            try {
                InputStream openInputStream = this.f14043c.getContentResolver().openInputStream(this.f14041a);
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeStream(openInputStream, null, options);
                openInputStream.close();
                InputStream openInputStream2 = this.f14043c.getContentResolver().openInputStream(this.f14041a);
                int i = options.outWidth;
                int i2 = options.outHeight;
                if (options.outWidth > this.f14044d) {
                    i = this.f14044d;
                    i2 = (i2 * this.f14044d) / options.outWidth;
                    bitmap = BitmapFactory.decodeStream(openInputStream2, new Rect(0, 0, i, i2), null);
                } else {
                    bitmap = BitmapFactory.decodeStream(openInputStream2);
                }
                this.f14042b = new BitmapDrawable(this.f14043c.getResources(), bitmap);
                this.f14042b.setBounds(0, 0, i, i2);
                openInputStream2.close();
            } catch (Exception e) {
                Log.e("EditStyledTextSpan", "Failed to loaded content " + this.f14041a, e);
                return null;
            } catch (OutOfMemoryError e2) {
                Log.e("EditStyledTextSpan", "OutOfMemoryError");
                return null;
            }
        } else {
            this.f14042b = super.getDrawable();
            m24995a(this.f14042b);
            this.f14042b.getIntrinsicWidth();
            this.f14042b.getIntrinsicHeight();
        }
        return this.f14042b;
    }
}
