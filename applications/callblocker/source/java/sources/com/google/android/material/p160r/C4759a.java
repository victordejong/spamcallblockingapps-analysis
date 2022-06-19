package com.google.android.material.p160r;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.p013b.C0386g;
import androidx.p029d.p030a.AbstractC0633a;
/* renamed from: com.google.android.material.r.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/r/a.class */
public class C4759a extends AbstractC0633a {
    public static final Parcelable.Creator<C4759a> CREATOR = new Parcelable.ClassLoaderCreator<C4759a>() { // from class: com.google.android.material.r.a.1
        /* renamed from: a */
        public C4759a createFromParcel(Parcel parcel) {
            return new C4759a(parcel, null);
        }

        /* renamed from: a */
        public C4759a createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new C4759a(parcel, classLoader);
        }

        /* renamed from: a */
        public C4759a[] newArray(int i) {
            return new C4759a[i];
        }
    };

    /* renamed from: a */
    public final C0386g<String, Bundle> f20576a;

    private C4759a(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int readInt = parcel.readInt();
        String[] strArr = new String[readInt];
        parcel.readStringArray(strArr);
        Bundle[] bundleArr = new Bundle[readInt];
        parcel.readTypedArray(bundleArr, Bundle.CREATOR);
        this.f20576a = new C0386g<>(readInt);
        for (int i = 0; i < readInt; i++) {
            this.f20576a.put(strArr[i], bundleArr[i]);
        }
    }

    public C4759a(Parcelable parcelable) {
        super(parcelable);
        this.f20576a = new C0386g<>();
    }

    public String toString() {
        return "ExtendableSavedState{" + Integer.toHexString(System.identityHashCode(this)) + " states=" + this.f20576a + "}";
    }

    @Override // androidx.p029d.p030a.AbstractC0633a, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        int size = this.f20576a.size();
        parcel.writeInt(size);
        String[] strArr = new String[size];
        Bundle[] bundleArr = new Bundle[size];
        for (int i2 = 0; i2 < size; i2++) {
            strArr[i2] = this.f20576a.m21085b(i2);
            bundleArr[i2] = this.f20576a.m21083c(i2);
        }
        parcel.writeStringArray(strArr);
        parcel.writeTypedArray(bundleArr, 0);
    }
}
