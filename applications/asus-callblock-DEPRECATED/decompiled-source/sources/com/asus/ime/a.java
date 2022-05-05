package com.asus.ime;
/* loaded from: classes-dex2jar.jar:com/asus/ime/a.class */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f2898a;

    static {
        f2898a = false;
        try {
            System.loadLibrary("jni_xt9input");
            f2898a = true;
        } catch (Error e) {
            e.printStackTrace();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
