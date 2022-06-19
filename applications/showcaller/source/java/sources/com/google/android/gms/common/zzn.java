package com.google.android.gms.common;

import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzn.class */
public final class zzn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzn> CREATOR = new C6251y();

    /* renamed from: d */
    private final String f19743d;

    /* renamed from: e */
    private final boolean f19744e;

    /* renamed from: f */
    private final boolean f19745f;

    /* renamed from: g */
    private final Context f19746g;

    /* renamed from: h */
    private final boolean f19747h;

    public zzn(String str, boolean z, boolean z2, IBinder iBinder, boolean z3) {
        this.f19743d = str;
        this.f19744e = z;
        this.f19745f = z2;
        this.f19746g = (Context) BinderC6255b.m16745J0(AbstractC6253a.AbstractBinderC6254a.m16746D0(iBinder));
        this.f19747h = z3;
    }

    /* JADX WARN: Type inference failed for: r2v8, types: [com.google.android.gms.dynamic.a, android.os.IBinder] */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 1, this.f19743d, false);
        C6170a.m16945c(parcel, 2, this.f19744e);
        C6170a.m16945c(parcel, 3, this.f19745f);
        C6170a.m16938j(parcel, 4, BinderC6255b.m16744m2(this.f19746g), false);
        C6170a.m16945c(parcel, 5, this.f19747h);
        C6170a.m16946b(parcel, m16947a);
    }
}
