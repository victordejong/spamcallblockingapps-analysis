package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.AbstractC0397a0;
import java.util.ArrayList;
@SuppressLint({"BanParcelableUsage"})
/* renamed from: androidx.fragment.app.c0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/c0.class */
public final class C0421c0 implements Parcelable {
    public static final Parcelable.Creator<C0421c0> CREATOR = new C0422a();

    /* renamed from: a */
    public ArrayList<C0430f0> f1765a;

    /* renamed from: b */
    public ArrayList<String> f1766b;

    /* renamed from: c */
    public C0413b[] f1767c;

    /* renamed from: d */
    public int f1768d;

    /* renamed from: e */
    public String f1769e;

    /* renamed from: f */
    public ArrayList<String> f1770f;

    /* renamed from: g */
    public ArrayList<Bundle> f1771g;

    /* renamed from: h */
    public ArrayList<AbstractC0397a0.C0408k> f1772h;

    /* renamed from: androidx.fragment.app.c0$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/c0$a.class */
    public class C0422a implements Parcelable.Creator<C0421c0> {
        @Override // android.os.Parcelable.Creator
        public C0421c0 createFromParcel(Parcel parcel) {
            return new C0421c0(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public C0421c0[] newArray(int i) {
            return new C0421c0[i];
        }
    }

    public C0421c0() {
        this.f1769e = null;
        this.f1770f = new ArrayList<>();
        this.f1771g = new ArrayList<>();
    }

    public C0421c0(Parcel parcel) {
        this.f1769e = null;
        this.f1770f = new ArrayList<>();
        this.f1771g = new ArrayList<>();
        this.f1765a = parcel.createTypedArrayList(C0430f0.CREATOR);
        this.f1766b = parcel.createStringArrayList();
        this.f1767c = (C0413b[]) parcel.createTypedArray(C0413b.CREATOR);
        this.f1768d = parcel.readInt();
        this.f1769e = parcel.readString();
        this.f1770f = parcel.createStringArrayList();
        this.f1771g = parcel.createTypedArrayList(Bundle.CREATOR);
        this.f1772h = parcel.createTypedArrayList(AbstractC0397a0.C0408k.CREATOR);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.f1765a);
        parcel.writeStringList(this.f1766b);
        parcel.writeTypedArray(this.f1767c, i);
        parcel.writeInt(this.f1768d);
        parcel.writeString(this.f1769e);
        parcel.writeStringList(this.f1770f);
        parcel.writeTypedList(this.f1771g);
        parcel.writeTypedList(this.f1772h);
    }
}
