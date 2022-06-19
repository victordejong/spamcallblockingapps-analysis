package com.crashlytics.android.core;

import io.fabric.sdk.android.AbstractC1462k;
import io.fabric.sdk.android.C1449c;
import io.fabric.sdk.android.services.p068b.C1480i;
import io.fabric.sdk.android.services.p068b.C1498r;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/QueueFileLogStore.class */
public class QueueFileLogStore implements FileLogStore {
    private C1498r logFile;
    private final int maxLogSize;
    private final File workingFile;

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/QueueFileLogStore$LogBytes.class */
    public class LogBytes {
        public final byte[] bytes;
        public final int offset;

        public LogBytes(byte[] bArr, int i) {
            QueueFileLogStore.this = r4;
            this.bytes = bArr;
            this.offset = i;
        }
    }

    public QueueFileLogStore(File file, int i) {
        this.workingFile = file;
        this.maxLogSize = i;
    }

    private void doWriteToLog(long j, String str) {
        int i;
        if (this.logFile == null) {
            return;
        }
        String str2 = str;
        if (str == null) {
            str2 = "null";
        }
        try {
            String str3 = str2;
            if (str2.length() > this.maxLogSize / 4) {
                str3 = "..." + str2.substring(str2.length() - i);
            }
            this.logFile.m3416a(String.format(Locale.US, "%d %s%n", Long.valueOf(j), str3.replaceAll("\r", " ").replaceAll("\n", " ")).getBytes("UTF-8"));
            while (!this.logFile.m3412b() && this.logFile.m3427a() > this.maxLogSize) {
                this.logFile.m3406c();
            }
        } catch (IOException e) {
            C1449c.m3572g().mo3545e(CrashlyticsCore.TAG, "There was a problem writing to the Crashlytics log.", e);
        }
    }

    private LogBytes getLogBytes() {
        if (!this.workingFile.exists()) {
            return null;
        }
        openLogFile();
        C1498r c1498r = this.logFile;
        if (c1498r == null) {
            return null;
        }
        final int[] iArr = {0};
        final byte[] bArr = new byte[c1498r.m3427a()];
        try {
            this.logFile.m3422a(new C1498r.AbstractC1502c() { // from class: com.crashlytics.android.core.QueueFileLogStore.1
                @Override // io.fabric.sdk.android.services.p068b.C1498r.AbstractC1502c
                public void read(InputStream inputStream, int i) {
                    try {
                        inputStream.read(bArr, iArr[0], i);
                        int[] iArr2 = iArr;
                        iArr2[0] = iArr2[0] + i;
                    } finally {
                        inputStream.close();
                    }
                }
            });
        } catch (IOException e) {
            C1449c.m3572g().mo3545e(CrashlyticsCore.TAG, "A problem occurred while reading the Crashlytics log file.", e);
        }
        return new LogBytes(bArr, iArr[0]);
    }

    private void openLogFile() {
        if (this.logFile == null) {
            try {
                this.logFile = new C1498r(this.workingFile);
            } catch (IOException e) {
                AbstractC1462k m3572g = C1449c.m3572g();
                m3572g.mo3545e(CrashlyticsCore.TAG, "Could not open log file: " + this.workingFile, e);
            }
        }
    }

    @Override // com.crashlytics.android.core.FileLogStore
    public void closeLogFile() {
        C1480i.m3497a(this.logFile, "There was a problem closing the Crashlytics log file.");
        this.logFile = null;
    }

    @Override // com.crashlytics.android.core.FileLogStore
    public void deleteLogFile() {
        closeLogFile();
        this.workingFile.delete();
    }

    @Override // com.crashlytics.android.core.FileLogStore
    public ByteString getLogAsByteString() {
        LogBytes logBytes = getLogBytes();
        return logBytes == null ? null : ByteString.copyFrom(logBytes.bytes, 0, logBytes.offset);
    }

    @Override // com.crashlytics.android.core.FileLogStore
    public byte[] getLogAsBytes() {
        LogBytes logBytes = getLogBytes();
        return logBytes == null ? null : logBytes.bytes;
    }

    @Override // com.crashlytics.android.core.FileLogStore
    public void writeToLog(long j, String str) {
        openLogFile();
        doWriteToLog(j, str);
    }
}
