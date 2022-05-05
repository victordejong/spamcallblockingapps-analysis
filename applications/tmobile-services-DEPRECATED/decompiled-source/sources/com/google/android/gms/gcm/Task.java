package com.google.android.gms.gcm;

import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/Task.class */
public class Task implements ReflectedParcelable {

    /* renamed from: f */
    private final String f7740f;

    /* renamed from: g */
    private final String f7741g;

    /* renamed from: h */
    private final boolean f7742h;

    /* renamed from: i */
    private final boolean f7743i;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/Task$Builder.class */
    public static abstract class Builder {
        public Builder() {
            Collections.emptySet();
            zzl zzlVar = zzl.f7751d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public Task(Parcel parcel) {
        Log.e("Task", "Constructing a Task object using a parcel.");
        this.f7740f = parcel.readString();
        this.f7741g = parcel.readString();
        boolean z = false;
        this.f7742h = parcel.readInt() == 1;
        this.f7743i = parcel.readInt() == 1 ? true : z;
        Collections.emptySet();
        zzl zzlVar = zzl.f7751d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f7740f);
        parcel.writeString(this.f7741g);
        parcel.writeInt(this.f7742h ? 1 : 0);
        parcel.writeInt(this.f7743i ? 1 : 0);
    }
}
