package com.tmobile.tmoid.helperlib.impl;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/impl/APIRequest.class */
public abstract class APIRequest implements Parcelable {

    /* renamed from: f */
    protected String f14739f = UUID.randomUUID().toString();

    /* renamed from: g */
    protected String f14740g;

    /* renamed from: h */
    protected String f14741h;

    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/impl/APIRequest$EmptyAPIRequest.class */
    public static class EmptyAPIRequest extends APIRequest {
        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
        }
    }

    /* renamed from: a */
    public static APIRequest m5049a(Intent intent) {
        String stringExtra = intent.getStringExtra("action");
        return "getAuthorizationCode".equals(stringExtra) ? new APIRequestForAuthorizationCode(intent) : "getAccessToken".equals(stringExtra) ? new APIRequestForAccessToken(intent) : new EmptyAPIRequest();
    }

    /* renamed from: b */
    public String m5048b() {
        return this.f14740g;
    }

    /* renamed from: c */
    public String m5047c() {
        return this.f14741h;
    }

    /* renamed from: d */
    public String m5046d() {
        return this.f14739f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof APIRequest)) {
            return false;
        }
        String str = this.f14739f;
        String str2 = ((APIRequest) obj).f14739f;
        return str != null ? str.equals(str2) : str2 == null;
    }

    public int hashCode() {
        String str = this.f14739f;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return "request{id: " + this.f14739f + ", action:" + this.f14740g + ", client_id:" + this.f14741h;
    }
}
