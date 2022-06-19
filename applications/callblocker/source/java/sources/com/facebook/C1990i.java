package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.C2032g;
import com.facebook.internal.C2048l;
import com.facebook.internal.C2050m;
import java.net.HttpURLConnection;
import org.json.JSONObject;
/* renamed from: com.facebook.i */
/* loaded from: classes-dex2jar.jar:com/facebook/i.class */
public final class C1990i implements Parcelable {

    /* renamed from: b */
    private final EnumC1992a f5920b;

    /* renamed from: c */
    private final int f5921c;

    /* renamed from: d */
    private final int f5922d;

    /* renamed from: e */
    private final int f5923e;

    /* renamed from: f */
    private final String f5924f;

    /* renamed from: g */
    private final String f5925g;

    /* renamed from: h */
    private final String f5926h;

    /* renamed from: i */
    private final String f5927i;

    /* renamed from: j */
    private final String f5928j;

    /* renamed from: k */
    private final JSONObject f5929k;

    /* renamed from: l */
    private final JSONObject f5930l;

    /* renamed from: m */
    private final Object f5931m;

    /* renamed from: n */
    private final HttpURLConnection f5932n;

    /* renamed from: o */
    private final FacebookException f5933o;

    /* renamed from: a */
    static final C1993b f5919a = new C1993b(200, 299);
    public static final Parcelable.Creator<C1990i> CREATOR = new Parcelable.Creator<C1990i>() { // from class: com.facebook.i.1
        /* renamed from: a */
        public C1990i createFromParcel(Parcel parcel) {
            return new C1990i(parcel);
        }

        /* renamed from: a */
        public C1990i[] newArray(int i) {
            return new C1990i[i];
        }
    };

    /* renamed from: com.facebook.i$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/i$a.class */
    public enum EnumC1992a {
        LOGIN_RECOVERABLE,
        OTHER,
        TRANSIENT
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.facebook.i$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/i$b.class */
    public static class C1993b {

        /* renamed from: a */
        private final int f5938a;

        /* renamed from: b */
        private final int f5939b;

        private C1993b(int i, int i2) {
            this.f5938a = i;
            this.f5939b = i2;
        }

        /* renamed from: a */
        boolean m15699a(int i) {
            return this.f5938a <= i && i <= this.f5939b;
        }
    }

    private C1990i(int i, int i2, int i3, String str, String str2, String str3, String str4, boolean z, JSONObject jSONObject, JSONObject jSONObject2, Object obj, HttpURLConnection httpURLConnection, FacebookException facebookException) {
        this.f5921c = i;
        this.f5922d = i2;
        this.f5923e = i3;
        this.f5924f = str;
        this.f5925g = str2;
        this.f5930l = jSONObject;
        this.f5929k = jSONObject2;
        this.f5931m = obj;
        this.f5932n = httpURLConnection;
        this.f5926h = str3;
        this.f5927i = str4;
        boolean z2 = false;
        if (facebookException != null) {
            this.f5933o = facebookException;
            z2 = true;
        } else {
            this.f5933o = new FacebookServiceException(this, str2);
        }
        C2032g m15702g = m15702g();
        this.f5920b = z2 ? EnumC1992a.OTHER : m15702g.m15634a(i2, i3, z);
        this.f5928j = m15702g.m15633a(this.f5920b);
    }

    public C1990i(int i, String str, String str2) {
        this(-1, i, -1, str, str2, null, null, false, null, null, null, null, null);
    }

    private C1990i(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), false, null, null, null, null, null);
    }

    public C1990i(HttpURLConnection httpURLConnection, Exception exc) {
        this(-1, -1, -1, null, null, null, null, false, null, null, null, httpURLConnection, exc instanceof FacebookException ? (FacebookException) exc : new FacebookException(exc));
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00f6, code lost:
        if (r0.has("error_reason") != false) goto L28;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.C1990i m15708a(org.json.JSONObject r16, java.lang.Object r17, java.net.HttpURLConnection r18) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.C1990i.m15708a(org.json.JSONObject, java.lang.Object, java.net.HttpURLConnection):com.facebook.i");
    }

    /* renamed from: g */
    static C2032g m15702g() {
        C2032g m15635a;
        synchronized (C1990i.class) {
            try {
                C2048l m15586a = C2050m.m15586a(C2095j.m15356l());
                m15635a = m15586a == null ? C2032g.m15635a() : m15586a.m15599g();
            } catch (Throwable th) {
                throw th;
            }
        }
        return m15635a;
    }

    /* renamed from: a */
    public int m15709a() {
        return this.f5921c;
    }

    /* renamed from: b */
    public int m15707b() {
        return this.f5922d;
    }

    /* renamed from: c */
    public int m15706c() {
        return this.f5923e;
    }

    /* renamed from: d */
    public String m15705d() {
        return this.f5924f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public String m15704e() {
        return this.f5925g != null ? this.f5925g : this.f5933o.getLocalizedMessage();
    }

    /* renamed from: f */
    public FacebookException m15703f() {
        return this.f5933o;
    }

    public String toString() {
        return "{HttpStatus: " + this.f5921c + ", errorCode: " + this.f5922d + ", subErrorCode: " + this.f5923e + ", errorType: " + this.f5924f + ", errorMessage: " + m15704e() + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f5921c);
        parcel.writeInt(this.f5922d);
        parcel.writeInt(this.f5923e);
        parcel.writeString(this.f5924f);
        parcel.writeString(this.f5925g);
        parcel.writeString(this.f5926h);
        parcel.writeString(this.f5927i);
    }
}
