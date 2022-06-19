package com.criteo.publisher.p249i;

import com.explorestack.iab.vast.VastError;
/* renamed from: com.criteo.publisher.i.a */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/i/a.class */
public enum EnumC8347a {
    FALLBACK(235),
    STANDALONE(295),
    IN_HOUSE(296),
    MOPUB_MEDIATION(297),
    ADMOB_MEDIATION(298),
    MOPUB_APP_BIDDING(299),
    GAM_APP_BIDDING(VastError.ERROR_CODE_GENERAL_WRAPPER),
    CUSTOM_APP_BIDDING(VastError.ERROR_CODE_BAD_URI);
    

    /* renamed from: a */
    private final int f30006a;

    EnumC8347a(int i) {
        this.f30006a = i;
    }

    /* renamed from: a */
    public final int m25812a() {
        return this.f30006a;
    }
}
