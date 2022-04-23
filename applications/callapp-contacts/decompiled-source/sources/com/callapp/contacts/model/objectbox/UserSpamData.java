package com.callapp.contacts.model.objectbox;

import io.objectbox.converter.PropertyConverter;
import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserSpamData.class */
public class UserSpamData implements Serializable {
    public static final int NOT_SPAM = 0;
    public static final int SPAM_MAX_THRESHOLD = Integer.MAX_VALUE;
    private static final long serialVersionUID = -8214541107702515706L;
    private long id;
    private String phone;
    private Integer spamScore;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserSpamData$SpamScoreConverter.class */
    public static class SpamScoreConverter implements PropertyConverter<Integer, Boolean> {
        public Boolean convertToDatabaseValue(Integer num) {
            return Boolean.valueOf(num.intValue() > 0);
        }

        public Integer convertToEntityProperty(Boolean bool) {
            int i = 0;
            if (bool == null) {
                return 0;
            }
            if (bool.booleanValue()) {
                i = Integer.MAX_VALUE;
            }
            return Integer.valueOf(i);
        }
    }

    public UserSpamData() {
    }

    public UserSpamData(long j, String str, int i) {
        this.id = j;
        this.phone = str;
        this.spamScore = Integer.valueOf(i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        UserSpamData userSpamData = (UserSpamData) obj;
        if (this.id == userSpamData.id && this.spamScore == userSpamData.spamScore) {
            return Objects.equals(this.phone, userSpamData.phone);
        }
        return false;
    }

    public long getId() {
        return this.id;
    }

    public String getPhone() {
        return this.phone;
    }

    public int getSpamScore() {
        return this.spamScore.intValue();
    }

    public int hashCode() {
        long j = this.id;
        int i = (int) (j ^ (j >>> 32));
        String str = this.phone;
        return (((i * 31) + (str != null ? str.hashCode() : 0)) * 31) + this.spamScore.intValue();
    }

    public boolean isSpam() {
        return this.spamScore.intValue() > 0;
    }

    public void setId(long j) {
        this.id = j;
    }

    public void setIsSpam(boolean z) {
        this.spamScore = Integer.valueOf(z ? Integer.MAX_VALUE : 0);
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public void setSpamScore(int i) {
        this.spamScore = Integer.valueOf(i);
    }

    public String toString() {
        return "UserSpamData{id=" + this.id + ", phone='" + this.phone + "', spamScore=" + this.spamScore + '}';
    }
}
