package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/IconCompat.class */
public class IconCompat extends CustomVersionedParcelable {

    /* renamed from: k */
    public static final PorterDuff.Mode f1483k = PorterDuff.Mode.SRC_IN;

    /* renamed from: a */
    public int f1484a;

    /* renamed from: b */
    public Object f1485b;

    /* renamed from: c */
    public byte[] f1486c;

    /* renamed from: d */
    public Parcelable f1487d;

    /* renamed from: e */
    public int f1488e;

    /* renamed from: f */
    public int f1489f;

    /* renamed from: g */
    public ColorStateList f1490g;

    /* renamed from: h */
    public PorterDuff.Mode f1491h;

    /* renamed from: i */
    public String f1492i;

    /* renamed from: j */
    public String f1493j;

    public IconCompat() {
        this.f1484a = -1;
        this.f1486c = null;
        this.f1487d = null;
        this.f1488e = 0;
        this.f1489f = 0;
        this.f1490g = null;
        this.f1491h = f1483k;
        this.f1492i = null;
    }

    public IconCompat(int i) {
        this.f1484a = -1;
        this.f1486c = null;
        this.f1487d = null;
        this.f1488e = 0;
        this.f1489f = 0;
        this.f1490g = null;
        this.f1491h = f1483k;
        this.f1492i = null;
        this.f1484a = i;
    }

    /* renamed from: a */
    public static Bitmap m8316a(Bitmap bitmap, boolean z) {
        int min = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap createBitmap = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(3);
        float f = min;
        float f2 = 0.5f * f;
        float f3 = 0.9166667f * f2;
        if (z) {
            float f4 = 0.010416667f * f;
            paint.setColor(0);
            paint.setShadowLayer(f4, 0.0f, f * 0.020833334f, 1023410176);
            canvas.drawCircle(f2, f2, f3, paint);
            paint.setShadowLayer(f4, 0.0f, 0.0f, 503316480);
            canvas.drawCircle(f2, f2, f3, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(-16777216);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - min)) / 2, (-(bitmap.getHeight() - min)) / 2);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f2, f2, f3, paint);
        canvas.setBitmap(null);
        return createBitmap;
    }

    /* renamed from: b */
    public static IconCompat m8315b(Resources resources, String str, int i) {
        if (i != 0) {
            IconCompat iconCompat = new IconCompat(2);
            iconCompat.f1488e = i;
            iconCompat.f1485b = str;
            iconCompat.f1493j = str;
            return iconCompat;
        }
        throw new IllegalArgumentException("Drawable resource ID must not be 0");
    }

    /* renamed from: c */
    public int m8314c() {
        int i;
        int i2;
        int i3 = this.f1484a;
        if (i3 != -1 || (i = Build.VERSION.SDK_INT) < 23) {
            if (i3 == 2) {
                return this.f1488e;
            }
            throw new IllegalStateException("called getResId() on " + this);
        }
        Icon icon = (Icon) this.f1485b;
        if (i >= 28) {
            i2 = icon.getResId();
        } else {
            try {
                i2 = ((Integer) icon.getClass().getMethod("getResId", new Class[0]).invoke(icon, new Object[0])).intValue();
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                i2 = 0;
            }
        }
        return i2;
    }

    /* renamed from: d */
    public Uri m8313d() {
        int i;
        Uri uri;
        int i2 = this.f1484a;
        if (i2 == -1 && (i = Build.VERSION.SDK_INT) >= 23) {
            Icon icon = (Icon) this.f1485b;
            if (i >= 28) {
                uri = icon.getUri();
            } else {
                try {
                    uri = (Uri) icon.getClass().getMethod("getUri", new Class[0]).invoke(icon, new Object[0]);
                } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                    uri = null;
                }
            }
            return uri;
        } else if (i2 == 4 || i2 == 6) {
            return Uri.parse((String) this.f1485b);
        } else {
            throw new IllegalStateException("called getUri() on " + this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x018a  */
    @java.lang.Deprecated
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.drawable.Icon m8312e() {
        /*
            Method dump skipped, instructions count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.drawable.IconCompat.m8312e():android.graphics.drawable.Icon");
    }

    public String toString() {
        String str;
        if (this.f1484a == -1) {
            return String.valueOf(this.f1485b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        switch (this.f1484a) {
            case 1:
                str = "BITMAP";
                break;
            case 2:
                str = "RESOURCE";
                break;
            case 3:
                str = "DATA";
                break;
            case 4:
                str = "URI";
                break;
            case 5:
                str = "BITMAP_MASKABLE";
                break;
            case 6:
                str = "URI_MASKABLE";
                break;
            default:
                str = "UNKNOWN";
                break;
        }
        sb.append(str);
        switch (this.f1484a) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f1485b).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f1485b).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.f1493j);
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(m8314c())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f1488e);
                if (this.f1489f != 0) {
                    sb.append(" off=");
                    sb.append(this.f1489f);
                    break;
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f1485b);
                break;
        }
        if (this.f1490g != null) {
            sb.append(" tint=");
            sb.append(this.f1490g);
        }
        if (this.f1491h != f1483k) {
            sb.append(" mode=");
            sb.append(this.f1491h);
        }
        sb.append(")");
        return sb.toString();
    }
}
