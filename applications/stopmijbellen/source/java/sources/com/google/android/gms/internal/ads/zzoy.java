package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.media.MediaCodecInfo;
import android.util.Log;
import com.google.android.gms.ads.AdRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Pattern;
import me.zhanghai.android.materialprogressbar.C3681R;
@SuppressLint({"InlinedApi"})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzoy.class */
public final class zzoy {
    public static final /* synthetic */ int zza = 0;
    private static final Pattern zzb = Pattern.compile("^\\D?(\\d+)$");
    private static final HashMap<zzoq, List<zzoh>> zzc = new HashMap<>();
    private static int zzd = -1;

    public static int zza() throws zzos {
        int i;
        if (zzd == -1) {
            int i2 = 0;
            zzoh zzc2 = zzc("video/avc", false, false);
            if (zzc2 != null) {
                int i3 = 0;
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : zzc2.zzg()) {
                    int i4 = codecProfileLevel.level;
                    if (i4 == 1 || i4 == 2) {
                        i = 25344;
                    } else {
                        switch (i4) {
                            case 8:
                            case 16:
                            case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                                i = 101376;
                                continue;
                            case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                                i = 202752;
                                continue;
                            case 128:
                            case 256:
                                i = 414720;
                                continue;
                            case AdRequest.MAX_CONTENT_URL_LENGTH /* 512 */:
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
                i2 = Math.max(i3, zzfn.zza >= 21 ? 345600 : 172800);
            }
            zzd = i2;
        }
        return zzd;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:124:0x039e  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x03ca  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x0cd2  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x0cfe  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0241  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> zzb(com.google.android.gms.internal.ads.zzab r5) {
        /*
            Method dump skipped, instructions count: 4453
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzoy.zzb(com.google.android.gms.internal.ads.zzab):android.util.Pair");
    }

    public static zzoh zzc(String str, boolean z, boolean z2) throws zzos {
        List<zzoh> zze = zze(str, false, false);
        if (zze.isEmpty()) {
            return null;
        }
        return zze.get(0);
    }

    public static zzoh zzd() throws zzos {
        return zzc("audio/raw", false, false);
    }

    public static List<zzoh> zze(String str, boolean z, boolean z2) throws zzos {
        synchronized (zzoy.class) {
            try {
                zzoq zzoqVar = new zzoq(str, z, z2);
                HashMap<zzoq, List<zzoh>> hashMap = zzc;
                List<zzoh> list = hashMap.get(zzoqVar);
                if (list != null) {
                    return list;
                }
                int i = zzfn.zza;
                ArrayList<zzoh> zzg = zzg(zzoqVar, i >= 21 ? new zzow(z, z2) : new zzov(null));
                ArrayList<zzoh> arrayList = zzg;
                if (z) {
                    arrayList = zzg;
                    if (zzg.isEmpty()) {
                        arrayList = zzg;
                        if (i >= 21) {
                            arrayList = zzg;
                            if (i <= 23) {
                                ArrayList<zzoh> zzg2 = zzg(zzoqVar, new zzov(null));
                                arrayList = zzg2;
                                if (!zzg2.isEmpty()) {
                                    String str2 = zzg2.get(0).zza;
                                    StringBuilder sb = new StringBuilder(str.length() + 63 + String.valueOf(str2).length());
                                    sb.append("MediaCodecList API didn't list secure decoder for: ");
                                    sb.append(str);
                                    sb.append(". Assuming: ");
                                    sb.append(str2);
                                    Log.w("MediaCodecUtil", sb.toString());
                                    arrayList = zzg2;
                                }
                            }
                        }
                    }
                }
                if ("audio/raw".equals(str)) {
                    if (i < 26 && zzfn.zzb.equals("R9") && arrayList.size() == 1 && arrayList.get(0).zza.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                        arrayList.add(zzoh.zzc("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
                    }
                    zzh(arrayList, zzon.zza);
                }
                if (i < 21 && arrayList.size() > 1) {
                    String str3 = arrayList.get(0).zza;
                    if ("OMX.SEC.mp3.dec".equals(str3) || "OMX.SEC.MP3.Decoder".equals(str3) || "OMX.brcm.audio.mp3.decoder".equals(str3)) {
                        zzh(arrayList, zzoo.zza);
                    }
                }
                if (i < 32 && arrayList.size() > 1 && "OMX.qti.audio.decoder.flac".equals(arrayList.get(0).zza)) {
                    arrayList.add(arrayList.remove(0));
                }
                List<zzoh> unmodifiableList = Collections.unmodifiableList(arrayList);
                hashMap.put(zzoqVar, unmodifiableList);
                return unmodifiableList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static List<zzoh> zzf(List<zzoh> list, final zzab zzabVar) {
        ArrayList arrayList = new ArrayList(list);
        zzh(arrayList, new zzox() { // from class: com.google.android.gms.internal.ads.zzom
            @Override // com.google.android.gms.internal.ads.zzox
            public final int zza(Object obj) {
                int i;
                zzab zzabVar2 = zzab.this;
                zzoh zzohVar = (zzoh) obj;
                int i2 = zzoy.zza;
                try {
                } catch (zzos e) {
                    i = -1;
                }
                if (!zzohVar.zzd(zzabVar2)) {
                    i = 0;
                    return i;
                }
                return 1;
            }
        });
        return arrayList;
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
    private static java.util.ArrayList<com.google.android.gms.internal.ads.zzoh> zzg(com.google.android.gms.internal.ads.zzoq r11, com.google.android.gms.internal.ads.zzot r12) throws com.google.android.gms.internal.ads.zzos {
        /*
            Method dump skipped, instructions count: 1348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzoy.zzg(com.google.android.gms.internal.ads.zzoq, com.google.android.gms.internal.ads.zzot):java.util.ArrayList");
    }

    private static <T> void zzh(List<T> list, final zzox<T> zzoxVar) {
        Collections.sort(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zzop
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                zzox zzoxVar2 = zzox.this;
                int i = zzoy.zza;
                return zzoxVar2.zza(obj2) - zzoxVar2.zza(obj);
            }
        });
    }

    private static boolean zzi(MediaCodecInfo mediaCodecInfo) {
        if (zzfn.zza >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        String zza2 = zzfpn.zza(mediaCodecInfo.getName());
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
}
