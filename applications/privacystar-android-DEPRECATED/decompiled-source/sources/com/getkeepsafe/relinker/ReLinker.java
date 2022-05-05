package com.getkeepsafe.relinker;

import android.content.Context;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/ReLinker.class */
public class ReLinker {

    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/ReLinker$LibraryInstaller.class */
    public interface LibraryInstaller {
        void installLibrary(Context context, String[] strArr, String str, File file, ReLinkerInstance reLinkerInstance);
    }

    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/ReLinker$LibraryLoader.class */
    public interface LibraryLoader {
        void loadLibrary(String str);

        void loadPath(String str);

        String mapLibraryName(String str);

        String[] supportedAbis();

        String unmapLibraryName(String str);
    }

    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/ReLinker$LoadListener.class */
    public interface LoadListener {
        void failure(Throwable th);

        void success();
    }

    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/ReLinker$Logger.class */
    public interface Logger {
        void log(String str);
    }

    private ReLinker() {
    }

    public static ReLinkerInstance force() {
        return new ReLinkerInstance().force();
    }

    public static void loadLibrary(Context context, String str) {
        loadLibrary(context, str, null, null);
    }

    public static void loadLibrary(Context context, String str, LoadListener loadListener) {
        loadLibrary(context, str, null, loadListener);
    }

    public static void loadLibrary(Context context, String str, String str2) {
        loadLibrary(context, str, str2, null);
    }

    public static void loadLibrary(Context context, String str, String str2, LoadListener loadListener) {
        new ReLinkerInstance().loadLibrary(context, str, str2, loadListener);
    }

    public static ReLinkerInstance log(Logger logger) {
        return new ReLinkerInstance().log(logger);
    }

    public static ReLinkerInstance recursively() {
        return new ReLinkerInstance().recursively();
    }
}
