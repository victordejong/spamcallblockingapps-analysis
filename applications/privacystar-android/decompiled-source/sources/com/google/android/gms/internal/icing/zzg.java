package com.google.android.gms.internal.icing;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.BitSet;
@SafeParcelable.Class(creator = "DocumentContentsCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzg.class */
public final class zzg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzg> CREATOR = new zzi();
    @SafeParcelable.Field(m344id = 4)
    private final Account account;
    @SafeParcelable.Field(m344id = 1)
    private final zzl[] zzi;
    @SafeParcelable.Field(m344id = 2)
    private final String zzj;
    @SafeParcelable.Field(m344id = 3)
    private final boolean zzk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(String str, boolean z, Account account, zzl... zzlVarArr) {
        this(zzlVarArr, str, z, account);
        if (zzlVarArr != null) {
            BitSet bitSet = new BitSet(zzr.zzy.length);
            for (zzl zzlVar : zzlVarArr) {
                int i = zzlVar.zzs;
                if (i != -1) {
                    if (bitSet.get(i)) {
                        String valueOf = String.valueOf(zzr.zza(i));
                        throw new IllegalArgumentException(valueOf.length() != 0 ? "Duplicate global search section type ".concat(valueOf) : new String("Duplicate global search section type "));
                    }
                    bitSet.set(i);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzg(@SafeParcelable.Param(m343id = 1) zzl[] zzlVarArr, @SafeParcelable.Param(m343id = 2) String str, @SafeParcelable.Param(m343id = 3) boolean z, @SafeParcelable.Param(m343id = 4) Account account) {
        this.zzi = zzlVarArr;
        this.zzj = str;
        this.zzk = z;
        this.account = account;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzg)) {
            return false;
        }
        zzg zzgVar = (zzg) obj;
        return Objects.equal(this.zzj, zzgVar.zzj) && Objects.equal(Boolean.valueOf(this.zzk), Boolean.valueOf(zzgVar.zzk)) && Objects.equal(this.account, zzgVar.account) && Arrays.equals(this.zzi, zzgVar.zzi);
    }

    public final int hashCode() {
        return Objects.hashCode(this.zzj, Boolean.valueOf(this.zzk), this.account, Integer.valueOf(Arrays.hashCode(this.zzi)));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedArray(parcel, 1, this.zzi, i, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzj, false);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzk);
        SafeParcelWriter.writeParcelable(parcel, 4, this.account, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
