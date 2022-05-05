package com.privacystar.core.data.model.types;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/types/Feature.class */
public enum Feature {
    CALL_BLOCKING(1, "Call Blocking"),
    NAME_BLOCKING(2, "Name Blocking"),
    UNKNOWN_BLOCKING(3, "Unknown Blocking"),
    GROUP_BLOCKING(4, "Group Blocking"),
    DO_NOT_DISTURB(5, "Do Not Disturb"),
    SCAM_BLOCKING(6, "Scam Blocking"),
    COMPLAINT_FILING(7, "Complaint Filing"),
    LIVE_CID_LOOKUP_NONGREEN(8, "Live Caller ID Lookup (Non Green)"),
    LIVE_CID_LOOKUP_GREEN(9, "Live Caller ID Lookup (Green)"),
    MANUAL_CID_LOOKUP(10, "Manual Number Lookup"),
    INFLECTION(11, "Inflection"),
    PRE_CC_NONGREEN(12, "Show Pre-Call Center (Non Green)"),
    PRE_CC_GREEN(13, "Show Pre-Call Center (Green)"),
    POST_CC_NONGREEN(14, "Show Post-Call Center (Non Green)"),
    POST_CC_GREEN(15, "Show Post-Call Center (Green)"),
    DIRECTORY_ASSISTANCE(16, "Directory Assistance"),
    MISSED_CALL_NOTIFICATIONS_NONGREEN(17, "Show Missed Call Notification (Non Green)"),
    MISSED_CALL_NOTIFICATIONS_GREEN(18, "Show Missed Call Notification (Green)"),
    CNAP(19, "CNAP"),
    CYD_DISABLED(20, "CallerYD Disabled"),
    APPROVE_LIST(21, "Approve List"),
    ADA_SUPPORT(22, "ADA support"),
    NETWORK_CALL_BLOCKING(23, "Network Call Blocking (PNB)"),
    NETWORK_CATEGORY_SEND_TO_VM(24, "Network Category send to VM"),
    NETWORK_CATEGORY_IDENTIFICATION(25, "Network Category Identification"),
    NETWORK_SCAM_ID(26, "Network Scam ID"),
    NETWORK_SCAM_BLOCK(27, "Network Scam Block"),
    ENGAGE(28, "Engage"),
    NETWORK_MESSAGE_BLOCKING(29, "Network Message Blocking"),
    BLOCKED_CALL_NOTIFICATIONS_OFFENDERS(30, "Show Blocked Call Notifications (Offenders)"),
    BLOCKED_CALL_NOTIFICATIONS_NONOFFENDERS(31, "Show Blocked Call Notifications (Non-offenders)"),
    SCREEN_IT_PURCHASE(32, "Screen-It Purchase"),
    PRE_CC_SCAM(33, "Show Pre-Call Center (Scammers)"),
    POST_CC_SCAM(34, "Show Post-Call Center (Scammers)"),
    NEIGHBORHOOD_SPOOFING(35, "Neighborhood Spoofing Alerts"),
    SEND_TO_VOICEMAIL(36, "Send to Voicemail"),
    CATEGORY_BLOCKING(37, "Category Blocking (Non-Scam)"),
    INVALID(-1, "Invalid Feature ID");
    
    private int featureId;
    private String featureName;

    Feature(int i, String str) {
        this.featureId = i;
        this.featureName = str;
    }

    public static Feature getFeatureFromId(int i) {
        Feature[] values;
        for (Feature feature : values()) {
            if (feature.featureId == i) {
                return feature;
            }
        }
        return INVALID;
    }

    public int getId() {
        return this.featureId;
    }

    public String getName() {
        return this.featureName;
    }
}
