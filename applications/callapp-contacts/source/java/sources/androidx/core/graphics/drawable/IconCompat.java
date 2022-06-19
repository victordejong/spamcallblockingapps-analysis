package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
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
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import androidx.core.p036e.C0833d;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/IconCompat.class */
public class IconCompat extends CustomVersionedParcelable {

    /* renamed from: h */
    static final PorterDuff.Mode f3573h = PorterDuff.Mode.SRC_IN;

    /* renamed from: a */
    public int f3574a;

    /* renamed from: b */
    Object f3575b;

    /* renamed from: c */
    public byte[] f3576c;

    /* renamed from: d */
    public Parcelable f3577d;

    /* renamed from: e */
    public int f3578e;

    /* renamed from: f */
    public int f3579f;

    /* renamed from: g */
    public ColorStateList f3580g;

    /* renamed from: i */
    PorterDuff.Mode f3581i;

    /* renamed from: j */
    public String f3582j;

    public IconCompat() {
        this.f3574a = -1;
        this.f3576c = null;
        this.f3577d = null;
        this.f3578e = 0;
        this.f3579f = 0;
        this.f3580g = null;
        this.f3581i = f3573h;
        this.f3582j = null;
    }

    private IconCompat(int i) {
        this.f3574a = -1;
        this.f3576c = null;
        this.f3577d = null;
        this.f3578e = 0;
        this.f3579f = 0;
        this.f3580g = null;
        this.f3581i = f3573h;
        this.f3582j = null;
        this.f3574a = i;
    }

    /* renamed from: a */
    public static IconCompat m44372a(Bitmap bitmap) {
        if (bitmap != null) {
            IconCompat iconCompat = new IconCompat(1);
            iconCompat.f3575b = bitmap;
            return iconCompat;
        }
        throw new IllegalArgumentException("Bitmap must not be null.");
    }

    /* renamed from: a */
    public static IconCompat m44371a(Icon icon) {
        if (m44367b(icon) == 2 && m44363d(icon) == 0) {
            return null;
        }
        C0833d.m44410a(icon);
        int m44367b = m44367b(icon);
        if (m44367b == 2) {
            return m44370a(m44365c(icon), m44363d(icon));
        }
        if (m44367b == 4) {
            Uri m44362e = m44362e(icon);
            if (m44362e == null) {
                throw new IllegalArgumentException("Uri must not be null.");
            }
            String uri = m44362e.toString();
            if (uri == null) {
                throw new IllegalArgumentException("Uri must not be null.");
            }
            IconCompat iconCompat = new IconCompat(4);
            iconCompat.f3575b = uri;
            return iconCompat;
        } else if (m44367b != 6) {
            IconCompat iconCompat2 = new IconCompat(-1);
            iconCompat2.f3575b = icon;
            return iconCompat2;
        } else {
            Uri m44362e2 = m44362e(icon);
            if (m44362e2 == null) {
                throw new IllegalArgumentException("Uri must not be null.");
            }
            String uri2 = m44362e2.toString();
            if (uri2 == null) {
                throw new IllegalArgumentException("Uri must not be null.");
            }
            IconCompat iconCompat3 = new IconCompat(6);
            iconCompat3.f3575b = uri2;
            return iconCompat3;
        }
    }

    /* renamed from: a */
    public static IconCompat m44370a(String str, int i) {
        if (str != null) {
            if (i == 0) {
                throw new IllegalArgumentException("Drawable resource ID must not be 0");
            }
            IconCompat iconCompat = new IconCompat(2);
            iconCompat.f3578e = i;
            iconCompat.f3575b = str;
            return iconCompat;
        }
        throw new IllegalArgumentException("Package must not be null.");
    }

