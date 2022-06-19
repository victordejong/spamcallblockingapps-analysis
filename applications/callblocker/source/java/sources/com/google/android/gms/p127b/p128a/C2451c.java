package com.google.android.gms.p127b.p128a;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.AbstractC2500h;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.b.a.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/b/a/c.class */
public final class C2451c extends AbstractC2663a implements AbstractC2500h {
    public static final Parcelable.Creator<C2451c> CREATOR = new C2450b();

    /* renamed from: a */
    private final int f6985a;

    /* renamed from: b */
    private int f6986b;

    /* renamed from: c */
    private Intent f6987c;

    public C2451c() {
        this(0, null);
    }

    public C2451c(int i, int i2, Intent intent) {
        this.f6985a = i;
        this.f6986b = i2;
        this.f6987c = intent;
    }

    private C2451c(int i, Intent intent) {
        this(2, 0, null);
    }

    @Override // com.google.android.gms.common.api.AbstractC2500h
    /* renamed from: b */
    public final Status mo14416b() {
        return this.f6986b == 0 ? Status.f7029a : Status.f7033e;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f6985a);
        C2664b.m13941a(parcel, 2, this.f6986b);
        C2664b.m13937a(parcel, 3, (Parcelable) this.f6987c, i, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
