package com.google.firebase.installations;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
/* renamed from: com.google.firebase.installations.b */
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/b.class */
class C5012b {

    /* renamed from: a */
    private final FileChannel f21236a;

    /* renamed from: b */
    private final FileLock f21237b;

    private C5012b(FileChannel fileChannel, FileLock fileLock) {
        this.f21236a = fileChannel;
        this.f21237b = fileLock;
    }

    /* renamed from: a */
    public static C5012b m1839a(Context context, String str) {
        FileChannel fileChannel;
        FileLock fileLock;
        IOException e;
        C5012b c5012b;
        try {
            fileChannel = new RandomAccessFile(new File(context.getFilesDir(), str), "rw").getChannel();
            try {
                fileLock = fileChannel.lock();
            } catch (IOException e2) {
                e = e2;
                fileLock = null;
            }
            try {
                c5012b = new C5012b(fileChannel, fileLock);
            } catch (IOException e3) {
                e = e3;
                Log.e("CrossProcessLock", "encountered error while creating and acquiring the lock, ignoring", e);
                if (fileLock != null) {
                    try {
                        fileLock.release();
                    } catch (IOException e4) {
                    }
                }
                if (fileChannel != null) {
                    try {
                        fileChannel.close();
                    } catch (IOException e5) {
                    }
                }
                c5012b = null;
                return c5012b;
            }
        } catch (IOException e6) {
            e = e6;
            fileLock = null;
            fileChannel = null;
        }
        return c5012b;
    }

    /* renamed from: a */
    public void m1840a() {
        try {
            this.f21237b.release();
            this.f21236a.close();
        } catch (IOException e) {
            Log.e("CrossProcessLock", "encountered error while releasing, ignoring", e);
        }
    }
}
