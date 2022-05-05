package com.google.android.gms.libs.punchclock.threads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.CallSuper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/libs/punchclock/threads/TracingHandler.class */
public class TracingHandler extends Handler {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/libs/punchclock/threads/TracingHandler$zza.class */
    public interface zza {
    }

    public TracingHandler() {
    }

    public TracingHandler(Looper looper) {
        super(looper);
    }

    @CallSuper
    /* renamed from: a */
    protected void m11832a(Message message) {
        super.dispatchMessage(message);
    }

    @Override // android.os.Handler
    public final void dispatchMessage(Message message) {
        m11832a(message);
    }

    @Override // android.os.Handler
    public boolean sendMessageAtTime(Message message, long j) {
        return super.sendMessageAtTime(message, j);
    }
}
