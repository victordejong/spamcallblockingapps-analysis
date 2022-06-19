package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.C1172r0;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.g0;
import s1.z.c.k;
import s1.z.c.l;
@Metadata(d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\"\n\u0002\b\b\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018�� L2\u00020\u0001:\u0001LB\u0017\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005B\u0085\u0002\b\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\u0016\b\u0002\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018\u0012\u0016\b\u0002\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0018\u0012\u0016\b\u0002\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u001eB\u000f\b\u0010\u0012\u0006\u0010\u001f\u001a\u00020 ¢\u0006\u0002\u0010!J\b\u0010;\u001a\u00020\u0019H\u0016J\u0013\u0010<\u001a\u00020=2\b\u0010>\u001a\u0004\u0018\u00010?H\u0096\u0002J\b\u0010@\u001a\u00020\u0019H\u0016J\u0018\u0010A\u001a\u00020=2\u0006\u0010B\u001a\u00020C2\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010D\u001a\u00020\u0003H\u0007J\r\u0010E\u001a\u00020CH\u0001¢\u0006\u0002\bFJ\b\u0010G\u001a\u00020\u0003H\u0016J\u0018\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020 2\u0006\u0010K\u001a\u00020\u0019H\u0016R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\"\u0010#R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b$\u0010#R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n��\u001a\u0004\b%\u0010&R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b'\u0010#R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b(\u0010#R\u0011\u0010\f\u001a\u00020\u000b¢\u0006\b\n��\u001a\u0004\b)\u0010&R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b*\u0010#R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b+\u0010#R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b,\u0010#R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b-\u0010#R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b.\u0010#R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b/\u0010#R\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b0\u0010#R\u001f\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018¢\u0006\b\n��\u001a\u0004\b1\u00102R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b3\u0010#R\u0019\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u000104¢\u0006\b\n��\u001a\u0004\b5\u00106R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b7\u0010#R\u001f\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0018¢\u0006\b\n��\u001a\u0004\b8\u00102R\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b9\u0010#R\u001f\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0018¢\u0006\b\n��\u001a\u0004\b:\u00102¨\u0006M"}, d2 = {"Lcom/facebook/AuthenticationTokenClaims;", "Landroid/os/Parcelable;", "encodedClaims", "", "expectedNonce", "(Ljava/lang/String;Ljava/lang/String;)V", "jti", "iss", "aud", "nonce", "exp", "", "iat", "sub", AnalyticsConstants.NAME, "givenName", "middleName", "familyName", AnalyticsConstants.EMAIL, "picture", "userFriends", "", "userBirthday", "userAgeRange", "", "", "userHometown", "userLocation", "userGender", "userLink", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "getAud", "()Ljava/lang/String;", "getEmail", "getExp", "()J", "getFamilyName", "getGivenName", "getIat", "getIss", "getJti", "getMiddleName", "getName", "getNonce", "getPicture", "getSub", "getUserAgeRange", "()Ljava/util/Map;", "getUserBirthday", "", "getUserFriends", "()Ljava/util/Set;", "getUserGender", "getUserHometown", "getUserLink", "getUserLocation", "describeContents", "equals", "", "other", "", "hashCode", "isValidClaims", "claimsJson", "Lorg/json/JSONObject;", "toEnCodedString", "toJSONObject", "toJSONObject$facebook_core_release", "toString", "writeToParcel", "", "dest", "flags", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2-dex2jar.jar:com/facebook/AuthenticationTokenClaims.class */
public final class AuthenticationTokenClaims implements Parcelable {
    public static final Parcelable.Creator<AuthenticationTokenClaims> CREATOR = new C0909a();

    /* renamed from: a */
    public final String f2481a;

    /* renamed from: b */
    public final String f2482b;

    /* renamed from: c */
    public final String f2483c;

    /* renamed from: d */
    public final String f2484d;

    /* renamed from: e */
    public final long f2485e;

    /* renamed from: f */
    public final long f2486f;

    /* renamed from: g */
    public final String f2487g;

    /* renamed from: h */
    public final String f2488h;

    /* renamed from: i */
    public final String f2489i;

    /* renamed from: j */
    public final String f2490j;

    /* renamed from: k */
    public final String f2491k;

    /* renamed from: l */
    public final String f2492l;

    /* renamed from: m */
    public final String f2493m;

    /* renamed from: n */
    public final Set<String> f2494n;

    /* renamed from: o */
    public final String f2495o;

    /* renamed from: p */
    public final Map<String, Integer> f2496p;

    /* renamed from: q */
    public final Map<String, String> f2497q;

    /* renamed from: r */
    public final Map<String, String> f2498r;

    /* renamed from: s */
    public final String f2499s;

    /* renamed from: t */
    public final String f2500t;

    @Metadata(d1 = {"��%\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\b\n\u0002\b\u0002*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001d\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"com/facebook/AuthenticationTokenClaims$Companion$CREATOR$1", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/AuthenticationTokenClaims;", "createFromParcel", "source", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/facebook/AuthenticationTokenClaims;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.AuthenticationTokenClaims$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/AuthenticationTokenClaims$a.class */
    public static final class C0909a implements Parcelable.Creator<AuthenticationTokenClaims> {
        @Override // android.os.Parcelable.Creator
        public AuthenticationTokenClaims createFromParcel(Parcel parcel) {
            l.e(parcel, "source");
            return new AuthenticationTokenClaims(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public AuthenticationTokenClaims[] newArray(int i) {
            return new AuthenticationTokenClaims[i];
        }
    }

    public AuthenticationTokenClaims(Parcel parcel) {
        l.e(parcel, "parcel");
        String readString = parcel.readString();
        C1172r0 c1172r0 = C1172r0.f3203a;
        C1172r0.m41650e(readString, "jti");
        this.f2481a = readString;
        String readString2 = parcel.readString();
        C1172r0.m41650e(readString2, "iss");
        this.f2482b = readString2;
        String readString3 = parcel.readString();
        C1172r0.m41650e(readString3, "aud");
        this.f2483c = readString3;
        String readString4 = parcel.readString();
        C1172r0.m41650e(readString4, "nonce");
        this.f2484d = readString4;
        this.f2485e = parcel.readLong();
        this.f2486f = parcel.readLong();
        String readString5 = parcel.readString();
        C1172r0.m41650e(readString5, "sub");
        this.f2487g = readString5;
        this.f2488h = parcel.readString();
        this.f2489i = parcel.readString();
        this.f2490j = parcel.readString();
        this.f2491k = parcel.readString();
        this.f2492l = parcel.readString();
        this.f2493m = parcel.readString();
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        Map<String, String> map = null;
        this.f2494n = createStringArrayList != null ? Collections.unmodifiableSet(new HashSet(createStringArrayList)) : null;
        this.f2495o = parcel.readString();
        HashMap readHashMap = parcel.readHashMap(k.class.getClassLoader());
        readHashMap = !(readHashMap instanceof HashMap) ? null : readHashMap;
        this.f2496p = readHashMap != null ? Collections.unmodifiableMap(readHashMap) : null;
        HashMap readHashMap2 = parcel.readHashMap(g0.class.getClassLoader());
        readHashMap2 = !(readHashMap2 instanceof HashMap) ? null : readHashMap2;
        this.f2497q = readHashMap2 != null ? Collections.unmodifiableMap(readHashMap2) : null;
        HashMap readHashMap3 = parcel.readHashMap(g0.class.getClassLoader());
        readHashMap3 = !(readHashMap3 instanceof HashMap) ? null : readHashMap3;
        this.f2498r = readHashMap3 != null ? Collections.unmodifiableMap(readHashMap3) : map;
        this.f2499s = parcel.readString();
        this.f2500t = parcel.readString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00b4, code lost:
        if (s1.z.c.l.a(new java.net.URL(r0).getHost(), "www.facebook.com") == false) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x03a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AuthenticationTokenClaims(java.lang.String r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 951
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.AuthenticationTokenClaims.<init>(java.lang.String, java.lang.String):void");
    }

    /* renamed from: a */
    public static final String m42025a(JSONObject jSONObject, String str) {
        l.e(jSONObject, "<this>");
        l.e(str, AnalyticsConstants.NAME);
        if (jSONObject.has(str)) {
            return jSONObject.getString(str);
        }
        return null;
    }

    /* renamed from: b */
    public final JSONObject m42024b() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("jti", this.f2481a);
        jSONObject.put("iss", this.f2482b);
        jSONObject.put("aud", this.f2483c);
        jSONObject.put("nonce", this.f2484d);
        jSONObject.put("exp", this.f2485e);
        jSONObject.put("iat", this.f2486f);
        String str = this.f2487g;
        if (str != null) {
            jSONObject.put("sub", str);
        }
        String str2 = this.f2488h;
        if (str2 != null) {
            jSONObject.put(AnalyticsConstants.NAME, str2);
        }
        String str3 = this.f2489i;
        if (str3 != null) {
            jSONObject.put("given_name", str3);
        }
        String str4 = this.f2490j;
        if (str4 != null) {
            jSONObject.put("middle_name", str4);
        }
        String str5 = this.f2491k;
        if (str5 != null) {
            jSONObject.put("family_name", str5);
        }
        String str6 = this.f2492l;
        if (str6 != null) {
            jSONObject.put(AnalyticsConstants.EMAIL, str6);
        }
        String str7 = this.f2493m;
        if (str7 != null) {
            jSONObject.put("picture", str7);
        }
        Set<String> set = this.f2494n;
        if (set != null) {
            jSONObject.put("user_friends", new JSONArray((Collection) set));
        }
        String str8 = this.f2495o;
        if (str8 != null) {
            jSONObject.put("user_birthday", str8);
        }
        if (this.f2496p != null) {
            jSONObject.put("user_age_range", new JSONObject(this.f2496p));
        }
        if (this.f2497q != null) {
            jSONObject.put("user_hometown", new JSONObject(this.f2497q));
        }
        if (this.f2498r != null) {
            jSONObject.put("user_location", new JSONObject(this.f2498r));
        }
        String str9 = this.f2499s;
        if (str9 != null) {
            jSONObject.put("user_gender", str9);
        }
        String str10 = this.f2500t;
        if (str10 != null) {
            jSONObject.put("user_link", str10);
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthenticationTokenClaims)) {
            return false;
        }
        AuthenticationTokenClaims authenticationTokenClaims = (AuthenticationTokenClaims) obj;
        if (!l.a(this.f2481a, authenticationTokenClaims.f2481a) || !l.a(this.f2482b, authenticationTokenClaims.f2482b) || !l.a(this.f2483c, authenticationTokenClaims.f2483c) || !l.a(this.f2484d, authenticationTokenClaims.f2484d) || this.f2485e != authenticationTokenClaims.f2485e || this.f2486f != authenticationTokenClaims.f2486f || !l.a(this.f2487g, authenticationTokenClaims.f2487g) || !l.a(this.f2488h, authenticationTokenClaims.f2488h) || !l.a(this.f2489i, authenticationTokenClaims.f2489i) || !l.a(this.f2490j, authenticationTokenClaims.f2490j) || !l.a(this.f2491k, authenticationTokenClaims.f2491k) || !l.a(this.f2492l, authenticationTokenClaims.f2492l) || !l.a(this.f2493m, authenticationTokenClaims.f2493m) || !l.a(this.f2494n, authenticationTokenClaims.f2494n) || !l.a(this.f2495o, authenticationTokenClaims.f2495o) || !l.a(this.f2496p, authenticationTokenClaims.f2496p) || !l.a(this.f2497q, authenticationTokenClaims.f2497q) || !l.a(this.f2498r, authenticationTokenClaims.f2498r) || !l.a(this.f2499s, authenticationTokenClaims.f2499s) || !l.a(this.f2500t, authenticationTokenClaims.f2500t)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int m8579q2 = C22128a.m8579q2(this.f2487g, (C4876d.m34274a(this.f2486f) + ((C4876d.m34274a(this.f2485e) + C22128a.m8579q2(this.f2484d, C22128a.m8579q2(this.f2483c, C22128a.m8579q2(this.f2482b, C22128a.m8579q2(this.f2481a, 527, 31), 31), 31), 31)) * 31)) * 31, 31);
        String str = this.f2488h;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f2489i;
        int hashCode2 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f2490j;
        int hashCode3 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.f2491k;
        int hashCode4 = str4 == null ? 0 : str4.hashCode();
        String str5 = this.f2492l;
        int hashCode5 = str5 == null ? 0 : str5.hashCode();
        String str6 = this.f2493m;
        int hashCode6 = str6 == null ? 0 : str6.hashCode();
        Set<String> set = this.f2494n;
        int hashCode7 = set == null ? 0 : set.hashCode();
        String str7 = this.f2495o;
        int hashCode8 = str7 == null ? 0 : str7.hashCode();
        Map<String, Integer> map = this.f2496p;
        int hashCode9 = map == null ? 0 : map.hashCode();
        Map<String, String> map2 = this.f2497q;
        int hashCode10 = map2 == null ? 0 : map2.hashCode();
        Map<String, String> map3 = this.f2498r;
        int hashCode11 = map3 == null ? 0 : map3.hashCode();
        String str8 = this.f2499s;
        int hashCode12 = str8 == null ? 0 : str8.hashCode();
        String str9 = this.f2500t;
        if (str9 != null) {
            i = str9.hashCode();
        }
        return ((((((((((((((((((((((((m8579q2 + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + i;
    }

    public String toString() {
        String jSONObject = m42024b().toString();
        l.d(jSONObject, "claimsJsonObject.toString()");
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "dest");
        parcel.writeString(this.f2481a);
        parcel.writeString(this.f2482b);
        parcel.writeString(this.f2483c);
        parcel.writeString(this.f2484d);
        parcel.writeLong(this.f2485e);
        parcel.writeLong(this.f2486f);
        parcel.writeString(this.f2487g);
        parcel.writeString(this.f2488h);
        parcel.writeString(this.f2489i);
        parcel.writeString(this.f2490j);
        parcel.writeString(this.f2491k);
        parcel.writeString(this.f2492l);
        parcel.writeString(this.f2493m);
        if (this.f2494n == null) {
            parcel.writeStringList(null);
        } else {
            parcel.writeStringList(new ArrayList(this.f2494n));
        }
        parcel.writeString(this.f2495o);
        parcel.writeMap(this.f2496p);
        parcel.writeMap(this.f2497q);
        parcel.writeMap(this.f2498r);
        parcel.writeString(this.f2499s);
        parcel.writeString(this.f2500t);
    }
}
