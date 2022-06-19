package p193e.p194a.p1365y.p1389g;

import android.content.ContentValues;
import com.razorpay.AnalyticsConstants;
import java.io.Serializable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.y.g.d */
/* loaded from: classes9-dex2jar.jar:e/a/y/g/d.class */
public final class C21746d implements Serializable {

    /* renamed from: a */
    public String f60561a;

    /* renamed from: b */
    public int f60562b;

    /* renamed from: c */
    public boolean f60563c;

    public C21746d() {
        this(null, 0, false, 7);
    }

    public C21746d(String str, int i, boolean z) {
        this.f60561a = str;
        this.f60562b = i;
        this.f60563c = z;
    }

    public /* synthetic */ C21746d(String str, int i, boolean z, int i2) {
        this(null, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? false : z);
    }

    /* renamed from: a */
    public final ContentValues m9137a() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(AnalyticsConstants.PHONE, this.f60561a);
        contentValues.put("flash_enabled", Integer.valueOf(this.f60563c ? 1 : 0));
        contentValues.put("version", Integer.valueOf(this.f60562b));
        return contentValues;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C21746d)) {
                return false;
            }
            C21746d c21746d = (C21746d) obj;
            return l.a(this.f60561a, c21746d.f60561a) && this.f60562b == c21746d.f60562b && this.f60563c == c21746d.f60563c;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f60561a;
        int hashCode = str != null ? str.hashCode() : 0;
        int i = this.f60562b;
        boolean z = this.f60563c;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((hashCode * 31) + i) * 31) + i2;
    }

    public String toString() {
        String str;
        StringBuilder m8728C = C22128a.m8728C("FlashState{Number =");
        if (this.f60561a == null) {
            str = AnalyticsConstants.NULL;
        } else {
            StringBuilder m8696K = C22128a.m8696K("<non-null number>", "Version =");
            m8696K.append(this.f60562b);
            m8696K.append("Enabled =");
            str = C22128a.m8598m(m8696K, this.f60563c, '}');
        }
        m8728C.append(str);
        return m8728C.toString();
    }
}
