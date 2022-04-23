package androidx.core.p004os;

import androidx.annotation.Nullable;
/* renamed from: androidx.core.os.OperationCanceledException */
/* loaded from: classes-dex2jar.jar:androidx/core/os/OperationCanceledException.class */
public class OperationCanceledException extends RuntimeException {
    public OperationCanceledException() {
        this(null);
    }

    public OperationCanceledException(@Nullable String str) {
        super(str == null ? "The operation has been canceled." : str);
    }
}
