package com.truecaller.wizard.utils;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/truecaller/wizard/utils/RolesToRequest;", "", "", "shouldAskDefaultDialer", "()Z", "<init>", "(Ljava/lang/String;I)V", "DefaultDialerAndCallerid", "DefaultDialer", "CallerId", "None", "wizard-tc_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/utils/RolesToRequest.class */
public enum RolesToRequest {
    DefaultDialerAndCallerid,
    DefaultDialer,
    CallerId,
    None;

    public final boolean shouldAskDefaultDialer() {
        return this == DefaultDialer || this == DefaultDialerAndCallerid;
    }
}
