package androidx.core.graphics.drawable;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
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
import android.text.TextUtils;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import com.yanzhenjie.nohttp.BuildConfig;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/IconCompat.class */
public class IconCompat extends CustomVersionedParcelable {

    /* renamed from: a */
    static final PorterDuff.Mode f2985a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    public int f2986b;

    /* renamed from: c */
    Object f2987c;

    /* renamed from: d */
    public byte[] f2988d;

    /* renamed from: e */
    public Parcelable f2989e;

    /* renamed from: f */
    public int f2990f;

    /* renamed from: g */
    public int f2991g;

    /* renamed from: h */
    public ColorStateList f2992h;

    /* renamed from: i */
    PorterDuff.Mode f2993i;

    /* renamed from: j */
    public String f2994j;

    /* renamed from: k */
    public String f2995k;

    public IconCompat() {
        this.f2986b = -1;
        this.f2988d = null;
        this.f2989e = null;
        this.f2990f = 0;
        this.f2991g = 0;
        this.f2992h = null;
        this.f2993i = f2985a;
        this.f2994j = null;
    }

    private IconCompat(int i) {
        this.f2986b = -1;
        this.f2988d = null;
        this.f2989e = null;
        this.f2990f = 0;
        this.f2991g = 0;
        this.f2992h = null;
        this.f2993i = f2985a;
        this.f2994j = null;
        this.f2986b = i;
    }

