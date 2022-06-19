package com.clevertap.android.sdk;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.AbstractC22839u;
import p193e.p1485h.p1486a.p1493c.C22735g0;
import p193e.p1485h.p1486a.p1493c.C22737h0;
/* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/CleverTapInstanceConfig.class */
public class CleverTapInstanceConfig implements Parcelable {
    public static final Parcelable.Creator<CleverTapInstanceConfig> CREATOR = new C0867a();

    /* renamed from: a */
    public String f2240a;

    /* renamed from: b */
    public String f2241b;

    /* renamed from: c */
    public String f2242c;

    /* renamed from: d */
    public ArrayList<String> f2243d;

    /* renamed from: e */
    public boolean f2244e;

    /* renamed from: f */
    public boolean f2245f;

    /* renamed from: g */
    public boolean f2246g;

    /* renamed from: h */
    public boolean f2247h;

    /* renamed from: i */
    public int f2248i;

    /* renamed from: j */
    public boolean f2249j;

    /* renamed from: k */
    public boolean f2250k;

    /* renamed from: l */
    public String f2251l;

    /* renamed from: m */
    public boolean f2252m;

    /* renamed from: n */
    public C22735g0 f2253n;

    /* renamed from: o */
    public String f2254o;

    /* renamed from: p */
    public boolean f2255p;

    /* renamed from: q */
    public String[] f2256q;

    /* renamed from: r */
    public boolean f2257r;

    /* renamed from: s */
    public boolean f2258s;

