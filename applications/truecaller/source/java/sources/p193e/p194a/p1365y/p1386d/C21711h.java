package p193e.p194a.p1365y.p1386d;

import android.content.ContentValues;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.y.d.h */
/* loaded from: classes9-dex2jar.jar:e/a/y/d/h.class */
public final class C21711h {

    /* renamed from: a */
    public final String f60486a;

    /* renamed from: b */
    public long f60487b;

    /* renamed from: c */
    public Uri f60488c = null;

    /* renamed from: d */
    public String f60489d = null;

    /* renamed from: e */
    public String f60490e;

    /* renamed from: f */
    public String f60491f;

    public C21711h(String str, long j, Uri uri, String str2, String str3, String str4) {
        l.e(str, AnalyticsConstants.PHONE);
        this.f60486a = str;
        this.f60487b = j;
        this.f60490e = str3;
        this.f60491f = str4;
    }

    /* renamed from: a */
    public final ContentValues m9172a() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(AnalyticsConstants.PHONE, this.f60486a);
        contentValues.put("timestamp", Long.valueOf(this.f60487b));
        contentValues.put("type", this.f60490e);
        contentValues.put("history", this.f60491f);
        return contentValues;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C21711h)) {
                return false;
            }
            C21711h c21711h = (C21711h) obj;
            return l.a(this.f60486a, c21711h.f60486a) && this.f60487b == c21711h.f60487b && l.a(this.f60488c, c21711h.f60488c) && l.a(this.f60489d, c21711h.f60489d) && l.a(this.f60490e, c21711h.f60490e) && l.a(this.f60491f, c21711h.f60491f);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f60486a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f60487b);
        Uri uri = this.f60488c;
        int hashCode2 = uri != null ? uri.hashCode() : 0;
        String str2 = this.f60489d;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f60490e;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f60491f;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((((((hashCode * 31) + m34274a) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FlashInfo(phone=");
        m8728C.append(this.f60486a);
        m8728C.append(", timestamp=");
        m8728C.append(this.f60487b);
        m8728C.append(", imageUri=");
        m8728C.append(this.f60488c);
        m8728C.append(", displayName=");
        m8728C.append(this.f60489d);
        m8728C.append(", type=");
        m8728C.append(this.f60490e);
        m8728C.append(", history=");
        return C22128a.m8618h(m8728C, this.f60491f, ")");
    }
}
