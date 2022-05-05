package com.android.providers.contacts;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/android/providers/contacts/ICNCharacterStrokeNumberJni.class */
public class ICNCharacterStrokeNumberJni {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f2283a;

    static {
        f2283a = true;
        try {
            System.loadLibrary("strokenumjni");
        } catch (SecurityException e) {
            Log.i("ICNCharacterStrokeNumberJni", "SecurityException");
            f2283a = false;
        } catch (UnsatisfiedLinkError e2) {
            Log.i("ICNCharacterStrokeNumberJni", "UnsatisfiedLinkError");
            f2283a = false;
        }
    }

    public static boolean a() {
        return f2283a;
    }

    public native int getStrokeNumber(int i);
}
