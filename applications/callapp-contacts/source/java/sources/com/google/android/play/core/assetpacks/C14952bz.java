package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.FilenameFilter;
/* renamed from: com.google.android.play.core.assetpacks.bz */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bz.class */
public final /* synthetic */ class C14952bz implements FilenameFilter {

    /* renamed from: a */
    static final FilenameFilter f54592a = new C14952bz();

    private C14952bz() {
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        boolean matches;
        matches = C14954ca.f54593a.matcher(str).matches();
        return matches;
    }
}
