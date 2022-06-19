package androidx.activity.result;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/activity/result/IntentSenderRequest.class */
public final class IntentSenderRequest implements Parcelable {
    public static final Parcelable.Creator<IntentSenderRequest> CREATOR = new C0030a();

    /* renamed from: a */
    public final IntentSender f98a;

    /* renamed from: b */
    public final Intent f99b;

    /* renamed from: c */
    public final int f100c;

    /* renamed from: d */
    public final int f101d;

    /* renamed from: androidx.activity.result.IntentSenderRequest$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/IntentSenderRequest$a.class */
    public class C0030a implements Parcelable.Creator<IntentSenderRequest> {
        @Override // android.os.Parcelable.Creator
        public IntentSenderRequest createFromParcel(Parcel parcel) {
            return new IntentSenderRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public IntentSenderRequest[] newArray(int i) {
            return new IntentSenderRequest[i];
        }
    }

    public IntentSenderRequest(IntentSender intentSender, Intent intent, int i, int i2) {
        this.f98a = intentSender;
        this.f99b = intent;
        this.f100c = i;
        this.f101d = i2;
    }

    public IntentSenderRequest(Parcel parcel) {
        this.f98a = (IntentSender) parcel.readParcelable(IntentSender.class.getClassLoader());
        this.f99b = (Intent) parcel.readParcelable(Intent.class.getClassLoader());
        this.f100c = parcel.readInt();
        this.f101d = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f98a, i);
        parcel.writeParcelable(this.f99b, i);
        parcel.writeInt(this.f100c);
        parcel.writeInt(this.f101d);
    }
}
