package com.truecaller.contextcall.p159db.reason.predefinedreasons;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;", "", "", "value", "I", "getValue", "()I", "<init>", "(Ljava/lang/String;II)V", "Predefined", "SecondCall", "MidCall", "MissedCall", "context-call_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.contextcall.db.reason.predefinedreasons.PredefinedCallReasonType */
/* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType.class */
public enum PredefinedCallReasonType {
    Predefined(0),
    SecondCall(1),
    MidCall(2),
    MissedCall(3);
    
    private final int value;

    PredefinedCallReasonType(int i) {
        this.value = i;
    }

    public final int getValue() {
        return this.value;
    }
}
