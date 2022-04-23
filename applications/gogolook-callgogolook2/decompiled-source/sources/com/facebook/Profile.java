package com.facebook;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.Nullable;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2416h0;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6131k;
import p081h.p154f.C6153x;
/* loaded from: classes-dex2jar.jar:com/facebook/Profile.class */
public final class Profile implements Parcelable {
    @Nullable

    /* renamed from: a */
    public final String f2601a;
    @Nullable

    /* renamed from: b */
    public final String f2602b;
    @Nullable

    /* renamed from: c */
    public final String f2603c;
    @Nullable

    /* renamed from: d */
    public final String f2604d;
    @Nullable

    /* renamed from: e */
    public final String f2605e;
    @Nullable

    /* renamed from: f */
    public final Uri f2606f;

    /* renamed from: g */
    public static final String f2600g = Profile.class.getSimpleName();
    public static final Parcelable.Creator<Profile> CREATOR = new C2236b();

    /* renamed from: com.facebook.Profile$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/Profile$a.class */
    public static final class C2235a implements C2408g0.AbstractC2411c {
        @Override // com.facebook.internal.C2408g0.AbstractC2411c
        /* renamed from: a */
        public void mo2366a(C6131k kVar) {
            String str = Profile.f2600g;
            Log.e(str, "Got unexpected exception: " + kVar);
        }

        @Override // com.facebook.internal.C2408g0.AbstractC2411c
        public void onSuccess(JSONObject jSONObject) {
            String optString = jSONObject.optString("id");
            if (optString != null) {
                String optString2 = jSONObject.optString("link");
                Profile.m35388a(new Profile(optString, jSONObject.optString("first_name"), jSONObject.optString("middle_name"), jSONObject.optString("last_name"), jSONObject.optString("name"), optString2 != null ? Uri.parse(optString2) : null));
            }
        }
    }

    /* renamed from: com.facebook.Profile$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/Profile$b.class */
    public static final class C2236b implements Parcelable.Creator<Profile> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Profile createFromParcel(Parcel parcel) {
            return new Profile(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Profile[] newArray(int i) {
            return new Profile[i];
        }
    }

    public Profile(Parcel parcel) {
        this.f2601a = parcel.readString();
        this.f2602b = parcel.readString();
        this.f2603c = parcel.readString();
        this.f2604d = parcel.readString();
        this.f2605e = parcel.readString();
        String readString = parcel.readString();
        this.f2606f = readString == null ? null : Uri.parse(readString);
    }

    public /* synthetic */ Profile(Parcel parcel, C2235a aVar) {
        this(parcel);
    }

    public Profile(String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable Uri uri) {
        C2416h0.m34790a(str, "id");
        this.f2601a = str;
        this.f2602b = str2;
        this.f2603c = str3;
        this.f2604d = str4;
        this.f2605e = str5;
        this.f2606f = uri;
    }

    public Profile(JSONObject jSONObject) {
        Uri uri = null;
        this.f2601a = jSONObject.optString("id", null);
        this.f2602b = jSONObject.optString("first_name", null);
        this.f2603c = jSONObject.optString("middle_name", null);
        this.f2604d = jSONObject.optString("last_name", null);
        this.f2605e = jSONObject.optString("name", null);
        String optString = jSONObject.optString("link_uri", null);
        if (optString != null) {
            uri = Uri.parse(optString);
        }
        this.f2606f = uri;
    }

    /* renamed from: a */
    public static void m35388a(@Nullable Profile profile) {
        C6153x.m23681c().m23685a(profile);
    }

    /* renamed from: q */
    public static void m35385q() {
        AccessToken B = AccessToken.m35507B();
        if (!AccessToken.m35506C()) {
            m35388a(null);
        } else {
            C2408g0.m34854a(B.m35491v(), (C2408g0.AbstractC2411c) new C2235a());
        }
    }

    /* renamed from: r */
    public static Profile m35384r() {
        return C6153x.m23681c().m23686a();
    }

    /* renamed from: a */
    public String m35389a() {
        return this.f2605e;
    }