    /* renamed from: com.clevertap.android.sdk.CleverTapInstanceConfig$a */
    /* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/CleverTapInstanceConfig$a.class */
    public class C0867a implements Parcelable.Creator<CleverTapInstanceConfig> {
        @Override // android.os.Parcelable.Creator
        public CleverTapInstanceConfig createFromParcel(Parcel parcel) {
            return new CleverTapInstanceConfig(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public CleverTapInstanceConfig[] newArray(int i) {
            return new CleverTapInstanceConfig[i];
        }
    }

    public CleverTapInstanceConfig(Context context, String str, String str2, String str3, boolean z) {
        this.f2243d = C26232y.m2400W();
        this.f2256q = AbstractC22839u.f63388d;
        this.f2240a = str;
        this.f2242c = str2;
        this.f2241b = str3;
        this.f2252m = z;
        this.f2244e = false;
        this.f2255p = true;
        this.f2248i = 0;
        this.f2253n = new C22735g0(0);
        this.f2247h = false;
        C22737h0 m7853b = C22737h0.m7853b(context);
        Objects.requireNonNull(m7853b);
        this.f2258s = C22737h0.f62956e;
        this.f2249j = C22737h0.f62957f;
        this.f2257r = C22737h0.f62961j;
        this.f2245f = C22737h0.f62962k;
        this.f2251l = C22737h0.f62964m;
        this.f2254o = C22737h0.f62965n;
        this.f2250k = C22737h0.f62963l;
        this.f2246g = C22737h0.f62966o;
        if (this.f2252m) {
            this.f2256q = m7853b.f62968a;
            StringBuilder m8728C = C22128a.m8728C("Setting Profile Keys from Manifest: ");
            m8728C.append(Arrays.toString(this.f2256q));
            this.f2253n.m7855b(m42082a("ON_USER_LOGIN"), m8728C.toString());
        }
    }

    public CleverTapInstanceConfig(Parcel parcel, C0867a c0867a) {
        this.f2243d = C26232y.m2400W();
        this.f2256q = AbstractC22839u.f63388d;
        this.f2240a = parcel.readString();
        this.f2242c = parcel.readString();
        this.f2241b = parcel.readString();
        this.f2244e = parcel.readByte() != 0;
        this.f2252m = parcel.readByte() != 0;
        this.f2258s = parcel.readByte() != 0;
        this.f2249j = parcel.readByte() != 0;
        this.f2255p = parcel.readByte() != 0;
        this.f2248i = parcel.readInt();
        this.f2247h = parcel.readByte() != 0;
        this.f2257r = parcel.readByte() != 0;
        this.f2245f = parcel.readByte() != 0;
        this.f2250k = parcel.readByte() != 0;
        this.f2251l = parcel.readString();
        this.f2254o = parcel.readString();
        this.f2253n = new C22735g0(this.f2248i);
        this.f2246g = parcel.readByte() != 0;
        ArrayList<String> arrayList = new ArrayList<>();
        this.f2243d = arrayList;
        parcel.readList(arrayList, String.class.getClassLoader());
        this.f2256q = parcel.createStringArray();
    }

    public CleverTapInstanceConfig(CleverTapInstanceConfig cleverTapInstanceConfig) {
        this.f2243d = C26232y.m2400W();
        this.f2256q = AbstractC22839u.f63388d;
        this.f2240a = cleverTapInstanceConfig.f2240a;
        this.f2242c = cleverTapInstanceConfig.f2242c;
        this.f2241b = cleverTapInstanceConfig.f2241b;
        this.f2252m = cleverTapInstanceConfig.f2252m;
        this.f2244e = cleverTapInstanceConfig.f2244e;
        this.f2255p = cleverTapInstanceConfig.f2255p;
        this.f2248i = cleverTapInstanceConfig.f2248i;
        this.f2253n = cleverTapInstanceConfig.f2253n;
        this.f2258s = cleverTapInstanceConfig.f2258s;
        this.f2249j = cleverTapInstanceConfig.f2249j;
        this.f2247h = cleverTapInstanceConfig.f2247h;
        this.f2257r = cleverTapInstanceConfig.f2257r;
        this.f2245f = cleverTapInstanceConfig.f2245f;
        this.f2250k = cleverTapInstanceConfig.f2250k;
        this.f2251l = cleverTapInstanceConfig.f2251l;
        this.f2254o = cleverTapInstanceConfig.f2254o;
        this.f2246g = cleverTapInstanceConfig.f2246g;
        this.f2243d = cleverTapInstanceConfig.f2243d;
        this.f2256q = cleverTapInstanceConfig.f2256q;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CleverTapInstanceConfig(String str) throws Throwable {
        this.f2243d = C26232y.m2400W();
        this.f2256q = AbstractC22839u.f63388d;
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("accountId")) {
                this.f2240a = jSONObject.getString("accountId");
            }
            if (jSONObject.has("accountToken")) {
                this.f2242c = jSONObject.getString("accountToken");
            }
            if (jSONObject.has("accountRegion")) {
                this.f2241b = jSONObject.getString("accountRegion");
            }
            if (jSONObject.has("analyticsOnly")) {
                this.f2244e = jSONObject.getBoolean("analyticsOnly");
            }
            if (jSONObject.has("isDefaultInstance")) {
                this.f2252m = jSONObject.getBoolean("isDefaultInstance");
            }
            if (jSONObject.has("useGoogleAdId")) {
                this.f2258s = jSONObject.getBoolean("useGoogleAdId");
            }
            if (jSONObject.has("disableAppLaunchedEvent")) {
                this.f2249j = jSONObject.getBoolean("disableAppLaunchedEvent");
            }
            if (jSONObject.has("personalization")) {
                this.f2255p = jSONObject.getBoolean("personalization");
            }
            if (jSONObject.has("debugLevel")) {
                this.f2248i = jSONObject.getInt("debugLevel");
            }
            this.f2253n = new C22735g0(this.f2248i);
            if (jSONObject.has("packageName")) {
                this.f2254o = jSONObject.getString("packageName");
            }
            if (jSONObject.has("createdPostAppLaunch")) {
                this.f2247h = jSONObject.getBoolean("createdPostAppLaunch");
            }
            if (jSONObject.has("sslPinning")) {
                this.f2257r = jSONObject.getBoolean("sslPinning");
            }
            if (jSONObject.has("backgroundSync")) {
                this.f2245f = jSONObject.getBoolean("backgroundSync");
            }
            if (jSONObject.has("getEnableCustomCleverTapId")) {
                this.f2250k = jSONObject.getBoolean("getEnableCustomCleverTapId");
            }
            if (jSONObject.has("fcmSenderId")) {
                this.f2251l = jSONObject.getString("fcmSenderId");
            }
            if (jSONObject.has("beta")) {
                this.f2246g = jSONObject.getBoolean("beta");
            }
            if (jSONObject.has("allowedPushTypes")) {
                JSONArray jSONArray = jSONObject.getJSONArray("allowedPushTypes");
                ArrayList<String> arrayList = new ArrayList<>();
                int i = 0;
                while (true) {
                    if (i >= jSONArray.length()) {
                        break;
                    }
                    try {
                        arrayList.add(jSONArray.get(i));
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                    i++;
                }
                this.f2243d = arrayList;
            }
            if (!jSONObject.has("identityTypes")) {
                return;
            }
            JSONArray jSONArray2 = jSONObject.getJSONArray("identityTypes");
            Object[] objArr = new Object[jSONArray2.length()];
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                try {
                    objArr[i2] = jSONArray2.get(i2);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
            this.f2256q = (String[]) objArr;
        } catch (Throwable th) {
            th.getCause();
            throw th;
        }
    }

    /* renamed from: a */
    public final String m42082a(String str) {
        StringBuilder m8728C = C22128a.m8728C("[");
        m8728C.append(!TextUtils.isEmpty(str) ? C22128a.m8543z2(StringConstant.COLON, str) : "");
        m8728C.append(StringConstant.COLON);
        return C22128a.m8618h(m8728C, this.f2240a, "]");
    }

    /* renamed from: b */
    public C22735g0 m42081b() {
        if (this.f2253n == null) {
            this.f2253n = new C22735g0(this.f2248i);
        }
        return this.f2253n;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2240a);
        parcel.writeString(this.f2242c);
        parcel.writeString(this.f2241b);
        parcel.writeByte(this.f2244e ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f2252m ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f2258s ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f2249j ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f2255p ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f2248i);
        parcel.writeByte(this.f2247h ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f2257r ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f2245f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f2250k ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f2251l);
        parcel.writeString(this.f2254o);
        parcel.writeByte(this.f2246g ? (byte) 1 : (byte) 0);
        parcel.writeList(this.f2243d);
        parcel.writeStringArray(this.f2256q);
    }
}
