package com.google.android.play.core.review;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/review/ReviewInfo.class */
public abstract class ReviewInfo implements Parcelable {
    /* renamed from: a */
    public abstract PendingIntent mo3398a();

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(mo3398a(), 0);
    }
}
