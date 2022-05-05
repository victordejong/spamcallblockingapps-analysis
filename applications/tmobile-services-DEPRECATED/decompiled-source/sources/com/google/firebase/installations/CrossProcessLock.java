package com.google.firebase.installations;

import android.util.Log;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/CrossProcessLock.class */
class CrossProcessLock {
    private static final String TAG = "CrossProcessLock";
    private final FileChannel channel;
    private final FileLock lock;

    private CrossProcessLock(FileChannel fileChannel, FileLock fileLock) {
        this.channel = fileChannel;
        this.lock = fileLock;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0056 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.firebase.installations.CrossProcessLock acquire(android.content.Context r5, java.lang.String r6) {
        /*
            java.io.File r0 = new java.io.File     // Catch: Error -> 0x0040, IOException -> 0x0044
            r7 = r0
            r0 = r7
            r1 = r5
            java.io.File r1 = r1.getFilesDir()     // Catch: Error -> 0x0040, IOException -> 0x0044
            r2 = r6
            r0.<init>(r1, r2)     // Catch: Error -> 0x0040, IOException -> 0x0044
            java.io.RandomAccessFile r0 = new java.io.RandomAccessFile     // Catch: Error -> 0x0040, IOException -> 0x0044
            r5 = r0
            r0 = r5
            r1 = r7
            java.lang.String r2 = "rw"
            r0.<init>(r1, r2)     // Catch: Error -> 0x0040, IOException -> 0x0044
            r0 = r5
            java.nio.channels.FileChannel r0 = r0.getChannel()     // Catch: Error -> 0x0040, IOException -> 0x0044
            r7 = r0
            r0 = r7
            java.nio.channels.FileLock r0 = r0.lock()     // Catch: Error -> 0x0036, IOException -> 0x003a
            r6 = r0
            com.google.firebase.installations.CrossProcessLock r0 = new com.google.firebase.installations.CrossProcessLock     // Catch: Error -> 0x002e, IOException -> 0x0032, Error -> 0x0036, IOException -> 0x003a
            r1 = r0
            r2 = r7
            r3 = r6
            r1.<init>(r2, r3)     // Catch: Error -> 0x002e, IOException -> 0x0032
            r5 = r0
            r0 = r5
            return r0
        L_0x002e:
            r5 = move-exception
            goto L_0x0049
        L_0x0032:
            r5 = move-exception
            goto L_0x0049
        L_0x0036:
            r5 = move-exception
            goto L_0x003b
        L_0x003a:
            r5 = move-exception
        L_0x003b:
            r0 = 0
            r6 = r0
            goto L_0x0049
        L_0x0040:
            r5 = move-exception
            goto L_0x0045
        L_0x0044:
            r5 = move-exception
        L_0x0045:
            r0 = 0
            r7 = r0
            r0 = r7
            r6 = r0
        L_0x0049:
            java.lang.String r0 = "CrossProcessLock"
            java.lang.String r1 = "encountered error while creating and acquiring the lock, ignoring"
            r2 = r5
            int r0 = android.util.Log.e(r0, r1, r2)
            r0 = r6
            if (r0 == 0) goto L_0x005e
            r0 = r6
            r0.release()     // Catch: IOException -> 0x005d
            goto L_0x005e
        L_0x005d:
            r5 = move-exception
        L_0x005e:
            r0 = r7
            if (r0 == 0) goto L_0x0066
            r0 = r7
            r0.close()     // Catch: IOException -> 0x0068
        L_0x0066:
            r0 = 0
            return r0
        L_0x0068:
            r5 = move-exception
            goto L_0x0066
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.installations.CrossProcessLock.acquire(android.content.Context, java.lang.String):com.google.firebase.installations.CrossProcessLock");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void releaseAndClose() {
        try {
            this.lock.release();
            this.channel.close();
        } catch (IOException e) {
            Log.e(TAG, "encountered error while releasing, ignoring", e);
        }
    }
}
