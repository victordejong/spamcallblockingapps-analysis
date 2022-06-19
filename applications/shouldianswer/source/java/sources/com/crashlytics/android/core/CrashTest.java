package com.crashlytics.android.core;

import android.os.AsyncTask;
import io.fabric.sdk.android.AbstractC1462k;
import io.fabric.sdk.android.C1449c;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashTest.class */
public class CrashTest {
    private void privateMethodThatThrowsException(String str) {
        throw new RuntimeException(str);
    }

    public void crashAsyncTask(final long j) {
        new AsyncTask<Void, Void, Void>() { // from class: com.crashlytics.android.core.CrashTest.1
            public Void doInBackground(Void... voidArr) {
                try {
                    Thread.sleep(j);
                } catch (InterruptedException e) {
                }
                CrashTest.this.throwRuntimeException("Background thread crash");
                return null;
            }
        }.execute(null);
    }

    public void indexOutOfBounds() {
        int i = new int[2][10];
        AbstractC1462k m3572g = C1449c.m3572g();
        m3572g.mo3552a(CrashlyticsCore.TAG, "Out of bounds value: " + i);
    }

    public int stackOverflow() {
        return stackOverflow() + ((int) Math.random());
    }

    public void throwFiveChainedExceptions() {
        try {
            privateMethodThatThrowsException("1");
        } catch (Exception e) {
            try {
                throw new RuntimeException("2", e);
            } catch (Exception e2) {
                try {
                    throw new RuntimeException("3", e2);
                } catch (Exception e3) {
                    try {
                        throw new RuntimeException("4", e3);
                    } catch (Exception e4) {
                        throw new RuntimeException("5", e4);
                    }
                }
            }
        }
    }

    public void throwRuntimeException(String str) {
        throw new RuntimeException(str);
    }
}
