package com.clevertap.android.sdk.inbox;

import android.os.Parcel;
import android.os.Parcelable;
import com.amazon.device.ads.DtbConstants;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1485h.p1486a.p1493c.p1502r0.EnumC22824k;
/* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/inbox/CTInboxMessage.class */
public class CTInboxMessage implements Parcelable {
    public static final Parcelable.Creator<CTInboxMessage> CREATOR = new C0885a();

    /* renamed from: a */
    public String f2371a;

    /* renamed from: b */
    public String f2372b;

    /* renamed from: c */
    public String f2373c;

    /* renamed from: d */
    public String f2374d;

    /* renamed from: e */
    public JSONObject f2375e;

    /* renamed from: f */
    public JSONObject f2376f;

    /* renamed from: g */
    public long f2377g;

    /* renamed from: h */
    public long f2378h;

    /* renamed from: i */
    public String f2379i;

    /* renamed from: j */
    public ArrayList<CTInboxMessageContent> f2380j;

    /* renamed from: k */
    public boolean f2381k;

    /* renamed from: l */
    public String f2382l;

    /* renamed from: m */
    public String f2383m;

    /* renamed from: n */
    public List<String> f2384n;

    /* renamed from: o */
    public String f2385o;

    /* renamed from: p */
    public EnumC22824k f2386p;

    /* renamed from: q */
    public JSONObject f2387q;

    /* renamed from: com.clevertap.android.sdk.inbox.CTInboxMessage$a */
    /* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/inbox/CTInboxMessage$a.class */
    public class C0885a implements Parcelable.Creator<CTInboxMessage> {
        @Override // android.os.Parcelable.Creator
        public CTInboxMessage createFromParcel(Parcel parcel) {
            return new CTInboxMessage(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public CTInboxMessage[] newArray(int i) {
            return new CTInboxMessage[i];
        }
    }

    public CTInboxMessage(Parcel parcel, C0885a c0885a) {
        this.f2380j = new ArrayList<>();
        this.f2384n = new ArrayList();
        try {
            this.f2385o = parcel.readString();
            this.f2373c = parcel.readString();
            this.f2379i = parcel.readString();
            this.f2371a = parcel.readString();
            this.f2377g = parcel.readLong();
            this.f2378h = parcel.readLong();
            this.f2382l = parcel.readString();
            this.f2376f = parcel.readByte() == 0 ? null : new JSONObject(parcel.readString());
            this.f2375e = parcel.readByte() == 0 ? null : new JSONObject(parcel.readString());
            this.f2381k = parcel.readByte() != 0;
            this.f2386p = (EnumC22824k) parcel.readValue(EnumC22824k.class.getClassLoader());
            if (parcel.readByte() == 1) {
                List arrayList = new ArrayList();
                this.f2384n = arrayList;
                parcel.readList(arrayList, String.class.getClassLoader());
            } else {
                this.f2384n = null;
            }
            this.f2372b = parcel.readString();
            if (parcel.readByte() == 1) {
                ArrayList<CTInboxMessageContent> arrayList2 = new ArrayList<>();
                this.f2380j = arrayList2;
                parcel.readList(arrayList2, CTInboxMessageContent.class.getClassLoader());
            } else {
                this.f2380j = null;
            }
            this.f2383m = parcel.readString();
            this.f2374d = parcel.readString();
            this.f2387q = parcel.readByte() == 0 ? null : new JSONObject(parcel.readString());
        } catch (JSONException e) {
            e.getLocalizedMessage();
        }
    }

    /* JADX WARN: Type inference failed for: r0v90, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    /* JADX WARN: Type inference failed for: r0v94, types: [long] */
    /* JADX WARN: Type inference failed for: r0v96, types: [long] */
    public CTInboxMessage(JSONObject jSONObject) {
        this.f2380j = new ArrayList<>();
        this.f2384n = new ArrayList();
        this.f2376f = jSONObject;
        try {
            this.f2382l = jSONObject.has("id") ? jSONObject.getString("id") : DtbConstants.NETWORK_TYPE_UNKNOWN;
            this.f2374d = jSONObject.has("wzrk_id") ? jSONObject.getString("wzrk_id") : "0_0";
            this.f2377g = jSONObject.has("date") ? jSONObject.getLong("date") : System.currentTimeMillis() / 1000;
            this.f2378h = jSONObject.has("wzrk_ttl") ? jSONObject.getLong("wzrk_ttl") : System.currentTimeMillis() + DtbConstants.SIS_CHECKIN_INTERVAL;
            this.f2381k = jSONObject.has("isRead") && jSONObject.getBoolean("isRead");
            JSONArray jSONArray = jSONObject.has("tags") ? jSONObject.getJSONArray("tags") : null;
            if (jSONArray != null) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    this.f2384n.add(jSONArray.getString(i));
                }
            }
            JSONObject jSONObject2 = jSONObject.has(RemoteMessageConst.MessageBody.MSG) ? jSONObject.getJSONObject(RemoteMessageConst.MessageBody.MSG) : null;
            if (jSONObject2 != null) {
                this.f2386p = jSONObject2.has("type") ? EnumC22824k.m7732a(jSONObject2.getString("type")) : EnumC22824k.m7732a("");
                this.f2372b = jSONObject2.has("bg") ? jSONObject2.getString("bg") : "";
                JSONArray jSONArray2 = jSONObject2.has("content") ? jSONObject2.getJSONArray("content") : null;
                if (jSONArray2 != null) {
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        CTInboxMessageContent cTInboxMessageContent = new CTInboxMessageContent();
                        cTInboxMessageContent.m42053e(jSONArray2.getJSONObject(i2));
                        this.f2380j.add(cTInboxMessageContent);
                    }
                }
                this.f2383m = jSONObject2.has("orientation") ? jSONObject2.getString("orientation") : "";
            }
            this.f2387q = jSONObject.has("wzrkParams") ? jSONObject.getJSONObject("wzrkParams") : null;
        } catch (JSONException e) {
            e.getLocalizedMessage();
        }
    }

    /* renamed from: a */
    public JSONObject m42058a() {
        JSONObject jSONObject = this.f2387q;
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        return jSONObject2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2385o);
        parcel.writeString(this.f2373c);
        parcel.writeString(this.f2379i);
        parcel.writeString(this.f2371a);
        parcel.writeLong(this.f2377g);
        parcel.writeLong(this.f2378h);
        parcel.writeString(this.f2382l);
        if (this.f2376f == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.f2376f.toString());
        }
        if (this.f2375e == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.f2375e.toString());
        }
        parcel.writeByte(this.f2381k ? (byte) 1 : (byte) 0);
        parcel.writeValue(this.f2386p);
        if (this.f2384n == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeList(this.f2384n);
        }
        parcel.writeString(this.f2372b);
        if (this.f2380j == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeList(this.f2380j);
        }
        parcel.writeString(this.f2383m);
        parcel.writeString(this.f2374d);
        if (this.f2387q == null) {
            parcel.writeByte((byte) 0);
            return;
        }
        parcel.writeByte((byte) 1);
        parcel.writeString(this.f2387q.toString());
    }
}
