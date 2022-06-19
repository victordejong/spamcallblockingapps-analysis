package pl.droidsonroids.gif;

import android.annotation.SuppressLint;
import android.content.Context;
import pl.droidsonroids.relinker.C9714b;
/* renamed from: pl.droidsonroids.gif.h */
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/h.class */
public class C9706h {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: a */
    private static Context f40977a;

    /* renamed from: a */
    private static Context m41a() {
        if (f40977a == null) {
            try {
                f40977a = (Context) Class.forName("android.app.ActivityThread").getDeclaredMethod("currentApplication", new Class[0]).invoke(null, new Object[0]);
            } catch (Exception e) {
                throw new IllegalStateException("LibraryLoader not initialized. Call LibraryLoader.initialize() before using library classes.", e);
            }
        }
        return f40977a;
    }

    /* renamed from: b */
    public static void m40b() {
        try {
            System.loadLibrary("pl_droidsonroids_gif");
        } catch (UnsatisfiedLinkError e) {
            C9714b.m32a(m41a(), "pl_droidsonroids_gif");
        }
    }
}
