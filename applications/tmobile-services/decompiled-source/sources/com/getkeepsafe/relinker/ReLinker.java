package com.getkeepsafe.relinker;

import android.content.Context;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/ReLinker.class */
public class ReLinker {

    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/ReLinker$LibraryInstaller.class */
    public interface LibraryInstaller {
        /* renamed from: a */
        void mo15591a(Context context, String[] strArr, String str, File file, ReLinkerInstance reLinkerInstance);
    }

    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/ReLinker$LibraryLoader.class */
    public interface LibraryLoader {
        /* renamed from: a */
        String mo15579a(String str);

        /* renamed from: b */
        void mo15578b(String str);

        /* renamed from: c */
        String mo15577c(String str);

        /* renamed from: d */
        String[] mo15576d();

        /* renamed from: e */
        void mo15575e(String str);
    }

    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/ReLinker$LoadListener.class */
    public interface LoadListener {
        /* renamed from: a */
        void m15590a();

        /* renamed from: b */
        void m15589b(Throwable th);
    }

    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/ReLinker$Logger.class */
    public interface Logger {
        void log(String str);
    }

    private ReLinker() {
    }

    /* renamed from: a */
    public static void m15593a(Context context, String str, String str2) {
        m15592b(context, str, str2, null);
    }

    /* renamed from: b */
    public static void m15592b(Context context, String str, String str2, LoadListener loadListener) {
        new ReLinkerInstance().m15583f(context, str, str2, loadListener);
    }
}
