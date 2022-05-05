package androidx.core.graphics.drawable;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
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
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.res.ResourcesCompat;
import androidx.versionedparcelable.CustomVersionedParcelable;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.internal.common.AbstractSpiCall;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/IconCompat.class */
public class IconCompat extends CustomVersionedParcelable {

    /* renamed from: j */
    static final PorterDuff.Mode f3051j = PorterDuff.Mode.SRC_IN;
    @RestrictTo

    /* renamed from: a */
    public int f3052a;

    /* renamed from: b */
    Object f3053b;
    @RestrictTo

    /* renamed from: c */
    public byte[] f3054c;
    @RestrictTo

    /* renamed from: d */
    public Parcelable f3055d;
    @RestrictTo

    /* renamed from: e */
    public int f3056e;
    @RestrictTo

    /* renamed from: f */
    public int f3057f;
    @RestrictTo

    /* renamed from: g */
    public ColorStateList f3058g;

    /* renamed from: h */
    PorterDuff.Mode f3059h;
    @RestrictTo

    /* renamed from: i */
    public String f3060i;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/IconCompat$IconType.class */
    public @interface IconType {
    }

    @RestrictTo
    public IconCompat() {
        this.f3052a = -1;
        this.f3054c = null;
        this.f3055d = null;
        this.f3056e = 0;
        this.f3057f = 0;
        this.f3058g = null;
        this.f3059h = f3051j;
        this.f3060i = null;
    }

    private IconCompat(int i) {
        this.f3052a = -1;
        this.f3054c = null;
        this.f3055d = null;
        this.f3056e = 0;
        this.f3057f = 0;
        this.f3058g = null;
        this.f3059h = f3051j;
        this.f3060i = null;
        this.f3052a = i;
    }

