package com.truecaller.insights.utils;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0004j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/truecaller/insights/utils/HideTrxTempState;", "", "", "isDefault", "()Z", "isShown", "<init>", "(Ljava/lang/String;I)V", "DEFAULT", "SHOWN", "HIDDEN", "insights_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/utils/HideTrxTempState.class */
public enum HideTrxTempState {
    DEFAULT,
    SHOWN,
    HIDDEN;

    public final boolean isDefault() {
        return this == DEFAULT;
    }

    public final boolean isShown() {
        return this == SHOWN;
    }
}
