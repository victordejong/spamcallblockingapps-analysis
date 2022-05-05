package com.privacystar.core.service.network.model.component;

import com.apptentive.android.sdk.module.engagement.interaction.model.survey.BaseQuestion;
import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/component/FeedbackObject.class */
public class FeedbackObject implements Serializable {
    @SerializedName("answer")
    @Expose
    private String answer;
    @SerializedName(BaseQuestion.KEY_NAME)
    @Expose
    private String question;

    public String getAnswer() {
        return this.answer;
    }

    public String getQuestion() {
        return this.question;
    }

    public void setAnswer(String str) {
        this.answer = str;
    }

    public void setQuestion(String str) {
        this.question = str;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }

    public FeedbackObject withAnswer(String str) {
        this.answer = str;
        return this;
    }

    public FeedbackObject withQuestion(String str) {
        this.question = str;
        return this;
    }
}
