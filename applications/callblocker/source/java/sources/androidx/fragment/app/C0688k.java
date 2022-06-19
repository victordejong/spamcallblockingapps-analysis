package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
@SuppressLint({"BanParcelableUsage"})
/* renamed from: androidx.fragment.app.k */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/k.class */
public final class C0688k implements Parcelable {
    public static final Parcelable.Creator<C0688k> CREATOR = new Parcelable.Creator<C0688k>() { // from class: androidx.fragment.app.k.1
        /* renamed from: a */
        public C0688k createFromParcel(Parcel parcel) {
            return new C0688k(parcel);
        }

        /* renamed from: a */
        public C0688k[] newArray(int i) {
            return new C0688k[i];
        }
    };

    /* renamed from: a */
    ArrayList<C0693n> f2442a;

    /* renamed from: b */
    ArrayList<String> f2443b;

    /* renamed from: c */
    C0660b[] f2444c;

    /* renamed from: d */
    String f2445d;

    /* renamed from: e */
    int f2446e;

    public C0688k() {
        this.f2445d = null;
    }

    public C0688k(Parcel parcel) {
        this.f2445d = null;
        this.f2442a = parcel.createTypedArrayList(C0693n.CREATOR);
        this.f2443b = parcel.createStringArrayList();
        this.f2444c = (C0660b[]) parcel.createTypedArray(C0660b.CREATOR);
        this.f2445d = parcel.readString();
        this.f2446e = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.f2442a);
        parcel.writeStringList(this.f2443b);
        parcel.writeTypedArray(this.f2444c, i);
        parcel.writeString(this.f2445d);
        parcel.writeInt(this.f2446e);
    }
}
