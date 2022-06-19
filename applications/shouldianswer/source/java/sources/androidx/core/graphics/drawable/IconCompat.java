package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Parcelable;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/IconCompat.class */
public class IconCompat extends CustomVersionedParcelable {

    /* renamed from: h */
    static final PorterDuff.Mode f1928h = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    Object f1930b;

    /* renamed from: a */
    public int f1929a = -1;

    /* renamed from: c */
    public byte[] f1931c = null;

    /* renamed from: d */
    public Parcelable f1932d = null;

    /* renamed from: e */
    public int f1933e = 0;

    /* renamed from: f */
    public int f1934f = 0;

    /* renamed from: g */
    public ColorStateList f1935g = null;

    /* renamed from: i */
    PorterDuff.Mode f1936i = f1928h;

    /* renamed from: j */
    public String f1937j = null;

    /* renamed from: a */
    private static String m6141a(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "UNKNOWN" : "BITMAP_MASKABLE" : "URI" : "DATA" : "RESOURCE" : "BITMAP";
    }

    /* renamed from: a */
    private static String m6140a(Icon icon) {
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

    /* renamed from: b */
    private static int m6138b(Icon icon) {
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

    /* renamed from: a */
    public String m6142a() {
        if (this.f1929a != -1 || Build.VERSION.SDK_INT < 23) {
            if (this.f1929a == 2) {
                return ((String) this.f1930b).split(":", -1)[0];
            }
            throw new IllegalStateException("called getResPackage() on " + this);
        }
        return m6140a((Icon) this.f1930b);
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: a */
    public void mo4379a(boolean z) {
        this.f1937j = this.f1936i.name();
        int i = this.f1929a;
        if (i == -1) {
            if (z) {
                throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
            }
            this.f1932d = (Parcelable) this.f1930b;
            return;
        }
        if (i != 1) {
            if (i == 2) {
                this.f1931c = ((String) this.f1930b).getBytes(Charset.forName("UTF-16"));
                return;
            } else if (i == 3) {
                this.f1931c = (byte[]) this.f1930b;
                return;
            } else if (i == 4) {
                this.f1931c = this.f1930b.toString().getBytes(Charset.forName("UTF-16"));
                return;
            } else if (i != 5) {
                return;
            }
        }
        if (!z) {
            this.f1932d = (Parcelable) this.f1930b;
            return;
        }
        Bitmap bitmap = (Bitmap) this.f1930b;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
        this.f1931c = byteArrayOutputStream.toByteArray();
    }

    /* renamed from: b */
    public int m6139b() {
        if (this.f1929a != -1 || Build.VERSION.SDK_INT < 23) {
            if (this.f1929a == 2) {
                return this.f1933e;
            }
            throw new IllegalStateException("called getResId() on " + this);
        }
        return m6138b((Icon) this.f1930b);
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: c */
    public void mo4378c() {
        this.f1936i = PorterDuff.Mode.valueOf(this.f1937j);
        int i = this.f1929a;
        if (i == -1) {
            Parcelable parcelable = this.f1932d;
            if (parcelable == null) {
                throw new IllegalArgumentException("Invalid icon");
            }
            this.f1930b = parcelable;
            return;
        }
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    this.f1930b = this.f1931c;
                    return;
                } else if (i != 4) {
                    if (i != 5) {
                        return;
                    }
                }
            }
            this.f1930b = new String(this.f1931c, Charset.forName("UTF-16"));
            return;
        }
        Parcelable parcelable2 = this.f1932d;
        if (parcelable2 != null) {
            this.f1930b = parcelable2;
            return;
        }
        byte[] bArr = this.f1931c;
        this.f1930b = bArr;
        this.f1929a = 3;
        this.f1933e = 0;
        this.f1934f = bArr.length;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0041, code lost:
        if (r0 != 5) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0104  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.drawable.IconCompat.toString():java.lang.String");
    }
}
