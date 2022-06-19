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
    static final PorterDuff.Mode f1973h = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    Object f1975b;

    /* renamed from: a */
    public int f1974a = -1;

    /* renamed from: c */
    public byte[] f1976c = null;

    /* renamed from: d */
    public Parcelable f1977d = null;

    /* renamed from: e */
    public int f1978e = 0;

    /* renamed from: f */
    public int f1979f = 0;

    /* renamed from: g */
    public ColorStateList f1980g = null;

    /* renamed from: i */
    PorterDuff.Mode f1981i = f1973h;

    /* renamed from: j */
    public String f1982j = null;

    /* renamed from: a */
    private static String m20603a(int i) {
        String str;
        switch (i) {
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
            default:
                str = "UNKNOWN";
                break;
        }
        return str;
    }

    /* renamed from: a */
    private static String m20602a(Icon icon) {
        String str;
        if (Build.VERSION.SDK_INT >= 28) {
            str = icon.getResPackage();
        } else {
            try {
                str = (String) icon.getClass().getMethod("getResPackage", new Class[0]).invoke(icon, new Object[0]);
            } catch (IllegalAccessException e) {
                Log.e("IconCompat", "Unable to get icon package", e);
                str = null;
            } catch (NoSuchMethodException e2) {
                Log.e("IconCompat", "Unable to get icon package", e2);
                str = null;
            } catch (InvocationTargetException e3) {
                Log.e("IconCompat", "Unable to get icon package", e3);
                str = null;
            }
        }
        return str;
    }

    /* renamed from: b */
    private static int m20600b(Icon icon) {
        int i;
        if (Build.VERSION.SDK_INT >= 28) {
            i = icon.getResId();
        } else {
            try {
                i = ((Integer) icon.getClass().getMethod("getResId", new Class[0]).invoke(icon, new Object[0])).intValue();
            } catch (IllegalAccessException e) {
                Log.e("IconCompat", "Unable to get icon resource", e);
                i = 0;
            } catch (NoSuchMethodException e2) {
                Log.e("IconCompat", "Unable to get icon resource", e2);
                i = 0;
            } catch (InvocationTargetException e3) {
                Log.e("IconCompat", "Unable to get icon resource", e3);
                i = 0;
            }
        }
        return i;
    }

    /* renamed from: a */
    public String m20604a() {
        String str;
        if (this.f1974a == -1 && Build.VERSION.SDK_INT >= 23) {
            str = m20602a((Icon) this.f1975b);
        } else if (this.f1974a != 2) {
            throw new IllegalStateException("called getResPackage() on " + this);
        } else {
            str = ((String) this.f1975b).split(":", -1)[0];
        }
        return str;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: a */
    public void mo18160a(boolean z) {
        this.f1982j = this.f1981i.name();
        switch (this.f1974a) {
            case -1:
                if (z) {
                    throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
                }
                this.f1977d = (Parcelable) this.f1975b;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                if (!z) {
                    this.f1977d = (Parcelable) this.f1975b;
                    return;
                }
                Bitmap bitmap = (Bitmap) this.f1975b;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                this.f1976c = byteArrayOutputStream.toByteArray();
                return;
            case 2:
                this.f1976c = ((String) this.f1975b).getBytes(Charset.forName("UTF-16"));
                return;
            case 3:
                this.f1976c = (byte[]) this.f1975b;
                return;
            case 4:
                this.f1976c = this.f1975b.toString().getBytes(Charset.forName("UTF-16"));
                return;
        }
    }

    /* renamed from: b */
    public int m20601b() {
        int i;
        if (this.f1974a == -1 && Build.VERSION.SDK_INT >= 23) {
            i = m20600b((Icon) this.f1975b);
        } else if (this.f1974a != 2) {
            throw new IllegalStateException("called getResId() on " + this);
        } else {
            i = this.f1978e;
        }
        return i;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: c */
    public void mo18159c() {
        this.f1981i = PorterDuff.Mode.valueOf(this.f1982j);
        switch (this.f1974a) {
            case -1:
                if (this.f1977d == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                this.f1975b = this.f1977d;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                if (this.f1977d != null) {
                    this.f1975b = this.f1977d;
                    return;
                }
                this.f1975b = this.f1976c;
                this.f1974a = 3;
                this.f1978e = 0;
                this.f1979f = this.f1976c.length;
                return;
            case 2:
            case 4:
                this.f1975b = new String(this.f1976c, Charset.forName("UTF-16"));
                return;
            case 3:
                this.f1975b = this.f1976c;
                return;
        }
    }

    public String toString() {
        String sb;
        if (this.f1974a == -1) {
            sb = String.valueOf(this.f1975b);
        } else {
            StringBuilder append = new StringBuilder("Icon(typ=").append(m20603a(this.f1974a));
            switch (this.f1974a) {
                case 1:
                case 5:
                    append.append(" size=").append(((Bitmap) this.f1975b).getWidth()).append("x").append(((Bitmap) this.f1975b).getHeight());
                    break;
                case 2:
                    append.append(" pkg=").append(m20604a()).append(" id=").append(String.format("0x%08x", Integer.valueOf(m20601b())));
                    break;
                case 3:
                    append.append(" len=").append(this.f1978e);
                    if (this.f1979f != 0) {
                        append.append(" off=").append(this.f1979f);
                        break;
                    }
                    break;
                case 4:
                    append.append(" uri=").append(this.f1975b);
                    break;
            }
            if (this.f1980g != null) {
                append.append(" tint=");
                append.append(this.f1980g);
            }
            if (this.f1981i != f1973h) {
                append.append(" mode=").append(this.f1981i);
            }
            append.append(")");
            sb = append.toString();
        }
        return sb;
    }
}
