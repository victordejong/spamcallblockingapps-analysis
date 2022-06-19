package com.facebook;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.AccessToken;
import com.facebook.internal.C1168q0;
import com.facebook.internal.C1172r0;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import org.json.JSONObject;
import p193e.p1538j.C23250o0;
import p193e.p1538j.C23254q0;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018�� *2\u00020\u0001:\u0001*BO\b\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u000bB\u000f\b\u0010\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eB\u000f\b\u0012\u0012\u0006\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0096\u0002J\u0016\u0010!\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\u001cJ\b\u0010$\u001a\u00020\u001cH\u0016J\b\u0010%\u001a\u0004\u0018\u00010\rJ\u0018\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u00102\u0006\u0010)\u001a\u00020\u001cH\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0013R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0013R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\u0013R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u0019\u0010\u0013R\u0013\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u0017¨\u0006+"}, d2 = {"Lcom/facebook/Profile;", "Landroid/os/Parcelable;", "id", "", "firstName", "middleName", "lastName", AnalyticsConstants.NAME, "linkUri", "Landroid/net/Uri;", "pictureUri", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V", "jsonObject", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)V", "source", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "getFirstName", "()Ljava/lang/String;", "getId", "getLastName", "getLinkUri", "()Landroid/net/Uri;", "getMiddleName", "getName", "getPictureUri", "describeContents", "", "equals", "", "other", "", "getProfilePictureUri", "width", "height", "hashCode", "toJSONObject", "writeToParcel", "", "dest", "flags", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2-dex2jar.jar:com/facebook/Profile.class */
public final class Profile implements Parcelable {
    public static final Parcelable.Creator<Profile> CREATOR = new C0928a();

    /* renamed from: h */
    public static final Profile f2566h = null;

    /* renamed from: i */
    public static final String f2567i;

    /* renamed from: a */
    public final String f2568a;

    /* renamed from: b */
    public final String f2569b;

    /* renamed from: c */
    public final String f2570c;

    /* renamed from: d */
    public final String f2571d;

    /* renamed from: e */
    public final String f2572e;

    /* renamed from: f */
    public final Uri f2573f;

    /* renamed from: g */
    public final Uri f2574g;

    @Metadata(d1 = {"��%\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\b\n\u0002\b\u0002*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001d\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"com/facebook/Profile$Companion$CREATOR$1", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/Profile;", "createFromParcel", "source", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/facebook/Profile;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.Profile$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/Profile$a.class */
    public static final class C0928a implements Parcelable.Creator<Profile> {
        @Override // android.os.Parcelable.Creator
        public Profile createFromParcel(Parcel parcel) {
            l.e(parcel, "source");
            return new Profile(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public Profile[] newArray(int i) {
            return new Profile[i];
        }
    }

    static {
        String simpleName = Profile.class.getSimpleName();
        l.d(simpleName, "Profile::class.java.simpleName");
        f2567i = simpleName;
    }

    public Profile(Parcel parcel, f fVar) {
        this.f2568a = parcel.readString();
        this.f2569b = parcel.readString();
        this.f2570c = parcel.readString();
        this.f2571d = parcel.readString();
        this.f2572e = parcel.readString();
        String readString = parcel.readString();
        this.f2573f = readString == null ? null : Uri.parse(readString);
        String readString2 = parcel.readString();
        this.f2574g = readString2 == null ? null : Uri.parse(readString2);
    }

    public Profile(String str, String str2, String str3, String str4, String str5, Uri uri, Uri uri2) {
        C1172r0 c1172r0 = C1172r0.f3203a;
        C1172r0.m41650e(str, "id");
        this.f2568a = str;
        this.f2569b = str2;
        this.f2570c = str3;
        this.f2571d = str4;
        this.f2572e = str5;
        this.f2573f = uri;
        this.f2574g = uri2;
    }

    public Profile(JSONObject jSONObject) {
        l.e(jSONObject, "jsonObject");
        this.f2568a = jSONObject.optString("id", null);
        this.f2569b = jSONObject.optString("first_name", null);
        this.f2570c = jSONObject.optString("middle_name", null);
        this.f2571d = jSONObject.optString("last_name", null);
        this.f2572e = jSONObject.optString(AnalyticsConstants.NAME, null);
        String optString = jSONObject.optString("link_uri", null);
        this.f2573f = optString == null ? null : Uri.parse(optString);
        String optString2 = jSONObject.optString("picture_uri", null);
        this.f2574g = optString2 == null ? null : Uri.parse(optString2);
    }

    /* renamed from: a */
    public static final void m41982a() {
        AccessToken.C0907c c0907c = AccessToken.f2460l;
        AccessToken m42030b = AccessToken.C0907c.m42030b();
        if (m42030b == null) {
            return;
        }
        if (!AccessToken.C0907c.m42029c()) {
            m41981b(null);
        } else {
            C1168q0.m41666q(m42030b.f2469e, new C23250o0());
        }
    }

    /* renamed from: b */
    public static final void m41981b(Profile profile) {
        C23254q0.f64357d.m7323a().m7324a(profile, true);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00eb, code lost:
        if (((com.facebook.Profile) r4).f2574g != null) goto L48;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.Profile.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.f2568a;
        int hashCode = (str != null ? str.hashCode() : 0) + 527;
        String str2 = this.f2569b;
        int i = hashCode;
        if (str2 != null) {
            i = (hashCode * 31) + str2.hashCode();
        }
        String str3 = this.f2570c;
        int i2 = i;
        if (str3 != null) {
            i2 = (i * 31) + str3.hashCode();
        }
        String str4 = this.f2571d;
        int i3 = i2;
        if (str4 != null) {
            i3 = (i2 * 31) + str4.hashCode();
        }
        String str5 = this.f2572e;
        int i4 = i3;
        if (str5 != null) {
            i4 = (i3 * 31) + str5.hashCode();
        }
        Uri uri = this.f2573f;
        int i5 = i4;
        if (uri != null) {
            i5 = (i4 * 31) + uri.hashCode();
        }
        Uri uri2 = this.f2574g;
        int i6 = i5;
        if (uri2 != null) {
            i6 = (i5 * 31) + uri2.hashCode();
        }
        return i6;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "dest");
        parcel.writeString(this.f2568a);
        parcel.writeString(this.f2569b);
        parcel.writeString(this.f2570c);
        parcel.writeString(this.f2571d);
        parcel.writeString(this.f2572e);
        Uri uri = this.f2573f;
        parcel.writeString(uri == null ? null : uri.toString());
        Uri uri2 = this.f2574g;
        parcel.writeString(uri2 == null ? null : uri2.toString());
    }
}
