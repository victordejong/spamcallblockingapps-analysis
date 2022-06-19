package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$SavedState.class */
public class Fragment$SavedState implements Parcelable {
    public static final Parcelable.Creator<Fragment$SavedState> CREATOR = new C0162a();

    /* renamed from: a */
    public final Bundle f786a;

    /* renamed from: androidx.fragment.app.Fragment$SavedState$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$SavedState$a.class */
    public class C0162a implements Parcelable.ClassLoaderCreator<Fragment$SavedState> {
        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            return new Fragment$SavedState(parcel, null);
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        public Fragment$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new Fragment$SavedState(parcel, classLoader);
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new Fragment$SavedState[i];
        }
    }

    public Fragment$SavedState(Bundle bundle) {
        this.f786a = bundle;
    }

    public Fragment$SavedState(Parcel parcel, ClassLoader classLoader) {
        Bundle readBundle = parcel.readBundle();
        this.f786a = readBundle;
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
        parcel.writeBundle(this.f786a);
    }
}
