package com.mopub.nativeads;

import com.mopub.common.VisibleForTesting;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative$a$b.class */
public enum MoPubCustomEventNative$a$b {
    IMPRESSION_TRACKER("imptracker", true),
    CLICK_TRACKER("clktracker", true),
    TITLE("title", false),
    TEXT("text", false),
    MAIN_IMAGE("mainimage", false),
    ICON_IMAGE("iconimage", false),
    CLICK_DESTINATION("clk", false),
    FALLBACK("fallback", false),
    CALL_TO_ACTION("ctatext", false),
    STAR_RATING("starrating", false),
    PRIVACY_INFORMATION_ICON_IMAGE_URL("privacyicon", false),
    PRIVACY_INFORMATION_ICON_CLICKTHROUGH_URL("privacyclkurl", false),
    SPONSORED("sponsored", false);
    
    @VisibleForTesting

    /* renamed from: c */
    public static final Set<String> f9063c = new HashSet();

    /* renamed from: a */
    public final String f9065a;

    /* renamed from: b */
    public final boolean f9066b;

    static {
        MoPubCustomEventNative$a$b[] values = values();
        for (int i = 0; i < 13; i++) {
            MoPubCustomEventNative$a$b moPubCustomEventNative$a$b = values[i];
            if (moPubCustomEventNative$a$b.f9066b) {
                f9063c.add(moPubCustomEventNative$a$b.f9065a);
            }
        }
    }

    MoPubCustomEventNative$a$b(String str, boolean z) {
        this.f9065a = str;
        this.f9066b = z;
    }
}
