package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Locale;
@ShowFirstParty
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzw.class */
public final class zzw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzw> CREATOR = new zzy();
    @SafeParcelable.Field

    /* renamed from: f */
    private final zzi f8159f;
    @SafeParcelable.Field

    /* renamed from: g */
    private final long f8160g;
    @SafeParcelable.Field

    /* renamed from: h */
    private int f8161h;
    @SafeParcelable.Field

    /* renamed from: i */
    private final String f8162i;
    @SafeParcelable.Field

    /* renamed from: j */
    private final zzh f8163j;
    @SafeParcelable.Field

    /* renamed from: k */
    private final boolean f8164k;
    @SafeParcelable.Field

    /* renamed from: l */
    private int f8165l;
    @SafeParcelable.Field

    /* renamed from: m */
    private int f8166m;
    @SafeParcelable.Field

    /* renamed from: n */
    private final String f8167n;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzw(@SafeParcelable.Param(id = 1) zzi zziVar, @SafeParcelable.Param(id = 2) long j, @SafeParcelable.Param(id = 3) int i, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) zzh zzhVar, @SafeParcelable.Param(id = 6) boolean z, @SafeParcelable.Param(id = 7) int i2, @SafeParcelable.Param(id = 8) int i3, @SafeParcelable.Param(id = 9) String str2) {
        this.f8159f = zziVar;
        this.f8160g = j;
        this.f8161h = i;
        this.f8162i = str;
        this.f8163j = zzhVar;
        this.f8164k = z;
        this.f8165l = i2;
        this.f8166m = i3;
        this.f8167n = str2;
    }

    public final String toString() {
        return String.format(Locale.US, "UsageInfo[documentId=%s, timestamp=%d, usageType=%d, status=%d]", this.f8159f, Long.valueOf(this.f8160g), Integer.valueOf(this.f8161h), Integer.valueOf(this.f8166m));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14448p(parcel, 1, this.f8159f, i, false);
        SafeParcelWriter.m14451m(parcel, 2, this.f8160g);
        SafeParcelWriter.m14453k(parcel, 3, this.f8161h);
        SafeParcelWriter.m14447q(parcel, 4, this.f8162i, false);
        SafeParcelWriter.m14448p(parcel, 5, this.f8163j, i, false);
        SafeParcelWriter.m14461c(parcel, 6, this.f8164k);
        SafeParcelWriter.m14453k(parcel, 7, this.f8165l);
        SafeParcelWriter.m14453k(parcel, 8, this.f8166m);
        SafeParcelWriter.m14447q(parcel, 9, this.f8167n, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
