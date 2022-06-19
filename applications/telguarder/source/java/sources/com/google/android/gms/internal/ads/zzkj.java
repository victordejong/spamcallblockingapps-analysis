package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Stack;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzkj.class */
public final class zzkj implements zzko {
    private final byte[] zzapa = new byte[8];
    private final Stack<zzkl> zzapb = new Stack<>();
    private final zzkt zzapc = new zzkt();
    private zzkn zzapd;
    private int zzape;
    private int zzapf;
    private long zzapg;

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    private final long zza(zzjz zzjzVar, int i) throws IOException, InterruptedException {
        zzjzVar.readFully(this.zzapa, 0, i);
        char c = 0;
        for (int i2 = 0; i2 < i; i2++) {
            c = (c << '\b') | (this.zzapa[i2] & 255);
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.zzko
    public final void reset() {
        this.zzape = 0;
        this.zzapb.clear();
        this.zzapc.reset();
    }

    @Override // com.google.android.gms.internal.ads.zzko
    public final void zza(zzkn zzknVar) {
        this.zzapd = zzknVar;
    }

    /* JADX WARN: Type inference failed for: r0v100, types: [double] */
    /* JADX WARN: Type inference failed for: r0v104, types: [double] */
    /* JADX WARN: Type inference failed for: r0v121, types: [long] */
    /* JADX WARN: Type inference failed for: r0v148, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzko
    public final boolean zzb(zzjz zzjzVar) throws IOException, InterruptedException {
        String str;
        long zza;
        int zzao;
        int zza2;
        long j;
        int i;
        zzpg.checkState(this.zzapd != null);
        while (true) {
            if (!this.zzapb.isEmpty()) {
                long position = zzjzVar.getPosition();
                j = this.zzapb.peek().zzapj;
                if (position >= j) {
                    zzkn zzknVar = this.zzapd;
                    i = this.zzapb.pop().zzapf;
                    zzknVar.zzan(i);
                    return true;
                }
            }
            if (this.zzape == 0) {
                ?? zza3 = this.zzapc.zza(zzjzVar, true, false, 4);
                char c = zza3;
                if (zza3 == -2) {
                    zzjzVar.zzgq();
                    while (true) {
                        zzjzVar.zza(this.zzapa, 0, 4);
                        zzao = zzkt.zzao(this.zzapa[0]);
                        if (zzao != -1 && zzao <= 4) {
                            zza2 = (int) zzkt.zza(this.zzapa, zzao, false);
                            if (this.zzapd.zzam(zza2)) {
                                break;
                            }
                        }
                        zzjzVar.zzag(1);
                    }
                    zzjzVar.zzag(zzao);
                    c = zza2;
                }
                if (c == -1) {
                    return false;
                }
                this.zzapf = c;
                this.zzape = 1;
            }
            if (this.zzape == 1) {
                this.zzapg = this.zzapc.zza(zzjzVar, false, true, 8);
                this.zzape = 2;
            }
            int zzal = this.zzapd.zzal(this.zzapf);
            if (zzal != 0) {
                if (zzal == 1) {
                    long position2 = zzjzVar.getPosition();
                    this.zzapb.add(new zzkl(this.zzapf, this.zzapg + position2));
                    this.zzapd.zzd(this.zzapf, position2, this.zzapg);
                    this.zzape = 0;
                    return true;
                } else if (zzal == 2) {
                    long j2 = this.zzapg;
                    if (j2 <= 8) {
                        this.zzapd.zzd(this.zzapf, zza(zzjzVar, (int) j2));
                        this.zzape = 0;
                        return true;
                    }
                    long j3 = this.zzapg;
                    StringBuilder sb = new StringBuilder(42);
                    sb.append("Invalid integer size: ");
                    sb.append(j3);
                    throw new zzhw(sb.toString());
                } else if (zzal == 3) {
                    long j4 = this.zzapg;
                    if (j4 > 2147483647L) {
                        long j5 = this.zzapg;
                        StringBuilder sb2 = new StringBuilder(41);
                        sb2.append("String element size: ");
                        sb2.append(j5);
                        throw new zzhw(sb2.toString());
                    }
                    zzkn zzknVar2 = this.zzapd;
                    int i2 = this.zzapf;
                    int i3 = (int) j4;
                    if (i3 == 0) {
                        str = "";
                    } else {
                        byte[] bArr = new byte[i3];
                        zzjzVar.readFully(bArr, 0, i3);
                        str = new String(bArr);
                    }
                    zzknVar2.zza(i2, str);
                    this.zzape = 0;
                    return true;
                } else if (zzal == 4) {
                    this.zzapd.zza(this.zzapf, (int) this.zzapg, zzjzVar);
                    this.zzape = 0;
                    return true;
                } else if (zzal != 5) {
                    StringBuilder sb3 = new StringBuilder(32);
                    sb3.append("Invalid element type ");
                    sb3.append(zzal);
                    throw new zzhw(sb3.toString());
                } else {
                    long j6 = this.zzapg;
                    if (j6 != 4 && j6 != 8) {
                        long j7 = this.zzapg;
                        StringBuilder sb4 = new StringBuilder(40);
                        sb4.append("Invalid float size: ");
                        sb4.append(j7);
                        throw new zzhw(sb4.toString());
                    }
                    int i4 = (int) j6;
                    this.zzapd.zza(this.zzapf, i4 == 4 ? Float.intBitsToFloat((int) zza) : Double.longBitsToDouble(zza(zzjzVar, i4)));
                    this.zzape = 0;
                    return true;
                }
            }
            zzjzVar.zzag((int) this.zzapg);
            this.zzape = 0;
        }
    }
}
