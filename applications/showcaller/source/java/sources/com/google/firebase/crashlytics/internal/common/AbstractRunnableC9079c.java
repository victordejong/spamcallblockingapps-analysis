package com.google.firebase.crashlytics.internal.common;

import android.os.Process;
/* renamed from: com.google.firebase.crashlytics.internal.common.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/c.class */
public abstract class AbstractRunnableC9079c implements Runnable {
    /* renamed from: a */
    protected abstract void mo1783a();

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        mo1783a();
    }
}
