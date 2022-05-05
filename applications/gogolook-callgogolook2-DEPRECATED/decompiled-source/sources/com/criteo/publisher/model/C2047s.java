package com.criteo.publisher.model;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.criteo.publisher.model.s */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/s.class */
public class C2047s implements Parcelable {
    public static final Parcelable.Creator<C2047s> CREATOR = new C2048a();
    @NonNull

    /* renamed from: a */
    public final String f2264a;
    @NonNull

    /* renamed from: b */
    public final String f2265b;

    /* renamed from: com.criteo.publisher.model.s$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/s$a.class */
    public static final class C2048a implements Parcelable.Creator<C2047s> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public C2047s createFromParcel(Parcel parcel) {
            return new C2047s(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public C2047s[] newArray(int i) {
            return new C2047s[i];
        }
    }

    public C2047s(@NonNull Context context, @NonNull String str) {
        this.f2264a = context.getPackageName();
        this.f2265b = str;
    }

    public C2047s(Parcel parcel) {
        this.f2264a = parcel.readString();
        this.f2265b = parcel.readString();
    }

    @NonNull
    /* renamed from: a */
    public String m35821a() {
        return this.f2264a;
    }

    @NonNull
    /* renamed from: b */
    public String m35820b() {
        return this.f2265b;
    }

    /* renamed from: c */
    public JSONObject m35819c() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("bundleId", this.f2264a);
        if (!TextUtils.isEmpty(this.f2265b)) {
            jSONObject.put("cpId", this.f2265b);
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2264a);
        parcel.writeString(this.f2265b);
    }
}
