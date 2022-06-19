package com.google.android.play.core.review;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/review/ReviewInfo.class */
public abstract class ReviewInfo implements Parcelable {
    /* renamed from: b */
    public static ReviewInfo m9468b(PendingIntent pendingIntent) {
        return new C15095a(pendingIntent);
    }

    /* renamed from: a */
    public abstract PendingIntent mo9467a();

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(mo9467a(), 0);
    }
}
