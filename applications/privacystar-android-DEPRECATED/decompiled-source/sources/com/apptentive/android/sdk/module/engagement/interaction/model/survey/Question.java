package com.apptentive.android.sdk.module.engagement.interaction.model.survey;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/survey/Question.class */
public interface Question {
    public static final int QUESTION_TYPE_MULTICHOICE = 2;
    public static final int QUESTION_TYPE_MULTISELECT = 3;
    public static final int QUESTION_TYPE_RANGE = 4;
    public static final int QUESTION_TYPE_SINGLELINE = 1;

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
                ApptentiveLog.m403v(apptentiveLogTag, "Error parsing unknown Question.Type: " + str, new Object[0]);
                return unknown;
            }
        }
    }

    String getErrorMessage();

    String getId();

    String getInstructions();

    int getMaxSelections();

    int getMinSelections();

    String getRequiredText();

    int getType();

    String getValue();

    boolean isRequired();

    void setRequiredText(String str);
}
