package com.crashlytics.android.core;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/FileLogStore.class */
interface FileLogStore {
    void closeLogFile();

    void deleteLogFile();

    ByteString getLogAsByteString();

    byte[] getLogAsBytes();

    void writeToLog(long j, String str);
}
