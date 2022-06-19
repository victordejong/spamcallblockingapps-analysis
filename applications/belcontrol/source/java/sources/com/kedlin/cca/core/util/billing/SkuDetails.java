package com.kedlin.cca.core.util.billing;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/util/billing/SkuDetails.class */
public class SkuDetails implements Parcelable {
    public static final Parcelable.Creator<SkuDetails> CREATOR = new C0645a();

    /* renamed from: a */
    public String f3739a;

    /* renamed from: b */
    public String f3740b;

    /* renamed from: c */
    public String f3741c;

    /* renamed from: d */
    public String f3742d;

    /* renamed from: f */
    public String f3743f;

    /* renamed from: g */
    public String f3744g;

    /* renamed from: h */
    public String f3745h;

    /* renamed from: j */
    public double f3746j;

    /* renamed from: k */
    public String f3747k;

    /* renamed from: com.kedlin.cca.core.util.billing.SkuDetails$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/util/billing/SkuDetails$a.class */
    public static final class C0645a implements Parcelable.Creator<SkuDetails> {
        /* renamed from: a */
        public SkuDetails createFromParcel(Parcel parcel) {
            return new SkuDetails(parcel);
        }

        /* renamed from: b */
        public SkuDetails[] newArray(int i) {
            return new SkuDetails[i];
        }
    }

    public SkuDetails(Parcel parcel) {
        this.f3739a = parcel.readString();
        this.f3740b = parcel.readString();
        this.f3741c = parcel.readString();
        this.f3742d = parcel.readString();
        this.f3743f = parcel.readString();
        this.f3744g = parcel.readString();
        this.f3745h = parcel.readString();
        this.f3746j = parcel.readDouble();
        this.f3747k = parcel.readString();
    }

    public SkuDetails(String str, String str2) {
        this.f3739a = str;
        this.f3745h = str2;
        JSONObject jSONObject = new JSONObject(this.f3745h);
        this.f3740b = jSONObject.optString("productId");
        this.f3741c = jSONObject.optString("type");
        this.f3742d = jSONObject.optString("price");
        this.f3743f = jSONObject.optString("title");
        this.f3744g = jSONObject.optString("description");
        this.f3746j = jSONObject.optLong("price_amount_micros") / 1000000.0d;
        this.f3747k = jSONObject.optString("price_currency_code");
    }

    /* renamed from: a */
    public String m4344a() {
        return this.f3747k;
    }

    /* renamed from: b */
    public String m4343b() {
        return this.f3742d;
    }

    /* renamed from: c */
    public double m4342c() {
        return this.f3746j;
    }

    /* renamed from: d */
    public String m4341d() {
        return this.f3740b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public String m4340e() {
        return this.f3743f;
    }

    /* renamed from: f */
    public String m4339f() {
        return this.f3741c;
    }

    /* renamed from: g */
    public void m4338g(String str) {
        this.f3743f = str;
    }

    public String toString() {
        return "SkuDetails:" + this.f3745h;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3739a);
        parcel.writeString(this.f3740b);
        parcel.writeString(this.f3741c);
        parcel.writeString(this.f3742d);
        parcel.writeString(this.f3743f);
        parcel.writeString(this.f3744g);
        parcel.writeString(this.f3745h);
        parcel.writeDouble(this.f3746j);
        parcel.writeString(this.f3747k);
    }
}
