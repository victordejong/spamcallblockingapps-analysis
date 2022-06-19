package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwl.class */
public final class zzwl implements zzww {
    private static final int[] zza = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 14};
    private static final Constructor<? extends zzwp> zzc;

    static {
        Constructor<? extends zzwp> constructor = null;
        try {
            if (Boolean.TRUE.equals(Class.forName("androidx.media3.decoder.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
                constructor = Class.forName("androidx.media3.decoder.flac.FlacExtractor").asSubclass(zzwp.class).getConstructor(Integer.TYPE);
            }
        } catch (ClassNotFoundException e) {
            constructor = null;
        } catch (Exception e2) {
            throw new RuntimeException("Error instantiating FLAC extension", e2);
        }
        zzc = constructor;
    }

    private static final void zzc(int i, List<zzwp> list) {
        switch (i) {
            case 0:
                list.add(new zzadg());
                return;
            case 1:
                list.add(new zzadj());
                return;
            case 2:
                list.add(new zzadm(0));
                return;
            case 3:
                list.add(new zzya(0));
                return;
            case 4:
                Constructor<? extends zzwp> constructor = zzc;
                if (constructor == null) {
                    list.add(new zzyg(0));
                    return;
                }
                try {
                    list.add(constructor.newInstance(0));
                    return;
                } catch (Exception e) {
                    throw new IllegalStateException("Unexpected error creating FLAC extractor", e);
                }
            case 5:
                list.add(new zzyj());
                return;
            case 6:
                list.add(new zzaay(0));
                return;
            case 7:
                list.add(new zzabg(0));
                return;
            case 8:
                list.add(new zzaca(0, null));
                list.add(new zzacf(0));
                return;
            case 9:
                list.add(new zzacu());
                return;
            case 10:
                list.add(new zzaep());
                return;
            case 11:
                list.add(new zzaez(1, 0, 112800));
                return;
            case 12:
                list.add(new zzafl());
                return;
            case 13:
            default:
                return;
            case 14:
                list.add(new zzyo());
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzww
    public final zzwp[] zza() {
        zzwp[] zzb;
        synchronized (this) {
            zzb = zzb(Uri.EMPTY, new HashMap());
        }
        return zzb;
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x0373 A[Catch: all -> 0x05a6, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x0024, B:11:0x0034, B:16:0x004e, B:17:0x0057, B:19:0x0123, B:23:0x0133, B:27:0x0143, B:31:0x0153, B:35:0x0163, B:39:0x0172, B:43:0x0181, B:47:0x0191, B:51:0x01a1, B:55:0x01b1, B:59:0x01c1, B:63:0x01d0, B:67:0x01df, B:71:0x01ee, B:75:0x01fe, B:79:0x020e, B:83:0x021e, B:87:0x022e, B:91:0x023e, B:95:0x024e, B:99:0x025e, B:103:0x026e, B:107:0x027e, B:111:0x028e, B:134:0x0373, B:136:0x037a, B:139:0x0388, B:141:0x0392, B:144:0x039f, B:148:0x03af, B:150:0x03b9, B:153:0x03c6, B:157:0x03d6, B:161:0x03e6, B:165:0x03f6, B:167:0x0406, B:170:0x0413, B:174:0x0424, B:176:0x042e, B:178:0x043e, B:180:0x044e, B:183:0x0461, B:185:0x0471, B:189:0x0482, B:193:0x0490, B:197:0x049e, B:199:0x04a8, B:203:0x04b9, B:205:0x04c3, B:208:0x04d6, B:210:0x04e0, B:213:0x04ed, B:215:0x04f7, B:218:0x0504, B:220:0x050e, B:236:0x055f, B:237:0x0565, B:237:0x0565, B:246:0x0587, B:247:0x058d, B:248:0x0593), top: B:256:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0388 A[Catch: all -> 0x05a6, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x0024, B:11:0x0034, B:16:0x004e, B:17:0x0057, B:19:0x0123, B:23:0x0133, B:27:0x0143, B:31:0x0153, B:35:0x0163, B:39:0x0172, B:43:0x0181, B:47:0x0191, B:51:0x01a1, B:55:0x01b1, B:59:0x01c1, B:63:0x01d0, B:67:0x01df, B:71:0x01ee, B:75:0x01fe, B:79:0x020e, B:83:0x021e, B:87:0x022e, B:91:0x023e, B:95:0x024e, B:99:0x025e, B:103:0x026e, B:107:0x027e, B:111:0x028e, B:134:0x0373, B:136:0x037a, B:139:0x0388, B:141:0x0392, B:144:0x039f, B:148:0x03af, B:150:0x03b9, B:153:0x03c6, B:157:0x03d6, B:161:0x03e6, B:165:0x03f6, B:167:0x0406, B:170:0x0413, B:174:0x0424, B:176:0x042e, B:178:0x043e, B:180:0x044e, B:183:0x0461, B:185:0x0471, B:189:0x0482, B:193:0x0490, B:197:0x049e, B:199:0x04a8, B:203:0x04b9, B:205:0x04c3, B:208:0x04d6, B:210:0x04e0, B:213:0x04ed, B:215:0x04f7, B:218:0x0504, B:220:0x050e, B:236:0x055f, B:237:0x0565, B:237:0x0565, B:246:0x0587, B:247:0x058d, B:248:0x0593), top: B:256:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0558  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0573  */
    @Override // com.google.android.gms.internal.ads.zzww
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzwp[] zzb(android.net.Uri r6, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r7) {
        /*
            Method dump skipped, instructions count: 1451
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzwl.zzb(android.net.Uri, java.util.Map):com.google.android.gms.internal.ads.zzwp[]");
    }
}
