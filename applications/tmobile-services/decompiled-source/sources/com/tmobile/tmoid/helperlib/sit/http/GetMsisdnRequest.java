package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/GetMsisdnRequest.class */
public class GetMsisdnRequest extends Request {
    public static final Parcelable.Creator<GetMsisdnRequest> CREATOR = new Parcelable.Creator<GetMsisdnRequest>() { // from class: com.tmobile.tmoid.helperlib.sit.http.GetMsisdnRequest.1
        /* renamed from: a */
        public GetMsisdnRequest createFromParcel(Parcel parcel) {
            return new GetMsisdnRequest(parcel);
        }

        /* renamed from: b */
        public GetMsisdnRequest[] newArray(int i) {
            return new GetMsisdnRequest[i];
        }
    };

    protected GetMsisdnRequest(Parcel parcel) {
        super(parcel);
    }

    public GetMsisdnRequest(String str) {
        super("getMSISDN", str);
    }
}
