package com.google.firebase.installations;

import android.util.Log;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/b.class */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private final FileChannel f32394a;

    /* renamed from: b  reason: collision with root package name */
    private final FileLock f32395b;

    private b(FileChannel fileChannel, FileLock fileLock) {
        this.f32394a = fileChannel;
        this.f32395b = fileLock;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.firebase.installations.b a(android.content.Context r5, java.lang.String r6) {
        /*
            java.io.File r0 = new java.io.File     // Catch: OverlappingFileLockException -> 0x0048, Error -> 0x004c, IOException -> 0x0050
            r7 = r0
            r0 = r7
            r1 = r5
            java.io.File r1 = r1.getFilesDir()     // Catch: OverlappingFileLockException -> 0x0048, Error -> 0x004c, IOException -> 0x0050
            r2 = r6
            r0.<init>(r1, r2)     // Catch: OverlappingFileLockException -> 0x0048, Error -> 0x004c, IOException -> 0x0050
            java.io.RandomAccessFile r0 = new java.io.RandomAccessFile     // Catch: OverlappingFileLockException -> 0x0048, Error -> 0x004c, IOException -> 0x0050
            r5 = r0
            r0 = r5
            r1 = r7
            java.lang.String r2 = "rw"
            r0.<init>(r1, r2)     // Catch: OverlappingFileLockException -> 0x0048, Error -> 0x004c, IOException -> 0x0050
            r0 = r5
            java.nio.channels.FileChannel r0 = r0.getChannel()     // Catch: OverlappingFileLockException -> 0x0048, Error -> 0x004c, IOException -> 0x0050
            r7 = r0
            r0 = r7
            java.nio.channels.FileLock r0 = r0.lock()     // Catch: OverlappingFileLockException -> 0x003a, Error -> 0x003e, IOException -> 0x0042
            r6 = r0
            com.google.firebase.installations.b r0 = new com.google.firebase.installations.b     // Catch: OverlappingFileLockException -> 0x002e, Error -> 0x0032, IOException -> 0x0036, OverlappingFileLockException -> 0x003a, Error -> 0x003e, IOException -> 0x0042
            r1 = r0
            r2 = r7
            r3 = r6
            r1.<init>(r2, r3)     // Catch: OverlappingFileLockException -> 0x002e, Error -> 0x0032, IOException -> 0x0036
            r5 = r0
            r0 = r5
            return r0
        L_0x002e:
            r5 = move-exception
            goto L_0x0055
        L_0x0032:
            r5 = move-exception
            goto L_0x0055
        L_0x0036:
            r5 = move-exception
            goto L_0x0055
        L_0x003a:
            r5 = move-exception
            goto L_0x0043
        L_0x003e:
            r5 = move-exception
            goto L_0x0043
        L_0x0042:
            r5 = move-exception
        L_0x0043:
            r0 = 0
            r6 = r0
            goto L_0x0055
        L_0x0048:
            r5 = move-exception
            goto L_0x0051
        L_0x004c:
            r5 = move-exception
            goto L_0x0051
        L_0x0050:
            r5 = move-exception
        L_0x0051:
            r0 = 0
            r7 = r0
            r0 = r7
            r6 = r0
        L_0x0055:
            java.lang.String r0 = "CrossProcessLock"
            java.lang.String r1 = "encountered error while creating and acquiring the lock, ignoring"
            r2 = r5
            int r0 = android.util.Log.e(r0, r1, r2)
            r0 = r6
            if (r0 == 0) goto L_0x006a
            r0 = r6
            r0.release()     // Catch: IOException -> 0x0069
            goto L_0x006a
        L_0x0069:
            r5 = move-exception
        L_0x006a:
            r0 = r7
            if (r0 == 0) goto L_0x0072
            r0 = r7
            r0.close()     // Catch: IOException -> 0x0074
        L_0x0072:
            r0 = 0
            return r0
        L_0x0074:
            r5 = move-exception
            goto L_0x0072
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.installations.b.a(android.content.Context, java.lang.String):com.google.firebase.installations.b");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        try {
            this.f32395b.release();
            this.f32394a.close();
        } catch (IOException e) {
            Log.e("CrossProcessLock", "encountered error while releasing, ignoring", e);
        }
    }
}
