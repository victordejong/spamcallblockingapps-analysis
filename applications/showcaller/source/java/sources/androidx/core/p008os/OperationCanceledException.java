package androidx.core.p008os;

import p020b.p041h.p049k.C1592c;
/* renamed from: androidx.core.os.OperationCanceledException */
/* loaded from: classes-dex2jar.jar:androidx/core/os/OperationCanceledException.class */
public class OperationCanceledException extends RuntimeException {
    public OperationCanceledException() {
        this(null);
    }

    public OperationCanceledException(String str) {
        super(C1592c.m29666c(str, "The operation has been canceled."));
    }
}
