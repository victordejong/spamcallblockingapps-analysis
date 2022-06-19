package com.google.android.play.core.splitcompat;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;
import com.google.android.play.core.internal.C8480d0;
import java.io.File;
import java.util.Set;
/* renamed from: com.google.android.play.core.splitcompat.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/splitcompat/b.class */
public final class C8537b {

    /* renamed from: a */
    private final C8539d f38109a;

    public C8537b(C8539d c8539d) {
        this.f38109a = c8539d;
    }

    /* renamed from: b */
    public static final int m3389b(AssetManager assetManager, File file) {
        int intValue = ((Integer) C8480d0.m3551a(assetManager, "addAssetPath", Integer.class, String.class, file.getPath())).intValue();
        StringBuilder sb = new StringBuilder(39);
        sb.append("addAssetPath completed with ");
        sb.append(intValue);
        Log.d("SplitCompat", sb.toString());
        return intValue;
    }

    /* renamed from: a */
    public final void m3390a(Context context, Set<File> set) {
        synchronized (this) {
            AssetManager assets = context.getAssets();
            for (File file : set) {
                m3389b(assets, file);
            }
        }
    }
}
