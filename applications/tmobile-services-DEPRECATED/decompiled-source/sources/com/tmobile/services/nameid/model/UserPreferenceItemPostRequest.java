package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/UserPreferenceItemPostRequest.class */
public class UserPreferenceItemPostRequest {
    @SerializedName("userPreferenceItemList")
    @Expose
    private List<PostedUserPreferenceItem> items;

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/UserPreferenceItemPostRequest$PostedUserPreferenceItem.class */
    public static class PostedUserPreferenceItem {
        @SerializedName("commEventType")
        @Expose
        private int commEvent;
        @SerializedName("preferenceDisposition")
        @Expose
        private int disposition;
        @SerializedName("callerNumber")
        @Expose
        private String number;

        public int getCommEvent() {
            return this.commEvent;
        }

        public int getDisposition() {
            return this.disposition;
        }

        public String getNumber() {
            return this.number;
        }

        public void setCommEvent(int i) {
            this.commEvent = i;
        }

        public void setDisposition(int i) {
            this.disposition = i;
        }

        public void setNumber(String str) {
            this.number = str;
        }
    }

    public List<PostedUserPreferenceItem> getItems() {
        return this.items;
    }

    public void setItems(List<PostedUserPreferenceItem> list) {
        this.items = list;
    }
}
