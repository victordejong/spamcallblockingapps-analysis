package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.media2.exoplayer.external.extractor.p007ts.H262Reader;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import p081h.p203i.p204a.p224e.p235d.p238l.C6958b;
import p081h.p203i.p204a.p224e.p235d.p238l.C6959c;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
@KeepName
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/data/DataHolder.class */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    public static final Parcelable.Creator<DataHolder> CREATOR = new C6959c();

    /* renamed from: a */
    public final int f6543a;

    /* renamed from: b */
    public final String[] f6544b;

    /* renamed from: c */
    public Bundle f6545c;

    /* renamed from: d */
    public final CursorWindow[] f6546d;

    /* renamed from: e */
    public final int f6547e;

    /* renamed from: f */
    public final Bundle f6548f;

    /* renamed from: g */
    public int[] f6549g;

    /* renamed from: h */
    public boolean f6550h = false;

    /* renamed from: i */
    public boolean f6551i = true;

    /* renamed from: com.google.android.gms.common.data.DataHolder$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/data/DataHolder$a.class */
    public static class C3562a {
        public C3562a(String[] strArr, String str) {
            C7021t.m21290a(strArr);
            new ArrayList();
            new HashMap();
        }

        public /* synthetic */ C3562a(String[] strArr, String str, C6958b bVar) {
            this(strArr, null);
        }
    }

    static {
        new C6958b(new String[0], null);
    }

    public DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.f6543a = i;
        this.f6544b = strArr;
        this.f6546d = cursorWindowArr;
        this.f6547e = i2;
        this.f6548f = bundle;
    }

    /* renamed from: H */
    public final int m31964H() {
        return this.f6547e;
    }

    /* renamed from: I */
    public final void m31963I() {
        this.f6545c = new Bundle();
        int i = 0;
        int i2 = 0;
        while (true) {
            String[] strArr = this.f6544b;
            if (i2 >= strArr.length) {
                break;
            }
            this.f6545c.putInt(strArr[i2], i2);
            i2++;
        }
        this.f6549g = new int[this.f6546d.length];
        int i3 = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.f6546d;
            if (i < cursorWindowArr.length) {
                this.f6549g[i] = i3;
                i3 += this.f6546d[i].getNumRows() - (i3 - cursorWindowArr[i].getStartPosition());
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: c */
    public final Bundle m31962c() {
        return this.f6548f;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            if (!this.f6550h) {
                this.f6550h = true;
                for (int i = 0; i < this.f6546d.length; i++) {
                    this.f6546d[i].close();
                }
            }
        }
    }

    public final void finalize() throws Throwable {
        try {
            if (this.f6551i && this.f6546d.length > 0 && !isClosed()) {
                close();
                String obj = toString();
                StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + H262Reader.START_USER_DATA);
                sb.append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ");
                sb.append(obj);
                sb.append(")");
                Log.e("DataBuffer", sb.toString());
            }
        } finally {
            super.finalize();
        }
    }

    public final boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.f6550h;
        }
        return z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21208a(parcel, 1, this.f6544b, false);
        C7031b.m21209a(parcel, 2, (Parcelable[]) this.f6546d, i, false);
        C7031b.m21225a(parcel, 3, m31964H());
        C7031b.m21223a(parcel, 4, m31962c(), false);
        C7031b.m21225a(parcel, 1000, this.f6543a);
        C7031b.m21229a(parcel, a);
        if ((i & 1) != 0) {
            close();
        }
    }
}
