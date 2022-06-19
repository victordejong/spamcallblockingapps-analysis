package androidx.activity.result;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/activity/result/ActivityResult.class */
public final class ActivityResult implements Parcelable {
    public static final Parcelable.Creator<ActivityResult> CREATOR = new C0025a();

    /* renamed from: a */
    public final int f76a;

    /* renamed from: b */
    public final Intent f77b;

    /* renamed from: androidx.activity.result.ActivityResult$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/ActivityResult$a.class */
    public class C0025a implements Parcelable.Creator<ActivityResult> {
        @Override // android.os.Parcelable.Creator
        public ActivityResult createFromParcel(Parcel parcel) {
            return new ActivityResult(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ActivityResult[] newArray(int i) {
            return new ActivityResult[i];
        }
    }

    public ActivityResult(int i, Intent intent) {
        this.f76a = i;
        this.f77b = intent;
    }

    public ActivityResult(Parcel parcel) {
        this.f76a = parcel.readInt();
        this.f77b = parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ActivityResult{resultCode=");
        int i = this.f76a;
        m8728C.append(i != -1 ? i != 0 ? String.valueOf(i) : "RESULT_CANCELED" : "RESULT_OK");
        m8728C.append(", data=");
        m8728C.append(this.f77b);
        m8728C.append('}');
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f76a);
        parcel.writeInt(this.f77b == null ? 0 : 1);
        Intent intent = this.f77b;
        if (intent != null) {
            intent.writeToParcel(parcel, i);
        }
    }
}
