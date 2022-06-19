package com.truecaller.referral;

import android.net.Uri;
import com.truecaller.data.entity.Contact;
/* loaded from: classes12-dex2jar.jar:com/truecaller/referral/ReferralManager.class */
public interface ReferralManager {

    /* loaded from: classes12-dex2jar.jar:com/truecaller/referral/ReferralManager$RedeemCodeContext.class */
    public enum RedeemCodeContext {
        GO_PRO
    }

    /* loaded from: classes12-dex2jar.jar:com/truecaller/referral/ReferralManager$ReferralLaunchContext.class */
    public enum ReferralLaunchContext {
        UNKNOWN,
        HOME_SCREEN,
        INBOX_OVERFLOW,
        CONTACT_DETAILS,
        CONTACTS,
        USER_BUSY_PROMPT,
        AFTER_CALL,
        AFTER_CALL_SAVE_CONTACT,
        NAVIGATION_DRAWER,
        PUSH_NOTIFICATION,
        DEEP_LINK,
        AFTER_CALL_PROMO,
        SEARCH_SCREEN_PROMO,
        BOTTOM_BAR,
        PROMO_POPUP,
        PREMIUM_TAB_V2
    }

    /* renamed from: Ef */
    boolean mo13070Ef(ReferralLaunchContext referralLaunchContext);

    /* renamed from: Is */
    void mo13067Is(Uri uri);

    /* renamed from: Kx */
    void mo13064Kx();

    /* renamed from: Ky */
    void mo13063Ky(ReferralLaunchContext referralLaunchContext);

    /* renamed from: Mf */
    void mo13061Mf(String str);

    /* renamed from: Xa */
    void mo13053Xa(ReferralLaunchContext referralLaunchContext);

    void clear();

    /* renamed from: dg */
    boolean mo13052dg(Contact contact);

    /* renamed from: j8 */
    void mo13051j8();

    /* renamed from: oe */
    void mo13050oe(String str);

    /* renamed from: sx */
    void mo13049sx(ReferralLaunchContext referralLaunchContext, Contact contact);
}
