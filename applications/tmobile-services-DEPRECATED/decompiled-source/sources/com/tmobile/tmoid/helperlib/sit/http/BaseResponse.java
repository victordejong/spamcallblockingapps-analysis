package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcelable;
import com.google.gson.GsonBuilder;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/BaseResponse.class */
public abstract class BaseResponse implements Parcelable {
    /* renamed from: a */
    public String mo4885a() {
        GsonBuilder gsonBuilder = new GsonBuilder();
        gsonBuilder.m8398c();
        return gsonBuilder.m8399b().m8417r(this);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return mo4885a();
    }
}
