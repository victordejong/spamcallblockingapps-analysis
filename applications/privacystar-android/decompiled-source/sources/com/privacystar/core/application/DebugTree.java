package com.privacystar.core.application;

import com.privacystar.core.util.LogRecorder;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/application/DebugTree.class */
public class DebugTree extends Timber.DebugTree {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // timber.log.Timber.DebugTree
    public String createStackElementTag(StackTraceElement stackTraceElement) {
        return super.createStackElementTag(stackTraceElement) + ':' + stackTraceElement.getLineNumber();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // timber.log.Timber.DebugTree, timber.log.Timber.Tree
    public void log(int i, String str, @NotNull String str2, Throwable th) {
        if (LogRecorder.isRunning()) {
            LogRecorder.put(i, str, str2);
        }
        super.log(i, str, str2, th);
    }
}
