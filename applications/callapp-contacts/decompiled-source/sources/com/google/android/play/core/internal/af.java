package com.google.android.play.core.internal;

import android.util.Log;
import java.io.File;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/af.class */
final class af implements y {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ int f31344a = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public af() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(byte[] bArr) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(char[] cArr) {
    }

    @Override // com.google.android.play.core.internal.y
    public final boolean a(Object obj, File file, File file2) {
        int i = this.f31344a;
        if (i == 0) {
            try {
                return !((Boolean) ah.a(Class.forName("dalvik.system.DexFile"), Boolean.class, String.class, file.getPath())).booleanValue();
            } catch (ClassNotFoundException e) {
                Log.e("SplitCompat", "Unexpected missing dalvik.system.DexFile.");
                return false;
            }
        } else if (i != 1) {
            return true;
        } else {
            return new File((String) ah.a(obj.getClass(), String.class, File.class, file, File.class, file2)).exists();
        }
    }
}
