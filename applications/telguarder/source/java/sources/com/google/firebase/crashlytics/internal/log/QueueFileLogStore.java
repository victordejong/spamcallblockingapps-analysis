package com.google.firebase.crashlytics.internal.log;

import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.log.QueueFile;
import com.pubmatic.sdk.common.POBCommonConstants;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/log/QueueFileLogStore.class */
public class QueueFileLogStore implements FileLogStore {
    private static final Charset UTF_8 = Charset.forName(POBCommonConstants.URL_ENCODING);
    private QueueFile logFile;
    private final int maxLogSize;
    private final File workingFile;

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes.class */
    public static class LogBytes {
        public final byte[] bytes;
        public final int offset;

        LogBytes(byte[] bArr, int i) {
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
            this.logFile.add(String.format(Locale.US, "%d %s%n", Long.valueOf(j), str3.replaceAll("\r", " ").replaceAll("\n", " ")).getBytes(UTF_8));
            while (!this.logFile.isEmpty() && this.logFile.usedBytes() > this.maxLogSize) {
                this.logFile.remove();
            }
        } catch (IOException e) {
            Logger.getLogger().m1345e("There was a problem writing to the Crashlytics log.", e);
        }
    }

    private LogBytes getLogBytes() {
        if (!this.workingFile.exists()) {
            return null;
        }
        openLogFile();
        QueueFile queueFile = this.logFile;
        if (queueFile == null) {
            return null;
        }
        final int[] iArr = {0};
        final byte[] bArr = new byte[queueFile.usedBytes()];
        try {
            this.logFile.forEach(new QueueFile.ElementReader() { // from class: com.google.firebase.crashlytics.internal.log.QueueFileLogStore.1
                @Override // com.google.firebase.crashlytics.internal.log.QueueFile.ElementReader
                public void read(InputStream inputStream, int i) throws IOException {
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
            Logger.getLogger().m1345e("A problem occurred while reading the Crashlytics log file.", e);
        }
        return new LogBytes(bArr, iArr[0]);
    }

    private void openLogFile() {
        if (this.logFile == null) {
            try {
                this.logFile = new QueueFile(this.workingFile);
            } catch (IOException e) {
                Logger logger = Logger.getLogger();
                logger.m1345e("Could not open log file: " + this.workingFile, e);
            }
        }
    }

    @Override // com.google.firebase.crashlytics.internal.log.FileLogStore
    public void closeLogFile() {
        CommonUtils.closeOrLog(this.logFile, "There was a problem closing the Crashlytics log file.");
        this.logFile = null;
    }

    @Override // com.google.firebase.crashlytics.internal.log.FileLogStore
    public void deleteLogFile() {
        closeLogFile();
        this.workingFile.delete();
    }

    @Override // com.google.firebase.crashlytics.internal.log.FileLogStore
    public byte[] getLogAsBytes() {
        LogBytes logBytes = getLogBytes();
        if (logBytes == null) {
            return null;
        }
        byte[] bArr = new byte[logBytes.offset];
        System.arraycopy(logBytes.bytes, 0, bArr, 0, logBytes.offset);
        return bArr;
    }

    @Override // com.google.firebase.crashlytics.internal.log.FileLogStore
    public String getLogAsString() {
        byte[] logAsBytes = getLogAsBytes();
        return logAsBytes != null ? new String(logAsBytes, UTF_8) : null;
    }

    @Override // com.google.firebase.crashlytics.internal.log.FileLogStore
    public void writeToLog(long j, String str) {
        openLogFile();
        doWriteToLog(j, str);
    }
}
