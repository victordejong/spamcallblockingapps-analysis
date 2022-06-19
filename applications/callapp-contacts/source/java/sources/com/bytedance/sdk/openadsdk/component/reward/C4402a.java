package com.bytedance.sdk.openadsdk.component.reward;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.p141b.C4159b;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.C4493b;
import com.bytedance.sdk.openadsdk.core.C4570g;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.p154e.C4565o;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5465i;
import com.bytedance.sdk.openadsdk.utils.C5467k;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.component.reward.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/a.class */
public class C4402a {

    /* renamed from: a */
    private static volatile C4402a f16099a;

    /* renamed from: b */
    private final Context f16100b;

    /* renamed from: c */
    private final C4440i f16101c;

    /* renamed from: d */
    private Map<C4557i, Long> f16102d = Collections.synchronizedMap(new HashMap());

    /* renamed from: com.bytedance.sdk.openadsdk.component.reward.a$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/a$a.class */
    public interface AbstractC4406a<T> {
        /* renamed from: a */
        void mo35622a(boolean z, T t);
    }

    private C4402a(Context context) {
        Context m34815a = context == null ? C4600n.m34815a() : context.getApplicationContext();
        this.f16100b = m34815a;
        this.f16101c = new C4440i(m34815a, "sp_full_screen_video");
    }

