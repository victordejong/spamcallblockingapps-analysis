package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.util.Range;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.ads.internal.util.u0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/u0.class */
public final class C1452u0 {

    /* renamed from: b */
    private static List<MediaCodecInfo> f5640b;

    /* renamed from: a */
    private static final Map<String, List<Map<String, Object>>> f5639a = new HashMap();

    /* renamed from: c */
    private static final Object f5641c = new Object();

    @TargetApi(16)
    /* renamed from: a */
    public static List<Map<String, Object>> m8714a(String str) {
        ArrayList arrayList;
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        Object obj = f5641c;
        synchronized (obj) {
            try {
                Map<String, List<Map<String, Object>>> map = f5639a;
                if (map.containsKey(str)) {
                    return map.get(str);
                }
                try {
                    synchronized (obj) {
                        if (f5640b == null) {
                            if (Build.VERSION.SDK_INT >= 21) {
                                f5640b = Arrays.asList(new MediaCodecList(0).getCodecInfos());
                            } else {
                                int codecCount = MediaCodecList.getCodecCount();
                                f5640b = new ArrayList(codecCount);
                                for (int i = 0; i < codecCount; i++) {
                                    f5640b.add(MediaCodecList.getCodecInfoAt(i));
                                }
                            }
                        }
                        arrayList = new ArrayList();
                        for (MediaCodecInfo mediaCodecInfo : f5640b) {
                            if (!mediaCodecInfo.isEncoder() && Arrays.asList(mediaCodecInfo.getSupportedTypes()).contains(str)) {
                                HashMap hashMap = new HashMap();
                                hashMap.put("codecName", mediaCodecInfo.getName());
                                MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(str);
                                ArrayList arrayList2 = new ArrayList();
                                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : capabilitiesForType.profileLevels) {
                                    arrayList2.add(new Integer[]{Integer.valueOf(codecProfileLevel.profile), Integer.valueOf(codecProfileLevel.level)});
                                }
                                hashMap.put("profileLevels", arrayList2);
                                int i2 = Build.VERSION.SDK_INT;
                                if (i2 >= 21) {
                                    MediaCodecInfo.VideoCapabilities videoCapabilities = capabilitiesForType.getVideoCapabilities();
                                    hashMap.put("bitRatesBps", m8713b(videoCapabilities.getBitrateRange()));
                                    hashMap.put("widthAlignment", Integer.valueOf(videoCapabilities.getWidthAlignment()));
                                    hashMap.put("heightAlignment", Integer.valueOf(videoCapabilities.getHeightAlignment()));
                                    hashMap.put("frameRates", m8713b(videoCapabilities.getSupportedFrameRates()));
                                    hashMap.put("widths", m8713b(videoCapabilities.getSupportedWidths()));
                                    hashMap.put("heights", m8713b(videoCapabilities.getSupportedHeights()));
                                }
                                if (i2 >= 23) {
                                    hashMap.put("instancesLimit", Integer.valueOf(capabilitiesForType.getMaxSupportedInstances()));
                                }
                                arrayList.add(hashMap);
                            }
                        }
                        f5639a.put(str, arrayList);
                    }
                    return arrayList;
                } catch (LinkageError | RuntimeException e) {
                    HashMap hashMap2 = new HashMap();
                    hashMap2.put("error", e.getClass().getSimpleName());
                    ArrayList arrayList3 = new ArrayList();
                    arrayList3.add(hashMap2);
                    f5639a.put(str, arrayList3);
                    return arrayList3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @TargetApi(21)
    /* renamed from: b */
    private static Integer[] m8713b(Range<Integer> range) {
        return new Integer[]{range.getLower(), range.getUpper()};
    }
}
