package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Locale;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p273n.C8494j;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/icing/zzx.class */
public final class zzx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzx> CREATOR = new C8494j();

    /* renamed from: a */
    public final zzj f6851a;

    /* renamed from: b */
    public final long f6852b;

    /* renamed from: c */
    public int f6853c;

    /* renamed from: d */
    public final String f6854d;

    /* renamed from: e */
    public final zzg f6855e;

    /* renamed from: f */
    public final boolean f6856f;

    /* renamed from: g */
    public int f6857g;

    /* renamed from: h */
    public int f6858h;

    public zzx(zzj zzjVar, long j, int i, String str, zzg zzgVar, boolean z, int i2, int i3) {
        this.f6851a = zzjVar;
        this.f6852b = j;
        this.f6853c = i;
        this.f6854d = str;
        this.f6855e = zzgVar;
        this.f6856f = z;
        this.f6857g = i2;
        this.f6858h = i3;
    }

    public final String toString() {
        return String.format(Locale.US, "UsageInfo[documentId=%s, timestamp=%d, usageType=%d, status=%d]", this.f6851a, Long.valueOf(this.f6852b), Integer.valueOf(this.f6853c), Integer.valueOf(this.f6858h));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21220a(parcel, 1, (Parcelable) this.f6851a, i, false);
        C7031b.m21224a(parcel, 2, this.f6852b);
        C7031b.m21225a(parcel, 3, this.f6853c);
        C7031b.m21215a(parcel, 4, this.f6854d, false);
        C7031b.m21220a(parcel, 5, (Parcelable) this.f6855e, i, false);
        C7031b.m21212a(parcel, 6, this.f6856f);
        C7031b.m21225a(parcel, 7, this.f6857g);
        C7031b.m21225a(parcel, 8, this.f6858h);
        C7031b.m21229a(parcel, a);
    }
}
