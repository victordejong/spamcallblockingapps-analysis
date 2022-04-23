package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.aq;
import com.google.android.gms.internal.ads.ekb;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/MediationUtils.class */
public class MediationUtils {
    protected static final double MIN_HEIGHT_RATIO = 0.7d;
    protected static final double MIN_WIDTH_RATIO = 0.5d;

    public static AdSize findClosestSize(Context context, AdSize adSize, List<AdSize> list) {
        boolean z;
        AdSize adSize2 = null;
        AdSize adSize3 = null;
        if (list != null) {
            if (adSize != null) {
                AdSize adSize4 = adSize;
                if (!adSize.zzdv()) {
                    adSize4 = adSize;
                    if (!adSize.zzdx()) {
                        float f = context.getResources().getDisplayMetrics().density;
                        adSize4 = new AdSize(Math.round(adSize.getWidthInPixels(context) / f), Math.round(adSize.getHeightInPixels(context) / f));
                    }
                }
                Iterator<AdSize> it2 = list.iterator();
                while (true) {
                    adSize3 = adSize2;
                    if (!it2.hasNext()) {
                        break;
                    }
                    AdSize next = it2.next();
                    if (next == null) {
                        z = false;
                    } else {
                        int width = adSize4.getWidth();
                        int width2 = next.getWidth();
                        int height = adSize4.getHeight();
                        int height2 = next.getHeight();
                        z = false;
                        if (width * MIN_WIDTH_RATIO <= width2) {
                            if (width < width2) {
                                z = false;
                            } else if (adSize4.zzdx()) {
                                int zzdy = adSize4.zzdy();
                                z = false;
                                if (((Integer) ekb.e().a(aq.eA)).intValue() <= width2) {
                                    z = false;
                                    if (((Integer) ekb.e().a(aq.eB)).intValue() <= height2) {
                                        if (zzdy < height2) {
                                            z = false;
                                        }
                                        z = true;
                                    }
                                }
                            } else if (adSize4.zzdv()) {
                                if (adSize4.zzdw() < height2) {
                                    z = false;
                                }
                                z = true;
                            } else {
                                z = false;
                                if (height * MIN_HEIGHT_RATIO <= height2) {
                                    if (height < height2) {
                                        z = false;
                                    }
                                    z = true;
                                }
                            }
                        }
                    }
                    if (z && (adSize2 == null || adSize2.getWidth() * adSize2.getHeight() <= next.getWidth() * next.getHeight())) {
                        adSize2 = next;
                    }
                }
            } else {
                adSize3 = null;
            }
        }
        return adSize3;
    }
}
