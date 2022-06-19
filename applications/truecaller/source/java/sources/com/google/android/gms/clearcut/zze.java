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
import p193e.p1432d.p1439c.p1440a.C22128a;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/clearcut/zze.class */
public final class zze extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zze> CREATOR = new zzf();
    @SafeParcelable.Field

    /* renamed from: a */
    public zzr f5604a;
    @SafeParcelable.Field

    /* renamed from: b */
    public byte[] f5605b;
    @SafeParcelable.Field

    /* renamed from: c */
    public int[] f5606c;
    @SafeParcelable.Field

    /* renamed from: d */
    public String[] f5607d;
    @SafeParcelable.Field

    /* renamed from: e */
    public int[] f5608e;
    @SafeParcelable.Field

    /* renamed from: f */
    public byte[][] f5609f;
    @SafeParcelable.Field

    /* renamed from: g */
    public ExperimentTokens[] f5610g;
    @SafeParcelable.Field

    /* renamed from: h */
    public boolean f5611h;

    /* renamed from: i */
    public final zzha f5612i;

    /* renamed from: j */
    public final ClearcutLogger.zzb f5613j;

    public zze(zzr zzrVar, zzha zzhaVar, ClearcutLogger.zzb zzbVar, int[] iArr, int[] iArr2, boolean z) {
        this.f5604a = zzrVar;
        this.f5612i = zzhaVar;
        this.f5613j = null;
        this.f5606c = null;
        this.f5607d = null;
        this.f5608e = null;
        this.f5609f = null;
        this.f5610g = null;
        this.f5611h = z;
    }

    @SafeParcelable.Constructor
    public zze(@SafeParcelable.Param(id = 2) zzr zzrVar, @SafeParcelable.Param(id = 3) byte[] bArr, @SafeParcelable.Param(id = 4) int[] iArr, @SafeParcelable.Param(id = 5) String[] strArr, @SafeParcelable.Param(id = 6) int[] iArr2, @SafeParcelable.Param(id = 7) byte[][] bArr2, @SafeParcelable.Param(id = 8) boolean z, @SafeParcelable.Param(id = 9) ExperimentTokens[] experimentTokensArr) {
        this.f5604a = zzrVar;
        this.f5605b = bArr;
        this.f5606c = iArr;
        this.f5607d = strArr;
        this.f5612i = null;
        this.f5613j = null;
        this.f5608e = iArr2;
        this.f5609f = bArr2;
        this.f5610g = experimentTokensArr;
        this.f5611h = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zze)) {
            return false;
        }
        zze zzeVar = (zze) obj;
        return Objects.m38910a(this.f5604a, zzeVar.f5604a) && Arrays.equals(this.f5605b, zzeVar.f5605b) && Arrays.equals(this.f5606c, zzeVar.f5606c) && Arrays.equals(this.f5607d, zzeVar.f5607d) && Objects.m38910a(this.f5612i, zzeVar.f5612i) && Objects.m38910a(this.f5613j, zzeVar.f5613j) && Objects.m38910a(null, null) && Arrays.equals(this.f5608e, zzeVar.f5608e) && Arrays.deepEquals(this.f5609f, zzeVar.f5609f) && Arrays.equals(this.f5610g, zzeVar.f5610g) && this.f5611h == zzeVar.f5611h;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5604a, this.f5605b, this.f5606c, this.f5607d, this.f5612i, this.f5613j, null, this.f5608e, this.f5609f, this.f5610g, Boolean.valueOf(this.f5611h)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LogEventParcelable[");
        sb.append(this.f5604a);
        sb.append(", LogEventBytes: ");
        sb.append(this.f5605b == null ? null : new String(this.f5605b));
        sb.append(", TestCodes: ");
        sb.append(Arrays.toString(this.f5606c));
        sb.append(", MendelPackages: ");
        sb.append(Arrays.toString(this.f5607d));
        sb.append(", LogEvent: ");
        sb.append(this.f5612i);
        sb.append(", ExtensionProducer: ");
        sb.append(this.f5613j);
        sb.append(", VeProducer: ");
        sb.append((Object) null);
        sb.append(", ExperimentIDs: ");
        sb.append(Arrays.toString(this.f5608e));
        sb.append(", ExperimentTokens: ");
        sb.append(Arrays.toString(this.f5609f));
        sb.append(", ExperimentTokensParcelables: ");
        sb.append(Arrays.toString(this.f5610g));
        sb.append(", AddPhenotypeExperimentTokens: ");
        return C22128a.m8590o(sb, this.f5611h, "]");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38847p(parcel, 2, this.f5604a, i, false);
        SafeParcelWriter.m38859d(parcel, 3, this.f5605b, false);
        SafeParcelWriter.m38852k(parcel, 4, this.f5606c, false);
        SafeParcelWriter.m38845r(parcel, 5, this.f5607d, false);
        SafeParcelWriter.m38852k(parcel, 6, this.f5608e, false);
        SafeParcelWriter.m38858e(parcel, 7, this.f5609f, false);
        boolean z = this.f5611h;
        parcel.writeInt(262152);
        parcel.writeInt(z ? 1 : 0);
        SafeParcelWriter.m38843t(parcel, 9, this.f5610g, i, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
