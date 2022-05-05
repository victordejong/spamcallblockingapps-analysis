package com.tmobile.tmoid.helperlib.sit.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.tmobile.tmoid.helperlib.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/internal/AkaAuthAPIRequest.class */
public class AkaAuthAPIRequest extends BaseSitAPIRequest {
    public static final Parcelable.Creator<AkaAuthAPIRequest> CREATOR = new Parcelable.Creator<AkaAuthAPIRequest>() { // from class: com.tmobile.tmoid.helperlib.sit.internal.AkaAuthAPIRequest.1
        /* renamed from: a */
        public AkaAuthAPIRequest createFromParcel(Parcel parcel) {
            return new AkaAuthAPIRequest(parcel);
        }

        /* renamed from: b */
        public AkaAuthAPIRequest[] newArray(int i) {
            return new AkaAuthAPIRequest[i];
        }
    };

    AkaAuthAPIRequest() {
    }

    AkaAuthAPIRequest(Parcel parcel) {
        mo4772b(parcel);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest
    /* renamed from: a */
    public String mo4773a() {
        return null;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest
    /* renamed from: b */
    public void mo4772b(Parcel parcel) {
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest
    /* renamed from: c */
    public boolean mo4820c() {
        return false;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest
    /* renamed from: d */
    public void mo4771d(String str) {
        Log.m4654d("TMO-Helperlib", "Info: setAkaToken for AkaAuthAPIRequest does nothing.");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
    }
}
