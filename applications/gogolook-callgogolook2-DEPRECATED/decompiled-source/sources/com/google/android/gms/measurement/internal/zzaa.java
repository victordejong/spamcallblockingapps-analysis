package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Iterator;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p285m.p287b.C8948b;
import p081h.p203i.p204a.p224e.p285m.p287b.C8954c;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzaa.class */
public final class zzaa extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzaa> CREATOR = new C8954c();

    /* renamed from: a */
    public final Bundle f7146a;

    public zzaa(Bundle bundle) {
        this.f7146a = bundle;
    }

    /* renamed from: a */
    public final Object m31662a(String str) {
        return this.f7146a.get(str);
    }

    /* renamed from: b */
    public final Long m31661b(String str) {
        return Long.valueOf(this.f7146a.getLong(str));
    }

    /* renamed from: c */
    public final Bundle m31660c() {
        return new Bundle(this.f7146a);
    }

    /* renamed from: c */
    public final String m31659c(String str) {
        return this.f7146a.getString(str);
    }

    /* renamed from: d */
    public final Double m31658d(String str) {
        return Double.valueOf(this.f7146a.getDouble(str));
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new C8948b(this);
    }

    public final int size() {
        return this.f7146a.size();
    }

    public final String toString() {
        return this.f7146a.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21223a(parcel, 2, m31660c(), false);
        C7031b.m21229a(parcel, a);
    }
}
