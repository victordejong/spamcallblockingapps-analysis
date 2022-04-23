package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.FilenameFilter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bz.class */
public final /* synthetic */ class bz implements FilenameFilter {

    /* renamed from: a  reason: collision with root package name */
    static final FilenameFilter f31221a = new bz();

    private bz() {
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        boolean matches;
        matches = ca.f31222a.matcher(str).matches();
        return matches;
    }
}
