package com.google.android.play.core.review;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/review/ReviewInfo.class */
public abstract class ReviewInfo implements Parcelable {
    public static ReviewInfo b(PendingIntent pendingIntent) {
        return new a(pendingIntent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract PendingIntent a();

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(a(), 0);
    }
}
