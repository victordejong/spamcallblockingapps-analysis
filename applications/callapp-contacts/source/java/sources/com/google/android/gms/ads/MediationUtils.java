package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.C12187aq;
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
        if (list != null) {
            if (adSize != null) {
                AdSize adSize3 = adSize;
                if (!adSize.zzdv()) {
                    adSize3 = adSize;
                    if (!adSize.zzdx()) {
                        float f = context.getResources().getDisplayMetrics().density;
                        adSize3 = new AdSize(Math.round(adSize.getWidthInPixels(context) / f), Math.round(adSize.getHeightInPixels(context) / f));
                    }
                }
                Iterator<AdSize> it2 = list.iterator();
                AdSize adSize4 = null;
                while (true) {
                    adSize2 = adSize4;
                    if (!it2.hasNext()) {
                        break;
                    }
                    AdSize next = it2.next();
                    if (next == null) {
                        z = false;
                    } else {
                        int width = adSize3.getWidth();
                        int width2 = next.getWidth();
                        int height = adSize3.getHeight();
                        int height2 = next.getHeight();
                        z = false;
                        if (width * MIN_WIDTH_RATIO <= width2) {
                            if (width < width2) {
                                z = false;
                            } else if (adSize3.zzdx()) {
                                int zzdy = adSize3.zzdy();
                                z = false;
                                if (((Integer) ekb.m14831e().m18571a(C12187aq.f42850eA)).intValue() <= width2) {
                                    z = false;
                                    if (((Integer) ekb.m14831e().m18571a(C12187aq.f42851eB)).intValue() <= height2) {
                                        if (zzdy < height2) {
                                            z = false;
                                        }
                                        z = true;
                                    }
                                }
                            } else if (adSize3.zzdv()) {
                                if (adSize3.zzdw() < height2) {
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
