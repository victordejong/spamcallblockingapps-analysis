package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p264e.C7516d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzaf.class */
public final class zzaf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaf> CREATOR = new C7516d();

    /* renamed from: a */
    public final int f6801a = 1;

    /* renamed from: b */
    public final String f6802b;

    /* renamed from: c */
    public final byte[] f6803c;

    public zzaf(int i, String str, byte[] bArr) {
        C7021t.m21290a(str);
        this.f6802b = str;
        C7021t.m21290a(bArr);
        this.f6803c = bArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6801a);
        C7031b.m21215a(parcel, 2, this.f6802b, false);
        C7031b.m21211a(parcel, 3, this.f6803c, false);
        C7031b.m21229a(parcel, a);
    }
}
