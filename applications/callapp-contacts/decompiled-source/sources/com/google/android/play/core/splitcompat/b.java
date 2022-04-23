package com.google.android.play.core.splitcompat;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.play.core.internal.ah;
import java.io.File;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final d f31426a;

    public b(d dVar) {
        this.f31426a = dVar;
    }

    public static final int a(AssetManager assetManager, File file) {
        int intValue = ((Integer) ah.a(assetManager, "addAssetPath", Integer.class, String.class, file.getPath())).intValue();
        StringBuilder sb = new StringBuilder(39);
        sb.append("addAssetPath completed with ");
        sb.append(intValue);
        return intValue;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(Context context, Set<String> set) {
        StrictMode.ThreadPolicy threadPolicy;
        boolean z;
        synchronized (this) {
            try {
                threadPolicy = StrictMode.getThreadPolicy();
                try {
                    StrictMode.allowThreadDiskReads();
                    StrictMode.allowThreadDiskWrites();
                } catch (Exception e) {
                }
            } catch (Exception e2) {
                threadPolicy = null;
            }
            try {
                HashSet hashSet = new HashSet();
                for (String str : set) {
                    hashSet.add(this.f31426a.a(str));
                }
                b(context, hashSet);
                if (threadPolicy != null) {
                    StrictMode.setThreadPolicy(threadPolicy);
                }
                z = true;
            } catch (Exception e3) {
                Log.e("SplitCompat", "Error installing additional splits", e3);
                if (threadPolicy != null) {
                    StrictMode.setThreadPolicy(threadPolicy);
                }
                z = false;
            }
        }
        return z;
    }

    public final void b(Context context, Set<File> set) {
        synchronized (this) {
            AssetManager assets = context.getAssets();
            for (File file : set) {
                a(assets, file);
            }
        }
    }
}
