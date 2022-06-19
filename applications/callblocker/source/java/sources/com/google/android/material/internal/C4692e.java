package com.google.android.material.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
/* renamed from: com.google.android.material.internal.e */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/e.class */
public class C4692e extends SparseArray<Parcelable> implements Parcelable {
    public static final Parcelable.Creator<C4692e> CREATOR = new Parcelable.ClassLoaderCreator<C4692e>() { // from class: com.google.android.material.internal.e.1
        /* renamed from: a */
        public C4692e createFromParcel(Parcel parcel) {
            return new C4692e(parcel, null);
        }

        /* renamed from: a */
        public C4692e createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new C4692e(parcel, classLoader);
        }

        /* renamed from: a */
        public C4692e[] newArray(int i) {
            return new C4692e[i];
        }
    };

    public C4692e() {
    }

    public C4692e(Parcel parcel, ClassLoader classLoader) {
        int readInt = parcel.readInt();
        int[] iArr = new int[readInt];
        parcel.readIntArray(iArr);
        Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
        for (int i = 0; i < readInt; i++) {
            put(iArr[i], readParcelableArray[i]);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int size = size();
        int[] iArr = new int[size];
        Parcelable[] parcelableArr = new Parcelable[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = keyAt(i2);
            parcelableArr[i2] = valueAt(i2);
        }
        parcel.writeInt(size);
        parcel.writeIntArray(iArr);
        parcel.writeParcelableArray(parcelableArr, i);
    }
}
