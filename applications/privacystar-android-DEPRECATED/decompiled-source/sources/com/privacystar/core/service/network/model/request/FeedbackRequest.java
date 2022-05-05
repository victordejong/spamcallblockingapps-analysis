package com.privacystar.core.service.network.model.request;

import com.crashlytics.android.answers.BuildConfig;
import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.privacystar.core.service.network.model.component.BasePayload;
import com.privacystar.core.service.network.model.component.FeedbackObject;
import com.privacystar.core.util.Text;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/FeedbackRequest.class */
public class FeedbackRequest implements Serializable {
    @SerializedName("payload")
    @Expose
    private Payload payload;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/FeedbackRequest$MessageTrackerCallType.class */
    public enum MessageTrackerCallType {
        ACT("act"),
        UNKNOWN("unknown");
        
        private String value;

        MessageTrackerCallType(String str) {
            this.value = str;
        }

        public static MessageTrackerCallType fromLabel(String str) {
            MessageTrackerCallType[] values;
            for (MessageTrackerCallType messageTrackerCallType : values()) {
                if (Text.equalsIgnoreCase(str, messageTrackerCallType.getLabel())) {
                    return messageTrackerCallType;
                }
            }
            return UNKNOWN;
        }

        public String getLabel() {
            return this.value;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/FeedbackRequest$Payload.class */
    public class Payload extends BasePayload implements Serializable {
        @SerializedName(BuildConfig.ARTIFACT_ID)
        @Expose
        private List<FeedbackObject> answersList = new ArrayList();
        @SerializedName("feedback_type_id")
        @Expose
        private int feedbackTypeId;

        public Payload() {
        }

        public List<FeedbackObject> getAnswersList() {
            return this.answersList;
        }

        public int getFeedbackTypeId() {
            return this.feedbackTypeId;
        }

        public void setAnswersList(List<FeedbackObject> list) {
            this.answersList = list;
        }

        public void setFeedbackTypeId(int i) {
            this.feedbackTypeId = i;
        }

        public String toString() {
            return new GsonBuilder().setPrettyPrinting().create().toJson(this);
        }

        public Payload withAnswers(List<FeedbackObject> list) {
            this.answersList = list;
            return this;
        }

        public Payload withFeedbackTypeId(int i) {
            this.feedbackTypeId = i;
            return this;
        }
    }

    public Payload getPayload() {
        return this.payload;
    }

    public Payload instantiatePayload() {
        return new Payload();
    }

    public void setPayload(Payload payload) {
        this.payload = payload;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }

    public FeedbackRequest withPayload(Payload payload) {
        this.payload = payload;
        return this;
    }
}