    /* renamed from: a */
    public static C4402a m35655a(Context context) {
        if (f16099a == null) {
            synchronized (C4402a.class) {
                try {
                    if (f16099a == null) {
                        f16099a = new C4402a(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16099a;
    }

    /* renamed from: a */
    private File m35654a(Context context, String str, String str2) {
        return C5467k.m32140a(context, C5094b.m33091b(), str, str2);
    }

    /* renamed from: a */
    private String m35644a(String str, boolean z) {
        String str2;
        if (z) {
            str2 = "full_screen_video_cache_" + str + "/";
        } else {
            str2 = "/full_screen_video_cache_" + str + "/";
        }
        return str2;
    }

    /* renamed from: a */
    public void m35647a(File file) {
        try {
            C4570g.m35020b().m34994n().mo35745a(file);
        } catch (IOException e) {
            C5478q.m32106e("FullScreenVideoCache", "trimFileCache IOException:" + e.toString());
        }
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: a */
    public void m35643a(boolean z, C4557i c4557i, long j, C4218m c4218m) {
        Long remove = this.f16102d.remove(c4557i);
        char elapsedRealtime = remove == null ? (char) 0 : SystemClock.elapsedRealtime() - remove.longValue();
        C4811e.m33879a(this.f16100b, c4557i, "fullscreen_interstitial_ad", z ? "load_video_success" : "load_video_error", C5438af.m32296a(z, c4557i, elapsedRealtime, j, (z || c4218m == null || c4218m.f15470c == null) ? null : c4218m.f15470c.getMessage()));
    }

    /* renamed from: a */
    public String m35649a(C4557i c4557i) {
        if (c4557i == null || c4557i.m35245B() == null || TextUtils.isEmpty(c4557i.m35245B().m35043h())) {
            return null;
        }
        return m35645a(c4557i.m35245B().m35043h(), c4557i.m35245B().m35040k(), String.valueOf(C5438af.m32278d(c4557i.m35228S())));
    }

    /* renamed from: a */
    public String m35645a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String str4 = str2;
        if (TextUtils.isEmpty(str2)) {
            str4 = C5465i.m32148a(str);
        }
        File m35654a = m35654a(this.f16100b, m35644a(String.valueOf(str3), C5094b.m33091b()), str4);
        if (m35654a != null && m35654a.exists() && m35654a.isFile()) {
            return m35654a.getAbsolutePath();
        }
        return null;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x0118 -> B:41:0x0104). Please submit an issue!!! */
    /* renamed from: a */
    public void m35656a() {
        File[] listFiles;
        try {
            File file = Build.VERSION.SDK_INT >= 24 ? new File(this.f16100b.getDataDir(), "shared_prefs") : new File(this.f16100b.getDatabasePath("1").getParentFile().getParentFile(), "shared_prefs");
            if (file.exists() && file.isDirectory()) {
                File[] listFiles2 = file.listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.1
                    @Override // java.io.FileFilter
                    public boolean accept(File file2) {
                        if (file2 != null) {
                            return file2.getName().contains("sp_full_screen_video");
                        }
                        return false;
                    }
                });
                if (listFiles2 != null) {
                    for (File file2 : listFiles2) {
                        try {
                            String replace = file2.getName().replace(".xml", "");
                            if (Build.VERSION.SDK_INT >= 24) {
                                this.f16100b.deleteSharedPreferences(replace);
                            } else {
                                this.f16100b.getSharedPreferences(replace, 0).edit().clear().apply();
                                C5467k.m32137c(file2);
                            }
                        } catch (Throwable th) {
                        }
                    }
                }
            }
        } catch (Throwable th2) {
        }
        try {
            File cacheDir = this.f16100b.getCacheDir();
            if (cacheDir == null || !cacheDir.exists() || !cacheDir.isDirectory() || (listFiles = cacheDir.listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.2
                @Override // java.io.FileFilter
                public boolean accept(File file3) {
                    if (file3 != null) {
                        return file3.getName().contains("full_screen_video_cache");
                    }
                    return false;
                }
            })) == null || listFiles.length <= 0) {
                return;
            }
            for (File file3 : listFiles) {
                try {
                    C5467k.m32137c(file3);
                } catch (Throwable th3) {
                }
            }
        } catch (Throwable th4) {
        }
    }

    /* renamed from: a */
    public void m35653a(AdSlot adSlot) {
        this.f16101c.m35584a(adSlot);
    }

    /* renamed from: a */
    public void m35652a(AdSlot adSlot, C4557i c4557i) {
        m35653a(adSlot);
        if (c4557i != null) {
            try {
                this.f16101c.m35582a(adSlot.getCodeId(), c4557i.m35196ag().toString());
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    public void m35648a(final C4557i c4557i, final AbstractC4406a<Object> abstractC4406a) {
        this.f16102d.put(c4557i, Long.valueOf(SystemClock.elapsedRealtime()));
        if (c4557i == null || c4557i.m35245B() == null || TextUtils.isEmpty(c4557i.m35245B().m35043h())) {
            if (abstractC4406a != null) {
                abstractC4406a.mo35622a(false, null);
            }
            m35643a(false, c4557i, -1L, null);
            return;
        }
        String m35043h = c4557i.m35245B().m35043h();
        String m35040k = c4557i.m35245B().m35040k();
        String str = m35040k;
        if (TextUtils.isEmpty(m35040k)) {
            str = C5465i.m32148a(m35043h);
        }
        int m32278d = C5438af.m32278d(c4557i.m35228S());
        String m35644a = m35644a(String.valueOf(m32278d), C5094b.m33091b());
        C5478q.m32106e("FullScreenVideoCache", "ritId:" + m32278d + ",cacheDirPath=" + m35644a);
        final File m35654a = m35654a(this.f16100b, m35644a, str);
        final String str2 = str;
        C4959e.m33434c().m33436a(m35043h, new C4159b.AbstractC4161a() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.3
            @Override // com.bytedance.sdk.adnet.p141b.C4159b.AbstractC4161a
            /* renamed from: a */
            public File mo34565a(String str3) {
                try {
                    File parentFile = m35654a.getParentFile();
                    if (parentFile != null && parentFile.exists()) {
                        return C4570g.m35020b().m34994n().mo35738a(str2, parentFile);
                    }
                    return null;
                } catch (IOException e) {
                    C5478q.m32106e("FullScreenVideoCache", "datastoreGet throw IOException : " + e.toString());
                    return null;
                }
            }

            @Override // com.bytedance.sdk.adnet.p141b.C4164c.AbstractC4165a
            /* renamed from: a */
            public void mo34566a(long j, long j2) {
            }

            /* JADX WARN: Type inference failed for: r0v12, types: [long] */
            @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
            /* renamed from: a */
            public void mo33422a(C4218m<File> c4218m) {
                C4402a c4402a;
                boolean z;
                char c;
                C4557i c4557i2;
                if (c4218m == null || c4218m.f15468a == null || !m35654a.exists()) {
                    AbstractC4406a abstractC4406a2 = abstractC4406a;
                    if (abstractC4406a2 != null) {
                        abstractC4406a2.mo35622a(false, null);
                    }
                    c4402a = C4402a.this;
                    c4557i2 = c4557i;
                    c = c4218m == null ? (char) 65533 : c4218m.f15475h;
                    z = false;
                } else {
                    AbstractC4406a abstractC4406a3 = abstractC4406a;
                    if (abstractC4406a3 != null) {
                        abstractC4406a3.mo35622a(true, null);
                    }
                    c = 0;
                    z = true;
                    c4402a = C4402a.this;
                    c4557i2 = c4557i;
                }
                c4402a.m35643a(z, c4557i2, c, c4218m);
            }

            @Override // com.bytedance.sdk.adnet.p141b.C4159b.AbstractC4161a
            /* renamed from: a */
            public void mo34564a(String str3, File file) {
                if (file != null) {
                    C4402a.this.m35647a(file);
                }
            }

            @Override // com.bytedance.sdk.adnet.p141b.C4159b.AbstractC4161a
            /* renamed from: b */
            public File mo34563b(String str3) {
                return m35654a;
            }

            /* JADX WARN: Type inference failed for: r0v10, types: [long] */
            @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
            /* renamed from: b */
            public void mo33419b(C4218m<File> c4218m) {
                AbstractC4406a abstractC4406a2 = abstractC4406a;
                if (abstractC4406a2 != null) {
                    abstractC4406a2.mo35622a(false, null);
                }
                C4402a.this.m35643a(false, c4557i, c4218m == null ? (char) 65534 : c4218m.f15475h, c4218m);
            }
        });
    }

    /* renamed from: a */
    public void m35646a(String str) {
        this.f16101c.m35575d(str);
    }

    /* renamed from: b */
    public AdSlot m35642b() {
        return this.f16101c.m35585a();
    }

    /* renamed from: b */
    public AdSlot m35640b(String str) {
        return this.f16101c.m35574e(str);
    }

    /* renamed from: b */
    public void m35641b(AdSlot adSlot) {
        this.f16101c.m35580b(adSlot);
    }

    /* renamed from: c */
    public C4557i m35639c(String str) {
        C4557i m35502a;
        long m35579b = this.f16101c.m35579b(str);
        boolean m35577c = this.f16101c.m35577c(str);
        if (!(System.currentTimeMillis() - m35579b < 10800000) || m35577c) {
            return null;
        }
        try {
            String m35583a = this.f16101c.m35583a(str);
            if (TextUtils.isEmpty(m35583a) || (m35502a = C4493b.m35502a(new JSONObject(m35583a))) == null) {
                return null;
            }
            if (m35502a.m35136x()) {
                return m35502a;
            }
            if (m35502a.m35245B() == null) {
                return null;
            }
            C4565o m35245B = m35502a.m35245B();
            if (TextUtils.isEmpty(m35645a(m35245B.m35043h(), m35245B.m35040k(), str))) {
                return null;
            }
            return m35502a;
        } catch (Exception e) {
            return null;
        }
    }
}
