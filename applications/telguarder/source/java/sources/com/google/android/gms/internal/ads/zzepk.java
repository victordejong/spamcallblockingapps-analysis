package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepk.class */
public abstract class zzepk implements zzbs {
    private static zzept zzdc = zzept.zzn(zzepk.class);
    private String type;
    private long zzawv;
    private zzbr zzjaw;
    private ByteBuffer zzjba;
    private long zzjbb;
    private zzepn zzjbd;
    private long zzjbc = -1;
    private ByteBuffer zzjbe = null;
    private boolean zzjaz = true;
    boolean zzjay = true;

    public zzepk(String str) {
        this.type = str;
    }

    private final void zzbmi() {
        synchronized (this) {
            if (!this.zzjaz) {
                try {
                    zzept zzeptVar = zzdc;
                    String valueOf = String.valueOf(this.type);
                    zzeptVar.zzio(valueOf.length() != 0 ? "mem mapping ".concat(valueOf) : new String("mem mapping "));
                    this.zzjba = this.zzjbd.zzh(this.zzjbb, this.zzjbc);
                    this.zzjaz = true;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final String getType() {
        return this.type;
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final void zza(zzbr zzbrVar) {
        this.zzjaw = zzbrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final void zza(zzepn zzepnVar, ByteBuffer byteBuffer, long j, zzbn zzbnVar) throws IOException {
        long position = zzepnVar.position();
        this.zzjbb = position;
        this.zzawv = position - byteBuffer.remaining();
        this.zzjbc = j;
        this.zzjbd = zzepnVar;
        zzepnVar.zzfc(zzepnVar.position() + j);
        this.zzjaz = false;
        this.zzjay = false;
        zzbmj();
    }

    public final void zzbmj() {
        synchronized (this) {
            zzbmi();
            zzept zzeptVar = zzdc;
            String valueOf = String.valueOf(this.type);
            zzeptVar.zzio(valueOf.length() != 0 ? "parsing details of ".concat(valueOf) : new String("parsing details of "));
            ByteBuffer byteBuffer = this.zzjba;
            if (byteBuffer != null) {
                this.zzjay = true;
                byteBuffer.rewind();
                zzl(byteBuffer);
                if (byteBuffer.remaining() > 0) {
                    this.zzjbe = byteBuffer.slice();
                }
                this.zzjba = null;
            }
        }
    }

    protected abstract void zzl(ByteBuffer byteBuffer);
}
