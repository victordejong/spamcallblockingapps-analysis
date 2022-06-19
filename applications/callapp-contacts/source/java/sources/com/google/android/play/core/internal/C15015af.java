package com.google.android.play.core.internal;

import android.util.Log;
import java.io.File;
/* renamed from: com.google.android.play.core.internal.af */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/af.class */
final class C15015af implements AbstractC15089y {

    /* renamed from: a */
    private final /* synthetic */ int f54746a = 0;

    public C15015af() {
    }

    public C15015af(byte[] bArr) {
    }

    public C15015af(char[] cArr) {
    }

    @Override // com.google.android.play.core.internal.AbstractC15089y
    /* renamed from: a */
    public final boolean mo9478a(Object obj, File file, File file2) {
        int i = this.f54746a;
        if (i != 0) {
            if (i == 1) {
                return new File((String) C15017ah.m9602a(obj.getClass(), String.class, File.class, file, File.class, file2)).exists();
            }
            return true;
        }
        try {
            return !((Boolean) C15017ah.m9603a(Class.forName("dalvik.system.DexFile"), Boolean.class, String.class, file.getPath())).booleanValue();
        } catch (ClassNotFoundException e) {
            Log.e("SplitCompat", "Unexpected missing dalvik.system.DexFile.");
            return false;
        }
    }
}
