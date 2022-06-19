package com.truecaller.contextcall.utils.view.ondemandreasonpicker;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig;", "", "", "value", "I", "getValue", "()I", "<init>", "(Ljava/lang/String;II)V", "FACS", "PACS", "InCallUI", "PopupCallerId", "Unknown", "context-call_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerThemesConfig.class */
public enum OnDemandCallReasonPickerThemesConfig {
    FACS(0),
    PACS(1),
    InCallUI(2),
    PopupCallerId(3),
    Unknown(-1);
    
    private final int value;

    OnDemandCallReasonPickerThemesConfig(int i) {
        this.value = i;
    }

    public final int getValue() {
        return this.value;
    }
}
