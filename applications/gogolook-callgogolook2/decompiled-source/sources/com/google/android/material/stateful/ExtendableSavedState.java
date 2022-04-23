package com.google.android.material.stateful;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.collection.SimpleArrayMap;
import androidx.customview.view.AbsSavedState;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/stateful/ExtendableSavedState.class */
public class ExtendableSavedState extends AbsSavedState {
    public static final Parcelable.Creator<ExtendableSavedState> CREATOR = new C3637a();

    /* renamed from: a */
    public final SimpleArrayMap<String, Bundle> f7534a;

    /* renamed from: com.google.android.material.stateful.ExtendableSavedState$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/stateful/ExtendableSavedState$a.class */
    public static final class C3637a implements Parcelable.ClassLoaderCreator<ExtendableSavedState> {
        @Override // android.os.Parcelable.Creator
        public ExtendableSavedState createFromParcel(Parcel parcel) {
            return new ExtendableSavedState(parcel, null, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.ClassLoaderCreator
        public ExtendableSavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new ExtendableSavedState(parcel, classLoader, null);
        }

        @Override // android.os.Parcelable.Creator
        public ExtendableSavedState[] newArray(int i) {
            return new ExtendableSavedState[i];
        }
    }

    public ExtendableSavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int readInt = parcel.readInt();
        String[] strArr = new String[readInt];
        parcel.readStringArray(strArr);
        Bundle[] bundleArr = new Bundle[readInt];
        parcel.readTypedArray(bundleArr, Bundle.CREATOR);
        this.f7534a = new SimpleArrayMap<>(readInt);
        for (int i = 0; i < readInt; i++) {
            this.f7534a.put(strArr[i], bundleArr[i]);
        }
    }

    public /* synthetic */ ExtendableSavedState(Parcel parcel, ClassLoader classLoader, C3637a aVar) {
        this(parcel, classLoader);
    }

    public ExtendableSavedState(Parcelable parcelable) {
        super(parcelable);
        this.f7534a = new SimpleArrayMap<>();
    }

    public String toString() {
        return "ExtendableSavedState{" + Integer.toHexString(System.identityHashCode(this)) + " states=" + this.f7534a + CssParser.BLOCK_END;
    }

    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        int size = this.f7534a.size();
        parcel.writeInt(size);
        String[] strArr = new String[size];
        Bundle[] bundleArr = new Bundle[size];
        for (int i2 = 0; i2 < size; i2++) {
            strArr[i2] = this.f7534a.keyAt(i2);
            bundleArr[i2] = this.f7534a.valueAt(i2);
        }
        parcel.writeStringArray(strArr);
        parcel.writeTypedArray(bundleArr, 0);
    }
}
