package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzms.class */
final class zzms extends zzme {
    private static final int zzd = Float.floatToIntBits(Float.NaN);

    private static void zzo(int i, ByteBuffer byteBuffer) {
        int floatToIntBits = Float.floatToIntBits((float) (i * 4.656612875245797E-10d));
        int i2 = floatToIntBits;
        if (floatToIntBits == zzd) {
            i2 = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzlh
    public final void zze(ByteBuffer byteBuffer) {
        ByteBuffer byteBuffer2;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        int i2 = this.zzb.zzd;
        if (i2 == 536870912) {
            ByteBuffer zzj = zzj((i / 3) * 4);
            while (true) {
                byteBuffer2 = zzj;
                if (position >= limit) {
                    break;
                }
                zzo(((byteBuffer.get(position) & 255) << 8) | ((byteBuffer.get(position + 1) & 255) << 16) | ((byteBuffer.get(position + 2) & 255) << 24), zzj);
                position += 3;
            }
        } else if (i2 != 805306368) {
            throw new IllegalStateException();
        } else {
            ByteBuffer zzj2 = zzj(i);
            while (true) {
                byteBuffer2 = zzj2;
                if (position >= limit) {
                    break;
                }
                zzo((byteBuffer.get(position) & 255) | ((byteBuffer.get(position + 1) & 255) << 8) | ((byteBuffer.get(position + 2) & 255) << 16) | ((byteBuffer.get(position + 3) & 255) << 24), zzj2);
                position += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBuffer2.flip();
    }

    @Override // com.google.android.gms.internal.ads.zzme
    public final zzlf zzi(zzlf zzlfVar) throws zzlg {
        int i = zzlfVar.zzd;
        if (zzfn.zzQ(i)) {
            return i != 4 ? new zzlf(zzlfVar.zzb, zzlfVar.zzc, 4) : zzlf.zza;
        }
        throw new zzlg(zzlfVar);
    }
}
