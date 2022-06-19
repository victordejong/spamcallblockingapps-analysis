package com.google.android.gms.ads;

import android.content.Context;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/MediationUtils.class */
public class MediationUtils {
    public static final double MIN_HEIGHT_RATIO = 0.7d;
    public static final double MIN_WIDTH_RATIO = 0.5d;

    public static AdSize findClosestSize(Context context, AdSize adSize, List<AdSize> list) {
        boolean z;
        AdSize adSize2 = null;
        if (list != null) {
            if (adSize != null) {
                AdSize adSize3 = adSize;
                if (!adSize.zzdu()) {
                    float f = context.getResources().getDisplayMetrics().density;
                    adSize3 = new AdSize(Math.round(adSize.getWidthInPixels(context) / f), Math.round(adSize.getHeightInPixels(context) / f));
                }
                Iterator<AdSize> it = list.iterator();
                AdSize adSize4 = null;
                while (true) {
                    adSize2 = adSize4;
                    if (!it.hasNext()) {
                        break;
                    }
                    AdSize next = it.next();
                    if (next == null) {
                        z = false;
                    } else {
                        int width = adSize3.getWidth();
                        int width2 = next.getWidth();
                        int height = adSize3.getHeight();
                        int height2 = next.getHeight();
                        z = false;
                        if (width * 0.5d <= width2) {
                            if (width < width2) {
                                z = false;
                            } else if (adSize3.zzdu()) {
                                if (adSize3.zzdv() < height2) {
                                    z = false;
                                }
                                z = true;
                            } else {
                                z = false;
                                if (height * 0.7d <= height2) {
                                    if (height < height2) {
                                        z = false;
                                    }
                                    z = true;
                                }
                            }
                        }
                    }
                    if (z && (adSize4 == null || adSize4.getWidth() * adSize4.getHeight() <= next.getWidth() * next.getHeight())) {
                        adSize4 = next;
                    }
                }
            } else {
                adSize2 = null;
            }
        }
        return adSize2;
    }
}
