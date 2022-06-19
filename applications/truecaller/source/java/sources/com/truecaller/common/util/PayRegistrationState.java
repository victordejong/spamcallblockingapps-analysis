package com.truecaller.common.util;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/truecaller/common/util/PayRegistrationState;", "", "", "eventValue", "Ljava/lang/String;", "getEventValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "PAY_REGISTERED", "TEMP_REGISTERED", "NON_REGISTERED", "common_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/util/PayRegistrationState.class */
public enum PayRegistrationState {
    PAY_REGISTERED("pay_registered"),
    TEMP_REGISTERED("temp_registered"),
    NON_REGISTERED("non_registered");
    
    private final String eventValue;

    PayRegistrationState(String str) {
        this.eventValue = str;
    }

    public final String getEventValue() {
        return this.eventValue;
    }
}
