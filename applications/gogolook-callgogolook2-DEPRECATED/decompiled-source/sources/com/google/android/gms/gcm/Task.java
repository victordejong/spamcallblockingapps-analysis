package com.google.android.gms.gcm;

import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.Collections;
import p081h.p203i.p204a.p224e.p254g.C7141j;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/gcm/Task.class */
public class Task implements ReflectedParcelable {

    /* renamed from: a */
    public final String f6708a;

    /* renamed from: b */
    public final String f6709b;

    /* renamed from: c */
    public final boolean f6710c;

    /* renamed from: d */
    public final boolean f6711d;

    @Deprecated
    public Task(Parcel parcel) {
        Log.e("Task", "Constructing a Task object using a parcel.");
        this.f6708a = parcel.readString();
        this.f6709b = parcel.readString();
        boolean z = false;
        this.f6710c = parcel.readInt() == 1;
        this.f6711d = parcel.readInt() == 1 ? true : z;
        Collections.emptySet();
        C7141j jVar = C7141j.f17243d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f6708a);
        parcel.writeString(this.f6709b);
        parcel.writeInt(this.f6710c ? 1 : 0);
        parcel.writeInt(this.f6711d ? 1 : 0);
    }
}
