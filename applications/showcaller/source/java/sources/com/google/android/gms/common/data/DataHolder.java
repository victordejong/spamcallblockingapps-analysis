package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
@KeepName
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder.class */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    @RecentlyNonNull
    public static final Parcelable.Creator<DataHolder> CREATOR = new C6093c();

    /* renamed from: d */
    private static final C6090a f19395d = new C6092b(new String[0], null);

    /* renamed from: e */
    final int f19396e;

    /* renamed from: f */
    private final String[] f19397f;

    /* renamed from: g */
    Bundle f19398g;

    /* renamed from: h */
    private final CursorWindow[] f19399h;

    /* renamed from: i */
    private final int f19400i;

    /* renamed from: j */
    private final Bundle f19401j;

    /* renamed from: k */
    int[] f19402k;

    /* renamed from: l */
    int f19403l;

    /* renamed from: m */
    boolean f19404m = false;

    /* renamed from: n */
    private boolean f19405n = true;

    /* renamed from: com.google.android.gms.common.data.DataHolder$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder$a.class */
    public static class C6090a {

        /* renamed from: a */
        private final String[] f19406a;

        /* renamed from: b */
        private final ArrayList<HashMap<String, Object>> f19407b = new ArrayList<>();

        /* renamed from: c */
        private final HashMap<Object, Integer> f19408c = new HashMap<>();
    }

    public DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.f19396e = i;
        this.f19397f = strArr;
        this.f19399h = cursorWindowArr;
        this.f19400i = i2;
        this.f19401j = bundle;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (!this.f19404m) {
                this.f19404m = true;
                int i = 0;
                while (true) {
                    CursorWindow[] cursorWindowArr = this.f19399h;
                    if (i >= cursorWindowArr.length) {
                        break;
                    }
                    cursorWindowArr[i].close();
                    i++;
                }
            }
        }
    }

    protected final void finalize() {
        try {
            if (this.f19405n && this.f19399h.length > 0 && !m17212m0()) {
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

    @RecentlyNullable
    /* renamed from: k0 */
    public Bundle m17214k0() {
        return this.f19401j;
    }

    /* renamed from: l0 */
    public int m17213l0() {
        return this.f19400i;
    }

    /* renamed from: m0 */
    public boolean m17212m0() {
        boolean z;
        synchronized (this) {
            z = this.f19404m;
        }
        return z;
    }

    /* renamed from: n0 */
    public final void m17211n0() {
        this.f19398g = new Bundle();
        int i = 0;
        int i2 = 0;
        while (true) {
            String[] strArr = this.f19397f;
            if (i2 >= strArr.length) {
                break;
            }
            this.f19398g.putInt(strArr[i2], i2);
            i2++;
        }
        this.f19402k = new int[this.f19399h.length];
        int i3 = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.f19399h;
            if (i >= cursorWindowArr.length) {
                this.f19403l = i3;
                return;
            }
            this.f19402k[i] = i3;
            i3 += this.f19399h[i].getNumRows() - (i3 - cursorWindowArr[i].getStartPosition());
            i++;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16929s(parcel, 1, this.f19397f, false);
        C6170a.m16927u(parcel, 2, this.f19399h, i, false);
        C6170a.m16937k(parcel, 3, m17213l0());
        C6170a.m16943e(parcel, 4, m17214k0(), false);
        C6170a.m16937k(parcel, 1000, this.f19396e);
        C6170a.m16946b(parcel, m16947a);
        if ((i & 1) != 0) {
            close();
        }
    }
}
