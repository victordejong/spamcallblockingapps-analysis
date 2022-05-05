package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.tmobile.services.nameid.model.CallerSetting;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/CallLog.class */
public class CallLog {
    @SerializedName("count")
    @Expose
    private int count = -1;
    @SerializedName("callLog")
    @Expose
    private List<CallLogItem> items;
    @SerializedName("morePages")
    @Expose
    private boolean morePages;
    @SerializedName("page")
    @Expose
    private int page;
    @SerializedName("pageSize")
    @Expose
    private int pageSize;

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/CallLog$CallLogItem.class */
    public static class CallLogItem {
        @SerializedName("bucketId")
        @Expose
        private int bucketId;
        @SerializedName("controlNumber")
        @Expose
        private int controlNumber;
        @SerializedName("callDisposition")
        @Expose
        private int disposition;
        @SerializedName("callDispositionReason")
        @Expose
        private String dispositionReason;
        @SerializedName("callDts")
        @Expose
        private String dts;
        @SerializedName("callLogId")
        @Expose

        /* renamed from: id */
        private String f13604id;
        @SerializedName("callerName")
        @Expose
        private String name;
        @SerializedName("callerNumber")
        @Expose
        private String number;
        @SerializedName("callerType")
        @Expose
        private String type;

        public int getBucketId() {
            return this.bucketId;
        }

        public int getControlNumber() {
            return this.controlNumber;
        }

        public int getDisposition() {
            return this.disposition;
        }

        public String getDts() {
            return this.dts;
        }

        public String getId() {
            return this.f13604id;
        }

        public String getName() {
            return this.name;
        }

        public String getNumber() {
            return this.number;
        }

        public String getType() {
            return this.type;
        }

        public boolean isApproved() {
            return this.disposition == CallerSetting.Action.APPROVED.getValue() && "userrule".equalsIgnoreCase(this.dispositionReason);
        }

        public void setBucketId(int i) {
            this.bucketId = i;
        }

        public void setControlNumber(int i) {
            this.controlNumber = i;
        }

        public void setDisposition(int i) {
            this.disposition = i;
        }

        public void setDts(String str) {
            this.dts = str;
        }

        public void setId(String str) {
            this.f13604id = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setNumber(String str) {
            this.number = str;
        }

        public void setType(String str) {
            this.type = str;
        }
    }

    public int getCount() {
        return this.count;
    }

    public List<CallLogItem> getItems() {
        return this.items;
    }

    public int getPage() {
        return this.page;
    }

    public int getPageSize() {
        return this.pageSize;
    }

    public boolean hasMorePages() {
        return this.morePages;
    }

    public void setItems(List<CallLogItem> list) {
        this.items = list;
    }

    public void setMorePages(boolean z) {
        this.morePages = z;
    }

    public void setPage(int i) {
        this.page = i;
    }

    public void setPageSize(int i) {
        this.pageSize = i;
    }
}
