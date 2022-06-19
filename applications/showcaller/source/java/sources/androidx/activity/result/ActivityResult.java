package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/activity/result/ActivityResult.class */
public final class ActivityResult implements Parcelable {
    public static final Parcelable.Creator<ActivityResult> CREATOR = new C0091a();

    /* renamed from: d */
    private final int f177d;

    /* renamed from: e */
    private final Intent f178e;

    /* renamed from: androidx.activity.result.ActivityResult$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/ActivityResult$a.class */
    class C0091a implements Parcelable.Creator<ActivityResult> {
        C0091a() {
        }

        /* renamed from: a */
        public ActivityResult createFromParcel(Parcel parcel) {
            return new ActivityResult(parcel);
        }

        /* renamed from: b */
        public ActivityResult[] newArray(int i) {
            return new ActivityResult[i];
        }
    }

    public ActivityResult(int i, Intent intent) {
        this.f177d = i;
        this.f178e = intent;
    }

    ActivityResult(Parcel parcel) {
        this.f177d = parcel.readInt();
        this.f178e = parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel);
    }

    /* renamed from: c */
    public static String m35746c(int i) {
        return i != -1 ? i != 0 ? String.valueOf(i) : "RESULT_CANCELED" : "RESULT_OK";
    }

    /* renamed from: a */
    public Intent m35748a() {
        return this.f178e;
    }

    /* renamed from: b */
    public int m35747b() {
        return this.f177d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "ActivityResult{resultCode=" + m35746c(this.f177d) + ", data=" + this.f178e + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f177d);
        parcel.writeInt(this.f178e == null ? 0 : 1);
        Intent intent = this.f178e;
        if (intent != null) {
            intent.writeToParcel(parcel, i);
        }
    }
}
