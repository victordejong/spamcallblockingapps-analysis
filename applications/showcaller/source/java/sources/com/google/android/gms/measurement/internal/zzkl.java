package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzkl.class */
public final class zzkl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzkl> CREATOR = new C7852r9();

    /* renamed from: d */
    public final int f35876d;

    /* renamed from: e */
    public final String f35877e;

    /* renamed from: f */
    public final long f35878f;

    /* renamed from: g */
    public final Long f35879g;

    /* renamed from: h */
    public final String f35880h;

    /* renamed from: i */
    public final String f35881i;

    /* renamed from: j */
    public final Double f35882j;

    public zzkl(int i, String str, long j, Long l, Float f, String str2, String str3, Double d) {
        this.f35876d = i;
        this.f35877e = str;
        this.f35878f = j;
        this.f35879g = l;
        if (i == 1) {
            this.f35882j = f != null ? Double.valueOf(f.doubleValue()) : null;
        } else {
            this.f35882j = d;
        }
        this.f35880h = str2;
        this.f35881i = str3;
    }

    public zzkl(C7863s9 c7863s9) {
        this(c7863s9.f35683c, c7863s9.f35684d, c7863s9.f35685e, c7863s9.f35682b);
    }

    public zzkl(String str, long j, Object obj, String str2) {
        C6155o.m17022f(str);
        this.f35876d = 2;
        this.f35877e = str;
        this.f35878f = j;
        this.f35881i = str2;
        if (obj == null) {
            this.f35879g = null;
            this.f35882j = null;
            this.f35880h = null;
        } else if (obj instanceof Long) {
            this.f35879g = (Long) obj;
            this.f35882j = null;
            this.f35880h = null;
        } else if (obj instanceof String) {
            this.f35879g = null;
            this.f35882j = null;
            this.f35880h = (String) obj;
        } else if (!(obj instanceof Double)) {
            throw new IllegalArgumentException("User attribute given of un-supported type");
        } else {
            this.f35879g = null;
            this.f35882j = (Double) obj;
            this.f35880h = null;
        }
    }

    /* renamed from: k0 */
    public final Object m5862k0() {
        Long l = this.f35879g;
        if (l != null) {
            return l;
        }
        Double d = this.f35882j;
        if (d != null) {
            return d;
        }
        String str = this.f35880h;
        if (str == null) {
            return null;
        }
        return str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C7852r9.m6050a(this, parcel, i);
    }
}
