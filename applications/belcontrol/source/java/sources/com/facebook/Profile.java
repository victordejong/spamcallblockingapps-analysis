package com.facebook;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/Profile.class */
public final class Profile implements Parcelable {

    /* renamed from: a */
    public final String f2506a;

    /* renamed from: b */
    public final String f2507b;

    /* renamed from: c */
    public final String f2508c;

    /* renamed from: d */
    public final String f2509d;

    /* renamed from: f */
    public final String f2510f;

    /* renamed from: g */
    public final Uri f2511g;

    /* renamed from: h */
    public static final String f2505h = Profile.class.getSimpleName();
    public static final Parcelable.Creator<Profile> CREATOR = new C0345b();

    /* renamed from: com.facebook.Profile$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/Profile$b.class */
    public static final class C0345b implements Parcelable.Creator<Profile> {
        /* renamed from: a */
        public Profile createFromParcel(Parcel parcel) {
            return new Profile(parcel);
        }

        /* renamed from: b */
        public Profile[] newArray(int i) {
            return new Profile[i];
        }
    }

    public Profile(Parcel parcel) {
        this.f2506a = parcel.readString();
        this.f2507b = parcel.readString();
        this.f2508c = parcel.readString();
        this.f2509d = parcel.readString();
        this.f2510f = parcel.readString();
        String readString = parcel.readString();
        this.f2511g = readString == null ? null : Uri.parse(readString);
    }

    public Profile(String str, String str2, String str3, String str4, String str5, Uri uri) {
        gn0.m(str, "id");
        this.f2506a = str;
        this.f2507b = str2;
        this.f2508c = str3;
        this.f2509d = str4;
        this.f2510f = str5;
        this.f2511g = uri;
    }

    public Profile(JSONObject jSONObject) {
        this.f2506a = jSONObject.optString("id", null);
        this.f2507b = jSONObject.optString("first_name", null);
        this.f2508c = jSONObject.optString("middle_name", null);
        this.f2509d = jSONObject.optString("last_name", null);
        this.f2510f = jSONObject.optString("name", null);
        String optString = jSONObject.optString("link_uri", null);
        this.f2511g = optString == null ? null : Uri.parse(optString);
    }

    /* renamed from: b */
    public static void m5134b() {
        AccessToken m5251g = AccessToken.m5251g();
        if (!AccessToken.m5239s()) {
            m5131e(null);
        } else {
            fn0.y(m5251g.m5241q(), new a());
        }
    }

    /* renamed from: c */
    public static Profile m5133c() {
        return fj0.m1725b().m1726a();
    }

    /* renamed from: e */
    public static void m5131e(Profile profile) {
        fj0.m1725b().m1722e(profile);
    }

    /* renamed from: d */
    public String m5132d() {
        return this.f2510f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0030, code lost:
        if (r0.f2507b == null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0036, code lost:
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0054, code lost:
        if (r0.f2508c == null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0073, code lost:
        if (r0.f2509d == null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0092, code lost:
        if (r0.f2510f == null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b1, code lost:
        if (r0.f2511g == null) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r3
            r1 = r4
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r4
            boolean r0 = r0 instanceof com.facebook.Profile
            if (r0 != 0) goto L12
            r0 = 0
            return r0
        L12:
            r0 = r4
            com.facebook.Profile r0 = (com.facebook.Profile) r0
            r4 = r0
            r0 = r3
            java.lang.String r0 = r0.f2506a
            r1 = r4
            java.lang.String r1 = r1.f2506a
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L3b
            r0 = r3
            java.lang.String r0 = r0.f2507b
            if (r0 != 0) goto L3b
            r0 = r4
            java.lang.String r0 = r0.f2507b
            if (r0 != 0) goto L36
            goto Lc3
        L36:
            r0 = 0
            r5 = r0
            goto Lc3
        L3b:
            r0 = r3
            java.lang.String r0 = r0.f2507b
            r1 = r4
            java.lang.String r1 = r1.f2507b
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L5a
            r0 = r3
            java.lang.String r0 = r0.f2508c
            if (r0 != 0) goto L5a
            r0 = r4
            java.lang.String r0 = r0.f2508c
            if (r0 != 0) goto L36
            goto Lc3
        L5a:
            r0 = r3
            java.lang.String r0 = r0.f2508c
            r1 = r4
            java.lang.String r1 = r1.f2508c
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L79
            r0 = r3
            java.lang.String r0 = r0.f2509d
            if (r0 != 0) goto L79
            r0 = r4
            java.lang.String r0 = r0.f2509d
            if (r0 != 0) goto L36
            goto Lc3
        L79:
            r0 = r3
            java.lang.String r0 = r0.f2509d
            r1 = r4
            java.lang.String r1 = r1.f2509d
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L98
            r0 = r3
            java.lang.String r0 = r0.f2510f
            if (r0 != 0) goto L98
            r0 = r4
            java.lang.String r0 = r0.f2510f
            if (r0 != 0) goto L36
            goto Lc3
        L98:
            r0 = r3
            java.lang.String r0 = r0.f2510f
            r1 = r4
            java.lang.String r1 = r1.f2510f
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb7
            r0 = r3
            android.net.Uri r0 = r0.f2511g
            if (r0 != 0) goto Lb7
            r0 = r4
            android.net.Uri r0 = r0.f2511g
            if (r0 != 0) goto L36
            goto Lc3
        Lb7:
            r0 = r3
            android.net.Uri r0 = r0.f2511g
            r1 = r4
            android.net.Uri r1 = r1.f2511g
            boolean r0 = r0.equals(r1)
            r5 = r0
        Lc3:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.Profile.equals(java.lang.Object):boolean");
    }

    /* renamed from: f */
    public JSONObject m5130f() {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("id", this.f2506a);
            jSONObject2.put("first_name", this.f2507b);
            jSONObject2.put("middle_name", this.f2508c);
            jSONObject2.put("last_name", this.f2509d);
            jSONObject2.put("name", this.f2510f);
            Uri uri = this.f2511g;
            jSONObject = jSONObject2;
            if (uri != null) {
                jSONObject2.put("link_uri", uri.toString());
                jSONObject = jSONObject2;
            }
        } catch (JSONException e) {
            jSONObject = null;
        }
        return jSONObject;
    }

    public int hashCode() {
        int hashCode = 527 + this.f2506a.hashCode();
        String str = this.f2507b;
        int i = hashCode;
        if (str != null) {
            i = (hashCode * 31) + str.hashCode();
        }
        String str2 = this.f2508c;
        int i2 = i;
        if (str2 != null) {
            i2 = (i * 31) + str2.hashCode();
        }
        String str3 = this.f2509d;
        int i3 = i2;
        if (str3 != null) {
            i3 = (i2 * 31) + str3.hashCode();
        }
        String str4 = this.f2510f;
        int i4 = i3;
        if (str4 != null) {
            i4 = (i3 * 31) + str4.hashCode();
        }
        Uri uri = this.f2511g;
        int i5 = i4;
        if (uri != null) {
            i5 = (i4 * 31) + uri.hashCode();
        }
        return i5;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2506a);
        parcel.writeString(this.f2507b);
        parcel.writeString(this.f2508c);
        parcel.writeString(this.f2509d);
        parcel.writeString(this.f2510f);
        Uri uri = this.f2511g;
        parcel.writeString(uri == null ? null : uri.toString());
    }
}
