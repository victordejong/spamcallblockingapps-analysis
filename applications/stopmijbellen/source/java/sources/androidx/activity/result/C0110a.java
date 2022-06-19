package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p012v4.media.C0082b;
@SuppressLint({"BanParcelableUsage"})
/* renamed from: androidx.activity.result.a */
/* loaded from: classes-dex2jar.jar:androidx/activity/result/a.class */
public final class C0110a implements Parcelable {
    public static final Parcelable.Creator<C0110a> CREATOR = new C0111a();

    /* renamed from: a */
    public final int f264a;

    /* renamed from: b */
    public final Intent f265b;

    /* renamed from: androidx.activity.result.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/a$a.class */
    public class C0111a implements Parcelable.Creator<C0110a> {
        @Override // android.os.Parcelable.Creator
        public C0110a createFromParcel(Parcel parcel) {
            return new C0110a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public C0110a[] newArray(int i) {
            return new C0110a[i];
        }
    }

    public C0110a(int i, Intent intent) {
        this.f264a = i;
        this.f265b = intent;
    }

    public C0110a(Parcel parcel) {
        this.f264a = parcel.readInt();
        this.f265b = parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("ActivityResult{resultCode=");
        int i = this.f264a;
        m8752j.append(i != -1 ? i != 0 ? String.valueOf(i) : "RESULT_CANCELED" : "RESULT_OK");
        m8752j.append(", data=");
        m8752j.append(this.f265b);
        m8752j.append('}');
        return m8752j.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f264a);
        parcel.writeInt(this.f265b == null ? 0 : 1);
        Intent intent = this.f265b;
        if (intent != null) {
            intent.writeToParcel(parcel, i);
        }
    }
}
