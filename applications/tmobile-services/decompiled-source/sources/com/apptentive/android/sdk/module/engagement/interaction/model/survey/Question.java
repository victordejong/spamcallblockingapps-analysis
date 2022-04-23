package com.apptentive.android.sdk.module.engagement.interaction.model.survey;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.debug.ErrorMetrics;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/survey/Question.class */
public interface Question {

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type.class */
    public enum Type {
        multichoice,
        singleline,
        multiselect,
        range,
        unknown;

        public static Type parse(String str) {
            try {
                return valueOf(str);
            } catch (IllegalArgumentException e) {
                ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.INTERACTIONS;
                ApptentiveLog.m15638v(apptentiveLogTag, "Error parsing unknown Question.Type: " + str, new Object[0]);
                ErrorMetrics.logException(e);
                return unknown;
            }
        }
    }

    String getErrorMessage();

    String getId();

    String getInstructions();

    String getRequiredText();

    int getType();

    String getValue();

    boolean isRequired();

    void setRequiredText(String str);
}
