package com.callapp.contacts.model.invites;

import com.callapp.contacts.model.contact.ContactData;
import io.objectbox.BoxStore;
import io.objectbox.converter.PropertyConverter;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/invites/ReferAndEarnUserData.class */
public class ReferAndEarnUserData {
    transient BoxStore __boxStore;
    private long date;
    private String globalPhoneNumber;
    protected Long id;
    private String nameOrNumber;
    public ToOne<ReferAndEarnData> referAndEarnDataToOne;
    private STATUS status;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/invites/ReferAndEarnUserData$ReferAndEarnStatusConverter.class */
    public static class ReferAndEarnStatusConverter implements PropertyConverter<STATUS, Integer> {
        public Integer convertToDatabaseValue(STATUS status) {
            if (status == null) {
                return null;
            }
            return Integer.valueOf(status.value);
        }

        public STATUS convertToEntityProperty(Integer num) {
            STATUS[] values;
            if (num == null) {
                return null;
            }
            for (STATUS status : STATUS.values()) {
                if (status.value == num.intValue()) {
                    return status;
                }
            }
            return STATUS.IDLE;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS.class */
    public enum STATUS {
        IDLE(0, "Idle"),
        PENDING(1, "Pending"),
        INSTALLED(2, "Installed");
        
        private final String status;
        private final int value;

        STATUS(int i, String str) {
            this.status = str;
            this.value = i;
        }

        public final String getStatus() {
            return this.status;
        }

        public final int getValue() {
            return this.value;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "STATUS{status='" + this.status + "', value=" + this.value + '}';
        }
    }

    public ReferAndEarnUserData() {
        this.referAndEarnDataToOne = new ToOne<>(this, ReferAndEarnUserData_.referAndEarnDataToOne);
        this.status = STATUS.IDLE;
    }

    public ReferAndEarnUserData(ContactData contactData, STATUS status, long j) {
        this.referAndEarnDataToOne = new ToOne<>(this, ReferAndEarnUserData_.referAndEarnDataToOne);
        this.status = STATUS.IDLE;
        this.globalPhoneNumber = contactData.getPhone().a();
        this.status = status;
        this.nameOrNumber = contactData.getNameOrNumber();
        this.date = j;
    }

    public ReferAndEarnUserData(String str, String str2, STATUS status, long j) {
        this.referAndEarnDataToOne = new ToOne<>(this, ReferAndEarnUserData_.referAndEarnDataToOne);
        this.status = STATUS.IDLE;
        this.globalPhoneNumber = str2;
        this.status = status;
        this.nameOrNumber = str;
        this.date = j;
    }

    public long getDate() {
        return this.date;
    }

    public String getGlobalPhoneNumber() {
        return this.globalPhoneNumber;
    }

    public String getNameOrNumber() {
        return this.nameOrNumber;
    }

    public ToOne<ReferAndEarnData> getReferAndEarnDataToOne() {
        return this.referAndEarnDataToOne;
    }

    public STATUS getStatus() {
        return this.status;
    }

    public void setDate(long j) {
        this.date = j;
    }

    public void setGlobalPhoneNumber(String str) {
        this.globalPhoneNumber = str;
    }

    public void setNameOrNumber(String str) {
        this.nameOrNumber = str;
    }

    public void setReferAndEarnDataToOne(ToOne<ReferAndEarnData> toOne) {
        this.referAndEarnDataToOne = toOne;
    }

    public void setStatus(STATUS status) {
        this.status = status;
    }
}
