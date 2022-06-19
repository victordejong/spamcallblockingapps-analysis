package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.AbstractC6007i;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zaa.class */
public final class zaa extends AbstractSafeParcelable implements AbstractC6007i {
    public static final Parcelable.Creator<zaa> CREATOR = new C7942b();

    /* renamed from: d */
    final int f35910d;

    /* renamed from: e */
    private int f35911e;

    /* renamed from: f */
    private Intent f35912f;

    public zaa() {
        this(2, 0, null);
    }

    public zaa(int i, int i2, Intent intent) {
        this.f35910d = i;
        this.f35911e = i2;
        this.f35912f = intent;
    }

    @Override // com.google.android.gms.common.api.AbstractC6007i
    /* renamed from: e */
    public final Status mo5849e() {
        return this.f35911e == 0 ? Status.f19167d : Status.f19171h;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f35910d);
        C6170a.m16937k(parcel, 2, this.f35911e);
        C6170a.m16931q(parcel, 3, this.f35912f, i, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
