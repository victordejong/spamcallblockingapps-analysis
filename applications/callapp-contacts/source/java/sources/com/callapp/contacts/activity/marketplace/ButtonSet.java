package com.callapp.contacts.activity.marketplace;

import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/ButtonSet.class */
public enum ButtonSet {
    SINGLE_DEFAULT(2131231503, false),
    DUAL_PHONE_CIRCLE(2131231514, 2131231515, false),
    SINGLE_OCTOPUS(2131232123, true, "octopus_from_superskin.gif"),
    DUAL_CALLMAN(2131230879, 2131230880, false, "call_man_g_from_superskin.gif", "call_man_r_from_superskin.gif"),
    SINGLE_STAR(2131231507, false),
    DUAL_DOG_FACE(2131231361, 2131232158, false, "green_dog.gif", "red_dog.gif"),
    SINGLE_PHONE_LINES(2131231505, true),
    DUAL_BEAR(2131231508, 2131231509, false, "bear_g.gif", "bear_r.gif"),
    SINGLE_ASTRONAUT(2131231502, true),
    DUAL_PHONE_LINES(2131231519, 2131231520, false),
    SINGLE_SPACE(2131231506, true),
    DUAL_STARS(2131231518, 2131231521, false),
    SINGLE_DRAGON(2131231006, true, "dragon_from_superskin.gif"),
    DUAL_CAT(2131231510, 2131231511, false),
    SINGLE_JELLYFISH(2131232029, true, "jellyfish.gif"),
    DUAL_TWO_STARS(2131231522, 2131231523, false),
    DUAL_DOGS(2131231003, 2131231004, false, "dog_full_body_g.gif", "dog_full_body_r.gif"),
    DUAL_PAWS(2131231512, 2131231513, false),
    DUAL_PHONE_FILL(2131231516, 2131231517, false);
    
    private int answerDrawableResourceId;
    private String answerResourceUrl;
    private int declineDrawableResourceId;
    private String declineResourceUrl;
    private boolean isPicked;
    private boolean shouldHideBackground;
    private boolean shouldPlayAsGif;

    ButtonSet(int i, int i2, boolean z) {
        this(i, i2, z, null, null);
    }

    ButtonSet(int i, int i2, boolean z, String str, String str2) {
        this.answerDrawableResourceId = i;
        this.declineDrawableResourceId = i2;
        this.shouldHideBackground = z;
        this.answerResourceUrl = str;
        this.declineResourceUrl = str2;
        this.shouldPlayAsGif = StringUtils.m26045b((CharSequence) str);
    }

    ButtonSet(int i, boolean z) {
        this(i, -1, z);
    }

    ButtonSet(int i, boolean z, String str) {
        this(i, -1, z, str, null);
    }

    public final int getAnswerCallDrawableRes() {
        return this.answerDrawableResourceId;
    }

    public final String getAnswerResourceUrl() {
        return CallAppRemoteConfigManager.get().m28703a("ButtonSetGifUrlPrefix") + this.answerResourceUrl;
    }

    public final int getDeclineCallDrawableRes() {
        return this.declineDrawableResourceId;
    }

    public final String getDeclineResourceUrl() {
        return CallAppRemoteConfigManager.get().m28703a("ButtonSetGifUrlPrefix") + this.declineResourceUrl;
    }

    public final boolean isGif() {
        return this.shouldPlayAsGif;
    }

    public final boolean isPicked() {
        return this.isPicked;
    }

    public final boolean isSingleButtonSetResource() {
        return this.declineDrawableResourceId == -1;
    }

    public final void setIsPicked(boolean z) {
        this.isPicked = z;
    }

    public final boolean shouldHideBackground() {
        return this.shouldHideBackground;
    }
}
