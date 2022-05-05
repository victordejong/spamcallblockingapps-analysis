package com.privacystar.core.data.sqlite.p008db.caller_id;

import android.support.annotation.NonNull;
import com.privacystar.core.data.call.call_event.LogItem;
/* renamed from: com.privacystar.core.data.sqlite.db.caller_id.CallerIdModel */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/caller_id/CallerIdModel.class */
public class CallerIdModel {

    /* renamed from: com.privacystar.core.data.sqlite.db.caller_id.CallerIdModel$CallerId */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/caller_id/CallerIdModel$CallerId.class */
    public static class CallerId implements Comparable<CallerId> {
        public static final long EXPIRATION_PERIOD = 100;
        public int bitValue;
        public String callerName;
        public int cdmNameId;
        public String cityState;
        public long expires;
        public String lineType;
        public String phoneNumber;

        public CallerId() {
        }

        public CallerId(String str, String str2, int i, long j, int i2, String str3, String str4) {
            this.phoneNumber = str;
            this.callerName = str2;
            this.cdmNameId = i;
            this.expires = j;
            this.bitValue = i2;
            this.cityState = str3;
            this.lineType = str4;
        }

        public int compareTo(@NonNull CallerId callerId) {
            return this.phoneNumber.compareTo(callerId.phoneNumber);
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            CallerId callerId = (CallerId) obj;
            if (this.cdmNameId != callerId.cdmNameId || this.expires != callerId.expires || this.bitValue != callerId.bitValue) {
                return false;
            }
            if (this.phoneNumber != null) {
                if (!this.phoneNumber.equals(callerId.phoneNumber)) {
                    return false;
                }
            } else if (callerId.phoneNumber != null) {
                return false;
            }
            if (this.callerName != null) {
                if (!this.callerName.equals(callerId.callerName)) {
                    return false;
                }
            } else if (callerId.callerName != null) {
                return false;
            }
            if (this.cityState != null) {
                if (!this.cityState.equals(callerId.cityState)) {
                    return false;
                }
            } else if (callerId.cityState != null) {
                return false;
            }
            if (this.lineType != null) {
                z = this.lineType.equals(callerId.lineType);
            } else if (callerId.lineType != null) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int i = 0;
            int hashCode = this.phoneNumber != null ? this.phoneNumber.hashCode() : 0;
            int hashCode2 = this.callerName != null ? this.callerName.hashCode() : 0;
            int i2 = this.cdmNameId;
            int i3 = (int) (this.expires ^ (this.expires >>> 32));
            int i4 = this.bitValue;
            int hashCode3 = this.cityState != null ? this.cityState.hashCode() : 0;
            if (this.lineType != null) {
                i = this.lineType.hashCode();
            }
            return (((((((((((hashCode * 31) + hashCode2) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + hashCode3) * 31) + i;
        }

        public LogItem toLogItem() {
            LogItem logItem = new LogItem();
            logItem.setName(this.callerName);
            logItem.setDate(this.expires - 100);
            logItem.setPhoneNumber(this.phoneNumber);
            logItem.setIdentification(true);
            return logItem;
        }
    }
}
