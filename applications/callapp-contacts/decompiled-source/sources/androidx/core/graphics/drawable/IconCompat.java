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
import androidx.core.e.d;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/IconCompat.class */
public class IconCompat extends CustomVersionedParcelable {
    static final PorterDuff.Mode h = PorterDuff.Mode.SRC_IN;

    /* renamed from: a  reason: collision with root package name */
    public int f1905a;

    /* renamed from: b  reason: collision with root package name */
    Object f1906b;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f1907c;

    /* renamed from: d  reason: collision with root package name */
    public Parcelable f1908d;
    public int e;
    public int f;
    public ColorStateList g;
    PorterDuff.Mode i;
    public String j;

    public IconCompat() {
        this.f1905a = -1;
        this.f1907c = null;
        this.f1908d = null;
        this.e = 0;
        this.f = 0;
        this.g = null;
        this.i = h;
        this.j = null;
    }

    private IconCompat(int i) {
        this.f1905a = -1;
        this.f1907c = null;
        this.f1908d = null;
        this.e = 0;
        this.f = 0;
        this.g = null;
        this.i = h;
        this.j = null;
        this.f1905a = i;
    }

    public static IconCompat a(Bitmap bitmap) {
        if (bitmap != null) {
            IconCompat iconCompat = new IconCompat(1);
            iconCompat.f1906b = bitmap;
            return iconCompat;
        }
        throw new IllegalArgumentException("Bitmap must not be null.");
    }

    public static IconCompat a(Icon icon) {
        if (b(icon) == 2 && d(icon) == 0) {
            return null;
        }
        d.a(icon);
        int b2 = b(icon);
        if (b2 == 2) {
            return a(c(icon), d(icon));
        }
        if (b2 == 4) {
            Uri e = e(icon);
            if (e != null) {
                String uri = e.toString();
                if (uri != null) {
                    IconCompat iconCompat = new IconCompat(4);
                    iconCompat.f1906b = uri;
                    return iconCompat;
                }
                throw new IllegalArgumentException("Uri must not be null.");
            }
            throw new IllegalArgumentException("Uri must not be null.");
        } else if (b2 != 6) {
            IconCompat iconCompat2 = new IconCompat(-1);
            iconCompat2.f1906b = icon;
            return iconCompat2;
        } else {
            Uri e2 = e(icon);
            if (e2 != null) {
                String uri2 = e2.toString();
                if (uri2 != null) {
                    IconCompat iconCompat3 = new IconCompat(6);
                    iconCompat3.f1906b = uri2;
                    return iconCompat3;
                }
                throw new IllegalArgumentException("Uri must not be null.");
            }
            throw new IllegalArgumentException("Uri must not be null.");
        }
    }

    public static IconCompat a(String str, int i) {
        if (str == null) {
            throw new IllegalArgumentException("Package must not be null.");
        } else if (i != 0) {
            IconCompat iconCompat = new IconCompat(2);
            iconCompat.e = i;
            iconCompat.f1906b = str;
            return iconCompat;
        } else {
            throw new IllegalArgumentException("Drawable resource ID must not be 0");
        }
    }

