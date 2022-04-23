package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
@KeepName
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder.class */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    public static final Parcelable.Creator<DataHolder> CREATOR = new b();
    private static final a l = new a(new String[0]) { // from class: com.google.android.gms.common.data.DataHolder.1
    };

    /* renamed from: a  reason: collision with root package name */
    final int f3961a;

    /* renamed from: b  reason: collision with root package name */
    final String[] f3962b;
    Bundle c;
    final CursorWindow[] d;
    final int e;
    final Bundle f;
    int[] g;
    int h;
    private Object j;
    boolean i = false;
    private boolean k = true;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder$a.class */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String[] f3963a;

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<HashMap<String, Object>> f3964b;
        private final String c;
        private final HashMap<Object, Integer> d;
        private boolean e;
        private String f;

        private a(String[] strArr) {
            this.f3963a = (String[]) b.a(strArr);
            this.f3964b = new ArrayList<>();
            this.c = null;
            this.d = new HashMap<>();
            this.e = false;
            this.f = null;
        }

        /* synthetic */ a(String[] strArr, byte b2) {
            this(strArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.f3961a = i;
        this.f3962b = strArr;
        this.d = cursorWindowArr;
        this.e = i2;
        this.f = bundle;
    }

    private boolean b() {
        boolean z;
        synchronized (this) {
            z = this.i;
        }
        return z;
    }

    public final void a() {
        this.c = new Bundle();
        for (int i = 0; i < this.f3962b.length; i++) {
            this.c.putInt(this.f3962b[i], i);
        }
        this.g = new int[this.d.length];
        int i2 = 0;
        for (int i3 = 0; i3 < this.d.length; i3++) {
            this.g[i3] = i2;
            i2 += this.d[i3].getNumRows() - (i2 - this.d[i3].getStartPosition());
        }
        this.h = i2;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            if (!this.i) {
                this.i = true;
                for (int i = 0; i < this.d.length; i++) {
                    this.d[i].close();
                }
            }
        }
    }

    protected final void finalize() {
        String obj;
        try {
            if (this.k && this.d.length > 0 && !b()) {
                if (this.j == null) {
                    String valueOf = String.valueOf(toString());
                    obj = valueOf.length() != 0 ? "internal object: ".concat(valueOf) : new String("internal object: ");
                } else {
                    obj = this.j.toString();
                }
                Log.e("DataBuffer", new StringBuilder(String.valueOf(obj).length() + 161).append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (").append(obj).append(")").toString());
                close();
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        b.a(this, parcel, i);
    }
}
