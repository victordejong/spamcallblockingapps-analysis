package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p273n.C8489e;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/icing/zzp.class */
public final class zzp extends AbstractSafeParcelable implements AbstractC6835k {
    public static final Parcelable.Creator<zzp> CREATOR = new C8489e();

    /* renamed from: a */
    public Status f6838a;

    /* renamed from: b */
    public List<zzx> f6839b;
    @Deprecated

    /* renamed from: c */
    public String[] f6840c;

    public zzp() {
    }

    public zzp(Status status, List<zzx> list, String[] strArr) {
        this.f6838a = status;
        this.f6839b = list;
        this.f6840c = strArr;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k
    /* renamed from: b */
    public final Status mo21814b() {
        return this.f6838a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21220a(parcel, 1, (Parcelable) this.f6838a, i, false);
        C7031b.m21201c(parcel, 2, this.f6839b, false);
        C7031b.m21208a(parcel, 3, this.f6840c, false);
        C7031b.m21229a(parcel, a);
    }
}
