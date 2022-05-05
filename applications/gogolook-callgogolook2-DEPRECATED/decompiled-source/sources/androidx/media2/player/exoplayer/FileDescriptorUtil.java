package androidx.media2.player.exoplayer;

import android.annotation.SuppressLint;
import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
@SuppressLint({"RestrictedApi"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/FileDescriptorUtil.class */
public final class FileDescriptorUtil {
    public static final int SEEK_SET = 0;
    @Nullable
    @GuardedBy("sPosixLockV14")
    public static Method sCloseMethodV14;
    @Nullable
    @GuardedBy("sPosixLockV14")
    public static Method sDupMethodV14;
    @Nullable
    @GuardedBy("sPosixLockV14")
    public static Method sLseekMethodV14;
    public static final Object sPosixLockV14 = new Object();
    @Nullable
    @GuardedBy("sPosixLockV14")
    public static Object sPosixObjectV14;

    public static void close(FileDescriptor fileDescriptor) throws IOException {
        if (Build.VERSION.SDK_INT >= 21) {
            closeV21(fileDescriptor);
        } else {
            closeV14(fileDescriptor);
        }
    }

    @SuppressLint({"PrivateApi"})
    public static FileDescriptor closeV14(FileDescriptor fileDescriptor) throws IOException {
        Object obj;
        Method method;
        try {
            synchronized (sPosixLockV14) {
                ensurePosixObjectsInitialized();
                obj = sPosixObjectV14;
                method = sCloseMethodV14;
            }
            return (FileDescriptor) method.invoke(obj, fileDescriptor);
        } catch (Exception e) {
            throw new IOException("Failed to close the file descriptor", e);
        }
    }

    @RequiresApi(21)
    public static void closeV21(FileDescriptor fileDescriptor) throws IOException {
        try {
            Os.close(fileDescriptor);
        } catch (Exception e) {
            throw new IOException("Failed to close the file descriptor", e);
        }
    }

    public static FileDescriptor dup(FileDescriptor fileDescriptor) throws IOException {
        return Build.VERSION.SDK_INT >= 21 ? dupV21(fileDescriptor) : dupV14(fileDescriptor);
    }

    @SuppressLint({"PrivateApi"})
    public static FileDescriptor dupV14(FileDescriptor fileDescriptor) throws IOException {
        Object obj;
        Method method;
        try {
            synchronized (sPosixLockV14) {
                ensurePosixObjectsInitialized();
                obj = sPosixObjectV14;
                method = sDupMethodV14;
            }
            return (FileDescriptor) method.invoke(obj, fileDescriptor);
        } catch (Exception e) {
            throw new IOException("Failed to dup the file descriptor", e);
        }
    }

    @RequiresApi(21)
    public static FileDescriptor dupV21(FileDescriptor fileDescriptor) throws IOException {
        try {
            return Os.dup(fileDescriptor);
        } catch (Exception e) {
            throw new IOException("Failed to dup the file descriptor", e);
        }
    }

    public static void ensurePosixObjectsInitialized() throws Exception {
        synchronized (sPosixLockV14) {
            if (sPosixObjectV14 == null) {
                Class<?> cls = Class.forName("libcore.io.Posix");
                Constructor<?> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                sLseekMethodV14 = cls.getMethod("lseek", FileDescriptor.class, Long.TYPE, Integer.TYPE);
                sDupMethodV14 = cls.getMethod("dup", FileDescriptor.class);
                sCloseMethodV14 = cls.getMethod(MraidParser.MRAID_COMMAND_CLOSE, FileDescriptor.class);
                sPosixObjectV14 = declaredConstructor.newInstance(new Object[0]);
            }
        }
    }

    public static void seek(FileDescriptor fileDescriptor, long j) throws IOException {
        if (Build.VERSION.SDK_INT >= 21) {
            seekV21(fileDescriptor, j);
        } else {
            seekV14(fileDescriptor, j);
        }
    }

    @SuppressLint({"PrivateApi"})
    public static void seekV14(FileDescriptor fileDescriptor, long j) throws IOException {
        Object obj;
        Method method;
        try {
            synchronized (sPosixLockV14) {
                ensurePosixObjectsInitialized();
                obj = sPosixObjectV14;
                method = sLseekMethodV14;
            }
            method.invoke(obj, fileDescriptor, Long.valueOf(j), 0);
        } catch (Exception e) {
            throw new IOException("Failed to seek the file descriptor", e);
        }
    }

    @RequiresApi(21)
    public static void seekV21(FileDescriptor fileDescriptor, long j) throws IOException {
        try {
            Os.lseek(fileDescriptor, j, OsConstants.SEEK_SET);
        } catch (Exception e) {
            throw new IOException("Failed to seek the file descriptor", e);
        }
    }
}