    /* renamed from: a */
    static Bitmap m33247a(Bitmap bitmap, boolean z) {
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
    public static IconCompat m33246b(Bitmap bitmap) {
        if (bitmap != null) {
            IconCompat iconCompat = new IconCompat(1);
            iconCompat.f2987c = bitmap;
            return iconCompat;
        }
        throw new IllegalArgumentException("Bitmap must not be null.");
    }

    /* renamed from: c */
    public static IconCompat m33245c(Resources resources, String str, int i) {
        if (str != null) {
            if (i == 0) {
                throw new IllegalArgumentException("Drawable resource ID must not be 0");
            }
            IconCompat iconCompat = new IconCompat(2);
            iconCompat.f2990f = i;
            if (resources != null) {
                try {
                    iconCompat.f2987c = resources.getResourceName(i);
                } catch (Resources.NotFoundException e) {
                    throw new IllegalArgumentException("Icon resource cannot be found");
                }
            } else {
                iconCompat.f2987c = str;
            }
            iconCompat.f2995k = str;
            return iconCompat;
        }
        throw new IllegalArgumentException("Package must not be null.");
    }

    /* renamed from: f */
    private static int m33242f(Icon icon) {
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

    /* renamed from: h */
    private static String m33240h(Icon icon) {
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

    /* renamed from: j */
    private static int m33238j(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getType();
        }
        try {
            return ((Integer) icon.getClass().getMethod("getType", new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon type " + icon, e);
            return -1;
        } catch (NoSuchMethodException e2) {
            Log.e("IconCompat", "Unable to get icon type " + icon, e2);
            return -1;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon type " + icon, e3);
            return -1;
        }
    }

    /* renamed from: l */
    private static Uri m33236l(Icon icon) {
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

    /* renamed from: r */
    private static String m33230r(int i) {
        switch (i) {
            case 1:
                return "BITMAP";
            case 2:
                return "RESOURCE";
            case 3:
                return "DATA";
            case 4:
                return "URI";
            case 5:
                return "BITMAP_MASKABLE";
            case 6:
                return "URI_MASKABLE";
            default:
                return "UNKNOWN";
        }
    }

    /* renamed from: d */
    public Bitmap m33244d() {
        int i = this.f2986b;
        if (i == -1 && Build.VERSION.SDK_INT >= 23) {
            Object obj = this.f2987c;
            if (!(obj instanceof Bitmap)) {
                return null;
            }
            return (Bitmap) obj;
        } else if (i == 1) {
            return (Bitmap) this.f2987c;
        } else {
            if (i == 5) {
                return m33247a((Bitmap) this.f2987c, true);
            }
            throw new IllegalStateException("called getBitmap() on " + this);
        }
    }

    /* renamed from: e */
    public int m33243e() {
        int i = this.f2986b;
        if (i != -1 || Build.VERSION.SDK_INT < 23) {
            if (i == 2) {
                return this.f2990f;
            }
            throw new IllegalStateException("called getResId() on " + this);
        }
        return m33242f((Icon) this.f2987c);
    }

    /* renamed from: g */
    public String m33241g() {
        int i = this.f2986b;
        if (i != -1 || Build.VERSION.SDK_INT < 23) {
            if (i == 2) {
                return TextUtils.isEmpty(this.f2995k) ? ((String) this.f2987c).split(":", -1)[0] : this.f2995k;
            }
            throw new IllegalStateException("called getResPackage() on " + this);
        }
        return m33240h((Icon) this.f2987c);
    }

    /* renamed from: i */
    public int m33239i() {
        int i = this.f2986b;
        int i2 = i;
        if (i == -1) {
            i2 = i;
            if (Build.VERSION.SDK_INT >= 23) {
                i2 = m33238j((Icon) this.f2987c);
            }
        }
        return i2;
    }

    /* renamed from: k */
    public Uri m33237k() {
        int i = this.f2986b;
        if (i != -1 || Build.VERSION.SDK_INT < 23) {
            if (i == 4 || i == 6) {
                return Uri.parse((String) this.f2987c);
            }
            throw new IllegalStateException("called getUri() on " + this);
        }
        return m33236l((Icon) this.f2987c);
    }

    /* renamed from: m */
    public InputStream m33235m(Context context) {
        Uri m33237k = m33237k();
        String scheme = m33237k.getScheme();
        if ("content".equals(scheme) || "file".equals(scheme)) {
            try {
                return context.getContentResolver().openInputStream(m33237k);
            } catch (Exception e) {
                Log.w("IconCompat", "Unable to load image from URI: " + m33237k, e);
                return null;
            }
        }
        try {
            return new FileInputStream(new File((String) this.f2987c));
        } catch (FileNotFoundException e2) {
            Log.w("IconCompat", "Unable to load image from path: " + m33237k, e2);
            return null;
        }
    }

    /* renamed from: n */
    public void m33234n() {
        this.f2993i = PorterDuff.Mode.valueOf(this.f2994j);
        switch (this.f2986b) {
            case BuildConfig.VERSION_CODE /* -1 */:
                Parcelable parcelable = this.f2989e;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                this.f2987c = parcelable;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                Parcelable parcelable2 = this.f2989e;
                if (parcelable2 != null) {
                    this.f2987c = parcelable2;
                    return;
                }
                byte[] bArr = this.f2988d;
                this.f2987c = bArr;
                this.f2986b = 3;
                this.f2990f = 0;
                this.f2991g = bArr.length;
                return;
            case 2:
            case 4:
            case 6:
                String str = new String(this.f2988d, Charset.forName("UTF-16"));
                this.f2987c = str;
                if (this.f2986b != 2 || this.f2995k != null) {
                    return;
                }
                this.f2995k = str.split(":", -1)[0];
                return;
            case 3:
                this.f2987c = this.f2988d;
                return;
        }
    }

    /* renamed from: o */
    public void m33233o(boolean z) {
        this.f2994j = this.f2993i.name();
        switch (this.f2986b) {
            case BuildConfig.VERSION_CODE /* -1 */:
                if (z) {
                    throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
                }
                this.f2989e = (Parcelable) this.f2987c;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                if (!z) {
                    this.f2989e = (Parcelable) this.f2987c;
                    return;
                }
                Bitmap bitmap = (Bitmap) this.f2987c;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                this.f2988d = byteArrayOutputStream.toByteArray();
                return;
            case 2:
                this.f2988d = ((String) this.f2987c).getBytes(Charset.forName("UTF-16"));
                return;
            case 3:
                this.f2988d = (byte[]) this.f2987c;
                return;
            case 4:
            case 6:
                this.f2988d = this.f2987c.toString().getBytes(Charset.forName("UTF-16"));
                return;
        }
    }

    @Deprecated
    /* renamed from: p */
    public Icon m33232p() {
        return m33231q(null);
    }

    /* renamed from: q */
    public Icon m33231q(Context context) {
        Icon icon;
        switch (this.f2986b) {
            case BuildConfig.VERSION_CODE /* -1 */:
                return (Icon) this.f2987c;
            case 0:
            default:
                throw new IllegalArgumentException("Unknown type");
            case 1:
                icon = Icon.createWithBitmap((Bitmap) this.f2987c);
                break;
            case 2:
                icon = Icon.createWithResource(m33241g(), this.f2990f);
                break;
            case 3:
                icon = Icon.createWithData((byte[]) this.f2987c, this.f2990f, this.f2991g);
                break;
            case 4:
                icon = Icon.createWithContentUri((String) this.f2987c);
                break;
            case 5:
                if (Build.VERSION.SDK_INT < 26) {
                    icon = Icon.createWithBitmap(m33247a((Bitmap) this.f2987c, false));
                    break;
                } else {
                    icon = Icon.createWithAdaptiveBitmap((Bitmap) this.f2987c);
                    break;
                }
            case 6:
                int i = Build.VERSION.SDK_INT;
                if (i >= 30) {
                    icon = Icon.createWithAdaptiveBitmapContentUri(m33237k());
                    break;
                } else if (context == null) {
                    throw new IllegalArgumentException("Context is required to resolve the file uri of the icon: " + m33237k());
                } else {
                    InputStream m33235m = m33235m(context);
                    if (m33235m == null) {
                        throw new IllegalStateException("Cannot load adaptive icon from uri: " + m33237k());
                    } else if (i < 26) {
                        icon = Icon.createWithBitmap(m33247a(BitmapFactory.decodeStream(m33235m), false));
                        break;
                    } else {
                        icon = Icon.createWithAdaptiveBitmap(BitmapFactory.decodeStream(m33235m));
                        break;
                    }
                }
        }
        ColorStateList colorStateList = this.f2992h;
        if (colorStateList != null) {
            icon.setTintList(colorStateList);
        }
        PorterDuff.Mode mode = this.f2993i;
        if (mode != f2985a) {
            icon.setTintMode(mode);
        }
        return icon;
    }

    public String toString() {
        if (this.f2986b == -1) {
            return String.valueOf(this.f2987c);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        sb.append(m33230r(this.f2986b));
        switch (this.f2986b) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f2987c).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f2987c).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.f2995k);
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(m33243e())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f2990f);
                if (this.f2991g != 0) {
                    sb.append(" off=");
                    sb.append(this.f2991g);
                    break;
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f2987c);
                break;
        }
        if (this.f2992h != null) {
            sb.append(" tint=");
            sb.append(this.f2992h);
        }
        if (this.f2993i != f2985a) {
            sb.append(" mode=");
            sb.append(this.f2993i);
        }
        sb.append(")");
        return sb.toString();
    }
}
