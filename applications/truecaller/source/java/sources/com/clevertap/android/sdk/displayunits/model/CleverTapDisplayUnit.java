package com.clevertap.android.sdk.displayunits.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.p1497m0.EnumC22753b;
/* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/displayunits/model/CleverTapDisplayUnit.class */
public class CleverTapDisplayUnit implements Parcelable {
    public static final Parcelable.Creator<CleverTapDisplayUnit> CREATOR = new C0873a();

    /* renamed from: a */
    public String f2283a;

    /* renamed from: b */
    public ArrayList<CleverTapDisplayUnitContent> f2284b;

    /* renamed from: c */
    public HashMap<String, String> f2285c;

    /* renamed from: d */
    public String f2286d;

    /* renamed from: e */
    public JSONObject f2287e;

    /* renamed from: f */
    public EnumC22753b f2288f;

    /* renamed from: g */
    public String f2289g;

    /* renamed from: com.clevertap.android.sdk.displayunits.model.CleverTapDisplayUnit$a */
    /* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/displayunits/model/CleverTapDisplayUnit$a.class */
    public class C0873a implements Parcelable.Creator<CleverTapDisplayUnit> {
        @Override // android.os.Parcelable.Creator
        public CleverTapDisplayUnit createFromParcel(Parcel parcel) {
            return new CleverTapDisplayUnit(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public CleverTapDisplayUnit[] newArray(int i) {
            return new CleverTapDisplayUnit[i];
        }
    }

    public CleverTapDisplayUnit(Parcel parcel, C0873a c0873a) {
        try {
            this.f2289g = parcel.readString();
            this.f2288f = (EnumC22753b) parcel.readValue(EnumC22753b.class.getClassLoader());
            this.f2283a = parcel.readString();
            JSONObject jSONObject = null;
            if (parcel.readByte() == 1) {
                ArrayList<CleverTapDisplayUnitContent> arrayList = new ArrayList<>();
                this.f2284b = arrayList;
                parcel.readList(arrayList, CleverTapDisplayUnitContent.class.getClassLoader());
            } else {
                this.f2284b = null;
            }
            this.f2285c = parcel.readHashMap(null);
            if (parcel.readByte() != 0) {
                jSONObject = new JSONObject(parcel.readString());
            }
            this.f2287e = jSONObject;
            this.f2286d = parcel.readString();
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("Error Creating Display Unit from parcel : ");
            m8728C.append(e.getLocalizedMessage());
            this.f2286d = m8728C.toString();
        }
    }

    public CleverTapDisplayUnit(JSONObject jSONObject, String str, EnumC22753b enumC22753b, String str2, ArrayList<CleverTapDisplayUnitContent> arrayList, JSONObject jSONObject2, String str3) {
        this.f2287e = jSONObject;
        this.f2289g = str;
        this.f2288f = enumC22753b;
        this.f2283a = str2;
        this.f2284b = arrayList;
        HashMap<String, String> hashMap = null;
        if (jSONObject2 != null) {
            try {
                Iterator<String> keys = jSONObject2.keys();
                hashMap = null;
                if (keys != null) {
                    hashMap = null;
                    while (keys.hasNext()) {
                        String next = keys.next();
                        String string = jSONObject2.getString(next);
                        if (!TextUtils.isEmpty(next)) {
                            HashMap<String, String> hashMap2 = hashMap == null ? new HashMap<>() : hashMap;
                            hashMap2.put(next, string);
                            hashMap = hashMap2;
                        }
                    }
                }
            } catch (Exception e) {
                e.getLocalizedMessage();
                hashMap = null;
            }
        }
        this.f2285c = hashMap;
        this.f2286d = str3;
    }

    /* renamed from: a */
    public static CleverTapDisplayUnit m42080a(JSONObject jSONObject) {
        EnumC22753b enumC22753b;
        try {
            String string = jSONObject.has("wzrk_id") ? jSONObject.getString("wzrk_id") : "0_0";
            if (jSONObject.has("type")) {
                String string2 = jSONObject.getString("type");
                if (!TextUtils.isEmpty(string2)) {
                    string2.hashCode();
                    string2.hashCode();
                    boolean z = true;
                    switch (string2.hashCode()) {
                        case -1799711058:
                            if (string2.equals("carousel-image")) {
                                z = false;
                                break;
                            }
                            break;
                        case -1332589953:
                            if (string2.equals("message-icon")) {
                                z = true;
                                break;
                            }
                            break;
                        case -902286926:
                            if (string2.equals("simple")) {
                                z = true;
                                break;
                            }
                            break;
                        case -876980953:
                            if (string2.equals("custom-key-value")) {
                                z = true;
                                break;
                            }
                            break;
                        case 2908512:
                            if (string2.equals("carousel")) {
                                z = true;
                                break;
                            }
                            break;
                        case 1818845568:
                            if (string2.equals("simple-image")) {
                                z = true;
                                break;
                            }
                            break;
                    }
                    switch (z) {
                        case false:
                            enumC22753b = EnumC22753b.CAROUSEL_WITH_IMAGE;
                            break;
                        case true:
                            enumC22753b = EnumC22753b.MESSAGE_WITH_ICON;
                            break;
                        case true:
                            enumC22753b = EnumC22753b.SIMPLE;
                            break;
                        case true:
                            enumC22753b = EnumC22753b.CUSTOM_KEY_VALUE;
                            break;
                        case true:
                            enumC22753b = EnumC22753b.CAROUSEL;
                            break;
                        case true:
                            enumC22753b = EnumC22753b.SIMPLE_WITH_IMAGE;
                            break;
                    }
                }
                enumC22753b = null;
            } else {
                enumC22753b = null;
            }
            String string3 = jSONObject.has("bg") ? jSONObject.getString("bg") : "";
            JSONArray jSONArray = jSONObject.has("content") ? jSONObject.getJSONArray("content") : null;
            ArrayList arrayList = new ArrayList();
            if (jSONArray != null) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    CleverTapDisplayUnitContent m42079a = CleverTapDisplayUnitContent.m42079a(jSONArray.getJSONObject(i));
                    if (TextUtils.isEmpty(m42079a.f2292c)) {
                        arrayList.add(m42079a);
                    }
                }
            }
            return new CleverTapDisplayUnit(jSONObject, string, enumC22753b, string3, arrayList, jSONObject.has("custom_kv") ? jSONObject.getJSONObject("custom_kv") : null, null);
        } catch (Exception e) {
            e.getLocalizedMessage();
            StringBuilder m8728C = C22128a.m8728C("Error Creating Display Unit from JSON : ");
            m8728C.append(e.getLocalizedMessage());
            return new CleverTapDisplayUnit(null, "", null, null, null, null, m8728C.toString());
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append(" Unit id- ");
            sb.append(this.f2289g);
            sb.append(", Type- ");
            EnumC22753b enumC22753b = this.f2288f;
            sb.append(enumC22753b != null ? enumC22753b.f63025a : null);
            sb.append(", bgColor- ");
            sb.append(this.f2283a);
            ArrayList<CleverTapDisplayUnitContent> arrayList = this.f2284b;
            if (arrayList != null && !arrayList.isEmpty()) {
                for (int i = 0; i < this.f2284b.size(); i++) {
                    CleverTapDisplayUnitContent cleverTapDisplayUnitContent = this.f2284b.get(i);
                    if (cleverTapDisplayUnitContent != null) {
                        sb.append(", Content Item:");
                        sb.append(i);
                        sb.append(StringConstant.SPACE);
                        sb.append(cleverTapDisplayUnitContent.toString());
                        sb.append(StringConstant.NEW_LINE);
                    }
                }
            }
            if (this.f2285c != null) {
                sb.append(", Custom KV:");
                sb.append(this.f2285c);
            }
            sb.append(", JSON -");
            sb.append(this.f2287e);
            sb.append(", Error-");
            sb.append(this.f2286d);
            sb.append(" ]");
            return sb.toString();
        } catch (Exception e) {
            String str = "Exception in toString:" + e;
            return super.toString();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2289g);
        parcel.writeValue(this.f2288f);
        parcel.writeString(this.f2283a);
        if (this.f2284b == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeList(this.f2284b);
        }
        parcel.writeMap(this.f2285c);
        if (this.f2287e == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.f2287e.toString());
        }
        parcel.writeString(this.f2286d);
    }
}
