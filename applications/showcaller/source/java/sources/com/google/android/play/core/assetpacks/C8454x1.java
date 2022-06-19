package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.FilenameFilter;
/* renamed from: com.google.android.play.core.assetpacks.x1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/x1.class */
public final /* synthetic */ class C8454x1 implements FilenameFilter {

    /* renamed from: a */
    static final FilenameFilter f37987a = new C8454x1();

    private C8454x1() {
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        boolean matches;
        matches = C8457y1.f37991a.matcher(str).matches();
        return matches;
    }
}
