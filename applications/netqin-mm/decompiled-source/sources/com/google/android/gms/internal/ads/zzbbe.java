package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.util.Range;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbe.class */
public final class zzbbe {

    /* renamed from: b */
    public static List<MediaCodecInfo> f24736b;

    /* renamed from: a */
    public static Map<String, List<Map<String, Object>>> f24735a = new HashMap();

    /* renamed from: c */
    public static final Object f24737c = new Object();

    /* renamed from: a */
    public static List<Map<String, Object>> m15913a(String str) {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        synchronized (f24737c) {
            try {
                if (f24735a.containsKey(str)) {
                    return f24735a.get(str);
                }
                try {
                    synchronized (f24737c) {
                        if (f24736b == null) {
                            if (Build.VERSION.SDK_INT >= 21) {
                                f24736b = Arrays.asList(new MediaCodecList(0).getCodecInfos());
                            } else {
                                int codecCount = MediaCodecList.getCodecCount();
                                f24736b = new ArrayList(codecCount);
                                for (int i = 0; i < codecCount; i++) {
                                    f24736b.add(MediaCodecList.getCodecInfoAt(i));
                                }
                            }
                        }
                    }
                    ArrayList arrayList = new ArrayList();
                    for (MediaCodecInfo mediaCodecInfo : f24736b) {
                        if (!mediaCodecInfo.isEncoder() && Arrays.asList(mediaCodecInfo.getSupportedTypes()).contains(str)) {
                            HashMap hashMap = new HashMap();
                            hashMap.put("codecName", mediaCodecInfo.getName());
                            MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(str);
                            ArrayList arrayList2 = new ArrayList();
                            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : capabilitiesForType.profileLevels) {
                                arrayList2.add(new Integer[]{Integer.valueOf(codecProfileLevel.profile), Integer.valueOf(codecProfileLevel.level)});
                            }
                            hashMap.put("profileLevels", arrayList2);
                            if (Build.VERSION.SDK_INT >= 21) {
                                MediaCodecInfo.VideoCapabilities videoCapabilities = capabilitiesForType.getVideoCapabilities();
                                hashMap.put("bitRatesBps", m15914a(videoCapabilities.getBitrateRange()));
                                hashMap.put("widthAlignment", Integer.valueOf(videoCapabilities.getWidthAlignment()));
                                hashMap.put("heightAlignment", Integer.valueOf(videoCapabilities.getHeightAlignment()));
                                hashMap.put("frameRates", m15914a(videoCapabilities.getSupportedFrameRates()));
                                hashMap.put("widths", m15914a(videoCapabilities.getSupportedWidths()));
                                hashMap.put("heights", m15914a(videoCapabilities.getSupportedHeights()));
                            }
                            if (Build.VERSION.SDK_INT >= 23) {
                                hashMap.put("instancesLimit", Integer.valueOf(capabilitiesForType.getMaxSupportedInstances()));
                            }
                            arrayList.add(hashMap);
                        }
                    }
                    f24735a.put(str, arrayList);
                    return arrayList;
                } catch (LinkageError | RuntimeException e) {
                    HashMap hashMap2 = new HashMap();
                    hashMap2.put("error", e.getClass().getSimpleName());
                    ArrayList arrayList3 = new ArrayList();
                    arrayList3.add(hashMap2);
                    f24735a.put(str, arrayList3);
                    return arrayList3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static Integer[] m15914a(Range<Integer> range) {
        return new Integer[]{range.getLower(), range.getUpper()};
    }
}
