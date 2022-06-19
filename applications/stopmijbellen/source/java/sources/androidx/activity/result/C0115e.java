package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
@SuppressLint({"BanParcelableUsage"})
/* renamed from: androidx.activity.result.e */
/* loaded from: classes-dex2jar.jar:androidx/activity/result/e.class */
public final class C0115e implements Parcelable {
    public static final Parcelable.Creator<C0115e> CREATOR = new C0116a();

    /* renamed from: a */
    public final IntentSender f266a;

    /* renamed from: b */
    public final Intent f267b;

    /* renamed from: c */
    public final int f268c;

    /* renamed from: d */
    public final int f269d;

    /* renamed from: androidx.activity.result.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/e$a.class */
    public class C0116a implements Parcelable.Creator<C0115e> {
        @Override // android.os.Parcelable.Creator
        public C0115e createFromParcel(Parcel parcel) {
            return new C0115e(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public C0115e[] newArray(int i) {
            return new C0115e[i];
        }
    }

    public C0115e(IntentSender intentSender, Intent intent, int i, int i2) {
        this.f266a = intentSender;
        this.f267b = intent;
        this.f268c = i;
        this.f269d = i2;
    }

    public C0115e(Parcel parcel) {
        this.f266a = (IntentSender) parcel.readParcelable(IntentSender.class.getClassLoader());
        this.f267b = (Intent) parcel.readParcelable(Intent.class.getClassLoader());
        this.f268c = parcel.readInt();
        this.f269d = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f266a, i);
        parcel.writeParcelable(this.f267b, i);
        parcel.writeInt(this.f268c);
        parcel.writeInt(this.f269d);
    }
}