    private static int b(Icon icon) {
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

    private static Bitmap b(Bitmap bitmap) {
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

    private static String c(Icon icon) {
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

    private static int d(Icon icon) {
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

    private static Uri e(Icon icon) {
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

    private String f() {
        if (this.f1905a == -1 && Build.VERSION.SDK_INT >= 23) {
            return c((Icon) this.f1906b);
        }
        if (this.f1905a == 2) {
            return ((String) this.f1906b).split(":", -1)[0];
        }
        throw new IllegalStateException("called getResPackage() on ".concat(String.valueOf(this)));
    }

    private Uri g() {
        if (this.f1905a == -1 && Build.VERSION.SDK_INT >= 23) {
            return e((Icon) this.f1906b);
        }
        int i = this.f1905a;
        if (i == 4 || i == 6) {
            return Uri.parse((String) this.f1906b);
        }
        throw new IllegalStateException("called getUri() on ".concat(String.valueOf(this)));
    }

    public final int a() {
        return (this.f1905a != -1 || Build.VERSION.SDK_INT < 23) ? this.f1905a : b((Icon) this.f1906b);
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public final void a(boolean z) {
        this.j = this.i.name();
        switch (this.f1905a) {
            case -1:
                if (!z) {
                    this.f1908d = (Parcelable) this.f1906b;
                    return;
                }
                throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
            case 0:
            default:
                return;
            case 1:
            case 5:
                if (z) {
                    Bitmap bitmap = (Bitmap) this.f1906b;
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                    this.f1907c = byteArrayOutputStream.toByteArray();
                    return;
                }
                this.f1908d = (Parcelable) this.f1906b;
                return;
            case 2:
                this.f1907c = ((String) this.f1906b).getBytes(Charset.forName("UTF-16"));
                return;
            case 3:
                this.f1907c = (byte[]) this.f1906b;
                return;
            case 4:
            case 6:
                this.f1907c = this.f1906b.toString().getBytes(Charset.forName("UTF-16"));
                return;
        }
    }

    public final int b() {
        if (this.f1905a == -1 && Build.VERSION.SDK_INT >= 23) {
            return d((Icon) this.f1906b);
        }
        if (this.f1905a == 2) {
            return this.e;
        }
        throw new IllegalStateException("called getResId() on ".concat(String.valueOf(this)));
    }

    public final Icon c() {
        Icon icon;
        switch (this.f1905a) {
            case -1:
                return (Icon) this.f1906b;
            case 0:
            default:
                throw new IllegalArgumentException("Unknown type");
            case 1:
                icon = Icon.createWithBitmap((Bitmap) this.f1906b);
                break;
            case 2:
                icon = Icon.createWithResource(f(), this.e);
                break;
            case 3:
                icon = Icon.createWithData((byte[]) this.f1906b, this.e, this.f);
                break;
            case 4:
                icon = Icon.createWithContentUri((String) this.f1906b);
                break;
            case 5:
                if (Build.VERSION.SDK_INT < 26) {
                    icon = Icon.createWithBitmap(b((Bitmap) this.f1906b));
                    break;
                } else {
                    icon = Icon.createWithAdaptiveBitmap((Bitmap) this.f1906b);
                    break;
                }
            case 6:
                throw new IllegalArgumentException("Context is required to resolve the file uri of the icon: " + g());
        }
        ColorStateList colorStateList = this.g;
        if (colorStateList != null) {
            icon.setTintList(colorStateList);
        }
        PorterDuff.Mode mode = this.i;
        if (mode != h) {
            icon.setTintMode(mode);
        }
        return icon;
    }

    public final Bundle d() {
        Bundle bundle = new Bundle();
        switch (this.f1905a) {
            case -1:
                bundle.putParcelable("obj", (Parcelable) this.f1906b);
                break;
            case 0:
            default:
                throw new IllegalArgumentException("Invalid icon");
            case 1:
            case 5:
                bundle.putParcelable("obj", (Bitmap) this.f1906b);
                break;
            case 2:
            case 4:
            case 6:
                bundle.putString("obj", (String) this.f1906b);
                break;
            case 3:
                bundle.putByteArray("obj", (byte[]) this.f1906b);
                break;
        }
        bundle.putInt("type", this.f1905a);
        bundle.putInt("int1", this.e);
        bundle.putInt("int2", this.f);
        ColorStateList colorStateList = this.g;
        if (colorStateList != null) {
            bundle.putParcelable("tint_list", colorStateList);
        }
        PorterDuff.Mode mode = this.i;
        if (mode != h) {
            bundle.putString("tint_mode", mode.name());
        }
        return bundle;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public final void e() {
        this.i = PorterDuff.Mode.valueOf(this.j);
        switch (this.f1905a) {
            case -1:
                Parcelable parcelable = this.f1908d;
                if (parcelable != null) {
                    this.f1906b = parcelable;
                    return;
                }
                throw new IllegalArgumentException("Invalid icon");
            case 0:
            default:
                return;
            case 1:
            case 5:
                Parcelable parcelable2 = this.f1908d;
                if (parcelable2 != null) {
                    this.f1906b = parcelable2;
                    return;
                }
                byte[] bArr = this.f1907c;
                this.f1906b = bArr;
                this.f1905a = 3;
                this.e = 0;
                this.f = bArr.length;
                return;
            case 2:
            case 4:
            case 6:
                this.f1906b = new String(this.f1907c, Charset.forName("UTF-16"));
                return;
            case 3:
                this.f1906b = this.f1907c;
                return;
        }
    }

    public String toString() {
        String str;
        if (this.f1905a == -1) {
            return String.valueOf(this.f1906b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        switch (this.f1905a) {
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
        switch (this.f1905a) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f1906b).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f1906b).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(f());
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(b())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.e);
                if (this.f != 0) {
                    sb.append(" off=");
                    sb.append(this.f);
                    break;
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f1906b);
                break;
        }
        if (this.g != null) {
            sb.append(" tint=");
            sb.append(this.g);
        }
        if (this.i != h) {
            sb.append(" mode=");
            sb.append(this.i);
        }
        sb.append(")");
        return sb.toString();
    }
}
