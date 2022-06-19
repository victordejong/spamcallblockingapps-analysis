package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzjt;
import com.google.android.gms.internal.measurement.zzjx;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzjt.class */
public class zzjt<MessageType extends zzjx<MessageType, BuilderType>, BuilderType extends zzjt<MessageType, BuilderType>> extends zzig<MessageType, BuilderType> {
    public zzjx zza;
    public boolean zzb = false;
    private final zzjx zzc;

    public zzjt(MessageType messagetype) {
        this.zzc = messagetype;
        this.zza = (zzjx) messagetype.zzl(4, null, null);
    }

    private static final void zza(zzjx zzjxVar, zzjx zzjxVar2) {
        zzlk.zza().zzb(zzjxVar.getClass()).zzg(zzjxVar, zzjxVar2);
    }

    public void zzaC() {
        zzjx zzjxVar = (zzjx) this.zza.zzl(4, null, null);
        zza(zzjxVar, this.zza);
        this.zza = zzjxVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzig
    public final /* synthetic */ zzig zzap(zzih zzihVar) {
        zzaw((zzjx) zzihVar);
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzig
    public final /* bridge */ /* synthetic */ zzig zzaq(byte[] bArr, int i, int i2) throws zzkh {
        zzax(bArr, 0, i2, zzjj.zza());
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzig
    public final /* bridge */ /* synthetic */ zzig zzar(byte[] bArr, int i, int i2, zzjj zzjjVar) throws zzkh {
        zzax(bArr, 0, i2, zzjjVar);
        return this;
    }

    /* renamed from: zzav */
    public final zzjt zzao() {
        zzjt zzjtVar = (zzjt) this.zzc.zzl(5, null, null);
        zzjtVar.zzaw(zzaA());
        return zzjtVar;
    }

    public final zzjt zzaw(zzjx zzjxVar) {
        if (this.zzb) {
            zzaC();
            this.zzb = false;
        }
        zza(this.zza, zzjxVar);
        return this;
    }

    public final zzjt zzax(byte[] bArr, int i, int i2, zzjj zzjjVar) throws zzkh {
        if (this.zzb) {
            zzaC();
            this.zzb = false;
        }
        try {
            zzlk.zza().zzb(this.zza.getClass()).zzh(this.zza, bArr, 0, i2, new zzik(zzjjVar));
            return this;
        } catch (zzkh e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
        } catch (IndexOutOfBoundsException e3) {
            throw zzkh.zzf();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0048, code lost:
        if (r0 != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final MessageType zzay() {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.internal.measurement.zzjx r0 = r0.zzaA()
            r6 = r0
            r0 = r6
            r1 = 1
            r2 = 0
            r3 = 0
            java.lang.Object r0 = r0.zzl(r1, r2, r3)
            java.lang.Byte r0 = (java.lang.Byte) r0
            byte r0 = r0.byteValue()
            r7 = r0
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L1b
            goto L4b
        L1b:
            r0 = r7
            if (r0 == 0) goto L4d
            com.google.android.gms.internal.measurement.zzlk r0 = com.google.android.gms.internal.measurement.zzlk.zza()
            r1 = r6
            java.lang.Class r1 = r1.getClass()
            com.google.android.gms.internal.measurement.zzln r0 = r0.zzb(r1)
            r1 = r6
            boolean r0 = r0.zzj(r1)
            r8 = r0
            r0 = 1
            r1 = r8
            if (r0 == r1) goto L3b
            r0 = 0
            r9 = r0
            goto L3e
        L3b:
            r0 = r6
            r9 = r0
        L3e:
            r0 = r6
            r1 = 2
            r2 = r9
            r3 = 0
            java.lang.Object r0 = r0.zzl(r1, r2, r3)
            r0 = r8
            if (r0 == 0) goto L4d
        L4b:
            r0 = r6
            return r0
        L4d:
            com.google.android.gms.internal.measurement.zzma r0 = new com.google.android.gms.internal.measurement.zzma
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzjt.zzay():com.google.android.gms.internal.measurement.zzjx");
    }

    /* renamed from: zzaz */
    public MessageType zzaA() {
        if (this.zzb) {
            return (MessageType) this.zza;
        }
        zzjx zzjxVar = this.zza;
        zzlk.zza().zzb(zzjxVar.getClass()).zzf(zzjxVar);
        this.zzb = true;
        return (MessageType) this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzld
    public final /* synthetic */ zzlc zzbJ() {
        return this.zzc;
    }
}
