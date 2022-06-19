package com.truecaller.network.notification;
/* loaded from: classes11-dex2jar.jar:com/truecaller/network/notification/NotificationType.class */
public enum NotificationType {
    UNSUPPORTED(Integer.MIN_VALUE),
    ANNOUNCEMENT(1),
    GENERAL(2),
    SOFTWARE_UPDATE(3),
    OPEN_URL(4),
    SHOW_HTML(5),
    SHOW_VIEW(6),
    CONTACT_REQUEST(9),
    CONTACT_REQUEST_ACCEPTED(10),
    CONTACT_DETAILS_SHARED(11),
    PREMIUM_STATUS_CHANGED(12),
    SEARCH(13),
    PROMO_OPEN_URL(14),
    PROMO_DOWNLOAD_URL(15),
    INVITE_FRIENDS(18),
    TRIGGER_INITIALIZE(21),
    CALL_ME_BACK(23),
    HINT_ANNOUNCEMENT(101),
    HINT_GENERAL(102),
    HINT_PREMIUM_FROM_OFFERWALL(103),
    HINT_OPEN_URL(104),
    HINT_SHOW_HTML(105),
    HINT_SHOW_VIEW(106),
    HINT_PROFILE_VIEWED(107),
    HINT_CONTACT_REQUEST(109),
    HINT_CONTACT_REQUEST_ACCEPTED(110),
    HINT_CONTACT_DETAILS_SHARED(111),
    HINT_SEARCH(112),
    WEB_SDK(25),
    REFERRAL_PREMIUM(26),
    TC_PAYMENT_REQUEST(29),
    TC_PAYMENT_INCOMING(30),
    TC_PAYMENT_CONFIRMATION(31),
    TC_PAYMENT_INSTANT(41),
    TC_PAYMENT_CUSTOM(32),
    WHO_VIEWED_ME(33),
    PUSH_CALLER_ID(19),
    SUBSCRIPTION_GRACE(34),
    SUBSCRIPTION_STATUS_CHANGED(36),
    VOIP(38),
    VOIP_CROSS_DC(43),
    VOIP_GROUP(48),
    CREDIT(39),
    ACCOUNT_UNSUSPENDED(46),
    CRED_CHANGED(49),
    DEFAULT_SMS_PROMO(50),
    SECONDARY_PHONE_NUMBER_LOST(51),
    GIFT_PREMIUM(52),
    SHARE_VIDEO_CALLER_ID(55),
    RECEIVE_MID_CALL_REASON(57);
    
    public final int value;

    NotificationType(int i) {
        this.value = i;
    }

    public static NotificationType valueOf(int i) {
        NotificationType[] values = values();
        for (int i2 = 0; i2 < 50; i2++) {
            NotificationType notificationType = values[i2];
            if (notificationType.value == i) {
                return notificationType;
            }
        }
        return UNSUPPORTED;
    }
}
