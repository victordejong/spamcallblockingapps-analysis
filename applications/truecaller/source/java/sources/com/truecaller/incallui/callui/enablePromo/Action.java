package com.truecaller.incallui.callui.enablePromo;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/truecaller/incallui/callui/enablePromo/Action;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "DialogShown", "NegativeBtnClicked", "PositiveBtnClicked", "DefaultDialerRejected", "InCallUIEnabled", "DialogCancelled", "incallui_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/incallui/callui/enablePromo/Action.class */
public enum Action {
    DialogShown("Shown"),
    NegativeBtnClicked("NegativeBtnClicked"),
    PositiveBtnClicked("PositiveBtnClicked"),
    DefaultDialerRejected("Disabled"),
    InCallUIEnabled("Enabled"),
    DialogCancelled("DialogCancelled");
    
    private final String value;

    Action(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
