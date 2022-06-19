package com.callapp.contacts.util.ads.bidder;

import com.callapp.contacts.util.ads.AdUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/bidder/Bidder.class */
public interface Bidder {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/bidder/Bidder$_CC.class */
    public final /* synthetic */ class _CC {
        public static void $default$notifyLoss(Bidder bidder) {
        }
    }

    void destroy();

    int getAdHeight();

    void loadAd(AdUtils.AdEvents adEvents);

    void notifyLoss();
}
