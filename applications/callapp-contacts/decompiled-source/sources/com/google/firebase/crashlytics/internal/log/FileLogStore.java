package com.google.firebase.crashlytics.internal.log;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/log/FileLogStore.class */
interface FileLogStore {
    void closeLogFile();

    void deleteLogFile();

    byte[] getLogAsBytes();

    String getLogAsString();

    void writeToLog(long j, String str);
}
