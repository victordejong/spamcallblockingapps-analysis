package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.clearcut.ClearcutLogger;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.clearcut.zzha;
import com.google.android.gms.internal.clearcut.zzr;
import com.google.android.gms.phenotype.ExperimentTokens;
import java.util.Arrays;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/clearcut/zze.class */
public final class zze extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zze> CREATOR = new zzf();
    @SafeParcelable.Field

    /* renamed from: a */
    public zzr f22993a;
    @SafeParcelable.Field

    /* renamed from: b */
    public byte[] f22994b;
    @SafeParcelable.Field

    /* renamed from: c */
    public int[] f22995c;
    @SafeParcelable.Field

    /* renamed from: d */
    public String[] f22996d;
    @SafeParcelable.Field

    /* renamed from: e */
    public int[] f22997e;
    @SafeParcelable.Field

    /* renamed from: f */
    public byte[][] f22998f;
    @SafeParcelable.Field

    /* renamed from: g */
    public ExperimentTokens[] f22999g;
    @SafeParcelable.Field

    /* renamed from: h */
    public boolean f23000h;

    /* renamed from: i */
    public final zzha f23001i;

    /* renamed from: j */
    public final ClearcutLogger.zzb f23002j;

    /* renamed from: k */
    public final ClearcutLogger.zzb f23003k;

    public zze(zzr zzrVar, zzha zzhaVar, ClearcutLogger.zzb zzbVar, ClearcutLogger.zzb zzbVar2, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr, ExperimentTokens[] experimentTokensArr, boolean z) {
        this.f22993a = zzrVar;
        this.f23001i = zzhaVar;
        this.f23002j = zzbVar;
        this.f23003k = null;
        this.f22995c = iArr;
        this.f22996d = null;
        this.f22997e = iArr2;
        this.f22998f = null;
        this.f22999g = null;
        this.f23000h = z;
    }

    @SafeParcelable.Constructor
    public zze(@SafeParcelable.Param(id = 2) zzr zzrVar, @SafeParcelable.Param(id = 3) byte[] bArr, @SafeParcelable.Param(id = 4) int[] iArr, @SafeParcelable.Param(id = 5) String[] strArr, @SafeParcelable.Param(id = 6) int[] iArr2, @SafeParcelable.Param(id = 7) byte[][] bArr2, @SafeParcelable.Param(id = 8) boolean z, @SafeParcelable.Param(id = 9) ExperimentTokens[] experimentTokensArr) {
        this.f22993a = zzrVar;
        this.f22994b = bArr;
        this.f22995c = iArr;
        this.f22996d = strArr;
        this.f23001i = null;
        this.f23002j = null;
        this.f23003k = null;
        this.f22997e = iArr2;
        this.f22998f = bArr2;
        this.f22999g = experimentTokensArr;
        this.f23000h = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zze)) {
            return false;
        }
        zze zzeVar = (zze) obj;
        return Objects.m17295a(this.f22993a, zzeVar.f22993a) && Arrays.equals(this.f22994b, zzeVar.f22994b) && Arrays.equals(this.f22995c, zzeVar.f22995c) && Arrays.equals(this.f22996d, zzeVar.f22996d) && Objects.m17295a(this.f23001i, zzeVar.f23001i) && Objects.m17295a(this.f23002j, zzeVar.f23002j) && Objects.m17295a(this.f23003k, zzeVar.f23003k) && Arrays.equals(this.f22997e, zzeVar.f22997e) && Arrays.deepEquals(this.f22998f, zzeVar.f22998f) && Arrays.equals(this.f22999g, zzeVar.f22999g) && this.f23000h == zzeVar.f23000h;
    }

    public final int hashCode() {
        return Objects.m17294a(this.f22993a, this.f22994b, this.f22995c, this.f22996d, this.f23001i, this.f23002j, this.f23003k, this.f22997e, this.f22998f, this.f22999g, Boolean.valueOf(this.f23000h));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LogEventParcelable[");
        sb.append(this.f22993a);
        sb.append(", LogEventBytes: ");
        sb.append(this.f22994b == null ? null : new String(this.f22994b));
        sb.append(", TestCodes: ");
        sb.append(Arrays.toString(this.f22995c));
        sb.append(", MendelPackages: ");
        sb.append(Arrays.toString(this.f22996d));
        sb.append(", LogEvent: ");
        sb.append(this.f23001i);
        sb.append(", ExtensionProducer: ");
        sb.append(this.f23002j);
        sb.append(", VeProducer: ");
        sb.append(this.f23003k);
        sb.append(", ExperimentIDs: ");
        sb.append(Arrays.toString(this.f22997e));
        sb.append(", ExperimentTokens: ");
        sb.append(Arrays.toString(this.f22998f));
        sb.append(", ExperimentTokensParcelables: ");
        sb.append(Arrays.toString(this.f22999g));
        sb.append(", AddPhenotypeExperimentTokens: ");
        sb.append(this.f23000h);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17226a(parcel, 2, (Parcelable) this.f22993a, i, false);
        SafeParcelWriter.m17217a(parcel, 3, this.f22994b, false);
        SafeParcelWriter.m17216a(parcel, 4, this.f22995c, false);
        SafeParcelWriter.m17214a(parcel, 5, this.f22996d, false);
        SafeParcelWriter.m17216a(parcel, 6, this.f22997e, false);
        SafeParcelWriter.m17213a(parcel, 7, this.f22998f, false);
        SafeParcelWriter.m17218a(parcel, 8, this.f23000h);
        SafeParcelWriter.m17215a(parcel, 9, (Parcelable[]) this.f22999g, i, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
