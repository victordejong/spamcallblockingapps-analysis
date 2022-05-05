package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p285m.p287b.C9002j4;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzl.class */
public final class zzl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzl> CREATOR = new C9002j4();

    /* renamed from: a */
    public String f7176a;

    /* renamed from: b */
    public String f7177b;

    /* renamed from: c */
    public zzfh f7178c;

    /* renamed from: d */
    public long f7179d;

    /* renamed from: e */
    public boolean f7180e;

    /* renamed from: f */
    public String f7181f;

    /* renamed from: g */
    public zzad f7182g;

    /* renamed from: h */
    public long f7183h;

    /* renamed from: i */
    public zzad f7184i;

    /* renamed from: j */
    public long f7185j;

    /* renamed from: k */
    public zzad f7186k;

    public zzl(zzl zzlVar) {
        C7021t.m21290a(zzlVar);
        this.f7176a = zzlVar.f7176a;
        this.f7177b = zzlVar.f7177b;
        this.f7178c = zzlVar.f7178c;
        this.f7179d = zzlVar.f7179d;
        this.f7180e = zzlVar.f7180e;
        this.f7181f = zzlVar.f7181f;
        this.f7182g = zzlVar.f7182g;
        this.f7183h = zzlVar.f7183h;
        this.f7184i = zzlVar.f7184i;
        this.f7185j = zzlVar.f7185j;
        this.f7186k = zzlVar.f7186k;
    }

    public zzl(String str, String str2, zzfh zzfhVar, long j, boolean z, String str3, zzad zzadVar, long j2, zzad zzadVar2, long j3, zzad zzadVar3) {
        this.f7176a = str;
        this.f7177b = str2;
        this.f7178c = zzfhVar;
        this.f7179d = j;
        this.f7180e = z;
        this.f7181f = str3;
        this.f7182g = zzadVar;
        this.f7183h = j2;
        this.f7184i = zzadVar2;
        this.f7185j = j3;
        this.f7186k = zzadVar3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 2, this.f7176a, false);
        C7031b.m21215a(parcel, 3, this.f7177b, false);
        C7031b.m21220a(parcel, 4, (Parcelable) this.f7178c, i, false);
        C7031b.m21224a(parcel, 5, this.f7179d);
        C7031b.m21212a(parcel, 6, this.f7180e);
        C7031b.m21215a(parcel, 7, this.f7181f, false);
        C7031b.m21220a(parcel, 8, (Parcelable) this.f7182g, i, false);
        C7031b.m21224a(parcel, 9, this.f7183h);
        C7031b.m21220a(parcel, 10, (Parcelable) this.f7184i, i, false);
        C7031b.m21224a(parcel, 11, this.f7185j);
        C7031b.m21220a(parcel, 12, (Parcelable) this.f7186k, i, false);
        C7031b.m21229a(parcel, a);
    }
}
