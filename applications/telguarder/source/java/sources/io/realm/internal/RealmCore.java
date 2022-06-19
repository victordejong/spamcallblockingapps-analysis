package io.realm.internal;

import android.content.Context;
import com.getkeepsafe.relinker.ReLinker;
import io.realm.BuildConfig;
import java.io.File;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/RealmCore.class */
public class RealmCore {
    private static final String BINARIES_PATH;
    private static final String FILE_SEP;
    private static final String JAVA_LIBRARY_PATH = "java.library.path";
    private static final String PATH_SEP;
    private static boolean libraryIsLoaded = false;

    static {
        String str = File.separator;
        FILE_SEP = str;
        String str2 = File.pathSeparator;
        PATH_SEP = str2;
        BINARIES_PATH = "lib" + str2 + ".." + str + "lib";
    }

    public static void addNativeLibraryPath(String str) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(System.getProperty(JAVA_LIBRARY_PATH));
            String str2 = PATH_SEP;
            sb.append(str2);
            sb.append(str);
            sb.append(str2);
            System.setProperty(JAVA_LIBRARY_PATH, sb.toString());
        } catch (Exception e) {
            throw new RuntimeException("Cannot set the library path!", e);
        }
    }

    private static String loadCorrectLibrary(String... strArr) {
        for (String str : strArr) {
            try {
                System.loadLibrary(str);
                return str;
            } catch (Throwable th) {
            }
        }
        return null;
    }

    public static void loadLibrary(Context context) {
        synchronized (RealmCore.class) {
            try {
                if (libraryIsLoaded) {
                    return;
                }
                ReLinker.loadLibrary(context, "realm-jni", BuildConfig.VERSION_NAME);
                libraryIsLoaded = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static String loadLibraryWindows() {
        try {
            addNativeLibraryPath(BINARIES_PATH);
            resetLibraryPath();
        } catch (Throwable th) {
        }
        String loadCorrectLibrary = loadCorrectLibrary("realm_jni32d", "realm_jni64d");
        if (loadCorrectLibrary != null) {
            System.out.println("!!! Realm debug version loaded. !!!\n");
        } else {
            loadCorrectLibrary = loadCorrectLibrary("realm_jni32", "realm_jni64");
            if (loadCorrectLibrary == null) {
                PrintStream printStream = System.err;
                printStream.println("Searched java.library.path=" + System.getProperty(JAVA_LIBRARY_PATH));
                throw new RuntimeException("Couldn't load the Realm JNI library 'realm_jni32.dll or realm_jni64.dll'. Please include the directory to the library in java.library.path.");
            }
        }
        return loadCorrectLibrary;
    }

    public static boolean osIsWindows() {
        return System.getProperty("os.name").toLowerCase(Locale.getDefault()).contains("win");
    }

    private static void resetLibraryPath() {
        try {
            Field declaredField = ClassLoader.class.getDeclaredField("sys_paths");
            declaredField.setAccessible(true);
            declaredField.set(null, null);
        } catch (Exception e) {
            throw new RuntimeException("Cannot reset the library path!", e);
        }
    }
}
