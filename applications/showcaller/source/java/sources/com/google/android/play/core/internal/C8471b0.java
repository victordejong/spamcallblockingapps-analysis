package com.google.android.play.core.internal;

import android.util.Log;
import java.io.File;
/* renamed from: com.google.android.play.core.internal.b0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/b0.class */
public final class C8471b0 implements AbstractC8518u {

    /* renamed from: a */
    private final /* synthetic */ int f38026a = 0;

    public C8471b0() {
    }

    public C8471b0(byte[] bArr) {
    }

    public C8471b0(char[] cArr) {
    }

    @Override // com.google.android.play.core.internal.AbstractC8518u
    /* renamed from: a */
    public final boolean mo3466a(Object obj, File file, File file2) {
        int i = this.f38026a;
        if (i != 0) {
            if (i == 1) {
                return new File((String) C8480d0.m3545g(obj.getClass(), String.class, File.class, file, File.class, file2)).exists();
            }
            return true;
        }
        try {
            return !((Boolean) C8480d0.m3546f(Class.forName("dalvik.system.DexFile"), Boolean.class, String.class, file.getPath())).booleanValue();
        } catch (ClassNotFoundException e) {
            Log.e("SplitCompat", "Unexpected missing dalvik.system.DexFile.");
            return false;
        }
    }
}
