package com.google.android.material.timepicker;

import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/TimeModel.class */
public class TimeModel implements Parcelable {
    public static final Parcelable.Creator<TimeModel> CREATOR = new C8338a();

    /* renamed from: d */
    private final C8346a f37591d;

    /* renamed from: e */
    private final C8346a f37592e;

    /* renamed from: f */
    final int f37593f;

    /* renamed from: g */
    int f37594g;

    /* renamed from: h */
    int f37595h;

    /* renamed from: i */
    int f37596i;

    /* renamed from: j */
    int f37597j;

    /* renamed from: com.google.android.material.timepicker.TimeModel$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/TimeModel$a.class */
    static final class C8338a implements Parcelable.Creator<TimeModel> {
        C8338a() {
        }

        /* renamed from: a */
        public TimeModel createFromParcel(Parcel parcel) {
            return new TimeModel(parcel);
        }

        /* renamed from: b */
        public TimeModel[] newArray(int i) {
            return new TimeModel[i];
        }
    }

    public TimeModel() {
        this(0);
    }

    public TimeModel(int i) {
        this(0, 0, 10, i);
    }

    public TimeModel(int i, int i2, int i3, int i4) {
        this.f37594g = i;
        this.f37595h = i2;
        this.f37596i = i3;
        this.f37593f = i4;
        this.f37597j = m3845c(i);
        this.f37591d = new C8346a(59);
        this.f37592e = new C8346a(i4 == 1 ? 24 : 12);
    }

    protected TimeModel(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }

    /* renamed from: a */
    public static String m3847a(Resources resources, CharSequence charSequence) {
        return m3846b(resources, charSequence, "%02d");
    }

    /* renamed from: b */
    public static String m3846b(Resources resources, CharSequence charSequence, String str) {
        return String.format(resources.getConfiguration().locale, str, Integer.valueOf(Integer.parseInt(String.valueOf(charSequence))));
    }

    /* renamed from: c */
    private static int m3845c(int i) {
        return i >= 12 ? 1 : 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TimeModel)) {
            return false;
        }
        TimeModel timeModel = (TimeModel) obj;
        if (this.f37594g != timeModel.f37594g || this.f37595h != timeModel.f37595h || this.f37593f != timeModel.f37593f || this.f37596i != timeModel.f37596i) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f37593f), Integer.valueOf(this.f37594g), Integer.valueOf(this.f37595h), Integer.valueOf(this.f37596i)});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f37594g);
        parcel.writeInt(this.f37595h);
        parcel.writeInt(this.f37596i);
        parcel.writeInt(this.f37593f);
    }
}
