package com.privacystar.core.service.network.model.request;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.privacystar.core.service.network.model.component.UserObject;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/BlockListRequest.class */
public class BlockListRequest implements Serializable {
    @SerializedName("payload")
    @Expose
    private Payload payload;
    @SerializedName("user")
    @Expose
    private UserObject user;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/BlockListRequest$BlockListActionType.class */
    public enum BlockListActionType {
        GET("get"),
        PUT("put");
        
        private final String value;

        BlockListActionType(String str) {
            this.value = str;
        }

        public BlockListActionType fromValue(String str) {
            BlockListActionType[] values;
            for (BlockListActionType blockListActionType : values()) {
                if (blockListActionType.getValue().equalsIgnoreCase(str)) {
                    return blockListActionType;
                }
            }
            return null;
        }

        public String getValue() {
            return this.value;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/BlockListRequest$Payload.class */
    public class Payload implements Serializable {
        @SerializedName("act")
        @Expose
        private BlockListActionType actionType;
        @SerializedName("apk")
        @Expose
        private String applicationVersion;
        @SerializedName("bl")
        @Expose
        private List<String> blockList;
        @SerializedName("token")
        @Expose
        private String token;

        public Payload() {
        }

        public BlockListActionType getActionType() {
            return this.actionType;
        }

        public String getApplicationVersion() {
            return this.applicationVersion;
        }

        public List<String> getBlockList() {
            return this.blockList;
        }

        public String getToken() {
            return this.token;
        }

        public void setActionType(BlockListActionType blockListActionType) {
            this.actionType = blockListActionType;
        }

        public void setActionType(String str) {
            this.actionType = BlockListActionType.valueOf(str);
        }

        public void setApplicationVersion(String str) {
            this.applicationVersion = str;
        }

        public void setBlockList(List<String> list) {
            this.blockList = list;
        }

        public void setToken(String str) {
            this.token = str;
        }

        public Payload withActionType(BlockListActionType blockListActionType) {
            this.actionType = blockListActionType;
            return this;
        }

        public Payload withActionType(String str) {
            this.actionType = BlockListActionType.valueOf(str);
            return this;
        }

        public Payload withApplicationVersion(String str) {
            this.applicationVersion = str;
            return this;
        }

        public Payload withBlockList(List<String> list) {
            this.blockList = list;
            return this;
        }

        public Payload withToken(String str) {
            this.token = str;
            return this;
        }
    }

    public Payload getPayload() {
        return this.payload;
    }

    public UserObject getUser() {
        return this.user;
    }

    public Payload instantiatePayload() {
        return new Payload();
    }

    public void setPayload(Payload payload) {
        this.payload = payload;
    }

    public void setUser(UserObject userObject) {
        this.user = userObject;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }

    public BlockListRequest withPayload(Payload payload) {
        this.payload = payload;
        return this;
    }

    public BlockListRequest withUser(UserObject userObject) {
        this.user = userObject;
        return this;
    }
}
