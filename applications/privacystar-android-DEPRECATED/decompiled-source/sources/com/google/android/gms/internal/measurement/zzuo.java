package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzuo.class */
public abstract class zzuo {
    int zzbuh;
    int zzbui;
    private int zzbuj;
    zzur zzbuk;
    private boolean zzbul;

    private zzuo() {
        this.zzbui = 100;
        this.zzbuj = Integer.MAX_VALUE;
        this.zzbul = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzuo zza(byte[] bArr, int i, int i2, boolean z) {
        zzuq zzuqVar = new zzuq(bArr, i, i2, false);
        try {
            zzuqVar.zzaq(i2);
            return zzuqVar;
        } catch (zzvt e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static zzuo zzd(byte[] bArr, int i, int i2) {
        return zza(bArr, i, i2, false);
    }

    public abstract double readDouble() throws IOException;

    public abstract float readFloat() throws IOException;

    public abstract String readString() throws IOException;

    public abstract <T extends zzwt> T zza(zzxd<T> zzxdVar, zzuz zzuzVar) throws IOException;

    public abstract void zzan(int i) throws zzvt;

    public abstract boolean zzao(int i) throws IOException;

    public final int zzap(int i) {
        if (i < 0) {
            StringBuilder sb = new StringBuilder(47);
            sb.append("Recursion limit cannot be negative: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        int i2 = this.zzbui;
        this.zzbui = i;
        return i2;
    }

    public abstract int zzaq(int i) throws zzvt;

    public abstract void zzar(int i);

    public abstract void zzas(int i) throws IOException;

    public abstract int zzug() throws IOException;

    public abstract long zzuh() throws IOException;

    public abstract long zzui() throws IOException;

    public abstract int zzuj() throws IOException;

    public abstract long zzuk() throws IOException;

    public abstract int zzul() throws IOException;

    public abstract boolean zzum() throws IOException;

    public abstract String zzun() throws IOException;

    public abstract zzud zzuo() throws IOException;

    public abstract int zzup() throws IOException;

    public abstract int zzuq() throws IOException;

    public abstract int zzur() throws IOException;

    public abstract long zzus() throws IOException;

    public abstract int zzut() throws IOException;

    public abstract long zzuu() throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract long zzuv() throws IOException;

    public abstract boolean zzuw() throws IOException;

    public abstract int zzux();
}
