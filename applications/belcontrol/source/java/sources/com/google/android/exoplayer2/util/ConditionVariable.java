package com.google.android.exoplayer2.util;

import android.os.SystemClock;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/ConditionVariable.class */
public final class ConditionVariable {
    private boolean isOpen;

    public void block() {
        synchronized (this) {
            while (!this.isOpen) {
                wait();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    public boolean block(long j) {
        boolean z;
        synchronized (this) {
            ?? elapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = j + elapsedRealtime;
            char c = elapsedRealtime;
            while (true) {
                z = this.isOpen;
                if (z || c >= j2) {
                    break;
                }
                wait(j2 - c);
                c = SystemClock.elapsedRealtime();
            }
        }
        return z;
    }

    public boolean close() {
        boolean z;
        synchronized (this) {
            z = this.isOpen;
            this.isOpen = false;
        }
        return z;
    }

    public boolean open() {
        synchronized (this) {
            if (this.isOpen) {
                return false;
            }
            this.isOpen = true;
            notifyAll();
            return true;
        }
    }
}
