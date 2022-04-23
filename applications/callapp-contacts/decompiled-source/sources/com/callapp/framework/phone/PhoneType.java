package com.callapp.framework.phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/framework/phone/PhoneType.class */
public enum PhoneType {
    HOME(1),
    MOBILE(2),
    WORK(3),
    FAX_WORK(4),
    FAX_HOME(5),
    PAGER(6),
    OTHER(7),
    CALLBACK(8),
    CAR(9),
    COMPANY_MAIN(10),
    ISDN(11),
    MAIN(12),
    OTHER_FAX(13),
    RADIO(14),
    TELEX(15),
    TTY_TDD(16),
    WORK_MOBILE(17),
    WORK_PAGER(18),
    ASSISTANT(19),
    MMS(20);
    
    public final int code;

    PhoneType(int i) {
        this.code = i;
    }

    public static PhoneType fromCode(int i) {
        return (i <= 0 || i > 20) ? OTHER : values()[i - 1];
    }
}
