package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$SavedState.class */
public class Fragment$SavedState implements Parcelable {
    public static final Parcelable.Creator<Fragment$SavedState> CREATOR = new C0308a();

    /* renamed from: b */
    final Bundle f1813b;

    /* renamed from: androidx.fragment.app.Fragment$SavedState$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$SavedState$a.class */
    static final class C0308a implements Parcelable.ClassLoaderCreator<Fragment$SavedState> {
        C0308a() {
        }

        /* renamed from: a */
        public Fragment$SavedState createFromParcel(Parcel parcel) {
            return new Fragment$SavedState(parcel, null);
        }

        /* renamed from: b */
        public Fragment$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new Fragment$SavedState(parcel, classLoader);
        }

        /* renamed from: c */
        public Fragment$SavedState[] newArray(int i) {
            return new Fragment$SavedState[i];
        }
    }

    Fragment$SavedState(Parcel parcel, ClassLoader classLoader) {
        Bundle readBundle = parcel.readBundle();
        this.f1813b = readBundle;
        if (classLoader == null || readBundle == null) {
            return;
        }
        readBundle.setClassLoader(classLoader);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f1813b);
    }
}
