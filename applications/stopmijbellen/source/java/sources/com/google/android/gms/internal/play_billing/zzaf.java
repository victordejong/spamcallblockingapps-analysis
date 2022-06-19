package com.google.android.gms.internal.play_billing;

import java.util.Arrays;
import java.util.Objects;
import javax.annotation.CheckForNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/play_billing/zzaf.class */
public final class zzaf extends zzx {
    public static final zzx zza = new zzaf(null, new Object[0], 0);
    public final transient Object[] zzb;
    @CheckForNull
    private final transient Object zzc;
    private final transient int zzd;

    private zzaf(@CheckForNull Object obj, Object[] objArr, int i) {
        this.zzc = obj;
        this.zzb = objArr;
        this.zzd = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v149, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v22, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v45, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v95, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r1v9 */
    public static zzaf zzf(int i, Object[] objArr, zzw zzwVar) {
        if (i == 0) {
            return (zzaf) zza;
        }
        byte[] bArr = null;
        if (i == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            Object obj2 = objArr[1];
            Objects.requireNonNull(obj2);
            zzp.zza(obj, obj2);
            return new zzaf(null, objArr, 1);
        }
        zzm.zzb(i, objArr.length >> 1, "index");
        int max = Math.max(i, 2);
        int i2 = 1073741824;
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1);
            while (true) {
                highestOneBit += highestOneBit;
                i2 = highestOneBit;
                if (highestOneBit * 0.7d >= max) {
                    break;
                }
            }
        } else if (max >= 1073741824) {
            throw new IllegalArgumentException("collection too large");
        }
        if (i == 1) {
            Object obj3 = objArr[0];
            Objects.requireNonNull(obj3);
            Object obj4 = objArr[1];
            Objects.requireNonNull(obj4);
            zzp.zza(obj3, obj4);
        } else {
            int i3 = i2 - 1;
            if (i2 <= 128) {
                byte[] bArr2 = new byte[i2];
                Arrays.fill(bArr2, (byte) -1);
                int i4 = 0;
                zzv zzvVar = null;
                for (int i5 = 0; i5 < i; i5++) {
                    int i6 = i5 + i5;
                    int i7 = i4 + i4;
                    Object obj5 = objArr[i6];
                    Objects.requireNonNull(obj5);
                    Object obj6 = objArr[i6 ^ 1];
                    Objects.requireNonNull(obj6);
                    zzp.zza(obj5, obj6);
                    int zza2 = zzq.zza(obj5.hashCode());
                    while (true) {
                        int i8 = zza2 & i3;
                        int i9 = bArr2[i8] & 255;
                        if (i9 == 255) {
                            bArr2[i8] = (byte) i7;
                            if (i4 < i5) {
                                objArr[i7] = obj5;
                                objArr[i7 ^ 1] = obj6;
                            }
                            i4++;
                        } else if (obj5.equals(objArr[i9])) {
                            int i10 = i9 ^ 1;
                            Object obj7 = objArr[i10];
                            Objects.requireNonNull(obj7);
                            zzvVar = new zzv(obj5, obj6, obj7);
                            objArr[i10] = obj6;
                            break;
                        } else {
                            zza2 = i8 + 1;
                        }
                    }
                }
                bArr = i4 == i ? bArr2 : new Object[]{bArr2, Integer.valueOf(i4), zzvVar};
            } else if (i2 <= 32768) {
                short[] sArr = new short[i2];
                Arrays.fill(sArr, (short) -1);
                int i11 = 0;
                zzv zzvVar2 = null;
                for (int i12 = 0; i12 < i; i12++) {
                    int i13 = i12 + i12;
                    int i14 = i11 + i11;
                    Object obj8 = objArr[i13];
                    Objects.requireNonNull(obj8);
                    Object obj9 = objArr[i13 ^ 1];
                    Objects.requireNonNull(obj9);
                    zzp.zza(obj8, obj9);
                    int zza3 = zzq.zza(obj8.hashCode());
                    while (true) {
                        int i15 = zza3 & i3;
                        char c = (char) sArr[i15];
                        if (c == 65535) {
                            sArr[i15] = (short) i14;
                            if (i11 < i12) {
                                objArr[i14] = obj8;
                                objArr[i14 ^ 1] = obj9;
                            }
                            i11++;
                        } else if (obj8.equals(objArr[c])) {
                            int i16 = c ^ 1;
                            Object obj10 = objArr[i16];
                            Objects.requireNonNull(obj10);
                            zzvVar2 = new zzv(obj8, obj9, obj10);
                            objArr[i16] = obj9;
                            break;
                        } else {
                            zza3 = i15 + 1;
                        }
                    }
                }
                bArr = i11 == i ? sArr : new Object[]{sArr, Integer.valueOf(i11), zzvVar2};
            } else {
                int[] iArr = new int[i2];
                Arrays.fill(iArr, -1);
                int i17 = 0;
                zzv zzvVar3 = null;
                for (int i18 = 0; i18 < i; i18++) {
                    int i19 = i18 + i18;
                    int i20 = i17 + i17;
                    Object obj11 = objArr[i19];
                    Objects.requireNonNull(obj11);
                    Object obj12 = objArr[i19 ^ 1];
                    Objects.requireNonNull(obj12);
                    zzp.zza(obj11, obj12);
                    int zza4 = zzq.zza(obj11.hashCode());
                    while (true) {
                        int i21 = zza4 & i3;
                        int i22 = iArr[i21];
                        if (i22 == -1) {
                            iArr[i21] = i20;
                            if (i17 < i18) {
                                objArr[i20] = obj11;
                                objArr[i20 ^ 1] = obj12;
                            }
                            i17++;
                        } else if (obj11.equals(objArr[i22])) {
                            int i23 = i22 ^ 1;
                            Object obj13 = objArr[i23];
                            Objects.requireNonNull(obj13);
                            zzvVar3 = new zzv(obj11, obj12, obj13);
                            objArr[i23] = obj12;
                            break;
                        } else {
                            zza4 = i21 + 1;
                        }
                    }
                }
                bArr = i17 == i ? iArr : new Object[]{iArr, Integer.valueOf(i17), zzvVar3};
            }
        }
        int i24 = i;
        Object[] objArr2 = objArr;
        byte[] bArr3 = bArr;
        if (bArr instanceof Object[]) {
            ?? r0 = (Object[]) bArr;
            zzwVar.zzc = (zzv) r0[2];
            bArr3 = r0[0];
            i24 = ((Integer) r0[1]).intValue();
            objArr2 = Arrays.copyOf(objArr, i24 + i24);
        }
        return new zzaf(bArr3, objArr2, i24);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0123 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0125  */
    @Override // com.google.android.gms.internal.play_billing.zzx, java.util.Map
    @javax.annotation.CheckForNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(@javax.annotation.CheckForNull java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzaf.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.play_billing.zzx
    public final zzr zza() {
        return new zzae(this.zzb, 1, this.zzd);
    }

    @Override // com.google.android.gms.internal.play_billing.zzx
    public final zzy zzc() {
        return new zzac(this, this.zzb, 0, this.zzd);
    }

    @Override // com.google.android.gms.internal.play_billing.zzx
    public final zzy zzd() {
        return new zzad(this, new zzae(this.zzb, 0, this.zzd));
    }
}
