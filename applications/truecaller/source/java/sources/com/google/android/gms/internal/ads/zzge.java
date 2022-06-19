package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzge.class */
public final class zzge {
    public static final /* synthetic */ int zza = 0;
    private static final Pattern zzb = Pattern.compile("^\\D?(\\d+)$");
    private static final HashMap<zzfx, List<zzfo>> zzc = new HashMap<>();
    private static int zzd = -1;

    public static zzfo zza() throws zzfy {
        return zzb("audio/raw", false, false);
    }

    public static zzfo zzb(String str, boolean z, boolean z2) throws zzfy {
        List<zzfo> zzc2 = zzc(str, false, false);
        if (zzc2.isEmpty()) {
            return null;
        }
        return zzc2.get(0);
    }

    public static List<zzfo> zzc(String str, boolean z, boolean z2) throws zzfy {
        synchronized (zzge.class) {
            try {
                zzfx zzfxVar = new zzfx(str, z, z2);
                HashMap<zzfx, List<zzfo>> hashMap = zzc;
                List<zzfo> list = hashMap.get(zzfxVar);
                if (list != null) {
                    return list;
                }
                int i = zzamq.zza;
                ArrayList<zzfo> zzg = zzg(zzfxVar, i >= 21 ? new zzgb(z, z2) : new zzga(null));
                ArrayList<zzfo> arrayList = zzg;
                if (z) {
                    arrayList = zzg;
                    if (zzg.isEmpty()) {
                        arrayList = zzg;
                        if (i >= 21) {
                            arrayList = zzg;
                            if (i <= 23) {
                                ArrayList<zzfo> zzg2 = zzg(zzfxVar, new zzga(null));
                                arrayList = zzg2;
                                if (!zzg2.isEmpty()) {
                                    String.valueOf(zzg2.get(0).zza).length();
                                    str.length();
                                    arrayList = zzg2;
                                }
                            }
                        }
                    }
                }
                if ("audio/raw".equals(str)) {
                    if (i < 26 && zzamq.zzb.equals("R9") && arrayList.size() == 1 && arrayList.get(0).zza.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                        arrayList.add(zzfo.zza("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
                    }
                    zzi(arrayList, zzfu.zza);
                }
                if (i < 21 && arrayList.size() > 1) {
                    String str2 = arrayList.get(0).zza;
                    if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                        zzi(arrayList, zzfv.zza);
                    }
                }
                if (i < 32 && arrayList.size() > 1 && "OMX.qti.audio.decoder.flac".equals(arrayList.get(0).zza)) {
                    arrayList.add(arrayList.remove(0));
                }
                List<zzfo> unmodifiableList = Collections.unmodifiableList(arrayList);
                hashMap.put(zzfxVar, unmodifiableList);
                return unmodifiableList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static List<zzfo> zzd(List<zzfo> list, zzafv zzafvVar) {
        ArrayList arrayList = new ArrayList(list);
        zzi(arrayList, new zzgd(zzafvVar) { // from class: com.google.android.gms.internal.ads.zzft
            private final zzafv zza;

            {
                this.zza = zzafvVar;
            }

            @Override // com.google.android.gms.internal.ads.zzgd
            public final int zza(Object obj) {
                int i;
                zzafv zzafvVar2 = this.zza;
                zzfo zzfoVar = (zzfo) obj;
                int i2 = zzge.zza;
                try {
                } catch (zzfy e) {
                    i = -1;
                }
                if (!zzfoVar.zzc(zzafvVar2)) {
                    i = 0;
                    return i;
                }
                return 1;
            }
        });
        return arrayList;
    }

    public static int zze() throws zzfy {
        int i;
        if (zzd == -1) {
            int i2 = 0;
            zzfo zzb2 = zzb("video/avc", false, false);
            if (zzb2 != null) {
                int i3 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : zzb2.zzb()) {
                    int i4 = codecProfileLevel.level;
                    if (i4 == 1 || i4 == 2) {
                        i = 25344;
                    } else {
                        switch (i4) {
                            case 8:
                            case 16:
                            case 32:
                                i = 101376;
                                continue;
                            case 64:
                                i = 202752;
                                continue;
                            case 128:
                            case 256:
                                i = 414720;
                                continue;
                            case 512:
                                i = 921600;
                                continue;
                            case 1024:
                                i = 1310720;
                                continue;
                            case 2048:
                            case 4096:
                                i = 2097152;
                                continue;
                            case 8192:
                                i = 2228224;
                                continue;
                            case 16384:
                                i = 5652480;
                                continue;
                            case 32768:
                            case 65536:
                                i = 9437184;
                                continue;
                            case 131072:
                            case 262144:
                            case 524288:
                                i = 35651584;
                                continue;
                            default:
                                i = -1;
                                continue;
                        }
                    }
                    i3 = Math.max(i, i3);
                }
                i2 = Math.max(i3, zzamq.zza >= 21 ? 345600 : 172800);
            }
            zzd = i2;
        }
        return zzd;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:122:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:396:0x0ca9  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x0cce  */
    /* JADX WARN: Removed duplicated region for block: B:512:0x0f70  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x023b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> zzf(com.google.android.gms.internal.ads.zzafv r5) {
        /*
            Method dump skipped, instructions count: 4324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzge.zzf(com.google.android.gms.internal.ads.zzafv):android.util.Pair");
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x025a, code lost:
        if ("SCV31".equals(r0) == false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x02b4, code lost:
        if (r0.startsWith("t0") == false) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x03fe, code lost:
        if (r0 == false) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ee, code lost:
        if (r0.startsWith("HM") == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0189, code lost:
        if ("SO-02E".equals(r0) == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01d0, code lost:
        if ("C1605".equals(r0) == false) goto L86;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList<com.google.android.gms.internal.ads.zzfo> zzg(com.google.android.gms.internal.ads.zzfx r11, com.google.android.gms.internal.ads.zzfz r12) throws com.google.android.gms.internal.ads.zzfy {
        /*
            Method dump skipped, instructions count: 1322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzge.zzg(com.google.android.gms.internal.ads.zzfx, com.google.android.gms.internal.ads.zzfz):java.util.ArrayList");
    }

    private static boolean zzh(MediaCodecInfo mediaCodecInfo) {
        if (zzamq.zza >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        String zza2 = zzflf.zza(mediaCodecInfo.getName());
        boolean z = false;
        if (zza2.startsWith("arc.")) {
            return false;
        }
        if (!zza2.startsWith("omx.google.") && !zza2.startsWith("omx.ffmpeg.") && ((!zza2.startsWith("omx.sec.") || !zza2.contains(".sw.")) && !zza2.equals("omx.qcom.video.decoder.hevcswvdec") && !zza2.startsWith("c2.android.") && !zza2.startsWith("c2.google."))) {
            if (!zza2.startsWith("omx.")) {
                if (zza2.startsWith("c2.")) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    private static <T> void zzi(List<T> list, zzgd<T> zzgdVar) {
        Collections.sort(list, new Comparator(zzgdVar) { // from class: com.google.android.gms.internal.ads.zzfw
            private final zzgd zza;

            {
                this.zza = zzgdVar;
            }

            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                zzgd zzgdVar2 = this.zza;
                int i = zzge.zza;
                return zzgdVar2.zza(obj2) - zzgdVar2.zza(obj);
            }
        });
    }
}
