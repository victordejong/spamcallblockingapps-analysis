package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
import java.util.BitSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzfa.class */
public final class zzfa extends zzea<BitSet> {
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0046, code lost:
        if (java.lang.Integer.parseInt(r0) != 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004c, code lost:
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0098, code lost:
        if (r4.zzn() != 0) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.BitSet zzb(com.google.android.gms.internal.mlkit_translate.zzfy r4) throws java.io.IOException {
        /*
            java.util.BitSet r0 = new java.util.BitSet
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r4
            r0.zzb()
            r0 = r4
            com.google.android.gms.internal.mlkit_translate.zzga r0 = r0.zzg()
            r6 = r0
            r0 = 0
            r7 = r0
        L13:
            r0 = r6
            com.google.android.gms.internal.mlkit_translate.zzga r1 = com.google.android.gms.internal.mlkit_translate.zzga.END_ARRAY
            if (r0 == r1) goto Lb0
            int[] r0 = com.google.android.gms.internal.mlkit_translate.zzft.zza
            r1 = r6
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r8 = r0
            r0 = 1
            r9 = r0
            r0 = r8
            r1 = 1
            if (r0 == r1) goto L94
            r0 = r8
            r1 = 2
            if (r0 == r1) goto L8b
            r0 = r8
            r1 = 3
            if (r0 != r1) goto L6f
            r0 = r4
            java.lang.String r0 = r0.zzi()
            r6 = r0
            r0 = r6
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.NumberFormatException -> L52
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L4c
            goto L9b
        L4c:
            r0 = 0
            r9 = r0
            goto L9b
        L52:
            r4 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "Error: Expecting: bitset number value (1, 0), Found: "
            r1.<init>(r2)
            r4 = r0
            r0 = r4
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            com.google.android.gms.internal.mlkit_translate.zzeb r0 = new com.google.android.gms.internal.mlkit_translate.zzeb
            r1 = r0
            r2 = r4
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L6f:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "Invalid bitset value type: "
            r1.<init>(r2)
            r4 = r0
            r0 = r4
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            com.google.android.gms.internal.mlkit_translate.zzeb r0 = new com.google.android.gms.internal.mlkit_translate.zzeb
            r1 = r0
            r2 = r4
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L8b:
            r0 = r4
            boolean r0 = r0.zzj()
            r9 = r0
            goto L9b
        L94:
            r0 = r4
            int r0 = r0.zzn()
            if (r0 == 0) goto L4c
        L9b:
            r0 = r9
            if (r0 == 0) goto La5
            r0 = r5
            r1 = r7
            r0.set(r1)
        La5:
            int r7 = r7 + 1
            r0 = r4
            com.google.android.gms.internal.mlkit_translate.zzga r0 = r0.zzg()
            r6 = r0
            goto L13
        Lb0:
            r0 = r4
            r0.zzc()
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_translate.zzfa.zzb(com.google.android.gms.internal.mlkit_translate.zzfy):java.util.BitSet");
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ BitSet zza(zzfy zzfyVar) throws IOException {
        return zzb(zzfyVar);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ void zza(zzgd zzgdVar, BitSet bitSet) throws IOException {
        BitSet bitSet2 = bitSet;
        zzgdVar.zza();
        int length = bitSet2.length();
        for (int i = 0; i < length; i++) {
            zzgdVar.zza(bitSet2.get(i) ? 1L : 0L);
        }
        zzgdVar.zzb();
    }
}
