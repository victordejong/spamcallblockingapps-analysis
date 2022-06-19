package com.pubmatic.sdk.video.player;

import android.content.Context;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.video.POBVastPlayerConfig;
import com.pubmatic.sdk.video.player.POBVideoPlayerView;
import com.pubmatic.sdk.video.vastmodels.POBCompanion;
import com.pubmatic.sdk.video.vastmodels.POBMediaFile;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVastPlayerUtil.class */
public class POBVastPlayerUtil {
    /* renamed from: a */
    private static float m651a(POBMediaFile pOBMediaFile, float f, int i, int i2) {
        return Math.abs((pOBMediaFile.getBitrate() - f) / f) + Math.abs((pOBMediaFile.getWidth() - i) / i) + Math.abs((pOBMediaFile.getHeight() - i2) / i2);
    }

    /* renamed from: a */
    private static List<POBMediaFile> m650a(List<POBMediaFile> list, POBVideoPlayerView.SupportedMediaType[] supportedMediaTypeArr) {
        ArrayList arrayList;
        ArrayList arrayList2;
        if (list != null) {
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            for (POBMediaFile pOBMediaFile : list) {
                int length = supportedMediaTypeArr.length;
                int i = 0;
                while (true) {
                    if (i < length) {
                        POBVideoPlayerView.SupportedMediaType supportedMediaType = supportedMediaTypeArr[i];
                        if (pOBMediaFile.getType().contains(supportedMediaType.getValue())) {
                            arrayList3.add(pOBMediaFile);
                            if (supportedMediaType != POBVideoPlayerView.SupportedMediaType.MEDIA_WEBM) {
                                arrayList4.add(pOBMediaFile);
                            }
                        } else {
                            i++;
                        }
                    }
                }
            }
            arrayList2 = arrayList3;
            arrayList = arrayList4;
        } else {
            arrayList2 = null;
            arrayList = null;
        }
        return (arrayList == null || !arrayList.isEmpty()) ? arrayList : arrayList2;
    }

    public static POBMediaFile filterMediaFiles(List<POBMediaFile> list, POBVideoPlayerView.SupportedMediaType[] supportedMediaTypeArr, int i, int i2, int i3) {
        List<POBMediaFile> m650a = m650a(list, supportedMediaTypeArr);
        if (m650a == null || m650a.size() <= 0) {
            return null;
        }
        if (m650a.size() == 1) {
            return m650a.get(0);
        }
        POBMediaFile pOBMediaFile = m650a.get(0);
        float f = i;
        float m651a = m651a(pOBMediaFile, f, i2, i3);
        POBMediaFile pOBMediaFile2 = m650a.get(0);
        int i4 = 1;
        while (i4 < m650a.size()) {
            POBMediaFile pOBMediaFile3 = m650a.get(i4);
            float m651a2 = m651a(pOBMediaFile3, f, i2, i3);
            float f2 = m651a;
            if (m651a2 < m651a) {
                pOBMediaFile2 = pOBMediaFile3;
                f2 = m651a2;
            }
            i4++;
            m651a = f2;
        }
        return pOBMediaFile2;
    }

    public static int getBitRate(boolean z, boolean z2) {
        int i;
        if (!z || z2) {
            if (z) {
                i = 1000;
            } else if (z2) {
                i = 2000;
            }
            return i;
        }
        i = 600;
        return i;
    }

    public static int getScaleFactor(Context context) {
        return context.getResources().getDisplayMetrics().density >= 2.0f ? 2 : 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [double] */
    /* JADX WARN: Type inference failed for: r0v7, types: [double] */
    /* JADX WARN: Type inference failed for: r0v9, types: [double] */
    /* JADX WARN: Type inference failed for: r5v7 */
    public static double getSkipOffset(double d, POBVastPlayerConfig pOBVastPlayerConfig, long j) {
        char c;
        int skipAfter;
        if (pOBVastPlayerConfig.getSkip() == 0) {
            int i = (d > 0.0d ? 1 : (d == 0.0d ? 0 : -1));
            c = d;
            if (i == 0) {
                skipAfter = pOBVastPlayerConfig.getMaxDuration();
                c = skipAfter;
            }
        } else if (pOBVastPlayerConfig.getSkip() != 1 || j <= pOBVastPlayerConfig.getSkipMin()) {
            c = 0;
        } else {
            skipAfter = pOBVastPlayerConfig.getSkipAfter();
            c = skipAfter;
        }
        return c == 0.0d ? j : Math.min(j, c);
    }

    public static POBCompanion getSuitableEndCardCompanion(List<POBCompanion> list, int i, int i2, float f, float f2) {
        ArrayList<POBCompanion> arrayList = new ArrayList();
        float f3 = i;
        float f4 = f3 / i2;
        for (POBCompanion pOBCompanion : list) {
            if ("end-card".equals(pOBCompanion.getRenderingMode())) {
                arrayList.add(pOBCompanion);
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.addAll(list);
        }
        float f5 = 9999.0f;
        POBCompanion pOBCompanion2 = null;
        for (POBCompanion pOBCompanion3 : arrayList) {
            int convertDpToPixel = POBUtils.convertDpToPixel(pOBCompanion3.getWidth());
            int convertDpToPixel2 = POBUtils.convertDpToPixel(pOBCompanion3.getHeight());
            float f6 = convertDpToPixel;
            float abs = Math.abs(1.0f - ((f6 / convertDpToPixel2) / f4));
            float abs2 = Math.abs(1.0f - (f6 / f3));
            if (f >= abs && abs < f5 && abs2 <= f2) {
                pOBCompanion2 = pOBCompanion3;
                f5 = abs;
            }
        }
        return pOBCompanion2;
    }
}