    @VisibleForTesting
    /* renamed from: b */
    static Bitmap m19493b(Bitmap bitmap, boolean z) {
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

    /* renamed from: c */
    public static IconCompat m19492c(Context context, @DrawableRes int i) {
        if (context != null) {
            return m19491d(context.getResources(), context.getPackageName(), i);
        }
        throw new IllegalArgumentException("Context must not be null.");
    }

    @RestrictTo
    /* renamed from: d */
    public static IconCompat m19491d(Resources resources, String str, @DrawableRes int i) {
        if (str == null) {
            throw new IllegalArgumentException("Package must not be null.");
        } else if (i != 0) {
            IconCompat iconCompat = new IconCompat(2);
            iconCompat.f3056e = i;
            if (resources != null) {
                try {
                    iconCompat.f3053b = resources.getResourceName(i);
                } catch (Resources.NotFoundException e) {
                    throw new IllegalArgumentException("Icon resource cannot be found");
                }
            } else {
                iconCompat.f3053b = str;
            }
            return iconCompat;
        } else {
            throw new IllegalArgumentException("Drawable resource ID must not be 0");
        }
    }

    @DrawableRes
    @IdRes
    @RequiresApi
    /* renamed from: f */
    private static int m19489f(@NonNull Icon icon) {
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

    @Nullable
    @RequiresApi
    /* renamed from: h */
    private static String m19487h(@NonNull Icon icon) {
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

    /* renamed from: i */
    private static Resources m19486i(Context context, String str) {
        if (AbstractSpiCall.ANDROID_CLIENT_TYPE.equals(str)) {
            return Resources.getSystem();
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 8192);
            if (applicationInfo != null) {
                return packageManager.getResourcesForApplication(applicationInfo);
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("IconCompat", String.format("Unable to find pkg=%s for icon", str), e);
            return null;
        }
    }

    @RequiresApi
    /* renamed from: k */
    private static int m19484k(@NonNull Icon icon) {
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

    @Nullable
    @RequiresApi
    /* renamed from: m */
    private static Uri m19482m(@NonNull Icon icon) {
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

    /* renamed from: n */
    private InputStream m19481n(Context context) {
        Uri l = m19483l();
        String scheme = l.getScheme();
        if (FirebaseAnalytics.Param.CONTENT.equals(scheme) || "file".equals(scheme)) {
            try {
                return context.getContentResolver().openInputStream(l);
            } catch (Exception e) {
                Log.w("IconCompat", "Unable to load image from URI: " + l, e);
                return null;
            }
        } else {
            try {
                return new FileInputStream(new File((String) this.f3053b));
            } catch (FileNotFoundException e2) {
                Log.w("IconCompat", "Unable to load image from path: " + l, e2);
                return null;
            }
        }
    }

    /* renamed from: p */
    private Drawable m19479p(Context context) {
        switch (this.f3052a) {
            case 1:
                return new BitmapDrawable(context.getResources(), (Bitmap) this.f3053b);
            case 2:
                String g = m19488g();
                String str = g;
                if (TextUtils.isEmpty(g)) {
                    str = context.getPackageName();
                }
                try {
                    return ResourcesCompat.m19613a(m19486i(context, str), this.f3056e, context.getTheme());
                } catch (RuntimeException e) {
                    Log.e("IconCompat", String.format("Unable to load resource 0x%08x from pkg=%s", Integer.valueOf(this.f3056e), this.f3053b), e);
                    return null;
                }
            case 3:
                return new BitmapDrawable(context.getResources(), BitmapFactory.decodeByteArray((byte[]) this.f3053b, this.f3056e, this.f3057f));
            case 4:
                InputStream n = m19481n(context);
                if (n != null) {
                    return new BitmapDrawable(context.getResources(), BitmapFactory.decodeStream(n));
                }
                return null;
            case 5:
                return new BitmapDrawable(context.getResources(), m19493b((Bitmap) this.f3053b, false));
            case 6:
                InputStream n2 = m19481n(context);
                if (n2 != null) {
                    return Build.VERSION.SDK_INT >= 26 ? new AdaptiveIconDrawable(null, new BitmapDrawable(context.getResources(), BitmapFactory.decodeStream(n2))) : new BitmapDrawable(context.getResources(), m19493b(BitmapFactory.decodeStream(n2), false));
                }
                return null;
            default:
                return null;
        }
    }

    /* renamed from: v */
    private static String m19473v(int i) {
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

    @RestrictTo
    /* renamed from: a */
    public void m19494a(@NonNull Context context) {
        if (this.f3052a == 2) {
            String str = (String) this.f3053b;
            if (str.contains(":")) {
                String str2 = str.split(":", -1)[1];
                String str3 = str2.split("/", -1)[0];
                String str4 = str2.split("/", -1)[1];
                String str5 = str.split(":", -1)[0];
                int identifier = m19486i(context, str5).getIdentifier(str4, str3, str5);
                if (this.f3056e != identifier) {
                    Log.i("IconCompat", "Id has changed for " + str5 + "/" + str4);
                    this.f3056e = identifier;
                }
            }
        }
    }

    @IdRes
    /* renamed from: e */
    public int m19490e() {
        if (this.f3052a == -1 && Build.VERSION.SDK_INT >= 23) {
            return m19489f((Icon) this.f3053b);
        }
        if (this.f3052a == 2) {
            return this.f3056e;
        }
        throw new IllegalStateException("called getResId() on " + this);
    }

    @NonNull
    /* renamed from: g */
    public String m19488g() {
        if (this.f3052a == -1 && Build.VERSION.SDK_INT >= 23) {
            return m19487h((Icon) this.f3053b);
        }
        if (this.f3052a == 2) {
            return ((String) this.f3053b).split(":", -1)[0];
        }
        throw new IllegalStateException("called getResPackage() on " + this);
    }

    /* renamed from: j */
    public int m19485j() {
        return (this.f3052a != -1 || Build.VERSION.SDK_INT < 23) ? this.f3052a : m19484k((Icon) this.f3053b);
    }

    @NonNull
    /* renamed from: l */
    public Uri m19483l() {
        if (this.f3052a == -1 && Build.VERSION.SDK_INT >= 23) {
            return m19482m((Icon) this.f3053b);
        }
        int i = this.f3052a;
        if (i == 4 || i == 6) {
            return Uri.parse((String) this.f3053b);
        }
        throw new IllegalStateException("called getUri() on " + this);
    }

    @Nullable
    /* renamed from: o */
    public Drawable m19480o(@NonNull Context context) {
        m19494a(context);
        if (Build.VERSION.SDK_INT >= 23) {
            return m19474u(context).loadDrawable(context);
        }
        Drawable p = m19479p(context);
        if (!(p == null || (this.f3058g == null && this.f3059h == f3051j))) {
            p.mutate();
            DrawableCompat.m19498o(p, this.f3058g);
            DrawableCompat.m19497p(p, this.f3059h);
        }
        return p;
    }

    /* renamed from: q */
    public void m19478q() {
        this.f3059h = PorterDuff.Mode.valueOf(this.f3060i);
        switch (this.f3052a) {
            case -1:
                Parcelable parcelable = this.f3055d;
                if (parcelable != null) {
                    this.f3053b = parcelable;
                    return;
                }
                throw new IllegalArgumentException("Invalid icon");
            case 0:
            default:
                return;
            case 1:
            case 5:
                Parcelable parcelable2 = this.f3055d;
                if (parcelable2 != null) {
                    this.f3053b = parcelable2;
                    return;
                }
                byte[] bArr = this.f3054c;
                this.f3053b = bArr;
                this.f3052a = 3;
                this.f3056e = 0;
                this.f3057f = bArr.length;
                return;
            case 2:
            case 4:
            case 6:
                this.f3053b = new String(this.f3054c, Charset.forName("UTF-16"));
                return;
            case 3:
                this.f3053b = this.f3054c;
                return;
        }
    }

    /* renamed from: r */
    public void m19477r(boolean z) {
        this.f3060i = this.f3059h.name();
        switch (this.f3052a) {
            case -1:
                if (!z) {
                    this.f3055d = (Parcelable) this.f3053b;
                    return;
                }
                throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
            case 0:
            default:
                return;
            case 1:
            case 5:
                if (z) {
                    Bitmap bitmap = (Bitmap) this.f3053b;
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                    this.f3054c = byteArrayOutputStream.toByteArray();
                    return;
                }
                this.f3055d = (Parcelable) this.f3053b;
                return;
            case 2:
                this.f3054c = ((String) this.f3053b).getBytes(Charset.forName("UTF-16"));
                return;
            case 3:
                this.f3054c = (byte[]) this.f3053b;
                return;
            case 4:
            case 6:
                this.f3054c = this.f3053b.toString().getBytes(Charset.forName("UTF-16"));
                return;
        }
    }

    /* renamed from: s */
    public Bundle m19476s() {
        Bundle bundle = new Bundle();
        switch (this.f3052a) {
            case -1:
                bundle.putParcelable("obj", (Parcelable) this.f3053b);
                break;
            case 0:
            default:
                throw new IllegalArgumentException("Invalid icon");
            case 1:
            case 5:
                bundle.putParcelable("obj", (Bitmap) this.f3053b);
                break;
            case 2:
            case 4:
            case 6:
                bundle.putString("obj", (String) this.f3053b);
                break;
            case 3:
                bundle.putByteArray("obj", (byte[]) this.f3053b);
                break;
        }
        bundle.putInt("type", this.f3052a);
        bundle.putInt("int1", this.f3056e);
        bundle.putInt("int2", this.f3057f);
        ColorStateList colorStateList = this.f3058g;
        if (colorStateList != null) {
            bundle.putParcelable("tint_list", colorStateList);
        }
        PorterDuff.Mode mode = this.f3059h;
        if (mode != f3051j) {
            bundle.putString("tint_mode", mode.name());
        }
        return bundle;
    }

    @NonNull
    @RequiresApi
    @Deprecated
    /* renamed from: t */
    public Icon m19475t() {
        return m19474u(null);
    }

    @NonNull
    public String toString() {
        if (this.f3052a == -1) {
            return String.valueOf(this.f3053b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        sb.append(m19473v(this.f3052a));
        switch (this.f3052a) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f3053b).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f3053b).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(m19488g());
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(m19490e())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f3056e);
                if (this.f3057f != 0) {
                    sb.append(" off=");
                    sb.append(this.f3057f);
                    break;
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f3053b);
                break;
        }
        if (this.f3058g != null) {
            sb.append(" tint=");
            sb.append(this.f3058g);
        }
        if (this.f3059h != f3051j) {
            sb.append(" mode=");
            sb.append(this.f3059h);
        }
        sb.append(")");
        return sb.toString();
    }

    @NonNull
    @RequiresApi
    /* renamed from: u */
    public Icon m19474u(@Nullable Context context) {
        Icon icon;
        switch (this.f3052a) {
            case -1:
                return (Icon) this.f3053b;
            case 0:
            default:
                throw new IllegalArgumentException("Unknown type");
            case 1:
                icon = Icon.createWithBitmap((Bitmap) this.f3053b);
                break;
            case 2:
                icon = Icon.createWithResource(m19488g(), this.f3056e);
                break;
            case 3:
                icon = Icon.createWithData((byte[]) this.f3053b, this.f3056e, this.f3057f);
                break;
            case 4:
                icon = Icon.createWithContentUri((String) this.f3053b);
                break;
            case 5:
                if (Build.VERSION.SDK_INT < 26) {
                    icon = Icon.createWithBitmap(m19493b((Bitmap) this.f3053b, false));
                    break;
                } else {
                    icon = Icon.createWithAdaptiveBitmap((Bitmap) this.f3053b);
                    break;
                }
            case 6:
                if (context != null) {
                    InputStream n = m19481n(context);
                    if (n != null) {
                        if (Build.VERSION.SDK_INT < 26) {
                            icon = Icon.createWithBitmap(m19493b(BitmapFactory.decodeStream(n), false));
                            break;
                        } else {
                            icon = Icon.createWithAdaptiveBitmap(BitmapFactory.decodeStream(n));
                            break;
                        }
                    } else {
                        throw new IllegalStateException("Cannot load adaptive icon from uri: " + m19483l());
                    }
                } else {
                    throw new IllegalArgumentException("Context is required to resolve the file uri of the icon: " + m19483l());
                }
        }
        ColorStateList colorStateList = this.f3058g;
        if (colorStateList != null) {
            icon.setTintList(colorStateList);
        }
        PorterDuff.Mode mode = this.f3059h;
        if (mode != f3051j) {
            icon.setTintMode(mode);
        }
        return icon;
    }
}
