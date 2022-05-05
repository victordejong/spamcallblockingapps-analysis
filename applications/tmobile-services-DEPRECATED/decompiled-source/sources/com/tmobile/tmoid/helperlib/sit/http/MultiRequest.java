package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/MultiRequest.class */
public class MultiRequest extends BaseRequest {
    public static final Parcelable.Creator<MultiRequest> CREATOR = new Parcelable.Creator<MultiRequest>() { // from class: com.tmobile.tmoid.helperlib.sit.http.MultiRequest.1
        /* renamed from: a */
        public MultiRequest createFromParcel(Parcel parcel) {
            return new MultiRequest(parcel);
        }

        /* renamed from: b */
        public MultiRequest[] newArray(int i) {
            return new MultiRequest[i];
        }
    };

    /* renamed from: f */
    protected ArrayList<String> f14829f;

    public MultiRequest() {
        this.f14829f = new ArrayList<>();
    }

    public MultiRequest(Parcel parcel) {
        this.f14829f = new ArrayList<>();
        this.f14829f = parcel.createStringArrayList();
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.BaseRequest
    /* renamed from: a */
    public String mo4892a() {
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = this.f14829f.iterator();
        while (it.hasNext()) {
            try {
                jSONArray.put(new JSONObject(it.next()));
            } catch (JSONException e) {
            }
        }
        return jSONArray.length() == this.f14829f.size() ? jSONArray.toString() : null;
    }

    /* renamed from: b */
    public boolean m4891b(Request request) {
        return request != null ? this.f14829f.add(request.mo4892a()) : false;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.BaseRequest
    public String toString() {
        return mo4892a();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStringList(this.f14829f);
    }
}
