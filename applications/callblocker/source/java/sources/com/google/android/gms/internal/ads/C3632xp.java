package com.google.android.gms.internal.ads;

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
/* renamed from: com.google.android.gms.internal.ads.xp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xp.class */
public final class C3632xp {

    /* renamed from: b */
    private static List<MediaCodecInfo> f17611b;

    /* renamed from: a */
    private static Map<String, List<Map<String, Object>>> f17610a = new HashMap();

    /* renamed from: c */
    private static final Object f17612c = new Object();

    @TargetApi(16)
    /* renamed from: a */
    public static List<Map<String, Object>> m6804a(String str) {
        ArrayList arrayList;
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        synchronized (f17612c) {
            if (f17610a.containsKey(str)) {
                arrayList = f17610a.get(str);
            } else {
                try {
                    synchronized (f17612c) {
                        if (f17611b == null) {
                            if (Build.VERSION.SDK_INT >= 21) {
                                f17611b = Arrays.asList(new MediaCodecList(0).getCodecInfos());
                            } else {
                                int codecCount = MediaCodecList.getCodecCount();
                                f17611b = new ArrayList(codecCount);
                                for (int i = 0; i < codecCount; i++) {
                                    f17611b.add(MediaCodecList.getCodecInfoAt(i));
                                }
                            }
                        }
                    }
                    ArrayList arrayList2 = new ArrayList();
                    for (MediaCodecInfo mediaCodecInfo : f17611b) {
                        if (!mediaCodecInfo.isEncoder() && Arrays.asList(mediaCodecInfo.getSupportedTypes()).contains(str)) {
                            HashMap hashMap = new HashMap();
                            hashMap.put("codecName", mediaCodecInfo.getName());
                            MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(str);
                            ArrayList arrayList3 = new ArrayList();
                            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : capabilitiesForType.profileLevels) {
                                arrayList3.add(new Integer[]{Integer.valueOf(codecProfileLevel.profile), Integer.valueOf(codecProfileLevel.level)});
                            }
                            hashMap.put("profileLevels", arrayList3);
                            if (Build.VERSION.SDK_INT >= 21) {
                                MediaCodecInfo.VideoCapabilities videoCapabilities = capabilitiesForType.getVideoCapabilities();
                                hashMap.put("bitRatesBps", m6805a(videoCapabilities.getBitrateRange()));
                                hashMap.put("widthAlignment", Integer.valueOf(videoCapabilities.getWidthAlignment()));
                                hashMap.put("heightAlignment", Integer.valueOf(videoCapabilities.getHeightAlignment()));
                                hashMap.put("frameRates", m6805a(videoCapabilities.getSupportedFrameRates()));
                                hashMap.put("widths", m6805a(videoCapabilities.getSupportedWidths()));
                                hashMap.put("heights", m6805a(videoCapabilities.getSupportedHeights()));
                            }
                            if (Build.VERSION.SDK_INT >= 23) {
                                hashMap.put("instancesLimit", Integer.valueOf(capabilitiesForType.getMaxSupportedInstances()));
                            }
                            arrayList2.add(hashMap);
                        }
                    }
                    f17610a.put(str, arrayList2);
                    arrayList = arrayList2;
                } catch (LinkageError | RuntimeException e) {
                    HashMap hashMap2 = new HashMap();
                    hashMap2.put("error", e.getClass().getSimpleName());
                    ArrayList arrayList4 = new ArrayList();
                    arrayList4.add(hashMap2);
                    f17610a.put(str, arrayList4);
                    arrayList = arrayList4;
                }
            }
        }
        return arrayList;
    }

    @TargetApi(21)
    /* renamed from: a */
    private static Integer[] m6805a(Range<Integer> range) {
        return new Integer[]{range.getLower(), range.getUpper()};
    }
}
