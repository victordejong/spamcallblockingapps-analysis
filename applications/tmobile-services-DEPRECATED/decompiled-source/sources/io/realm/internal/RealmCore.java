package io.realm.internal;

import android.content.Context;
import com.getkeepsafe.relinker.ReLinker;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/RealmCore.class */
public class RealmCore {

    /* renamed from: a */
    private static final String f20170a = File.separator;

    /* renamed from: b */
    private static final String f20171b = File.pathSeparator;

    /* renamed from: c */
    private static boolean f20172c = false;

    static {
        r0 = "lib" + f20171b + ".." + f20170a + "lib";
    }

    /* renamed from: a */
    public static void m2688a(Context context) {
        synchronized (RealmCore.class) {
            try {
                if (!f20172c) {
                    ReLinker.m15593a(context, "realm-jni", "7.0.8");
                    f20172c = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
