package com.bytedance.sdk.openadsdk.component.reward;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.adnet.b.b;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.e.o;
import com.bytedance.sdk.openadsdk.core.g;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.d.e;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.k;
import com.bytedance.sdk.openadsdk.utils.q;
import com.mopub.common.AdType;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/f.class */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static volatile f f8657a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f8658b;

    /* renamed from: c  reason: collision with root package name */
    private final i f8659c;

    /* renamed from: d  reason: collision with root package name */
    private Map<i, Long> f8660d = Collections.synchronizedMap(new HashMap());

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/f$a.class */
    interface a<T> {
        void a(boolean z, T t);
    }

    private f(Context context) {
        Context a2 = context == null ? n.a() : context.getApplicationContext();
        this.f8658b = a2;
        this.f8659c = new i(a2, "sp_reward_video");
    }

    public static f a(Context context) {
        if (f8657a == null) {
            synchronized (f.class) {
                try {
                    if (f8657a == null) {
                        f8657a = new f(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8657a;
    }

    private File a(Context context, String str, String str2) {
        return k.a(context, b.b(), str, str2);
    }

    private String a(String str, boolean z) {
        String str2;
        if (z) {
            str2 = "reward_video_cache_" + str + "/";
        } else {
            str2 = "/reward_video_cache_" + str + "/";
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(File file) {
        try {
            g.b().n().a(file);
        } catch (IOException e) {
            q.e("RewardVideoCache", "trimFileCache IOException:" + e.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, i iVar, long j, m mVar) {
        Long remove = this.f8660d.remove(iVar);
        long elapsedRealtime = remove == null ? 0L : SystemClock.elapsedRealtime() - remove.longValue();
        e.a(this.f8658b, iVar, AdType.REWARDED_VIDEO, z ? "load_video_success" : "load_video_error", af.a(z, iVar, elapsedRealtime, j, (z || mVar == null || mVar.f8334c == null) ? null : mVar.f8334c.getMessage()));
    }

    public String a(i iVar) {
        if (iVar == null || iVar.B() == null || TextUtils.isEmpty(iVar.B().h())) {
            return null;
        }
        return a(iVar.B().h(), iVar.B().k(), String.valueOf(af.d(iVar.S())));
    }

    public String a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String str4 = str2;
        if (TextUtils.isEmpty(str2)) {
            str4 = com.bytedance.sdk.openadsdk.utils.i.a(str);
        }
        File a2 = a(this.f8658b, a(String.valueOf(str3), b.b()), str4);
        if (a2 == null || !a2.exists() || !a2.isFile()) {
            return null;
        }
        return a2.getAbsolutePath();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x0118 -> B:41:0x0104). Please submit an issue!!! */
    public void a() {
        File[] listFiles;
        File[] listFiles2;
        try {
            File file = Build.VERSION.SDK_INT >= 24 ? new File(this.f8658b.getDataDir(), "shared_prefs") : new File(this.f8658b.getDatabasePath("1").getParentFile().getParentFile(), "shared_prefs");
            if (file.exists() && file.isDirectory() && (listFiles2 = file.listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.component.reward.f.1
                @Override // java.io.FileFilter
                public boolean accept(File file2) {
                    if (file2 != null) {
                        return file2.getName().contains("sp_reward_video");
                    }
                    return false;
                }
            })) != null) {
                for (File file2 : listFiles2) {
                    try {
                        String replace = file2.getName().replace(".xml", "");
                        if (Build.VERSION.SDK_INT >= 24) {
                            this.f8658b.deleteSharedPreferences(replace);
                        } else {
                            this.f8658b.getSharedPreferences(replace, 0).edit().clear().apply();
                            k.c(file2);
                        }
                    } catch (Throwable th) {
                    }
                }
            }
        } catch (Throwable th2) {
        }
        try {
            File cacheDir = this.f8658b.getCacheDir();
            if (cacheDir != null && cacheDir.exists() && cacheDir.isDirectory() && (listFiles = cacheDir.listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.component.reward.f.2
                @Override // java.io.FileFilter
                public boolean accept(File file3) {
                    if (file3 != null) {
                        return file3.getName().contains("reward_video_cache");
                    }
                    return false;
                }
            })) != null && listFiles.length > 0) {
                for (File file3 : listFiles) {
                    try {
                        k.c(file3);
                    } catch (Throwable th3) {
                    }
                }
            }
        } catch (Throwable th4) {
        }
    }

    public void a(AdSlot adSlot) {
        this.f8659c.a(adSlot);
    }

    public void a(AdSlot adSlot, i iVar) {
        a(adSlot);
        if (iVar != null) {
            try {
                this.f8659c.a(adSlot.getCodeId(), iVar.ag().toString());
            } catch (Throwable th) {
            }
        }
    }

    public void a(final i iVar, final a<Object> aVar) {
        this.f8660d.put(iVar, Long.valueOf(SystemClock.elapsedRealtime()));
        if (iVar == null || iVar.B() == null || TextUtils.isEmpty(iVar.B().h())) {
            if (aVar != null) {
                aVar.a(false, null);
            }
            a(false, iVar, -1L, null);
            return;
        }
        String h = iVar.B().h();
        String k = iVar.B().k();
        final String str = k;
        if (TextUtils.isEmpty(k)) {
            str = com.bytedance.sdk.openadsdk.utils.i.a(h);
        }
        int d2 = af.d(iVar.S());
        String a2 = a(String.valueOf(d2), b.b());
        q.e("wzj", "ritId:" + d2 + ",cacheDirPath=" + a2);
        final File a3 = a(this.f8658b, a2, str);
        com.bytedance.sdk.openadsdk.j.e.c().a(h, new b.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.f.3
            @Override // com.bytedance.sdk.adnet.b.b.a
            public File a(String str2) {
                try {
                    File parentFile = a3.getParentFile();
                    if (parentFile == null || !parentFile.exists()) {
                        return null;
                    }
                    return g.b().n().a(str, parentFile);
                } catch (IOException e) {
                    q.e("RewardVideoCache", "datastoreGet throw IOException : " + e.toString());
                    return null;
                }
            }

            @Override // com.bytedance.sdk.adnet.b.c.a
            public void a(long j, long j2) {
            }

            @Override // com.bytedance.sdk.adnet.core.m.a
            public void a(m<File> mVar) {
                boolean z;
                long j;
                f fVar;
                i iVar2;
                if (mVar == null || mVar.f8332a == null || !a3.exists()) {
                    a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.a(false, null);
                    }
                    fVar = f.this;
                    iVar2 = iVar;
                    j = mVar == null ? -3L : mVar.h;
                    z = false;
                } else {
                    a aVar3 = aVar;
                    if (aVar3 != null) {
                        aVar3.a(true, null);
                    }
                    fVar = f.this;
                    iVar2 = iVar;
                    j = 0;
                    z = true;
                }
                fVar.a(z, iVar2, j, mVar);
            }

            @Override // com.bytedance.sdk.adnet.b.b.a
            public void a(String str2, File file) {
                if (file != null) {
                    f.this.a(file);
                }
            }

            @Override // com.bytedance.sdk.adnet.b.b.a
            public File b(String str2) {
                return a3;
            }

            @Override // com.bytedance.sdk.adnet.core.m.a
            public void b(m<File> mVar) {
                a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.a(false, null);
                }
                f.this.a(false, iVar, mVar == null ? -2L : mVar.h, mVar);
            }
        });
    }

    public void a(String str) {
        this.f8659c.d(str);
    }

    public AdSlot b() {
        return this.f8659c.a();
    }

    public AdSlot b(String str) {
        return this.f8659c.e(str);
    }

    public void b(AdSlot adSlot) {
        this.f8659c.b(adSlot);
    }

    public i c(String str) {
        i a2;
        long b2 = this.f8659c.b(str);
        boolean c2 = this.f8659c.c(str);
        if (!(System.currentTimeMillis() - b2 < 10800000) || c2) {
            return null;
        }
        try {
            String a3 = this.f8659c.a(str);
            if (TextUtils.isEmpty(a3) || (a2 = com.bytedance.sdk.openadsdk.core.b.a(new JSONObject(a3))) == null) {
                return null;
            }
            if (a2.x()) {
                return a2;
            }
            if (a2.B() == null) {
                return null;
            }
            o B = a2.B();
            if (!TextUtils.isEmpty(a(B.h(), B.k(), str))) {
                return a2;
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }
}
