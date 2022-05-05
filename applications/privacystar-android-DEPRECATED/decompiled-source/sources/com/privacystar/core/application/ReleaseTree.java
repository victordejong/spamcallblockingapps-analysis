package com.privacystar.core.application;

import android.util.Log;
import com.privacystar.core.util.LogRecorder;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/application/ReleaseTree.class */
public class ReleaseTree extends Timber.Tree {
    private static final int MAX_LOG_LENGTH = 4000;
    private static final int MINIMUM_PRIORITY = 4;

    @Override // timber.log.Timber.Tree
    protected boolean isLoggable(int i) {
        return i >= 4;
    }

    @Override // timber.log.Timber.Tree
    protected void log(int i, String str, String str2, Throwable th) {
        int min;
        if (isLoggable(i)) {
            if (LogRecorder.isRunning()) {
                LogRecorder.put(i, str, str2);
            }
            if (str2.length() >= MAX_LOG_LENGTH) {
                int i2 = 0;
                int length = str2.length();
                while (i2 < length) {
                    int indexOf = str2.indexOf(10, i2);
                    if (indexOf == -1) {
                        indexOf = length;
                    }
                    while (true) {
                        min = Math.min(indexOf, i2 + MAX_LOG_LENGTH);
                        String substring = str2.substring(i2, min);
                        if (i == 7) {
                            Log.wtf(str, substring);
                        } else {
                            Log.println(i, str, substring);
                        }
                        if (min >= indexOf) {
                            break;
                        }
                        i2 = min;
                    }
                    i2 = min + 1;
                }
            } else if (i == 7) {
                Log.wtf(str, str2);
            } else {
                Log.println(i, str, str2);
            }
        }
    }
}