    /* renamed from: b */
    private static int m44367b(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getType();
        }
        try {
            return ((Integer) icon.getClass().getMethod("getType", new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon type ".concat(String.valueOf(icon)), e);
            return -1;
        } catch (NoSuchMethodException e2) {
            Log.e("IconCompat", "Unable to get icon type ".concat(String.valueOf(icon)), e2);
            return -1;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon type ".concat(String.valueOf(icon)), e3);
            return -1;
        }
    }

    /* renamed from: b */
    private static Bitmap m44368b(Bitmap bitmap) {
        int min = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap createBitmap = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(3);
        float f = min * 0.5f;
        paint.setColor(-16777216);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - min)) / 2, (-(bitmap.getHeight() - min)) / 2);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f, f, 0.9166667f * f, paint);
        canvas.setBitmap(null);
        return createBitmap;
    }

    /* renamed from: c */
    private static String m44365c(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getResPackage();
        }
        try {
            return (String) icon.getClass().getMethod("getResPackage", new Class[0]).invoke(icon, new Object[0]);
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon package", e);
            return null;
        } catch (NoSuchMethodException e2) {
            Log.e("IconCompat", "Unable to get icon package", e2);
            return null;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon package", e3);
            return null;
        }
    }

    /* renamed from: d */
    private static int m44363d(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getResId();
        }
        try {
            return ((Integer) icon.getClass().getMethod("getResId", new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon resource", e);
            return 0;
        } catch (NoSuchMethodException e2) {
            Log.e("IconCompat", "Unable to get icon resource", e2);
            return 0;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon resource", e3);
            return 0;
        }
    }

    /* renamed from: e */
    private static Uri m44362e(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getUri();
        }
        try {
            return (Uri) icon.getClass().getMethod("getUri", new Class[0]).invoke(icon, new Object[0]);
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon uri", e);
            return null;
        } catch (NoSuchMethodException e2) {
            Log.e("IconCompat", "Unable to get icon uri", e2);
            return null;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon uri", e3);
            return null;
        }
    }

    /* renamed from: f */
    private String m44361f() {
        if (this.f3574a != -1 || Build.VERSION.SDK_INT < 23) {
            if (this.f3574a != 2) {
                throw new IllegalStateException("called getResPackage() on ".concat(String.valueOf(this)));
            }
            return ((String) this.f3575b).split(":", -1)[0];
        }
        return m44365c((Icon) this.f3575b);
    }

    /* renamed from: g */
    private Uri m44360g() {
        if (this.f3574a != -1 || Build.VERSION.SDK_INT < 23) {
            int i = this.f3574a;
            if (i != 4 && i != 6) {
                throw new IllegalStateException("called getUri() on ".concat(String.valueOf(this)));
            }
            return Uri.parse((String) this.f3575b);
        }
        return m44362e((Icon) this.f3575b);
    }

    /* renamed from: a */
    public final int m44373a() {
        return (this.f3574a != -1 || Build.VERSION.SDK_INT < 23) ? this.f3574a : m44367b((Icon) this.f3575b);
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: a */
    public final void mo39667a(boolean z) {
        this.f3582j = this.f3581i.name();
        switch (this.f3574a) {
            case -1:
                if (z) {
                    throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
                }
                this.f3577d = (Parcelable) this.f3575b;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                if (!z) {
                    this.f3577d = (Parcelable) this.f3575b;
                    return;
                }
                Bitmap bitmap = (Bitmap) this.f3575b;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                this.f3576c = byteArrayOutputStream.toByteArray();
                return;
            case 2:
                this.f3576c = ((String) this.f3575b).getBytes(Charset.forName("UTF-16"));
                return;
            case 3:
                this.f3576c = (byte[]) this.f3575b;
                return;
            case 4:
            case 6:
                this.f3576c = this.f3575b.toString().getBytes(Charset.forName("UTF-16"));
                return;
        }
    }

    /* renamed from: b */
    public final int m44369b() {
        if (this.f3574a != -1 || Build.VERSION.SDK_INT < 23) {
            if (this.f3574a != 2) {
                throw new IllegalStateException("called getResId() on ".concat(String.valueOf(this)));
            }
            return this.f3578e;
        }
        return m44363d((Icon) this.f3575b);
    }

    /* renamed from: c */
    public final Icon m44366c() {
        Icon icon;
        switch (this.f3574a) {
            case -1:
                return (Icon) this.f3575b;
            case 0:
            default:
                throw new IllegalArgumentException("Unknown type");
            case 1:
                icon = Icon.createWithBitmap((Bitmap) this.f3575b);
                break;
            case 2:
                icon = Icon.createWithResource(m44361f(), this.f3578e);
                break;
            case 3:
                icon = Icon.createWithData((byte[]) this.f3575b, this.f3578e, this.f3579f);
                break;
            case 4:
                icon = Icon.createWithContentUri((String) this.f3575b);
                break;
            case 5:
                if (Build.VERSION.SDK_INT < 26) {
                    icon = Icon.createWithBitmap(m44368b((Bitmap) this.f3575b));
                    break;
                } else {
                    icon = Icon.createWithAdaptiveBitmap((Bitmap) this.f3575b);
                    break;
                }
            case 6:
                throw new IllegalArgumentException("Context is required to resolve the file uri of the icon: " + m44360g());
        }
        ColorStateList colorStateList = this.f3580g;
        if (colorStateList != null) {
            icon.setTintList(colorStateList);
        }
        PorterDuff.Mode mode = this.f3581i;
        if (mode != f3573h) {
            icon.setTintMode(mode);
        }
        return icon;
    }

    /* renamed from: d */
    public final Bundle m44364d() {
        Bundle bundle = new Bundle();
        switch (this.f3574a) {
            case -1:
                bundle.putParcelable("obj", (Parcelable) this.f3575b);
                break;
            case 0:
            default:
                throw new IllegalArgumentException("Invalid icon");
            case 1:
            case 5:
                bundle.putParcelable("obj", (Bitmap) this.f3575b);
                break;
            case 2:
            case 4:
            case 6:
                bundle.putString("obj", (String) this.f3575b);
                break;
            case 3:
                bundle.putByteArray("obj", (byte[]) this.f3575b);
                break;
        }
        bundle.putInt("type", this.f3574a);
        bundle.putInt("int1", this.f3578e);
        bundle.putInt("int2", this.f3579f);
        ColorStateList colorStateList = this.f3580g;
        if (colorStateList != null) {
            bundle.putParcelable("tint_list", colorStateList);
        }
        PorterDuff.Mode mode = this.f3581i;
        if (mode != f3573h) {
            bundle.putString("tint_mode", mode.name());
        }
        return bundle;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: e */
    public final void mo39666e() {
        this.f3581i = PorterDuff.Mode.valueOf(this.f3582j);
        switch (this.f3574a) {
            case -1:
                Parcelable parcelable = this.f3577d;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                this.f3575b = parcelable;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                Parcelable parcelable2 = this.f3577d;
                if (parcelable2 != null) {
                    this.f3575b = parcelable2;
                    return;
                }
                byte[] bArr = this.f3576c;
                this.f3575b = bArr;
                this.f3574a = 3;
                this.f3578e = 0;
                this.f3579f = bArr.length;
                return;
            case 2:
            case 4:
            case 6:
                this.f3575b = new String(this.f3576c, Charset.forName("UTF-16"));
                return;
            case 3:
                this.f3575b = this.f3576c;
                return;
        }
    }

    public String toString() {
        String str;
        if (this.f3574a == -1) {
            return String.valueOf(this.f3575b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        switch (this.f3574a) {
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
        switch (this.f3574a) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f3575b).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f3575b).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(m44361f());
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(m44369b())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f3578e);
                if (this.f3579f != 0) {
                    sb.append(" off=");
                    sb.append(this.f3579f);
                    break;
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f3575b);
                break;
        }
        if (this.f3580g != null) {
            sb.append(" tint=");
            sb.append(this.f3580g);
        }
        if (this.f3581i != f3573h) {
            sb.append(" mode=");
            sb.append(this.f3581i);
        }
        sb.append(")");
        return sb.toString();
    }
}
