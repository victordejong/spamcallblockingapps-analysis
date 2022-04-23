package com.criteo.publisher.i;

import com.explorestack.iab.vast.VastError;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/i/a.class */
public enum a {
    FALLBACK(235),
    STANDALONE(295),
    IN_HOUSE(296),
    MOPUB_MEDIATION(297),
    ADMOB_MEDIATION(298),
    MOPUB_APP_BIDDING(299),
    GAM_APP_BIDDING(VastError.ERROR_CODE_GENERAL_WRAPPER),
    CUSTOM_APP_BIDDING(VastError.ERROR_CODE_BAD_URI);
    

    /* renamed from: a  reason: collision with root package name */
    private final int f17356a;

    a(int i) {
        this.f17356a = i;
    }

    public final int a() {
        return this.f17356a;
    }
}
