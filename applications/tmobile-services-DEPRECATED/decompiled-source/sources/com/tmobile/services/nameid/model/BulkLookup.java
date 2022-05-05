package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.tmobile.services.nameid.model.CallLog;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/BulkLookup.class */
public class BulkLookup {

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/BulkLookup$CheckResponse.class */
    public static class CheckResponse {
        @SerializedName("lookupResults")
        @Expose
        private List<CallLog.CallLogItem> callLogItems = new ArrayList();

        public List<CallLog.CallLogItem> getCallLogItems() {
            return this.callLogItems;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/BulkLookup$Request.class */
    public static class Request {
        @SerializedName("callerNumbers")
        @Expose
        private List<String> numbers;

        public Request(List<String> list) {
            this.numbers = list;
        }

        public List<String> getNumbers() {
            return this.numbers;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/BulkLookup$Response.class */
    public static class Response {
        @SerializedName("transactionId")
        @Expose
        private String transactionId;

        public String getTransactionId() {
            return this.transactionId;
        }

        public void setTransactionId(String str) {
            this.transactionId = str;
        }
    }
}
