package com.privacystar.core.service.jobs;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/jobs/JobConstants.class */
public class JobConstants {
    public static final String GROUP_ACTIVITY_PROCESSING = "group_activity_processing";
    public static final String GROUP_BULK_LOOKUP = "group_bulk_lookup";
    public static final String GROUP_GOOGLE_PLAY_CANCEL = "group_google_play_cancel";
    public static final String GROUP_LICENSE = "group_license";
    public static final String GROUP_OFFENDER_PROCESSING = "group_offender_processing";
    public static final String GROUP_REGISTRATION = "group_registration";
    public static final int HIGH = 900;
    public static final int HIGHEST = 999;
    public static final int LOW = 0;
    public static final int MEDIUM = 500;
    public static final String SINGLE_REGISTRATION = "single_registration";
    public static final String TAG_REGISTRATION = "tag_registration";

    private JobConstants() throws InstantiationException {
        throw new InstantiationException("This static utility class can't be instantiated.");
    }
}
