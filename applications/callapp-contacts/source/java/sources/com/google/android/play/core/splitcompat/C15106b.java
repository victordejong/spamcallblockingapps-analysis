package com.google.android.play.core.splitcompat;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.play.core.internal.C15017ah;
import java.io.File;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.android.play.core.splitcompat.b */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/b.class */
public final class C15106b {

    /* renamed from: a */
    private final C15108d f54841a;

    public C15106b(C15108d c15108d) {
        this.f54841a = c15108d;
    }

    /* renamed from: a */
    public static final int m9450a(AssetManager assetManager, File file) {
        int intValue = ((Integer) C15017ah.m9596a(assetManager, "addAssetPath", Integer.class, String.class, file.getPath())).intValue();
        StringBuilder sb = new StringBuilder(39);
        sb.append("addAssetPath completed with ");
        sb.append(intValue);
        return intValue;
    }

    /* renamed from: a */
    public final boolean m9451a(Context context, Set<String> set) {
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
                    hashSet.add(this.f54841a.m9445a(str));
                }
                m9449b(context, hashSet);
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

    /* renamed from: b */
    public final void m9449b(Context context, Set<File> set) {
        synchronized (this) {
            AssetManager assets = context.getAssets();
            for (File file : set) {
                m9450a(assets, file);
            }
        }
    }
}
