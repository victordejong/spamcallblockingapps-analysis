package com.google.android.gms.common.data;

import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
@KeepForSdk
@KeepName
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder.class */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    @KeepForSdk
    public static final Parcelable.Creator<DataHolder> CREATOR = new zac();
    @SafeParcelable.VersionField

    /* renamed from: f */
    private final int f7390f;
    @SafeParcelable.Field

    /* renamed from: g */
    private final String[] f7391g;

    /* renamed from: h */
    private Bundle f7392h;
    @SafeParcelable.Field

    /* renamed from: i */
    private final CursorWindow[] f7393i;
    @SafeParcelable.Field

    /* renamed from: j */
    private final int f7394j;
    @SafeParcelable.Field

    /* renamed from: k */
    private final Bundle f7395k;

    /* renamed from: l */
    private int[] f7396l;

    /* renamed from: m */
    private int f7397m;

    /* renamed from: n */
    private boolean f7398n = false;

    /* renamed from: o */
    private boolean f7399o = true;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder$Builder.class */
    public static class Builder {
        private Builder(String[] strArr, String str) {
            Preconditions.m14523k(strArr);
            new ArrayList();
            new HashMap();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ Builder(String[] strArr, String str, zab zabVar) {
            this(strArr, null);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder$zaa.class */
    public static final class zaa extends RuntimeException {
    }

    static {
        new zab(new String[0], null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public DataHolder(@SafeParcelable.Param(id = 1000) int i, @SafeParcelable.Param(id = 1) String[] strArr, @SafeParcelable.Param(id = 2) CursorWindow[] cursorWindowArr, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) Bundle bundle) {
        this.f7390f = i;
        this.f7391g = strArr;
        this.f7393i = cursorWindowArr;
        this.f7394j = i2;
        this.f7395k = bundle;
    }

    /* renamed from: j0 */
    private final void m14630j0(String str, int i) {
        Bundle bundle = this.f7392h;
        if (bundle == null || !bundle.containsKey(str)) {
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "No such column: ".concat(valueOf) : new String("No such column: "));
        } else if (isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        } else if (i < 0 || i >= this.f7397m) {
            throw new CursorIndexOutOfBoundsException(i, this.f7397m);
        }
    }

    @KeepForSdk
    /* renamed from: B */
    public final byte[] m14635B(String str, int i, int i2) {
        m14630j0(str, i);
        return this.f7393i[i2].getBlob(i, this.f7392h.getInt(str));
    }

    @KeepForSdk
    /* renamed from: I */
    public final Bundle m14634I() {
        return this.f7395k;
    }

    @KeepForSdk
    /* renamed from: W */
    public final int m14633W() {
        return this.f7394j;
    }

    @KeepForSdk
    /* renamed from: Y */
    public final String m14632Y(String str, int i, int i2) {
        m14630j0(str, i);
        return this.f7393i[i2].getString(i, this.f7392h.getInt(str));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    @KeepForSdk
    public final void close() {
        synchronized (this) {
            if (!this.f7398n) {
                this.f7398n = true;
                for (int i = 0; i < this.f7393i.length; i++) {
                    this.f7393i[i].close();
                }
            }
        }
    }

    @KeepForSdk
    /* renamed from: d0 */
    public final int m14631d0(int i) {
        int i2;
        int i3 = 0;
        Preconditions.m14520n(i >= 0 && i < this.f7397m);
        while (true) {
            int[] iArr = this.f7396l;
            i2 = i3;
            if (i3 >= iArr.length) {
                break;
            } else if (i < iArr[i3]) {
                i2 = i3 - 1;
                break;
            } else {
                i3++;
            }
        }
        int i4 = i2;
        if (i2 == this.f7396l.length) {
            i4 = i2 - 1;
        }
        return i4;
    }

    protected final void finalize() throws Throwable {
        try {
            if (this.f7399o && this.f7393i.length > 0 && !isClosed()) {
                close();
                String obj = toString();
                StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 178);
                sb.append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ");
                sb.append(obj);
                sb.append(")");
                Log.e("DataBuffer", sb.toString());
            }
        } finally {
            super.finalize();
        }
    }

    @KeepForSdk
    public final int getCount() {
        return this.f7397m;
    }

    @KeepForSdk
    public final boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.f7398n;
        }
        return z;
    }

    /* renamed from: u0 */
    public final void m14629u0() {
        this.f7392h = new Bundle();
        int i = 0;
        int i2 = 0;
        while (true) {
            String[] strArr = this.f7391g;
            if (i2 >= strArr.length) {
                break;
            }
            this.f7392h.putInt(strArr[i2], i2);
            i2++;
        }
        this.f7396l = new int[this.f7393i.length];
        int i3 = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.f7393i;
            if (i < cursorWindowArr.length) {
                this.f7396l[i] = i3;
                i3 += this.f7393i[i].getNumRows() - (i3 - cursorWindowArr[i].getStartPosition());
                i++;
            } else {
                this.f7397m = i3;
                return;
            }
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14446r(parcel, 1, this.f7391g, false);
        SafeParcelWriter.m14444t(parcel, 2, this.f7393i, i, false);
        SafeParcelWriter.m14453k(parcel, 3, m14633W());
        SafeParcelWriter.m14459e(parcel, 4, m14634I(), false);
        SafeParcelWriter.m14453k(parcel, 1000, this.f7390f);
        SafeParcelWriter.m14462b(parcel, a);
        if ((i & 1) != 0) {
            close();
        }
    }
}
