package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.tmobile.tmoid.helperlib.sit.SitErrorType;
import com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/AkaTokenResponseWith3GppAuth.class */
public class AkaTokenResponseWith3GppAuth extends MultiResponseWith3GppAuth {
    public static final Parcelable.Creator<AkaTokenResponseWith3GppAuth> CREATOR = new Parcelable.Creator<AkaTokenResponseWith3GppAuth>() { // from class: com.tmobile.tmoid.helperlib.sit.http.AkaTokenResponseWith3GppAuth.1
        /* renamed from: a */
        public AkaTokenResponseWith3GppAuth createFromParcel(Parcel parcel) {
            return new AkaTokenResponseWith3GppAuth(parcel);
        }

        /* renamed from: b */
        public AkaTokenResponseWith3GppAuth[] newArray(int i) {
            return new AkaTokenResponseWith3GppAuth[i];
        }
    };

    public AkaTokenResponseWith3GppAuth() {
    }

    public AkaTokenResponseWith3GppAuth(Parcel parcel) {
        super(parcel);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.MultiResponseWith3GppAuth
    /* renamed from: d */
    public SitServerCommunicationErrorException mo4880d() {
        SitServerCommunicationErrorException d = super.mo4880d();
        SitServerCommunicationErrorException sitServerCommunicationErrorException = d;
        if (d == null) {
            sitServerCommunicationErrorException = !mo4878f() ? new SitServerCommunicationErrorException(SitErrorType.AUTHENTICATION, m4879e().m4870d()) : new SitServerCommunicationErrorException(SitErrorType.AUTHENTICATION, "unexpected error");
        }
        return sitServerCommunicationErrorException;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.MultiResponseWith3GppAuth
    /* renamed from: f */
    public boolean mo4878f() {
        return m4971j() || m4972i();
    }

    /* renamed from: h */
    public String m4973h() {
        return m4879e().m4852h();
    }

    /* renamed from: i */
    public boolean m4972i() {
        return !TextUtils.isEmpty(m4973h());
    }

    /* renamed from: j */
    public boolean m4971j() {
        return m4879e().m4851i();
    }
}
