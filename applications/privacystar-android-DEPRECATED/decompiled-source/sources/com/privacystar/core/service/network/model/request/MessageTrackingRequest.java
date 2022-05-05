package com.privacystar.core.service.network.model.request;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.privacystar.core.util.BlockingManager;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/MessageTrackingRequest.class */
public class MessageTrackingRequest implements Serializable {
    @SerializedName("payload")
    @Expose
    private Payload payload;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/MessageTrackingRequest$Payload.class */
    public class Payload implements Serializable {
        @SerializedName(BlockingManager.ACTION_CONSTANT)
        @Expose
        private String action;
        @SerializedName("batch_id")
        @Expose
        private String batchId;
        @SerializedName("fcm_key")
        @Expose
        private String fcmKey;
        @SerializedName("locale")
        @Expose
        private String locale;
        @SerializedName("type")
        @Expose
        private TrackingType type;

        public Payload() {
        }

        public String getAction() {
            return this.action;
        }

        public String getBatchId() {
            return this.batchId;
        }

        public String getFcmKey() {
            return this.fcmKey;
        }

        public String getLocale() {
            return this.locale;
        }

        public TrackingType getType() {
            return this.type;
        }

        public void setAction(String str) {
            this.action = str;
        }

        public void setBatchId(String str) {
            this.batchId = str;
        }

        public void setFcmKey(String str) {
            this.fcmKey = str;
        }

        public void setLocale(String str) {
            this.locale = str;
        }

        public void setType(TrackingType trackingType) {
            this.type = trackingType;
        }

        public String toString() {
            return new GsonBuilder().setPrettyPrinting().create().toJson(this);
        }

        public Payload withAction(String str) {
            this.action = str;
            return this;
        }

        public Payload withBatchId(String str) {
            this.batchId = str;
            return this;
        }

        public Payload withFcmKey(String str) {
            this.fcmKey = str;
            return this;
        }

        public Payload withLocale(String str) {
            this.locale = str;
            return this;
        }

        public Payload withType(TrackingType trackingType) {
            this.type = trackingType;
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/MessageTrackingRequest$TrackingType.class */
    public enum TrackingType {
        RECEIVED("received"),
        OPENED("opened"),
        ACTED("acted");
        
        private String value;

        TrackingType(String str) {
            this.value = str;
        }

        public static TrackingType fromLabel(String str) {
            TrackingType[] values;
            for (TrackingType trackingType : values()) {
                if (trackingType.getLabel().equals(str)) {
                    return trackingType;
                }
            }
            return null;
        }

        public String getLabel() {
            return this.value;
        }

        @Override // java.lang.Enum
        public String toString() {
            return getLabel();
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

    public MessageTrackingRequest withPayload(Payload payload) {
        this.payload = payload;
        return this;
    }
}
