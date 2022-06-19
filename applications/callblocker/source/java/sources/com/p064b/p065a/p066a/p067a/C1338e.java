package com.p064b.p065a.p066a.p067a;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.b.a.a.a.e */
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/e.class */
public class C1338e implements Parcelable {
    public static final Parcelable.Creator<C1338e> CREATOR = new Parcelable.Creator<C1338e>() { // from class: com.b.a.a.a.e.1
        /* renamed from: a */
        public C1338e createFromParcel(Parcel parcel) {
            return new C1338e(parcel);
        }

        /* renamed from: a */
        public C1338e[] newArray(int i) {
            return new C1338e[i];
        }
    };

    /* renamed from: a */
    public final String f4420a;

    /* renamed from: b */
    public final String f4421b;

    /* renamed from: c */
    public final C1336d f4422c = m17433a();

    protected C1338e(Parcel parcel) {
        this.f4420a = parcel.readString();
        this.f4421b = parcel.readString();
    }

    public C1338e(String str, String str2) {
        this.f4420a = str;
        this.f4421b = str2;
    }

    /* renamed from: a */
    C1336d m17433a() {
        C1336d c1336d;
        try {
            JSONObject jSONObject = new JSONObject(this.f4420a);
            C1336d c1336d2 = new C1336d();
            c1336d2.f4412a = jSONObject.optString("orderId");
            c1336d2.f4413b = jSONObject.optString("packageName");
            c1336d2.f4414c = jSONObject.optString("productId");
            long optLong = jSONObject.optLong("purchaseTime", 0L);
            c1336d2.f4415d = optLong != 0 ? new Date(optLong) : null;
            c1336d2.f4416e = EnumC1340f.values()[jSONObject.optInt("purchaseState", 1)];
            c1336d2.f4417f = jSONObject.optString("developerPayload");
            c1336d2.f4418g = jSONObject.getString("purchaseToken");
            c1336d2.f4419h = jSONObject.optBoolean("autoRenewing");
            c1336d = c1336d2;
        } catch (JSONException e) {
            Log.e("iabv3.purchaseInfo", "Failed to parse response data", e);
            c1336d = null;
        }
        return c1336d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null || !(obj instanceof C1338e)) {
                z = false;
            } else {
                C1338e c1338e = (C1338e) obj;
                if (!this.f4420a.equals(c1338e.f4420a) || !this.f4421b.equals(c1338e.f4421b) || !this.f4422c.f4418g.equals(c1338e.f4422c.f4418g) || !this.f4422c.f4415d.equals(c1338e.f4422c.f4415d)) {
                    z = false;
                }
            }
        }
        return z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4420a);
        parcel.writeString(this.f4421b);
    }
}
