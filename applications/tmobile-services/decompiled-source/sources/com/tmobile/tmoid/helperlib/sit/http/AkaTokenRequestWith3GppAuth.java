package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/AkaTokenRequestWith3GppAuth.class */
public class AkaTokenRequestWith3GppAuth extends MultiRequestWith3GppAuth {
    public static final Parcelable.Creator<AkaTokenRequestWith3GppAuth> CREATOR = new Parcelable.Creator<AkaTokenRequestWith3GppAuth>() { // from class: com.tmobile.tmoid.helperlib.sit.http.AkaTokenRequestWith3GppAuth.1
        /* renamed from: a */
        public AkaTokenRequestWith3GppAuth createFromParcel(Parcel parcel) {
            return new AkaTokenRequestWith3GppAuth(parcel);
        }

        /* renamed from: b */
        public AkaTokenRequestWith3GppAuth[] newArray(int i) {
            return new AkaTokenRequestWith3GppAuth[i];
        }
    };

    protected AkaTokenRequestWith3GppAuth(Parcel parcel) {
        super(parcel);
    }

    public AkaTokenRequestWith3GppAuth(String str, String str2, String str3) {
        super(str, str2, null, str3);
    }

    public AkaTokenRequestWith3GppAuth(String str, String str2, String str3, int i) {
        super(str, str2, null, str3, i);
    }

    /* renamed from: d */
    public int m4976d() {
        return m4888c().m4874b();
    }
}
