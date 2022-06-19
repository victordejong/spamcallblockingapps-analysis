package com.kedlin.cca.core.util.billing;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/util/billing/Purchase.class */
public class Purchase implements Parcelable {
    public static final Parcelable.Creator<Purchase> CREATOR = new C0644a();

    /* renamed from: a */
    public String f3729a;

    /* renamed from: b */
    public String f3730b;

    /* renamed from: c */
    public String f3731c;

    /* renamed from: d */
    public String f3732d;

    /* renamed from: f */
    public long f3733f;

    /* renamed from: g */
    public int f3734g;

    /* renamed from: h */
    public String f3735h;

    /* renamed from: j */
    public String f3736j;

    /* renamed from: k */
    public String f3737k;

    /* renamed from: l */
    public String f3738l;

    /* renamed from: com.kedlin.cca.core.util.billing.Purchase$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/util/billing/Purchase$a.class */
    public static final class C0644a implements Parcelable.Creator<Purchase> {
        /* renamed from: a */
        public Purchase createFromParcel(Parcel parcel) {
            return new Purchase(parcel);
        }

        /* renamed from: b */
        public Purchase[] newArray(int i) {
            return new Purchase[i];
        }
    }

    public Purchase(Parcel parcel) {
        this.f3729a = parcel.readString();
        this.f3730b = parcel.readString();
        this.f3731c = parcel.readString();
        this.f3732d = parcel.readString();
        this.f3733f = parcel.readLong();
        this.f3734g = parcel.readInt();
        this.f3735h = parcel.readString();
        this.f3736j = parcel.readString();
        this.f3737k = parcel.readString();
        this.f3738l = parcel.readString();
    }

    public Purchase(String str, String str2, String str3) {
        this.f3729a = str;
        this.f3737k = str2;
        JSONObject jSONObject = new JSONObject(this.f3737k);
        this.f3730b = jSONObject.optString("orderId");
        this.f3731c = jSONObject.optString("packageName");
        this.f3732d = jSONObject.optString("productId");
        this.f3733f = jSONObject.optLong("purchaseTime");
        this.f3734g = jSONObject.optInt("purchaseState");
        this.f3735h = jSONObject.optString("developerPayload");
        this.f3736j = jSONObject.optString("token", jSONObject.optString("purchaseToken"));
        this.f3738l = str3;
    }

    /* renamed from: a */
    public String m4352a() {
        return this.f3729a;
    }

    /* renamed from: b */
    public String m4351b() {
        return this.f3730b;
    }

    /* renamed from: c */
    public String m4350c() {
        return this.f3737k;
    }

    /* renamed from: d */
    public String m4349d() {
        return this.f3738l;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public String m4348e() {
        return this.f3732d;
    }

    /* renamed from: f */
    public String m4347f() {
        return this.f3736j;
    }

    public String toString() {
        return "PurchaseInfo(type:" + this.f3729a + "):" + this.f3737k;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3729a);
        parcel.writeString(this.f3730b);
        parcel.writeString(this.f3731c);
        parcel.writeString(this.f3732d);
        parcel.writeLong(this.f3733f);
        parcel.writeInt(this.f3734g);
        parcel.writeString(this.f3735h);
        parcel.writeString(this.f3736j);
        parcel.writeString(this.f3737k);
        parcel.writeString(this.f3738l);
    }
}