    /* renamed from: b */
    public JSONObject m35387b() {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("id", this.f2601a);
            jSONObject2.put("first_name", this.f2602b);
            jSONObject2.put("middle_name", this.f2603c);
            jSONObject2.put("last_name", this.f2604d);
            jSONObject2.put("name", this.f2605e);
            jSONObject = jSONObject2;
            if (this.f2606f != null) {
                jSONObject2.put("link_uri", this.f2606f.toString());
                jSONObject = jSONObject2;
            }
        } catch (JSONException e) {
            jSONObject = null;
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0030, code lost:
        if (r0.f2602b == null) goto L_0x00c3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0036, code lost:
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0054, code lost:
        if (r0.f2603c == null) goto L_0x00c3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0073, code lost:
        if (r0.f2604d == null) goto L_0x00c3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0092, code lost:
        if (r0.f2605e == null) goto L_0x00c3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b1, code lost:
        if (r0.f2606f == null) goto L_0x00c3;
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
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r4
            boolean r0 = r0 instanceof com.facebook.Profile
            if (r0 != 0) goto L_0x0012
            r0 = 0
            return r0
        L_0x0012:
            r0 = r4
            com.facebook.Profile r0 = (com.facebook.Profile) r0
            r4 = r0
            r0 = r3
            java.lang.String r0 = r0.f2601a
            r1 = r4
            java.lang.String r1 = r1.f2601a
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x003b
            r0 = r3
            java.lang.String r0 = r0.f2602b
            if (r0 != 0) goto L_0x003b
            r0 = r4
            java.lang.String r0 = r0.f2602b
            if (r0 != 0) goto L_0x0036
            goto L_0x00c3
        L_0x0036:
            r0 = 0
            r5 = r0
            goto L_0x00c3
        L_0x003b:
            r0 = r3
            java.lang.String r0 = r0.f2602b
            r1 = r4
            java.lang.String r1 = r1.f2602b
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x005a
            r0 = r3
            java.lang.String r0 = r0.f2603c
            if (r0 != 0) goto L_0x005a
            r0 = r4
            java.lang.String r0 = r0.f2603c
            if (r0 != 0) goto L_0x0036
            goto L_0x00c3
        L_0x005a:
            r0 = r3
            java.lang.String r0 = r0.f2603c
            r1 = r4
            java.lang.String r1 = r1.f2603c
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0079
            r0 = r3
            java.lang.String r0 = r0.f2604d
            if (r0 != 0) goto L_0x0079
            r0 = r4
            java.lang.String r0 = r0.f2604d
            if (r0 != 0) goto L_0x0036
            goto L_0x00c3
        L_0x0079:
            r0 = r3
            java.lang.String r0 = r0.f2604d
            r1 = r4
            java.lang.String r1 = r1.f2604d
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0098
            r0 = r3
            java.lang.String r0 = r0.f2605e
            if (r0 != 0) goto L_0x0098
            r0 = r4
            java.lang.String r0 = r0.f2605e
            if (r0 != 0) goto L_0x0036
            goto L_0x00c3
        L_0x0098:
            r0 = r3
            java.lang.String r0 = r0.f2605e
            r1 = r4
            java.lang.String r1 = r1.f2605e
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00b7
            r0 = r3
            android.net.Uri r0 = r0.f2606f
            if (r0 != 0) goto L_0x00b7
            r0 = r4
            android.net.Uri r0 = r0.f2606f
            if (r0 != 0) goto L_0x0036
            goto L_0x00c3
        L_0x00b7:
            r0 = r3
            android.net.Uri r0 = r0.f2606f
            r1 = r4
            android.net.Uri r1 = r1.f2606f
            boolean r0 = r0.equals(r1)
            r5 = r0
        L_0x00c3:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.Profile.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int hashCode = 527 + this.f2601a.hashCode();
        String str = this.f2602b;
        int i = hashCode;
        if (str != null) {
            i = (hashCode * 31) + str.hashCode();
        }
        String str2 = this.f2603c;
        int i2 = i;
        if (str2 != null) {
            i2 = (i * 31) + str2.hashCode();
        }
        String str3 = this.f2604d;
        int i3 = i2;
        if (str3 != null) {
            i3 = (i2 * 31) + str3.hashCode();
        }
        String str4 = this.f2605e;
        int i4 = i3;
        if (str4 != null) {
            i4 = (i3 * 31) + str4.hashCode();
        }
        Uri uri = this.f2606f;
        int i5 = i4;
        if (uri != null) {
            i5 = (i4 * 31) + uri.hashCode();
        }
        return i5;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2601a);
        parcel.writeString(this.f2602b);
        parcel.writeString(this.f2603c);
        parcel.writeString(this.f2604d);
        parcel.writeString(this.f2605e);
        Uri uri = this.f2606f;
        parcel.writeString(uri == null ? null : uri.toString());
    }
}
