package androidx.work.impl;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/ExecutionListener.class */
public interface ExecutionListener {
    void onExecuted(@NonNull String str, boolean z);
}
