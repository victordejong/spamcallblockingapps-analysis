package com.google.android.gms.internal.ads;

import java.lang.reflect.Constructor;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zznq.class */
public final class zznq implements zzoa {
    private static final int[] zza = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 14};
    private static final Constructor<? extends zznu> zzc;

    static {
        Constructor<? extends zznu> constructor = null;
        try {
            if (Boolean.TRUE.equals(Class.forName("androidx.media3.decoder.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
                constructor = Class.forName("androidx.media3.decoder.flac.FlacExtractor").asSubclass(zznu.class).getConstructor(Integer.TYPE);
            }
        } catch (ClassNotFoundException e) {
            constructor = null;
        } catch (Exception e2) {
            throw new RuntimeException("Error instantiating FLAC extension", e2);
        }
        zzc = constructor;
    }

    private static final void zzb(int i, List<zznu> list) {
        switch (i) {
            case 0:
                list.add(new zzsq());
                return;
            case 1:
                list.add(new zzst());
                return;
            case 2:
                list.add(new zzsw(0));
                return;
            case 3:
                list.add(new zzpe(0));
                return;
            case 4:
                Constructor<? extends zznu> constructor = zzc;
                if (constructor == null) {
                    list.add(new zzpk(0));
                    return;
                }
                try {
                    list.add(constructor.newInstance(0));
                    return;
                } catch (Exception e) {
                    throw new IllegalStateException("Unexpected error creating FLAC extractor", e);
                }
            case 5:
                list.add(new zzpn());
                return;
            case 6:
                list.add(new zzqi(0));
                return;
            case 7:
                list.add(new zzqq(0));
                return;
            case 8:
                list.add(new zzrk(0, null));
                list.add(new zzrp(0));
                return;
            case 9:
                list.add(new zzse());
                return;
            case 10:
                list.add(new zztz());
                return;
            case 11:
                list.add(new zzuj(1, 0, 112800));
                return;
            case 12:
                list.add(new zzuv());
                return;
            case 13:
            default:
                return;
            case 14:
                list.add(new zzps());
                return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x0373 A[Catch: all -> 0x05a3, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x0024, B:11:0x0034, B:16:0x004e, B:17:0x0057, B:19:0x0123, B:23:0x0133, B:27:0x0143, B:31:0x0153, B:35:0x0163, B:39:0x0172, B:43:0x0181, B:47:0x0191, B:51:0x01a1, B:55:0x01b1, B:59:0x01c1, B:63:0x01d0, B:67:0x01df, B:71:0x01ee, B:75:0x01fe, B:79:0x020e, B:83:0x021e, B:87:0x022e, B:91:0x023e, B:95:0x024e, B:99:0x025e, B:103:0x026e, B:107:0x027e, B:111:0x028e, B:134:0x0373, B:136:0x037a, B:139:0x0388, B:141:0x0391, B:144:0x039d, B:148:0x03ac, B:150:0x03b6, B:153:0x03c3, B:157:0x03d3, B:161:0x03e3, B:165:0x03f3, B:167:0x0403, B:170:0x0410, B:174:0x0421, B:176:0x042b, B:178:0x043b, B:180:0x044b, B:183:0x045e, B:185:0x046e, B:189:0x047f, B:193:0x048d, B:197:0x049b, B:199:0x04a5, B:203:0x04b6, B:205:0x04c0, B:208:0x04d3, B:210:0x04dd, B:213:0x04ea, B:215:0x04f4, B:218:0x0501, B:220:0x050b, B:236:0x055c, B:237:0x0562, B:237:0x0562, B:246:0x0584, B:247:0x058a, B:248:0x0590), top: B:256:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0388 A[Catch: all -> 0x05a3, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x0024, B:11:0x0034, B:16:0x004e, B:17:0x0057, B:19:0x0123, B:23:0x0133, B:27:0x0143, B:31:0x0153, B:35:0x0163, B:39:0x0172, B:43:0x0181, B:47:0x0191, B:51:0x01a1, B:55:0x01b1, B:59:0x01c1, B:63:0x01d0, B:67:0x01df, B:71:0x01ee, B:75:0x01fe, B:79:0x020e, B:83:0x021e, B:87:0x022e, B:91:0x023e, B:95:0x024e, B:99:0x025e, B:103:0x026e, B:107:0x027e, B:111:0x028e, B:134:0x0373, B:136:0x037a, B:139:0x0388, B:141:0x0391, B:144:0x039d, B:148:0x03ac, B:150:0x03b6, B:153:0x03c3, B:157:0x03d3, B:161:0x03e3, B:165:0x03f3, B:167:0x0403, B:170:0x0410, B:174:0x0421, B:176:0x042b, B:178:0x043b, B:180:0x044b, B:183:0x045e, B:185:0x046e, B:189:0x047f, B:193:0x048d, B:197:0x049b, B:199:0x04a5, B:203:0x04b6, B:205:0x04c0, B:208:0x04d3, B:210:0x04dd, B:213:0x04ea, B:215:0x04f4, B:218:0x0501, B:220:0x050b, B:236:0x055c, B:237:0x0562, B:237:0x0562, B:246:0x0584, B:247:0x058a, B:248:0x0590), top: B:256:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0555  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0570  */
    @Override // com.google.android.gms.internal.ads.zzoa
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zznu[] zza(android.net.Uri r6, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r7) {
        /*
            Method dump skipped, instructions count: 1448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zznq.zza(android.net.Uri, java.util.Map):com.google.android.gms.internal.ads.zznu[]");
    }
}
