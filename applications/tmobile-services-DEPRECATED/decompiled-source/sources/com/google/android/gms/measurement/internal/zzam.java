package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Iterator;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzam.class */
public final class zzam extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzam> CREATOR = new zzao();
    @SafeParcelable.Field

    /* renamed from: f */
    private final Bundle f8868f;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzam(@SafeParcelable.Param(id = 2) Bundle bundle) {
        this.f8868f = bundle;
    }

    /* renamed from: B */
    public final int m11704B() {
        return this.f8868f.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: W */
    public final Object m11702W(String str) {
        return this.f8868f.get(str);
    }

    /* renamed from: Y */
    public final Bundle m11701Y() {
        return new Bundle(this.f8868f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d0 */
    public final Long m11700d0(String str) {
        return Long.valueOf(this.f8868f.getLong(str));
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new zzap(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j0 */
    public final Double m11699j0(String str) {
        return Double.valueOf(this.f8868f.getDouble(str));
    }

    public final String toString() {
        return this.f8868f.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u0 */
    public final String m11698u0(String str) {
        return this.f8868f.getString(str);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14459e(parcel, 2, m11701Y(), false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
