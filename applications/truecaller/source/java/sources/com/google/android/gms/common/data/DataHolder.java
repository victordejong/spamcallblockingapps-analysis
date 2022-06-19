package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
@KeepForSdk
@KeepName
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/data/DataHolder.class */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    @RecentlyNonNull
    @KeepForSdk
    public static final Parcelable.Creator<DataHolder> CREATOR = new zad();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f5920a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String[] f5921b;

    /* renamed from: c */
    public Bundle f5922c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final CursorWindow[] f5923d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final int f5924e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final Bundle f5925f;

    /* renamed from: g */
    public int[] f5926g;

    /* renamed from: h */
    public int f5927h;

    /* renamed from: i */
    public boolean f5928i = false;

    /* renamed from: j */
    public boolean f5929j = true;

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/data/DataHolder$Builder.class */
    public static class Builder {
    }

    static {
        Objects.requireNonNull(new String[0], "null reference");
        new ArrayList();
        new HashMap();
    }

    @SafeParcelable.Constructor
    public DataHolder(@SafeParcelable.Param(id = 1000) int i, @SafeParcelable.Param(id = 1) String[] strArr, @SafeParcelable.Param(id = 2) CursorWindow[] cursorWindowArr, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) Bundle bundle) {
        this.f5920a = i;
        this.f5921b = strArr;
        this.f5923d = cursorWindowArr;
        this.f5924e = i2;
        this.f5925f = bundle;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    @KeepForSdk
    public void close() {
        synchronized (this) {
            if (!this.f5928i) {
                this.f5928i = true;
                int i = 0;
                while (true) {
                    CursorWindow[] cursorWindowArr = this.f5923d;
                    if (i >= cursorWindowArr.length) {
                        break;
                    }
                    cursorWindowArr[i].close();
                    i++;
                }
            }
        }
    }

    public final void finalize() throws Throwable {
        boolean z;
        try {
            if (this.f5929j && this.f5923d.length > 0) {
                synchronized (this) {
                    z = this.f5928i;
                }
                if (!z) {
                    close();
                    String.valueOf(toString()).length();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38845r(parcel, 1, this.f5921b, false);
        SafeParcelWriter.m38843t(parcel, 2, this.f5923d, i, false);
        int i2 = this.f5924e;
        parcel.writeInt(262147);
        parcel.writeInt(i2);
        SafeParcelWriter.m38860c(parcel, 4, this.f5925f, false);
        int i3 = this.f5920a;
        parcel.writeInt(263144);
        parcel.writeInt(i3);
        SafeParcelWriter.m38840w(parcel, m38841v);
        if ((i & 1) != 0) {
            close();
        }
    }
}
