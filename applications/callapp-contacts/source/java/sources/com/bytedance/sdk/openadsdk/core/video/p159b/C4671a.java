package com.bytedance.sdk.openadsdk.core.video.p159b;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.p141b.C4159b;
import com.bytedance.sdk.openadsdk.core.C4462a;
import com.bytedance.sdk.openadsdk.core.C4570g;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.p146c.C4353a;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.p184l.AbstractRunnableC5055g;
import com.bytedance.sdk.openadsdk.p184l.C5052e;
import com.bytedance.sdk.openadsdk.utils.C5432a;
import com.bytedance.sdk.openadsdk.utils.C5448ai;
import com.bytedance.sdk.openadsdk.utils.C5465i;
import com.bytedance.sdk.openadsdk.utils.C5467k;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5480s;
import java.io.File;
import java.io.FileInputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.core.video.b.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/b/a.class */
public class C4671a {

    /* renamed from: a */
    private static volatile C4671a f17067a;

    /* renamed from: b */
    private String f17068b;

    /* renamed from: c */
    private Map<C4557i, C4677b> f17069c = Collections.synchronizedMap(new HashMap());

    /* renamed from: d */
    private Map<String, JSONObject> f17070d = Collections.synchronizedMap(new HashMap());

    /* renamed from: e */
    private AtomicBoolean f17071e = new AtomicBoolean(false);

    /* renamed from: f */
    private Set<String> f17072f = Collections.synchronizedSet(new HashSet());

    /* renamed from: g */
    private Handler f17073g = new Handler(Looper.getMainLooper());

    /* renamed from: com.bytedance.sdk.openadsdk.core.video.b.a$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/b/a$a.class */
    public interface AbstractC4676a {
        /* renamed from: a */
        void mo34562a(boolean z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.core.video.b.a$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/b/a$b.class */
    public static class C4677b {

        /* renamed from: a */
        long f17087a;

        /* renamed from: b */
        long f17088b;

        /* renamed from: c */
        long f17089c;

        /* renamed from: d */
        long f17090d;

        private C4677b() {
        }

        /* renamed from: a */
        public long m34561a() {
            return this.f17088b - this.f17087a;
        }

        /* renamed from: a */
        public C4677b m34560a(long j) {
            this.f17087a = j;
            return this;
        }

        /* renamed from: b */
        public long m34559b() {
            return this.f17090d - this.f17089c;
        }

        /* renamed from: b */
        public C4677b m34558b(long j) {
            this.f17088b = j;
            return this;
        }

        /* renamed from: c */
        public C4677b m34557c(long j) {
            this.f17089c = j;
            return this;
        }

        /* renamed from: d */
        public C4677b m34556d(long j) {
            this.f17090d = j;
            return this;
        }
    }

    private C4671a() {
    }

    /* renamed from: a */
    public static C4671a m34591a() {
        if (f17067a == null) {
            synchronized (C4671a.class) {
                try {
                    if (f17067a == null) {
                        f17067a = new C4671a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f17067a;
    }

    /* renamed from: a */
    public File m34583a(File file) {
        File file2 = new File(file, "tt_open_ad_sdk_check_res.dat");
        return m34575b(file2) ? file2 : new File(file, "tt_open_ad_sdk_check_res.dat");
    }

    /* renamed from: a */
    private String m34581a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split("\\?");
        String str2 = str;
        if (split != null) {
            str2 = str;
            if (split.length == 2) {
                String str3 = str;
                if (split[0] != null) {
                    str3 = str;
                    if (split[0].endsWith("/")) {
                        str3 = str.substring(0, split.length - 1);
                    }
                }
                str2 = str3;
                if (split[0] != null) {
                    str2 = str3;
                    if (split[0].endsWith("index.html")) {
                        str2 = split[0];
                    }
                }
            }
        }
        return str2.replace("index.html", "");
    }

    /* renamed from: a */
    public JSONObject m34582a(File file, boolean z) {
        byte[] m32136d;
        try {
            if (!m34575b(file) || (m32136d = C5467k.m32136d(file)) == null || m32136d.length <= 0) {
                return null;
            }
            String m32330b = TextUtils.equals(file.getName(), "tt_open_ad_sdk_check_res.dat") ? C5432a.m32330b(new String(m32136d)) : C4353a.m35737a(new String(m32136d), C4462a.m35512a());
            if (TextUtils.isEmpty(m32330b)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(m32330b);
            if (z && jSONObject.length() > 0) {
                this.f17070d.put(file.getParentFile().getName(), jSONObject);
            }
            return jSONObject;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public void m34588a(final AbstractC4676a abstractC4676a, final boolean z) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            if (abstractC4676a == null) {
                return;
            }
            abstractC4676a.mo34562a(z);
        } else if (abstractC4676a == null) {
        } else {
            this.f17073g.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.b.a.3
                @Override // java.lang.Runnable
                public void run() {
                    AbstractC4676a abstractC4676a2 = abstractC4676a;
                    if (abstractC4676a2 != null) {
                        abstractC4676a2.mo34562a(z);
                    }
                }
            });
        }
    }

    /* renamed from: a */
    private boolean m34580a(String str, String str2, File file) {
        JSONObject jSONObject;
        String optString;
        return (file == null || !file.exists() || (jSONObject = this.f17070d.get(str)) == null || (optString = jSONObject.optString(str2)) == null || !optString.equalsIgnoreCase(C5465i.m32149a(file))) ? false : true;
    }

    /* renamed from: b */
    private boolean m34575b(File file) {
        return file != null && file.exists() && file.isFile() && file.canRead();
    }

    /* renamed from: c */
    public String m34574c() {
        File file = new File(m34571d(), "games");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }

    /* renamed from: c */
    public void m34572c(File file) {
        m34569d(file);
        try {
            C4570g.m35020b().m34993o().mo35745a(file);
        } catch (Throwable th) {
        }
    }

    /* renamed from: d */
    public String m34571d() {
        if (TextUtils.isEmpty(this.f17068b)) {
            try {
                File file = new File(C4600n.m34815a().getCacheDir(), "playable");
                if (!file.exists()) {
                    file.mkdirs();
                }
                this.f17068b = file.getAbsolutePath();
            } catch (Throwable th) {
                C5478q.m32106e("PlayableCache", "init root path error: ".concat(String.valueOf(th)));
            }
        }
        return this.f17068b;
    }

    /* renamed from: d */
    private void m34569d(File file) {
        try {
            if (!file.exists()) {
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (file.setLastModified(currentTimeMillis)) {
                return;
            }
            file.renameTo(file);
            if (file.lastModified() >= currentTimeMillis) {
                return;
            }
            C5478q.m32107d("PlayableCache", "Last modified date " + new Date(file.lastModified()) + " is not set for file " + file.getAbsolutePath());
        } catch (Throwable th) {
        }
    }

    /* renamed from: e */
    private boolean m34567e(File file) {
        String[] list;
        if (file == null || !file.isDirectory() || (list = file.list()) == null || list.length <= 0) {
            return false;
        }
        return Arrays.asList(list).contains("index.html");
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x010d -> B:28:0x0073). Please submit an issue!!! */
    /* renamed from: a */
    public WebResourceResponse m34579a(String str, String str2, String str3) {
        try {
            if (!this.f17071e.get() || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
                return null;
            }
            String str4 = str3;
            String str5 = str3;
            try {
                if (str3.startsWith("http")) {
                    str4 = str3;
                    str5 = str3;
                    if (str3.contains("?")) {
                        String str6 = str3.split("\\?")[0];
                        str4 = str6;
                        str5 = str6;
                        if (str6.endsWith("/")) {
                            str5 = str6;
                            str4 = str6.substring(0, str6.length() - 1);
                        }
                    }
                }
            } catch (Throwable th) {
                str4 = str5;
            }
            String m32101a = C5480s.m32101a(C4600n.m34815a(), str4);
            if (TextUtils.isEmpty(m32101a)) {
                return null;
            }
            String m32148a = C5465i.m32148a(str);
            if (TextUtils.isEmpty(m32148a)) {
                return null;
            }
            File file = new File(m34574c(), m32148a);
            if (!m34567e(file)) {
                return null;
            }
            String m34581a = m34581a(str2);
            if (TextUtils.isEmpty(m34581a)) {
                return null;
            }
            String replace = str4.replace(m34581a, "");
            if (TextUtils.isEmpty(replace)) {
                return null;
            }
            File file2 = new File(file, replace);
            if (!m34580a(m32148a, replace, file2)) {
                return null;
            }
            return new WebResourceResponse(m32101a, "utf-8", new FileInputStream(file2));
        } catch (Throwable th2) {
            C5478q.m32108c("PlayableCache", "playable intercept error: ", th2);
            return null;
        }
    }

    /* renamed from: a */
    public void m34589a(final C4557i c4557i, final AbstractC4676a abstractC4676a) {
        if (c4557i == null || c4557i.m35245B() == null || TextUtils.isEmpty(c4557i.m35245B().m35041j())) {
            C4678b.m34554a(C4600n.m34815a(), c4557i, -701, (String) null);
            m34588a(abstractC4676a, false);
            return;
        }
        final String m35041j = c4557i.m35245B().m35041j();
        if (this.f17072f.contains(m35041j)) {
            return;
        }
        this.f17069c.put(c4557i, new C4677b().m34560a(System.currentTimeMillis()));
        C4678b.m34555a(C4600n.m34815a(), c4557i);
        final String m32148a = C5465i.m32148a(m35041j);
        final File file = new File(m34574c(), m32148a);
        if (!m34567e(file)) {
            try {
                C5467k.m32137c(file);
            } catch (Throwable th) {
            }
            this.f17072f.add(m35041j);
            C4959e.m33434c().m33436a(m35041j, new C4159b.AbstractC4161a() { // from class: com.bytedance.sdk.openadsdk.core.video.b.a.2
                @Override // com.bytedance.sdk.adnet.p141b.C4159b.AbstractC4161a
                /* renamed from: a */
                public File mo34565a(String str) {
                    return null;
                }

                @Override // com.bytedance.sdk.adnet.p141b.C4164c.AbstractC4165a
                /* renamed from: a */
                public void mo34566a(long j, long j2) {
                }

                @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
                /* renamed from: a */
                public void mo33422a(final C4218m<File> c4218m) {
                    C4671a.this.f17072f.remove(m35041j);
                    final C4677b c4677b = (C4677b) C4671a.this.f17069c.remove(c4557i);
                    if (c4677b != null) {
                        c4677b.m34558b(System.currentTimeMillis());
                    }
                    if (c4218m != null && c4218m.f15468a != null) {
                        C5052e.m33161a(new AbstractRunnableC5055g("_downloadZip_onResponse") { // from class: com.bytedance.sdk.openadsdk.core.video.b.a.2.1
                            /* JADX WARN: Multi-variable type inference failed */
                            /* JADX WARN: Type inference failed for: r0v42, types: [long] */
                            /* JADX WARN: Type inference failed for: r0v45, types: [long] */
                            /* JADX WARN: Type inference failed for: r10v0 */
                            /* JADX WARN: Type inference failed for: r10v1 */
                            /* JADX WARN: Type inference failed for: r10v2 */
                            /* JADX WARN: Type inference failed for: r12v0 */
                            /* JADX WARN: Type inference failed for: r12v1 */
                            /* JADX WARN: Type inference failed for: r12v2 */
                            /* JADX WARN: Type inference failed for: r2v3 */
                            /* JADX WARN: Type inference failed for: r3v2 */
                            /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Throwable] */
                            /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.Throwable] */
                            @Override // java.lang.Runnable
                            public void run() {
                                ?? r12;
                                ?? r10;
                                boolean z = true;
                                try {
                                    C4677b c4677b2 = c4677b;
                                    if (c4677b2 != null) {
                                        c4677b2.m34557c(System.currentTimeMillis());
                                    }
                                    C5448ai.m32200a(((File) c4218m.f15468a).getAbsolutePath(), C4671a.this.m34574c());
                                    C4677b c4677b3 = c4677b;
                                    if (c4677b3 != null) {
                                        c4677b3.m34556d(System.currentTimeMillis());
                                    }
                                    C4677b c4677b4 = c4677b;
                                    if (c4677b4 != null) {
                                        r10 = c4677b4.m34561a();
                                        r12 = c4677b.m34559b();
                                    } else {
                                        r12 = false;
                                        r10 = false;
                                    }
                                    C4678b.m34553a(C4600n.m34815a(), c4557i, r10 == true ? 1L : 0L, r12 == true ? 1L : 0L);
                                    C4671a.this.m34572c(file);
                                    try {
                                        C4671a.this.m34582a(C4671a.this.m34583a(file), true);
                                    } catch (Throwable th2) {
                                    }
                                } catch (Throwable th3) {
                                    C5478q.m32108c("PlayableCache", "unzip error: ", th3);
                                    C4678b.m34554a(C4600n.m34815a(), c4557i, -704, th3.getMessage());
                                    z = false;
                                }
                                try {
                                    ((File) c4218m.f15468a).delete();
                                } catch (Throwable th4) {
                                }
                                C4671a.this.m34588a(abstractC4676a, z);
                            }
                        }, 5);
                        return;
                    }
                    int i = -700;
                    if (c4218m != null) {
                        i = -700;
                        if (c4218m.f15475h != 0) {
                            i = Long.valueOf(c4218m.f15475h).intValue();
                        }
                    }
                    C4678b.m34554a(C4600n.m34815a(), c4557i, i, (String) null);
                    C4671a.this.m34588a(abstractC4676a, false);
                }

                @Override // com.bytedance.sdk.adnet.p141b.C4159b.AbstractC4161a
                /* renamed from: a */
                public void mo34564a(String str, File file2) {
                }

                @Override // com.bytedance.sdk.adnet.p141b.C4159b.AbstractC4161a
                /* renamed from: b */
                public File mo34563b(String str) {
                    String m34571d = C4671a.this.m34571d();
                    return new File(m34571d, m32148a + ".zip");
                }

                @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
                /* renamed from: b */
                public void mo33419b(C4218m<File> c4218m) {
                    int i;
                    C4671a.this.f17072f.remove(m35041j);
                    C4671a.this.f17069c.remove(c4557i);
                    int i2 = -700;
                    String str = null;
                    if (c4218m != null) {
                        if (c4218m.f15475h != 0) {
                            i = Long.valueOf(c4218m.f15475h).intValue();
                        } else {
                            i = -700;
                            if (c4218m.f15470c != null) {
                                i = -700;
                                if (c4218m.f15470c.networkResponse != null) {
                                    i = -700;
                                    if (c4218m.f15470c.networkResponse.f15449a != 0) {
                                        i = c4218m.f15470c.networkResponse.f15449a;
                                    }
                                }
                            }
                        }
                        i2 = i;
                        str = null;
                        if (c4218m.f15470c != null) {
                            str = c4218m.f15470c.getMessage();
                            i2 = i;
                        }
                    }
                    C4678b.m34554a(C4600n.m34815a(), c4557i, i2, str);
                    C4671a.this.m34588a(abstractC4676a, false);
                }
            });
            return;
        }
        C4678b.m34554a(C4600n.m34815a(), c4557i, -702, (String) null);
        m34569d(file);
        this.f17069c.remove(c4557i);
        m34588a(abstractC4676a, true);
    }

    /* renamed from: a */
    public boolean m34590a(C4557i c4557i) {
        if (!this.f17071e.get() || c4557i == null || c4557i.m35245B() == null || c4557i.m35245B().m35041j() == null) {
            return false;
        }
        try {
            String m32148a = C5465i.m32148a(c4557i.m35245B().m35041j());
            if (this.f17070d.get(m32148a) != null) {
                return m34567e(new File(m34574c(), m32148a));
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: b */
    public void m34578b() {
        if (!this.f17071e.get()) {
            C5052e.m33161a(new AbstractRunnableC5055g("PlayableCache_init") { // from class: com.bytedance.sdk.openadsdk.core.video.b.a.1
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:16:0x0053). Please submit an issue!!! */
                @Override // java.lang.Runnable
                public void run() {
                    File[] listFiles;
                    try {
                        String m34574c = C4671a.this.m34574c();
                        if (!TextUtils.isEmpty(m34574c)) {
                            File file = new File(m34574c);
                            if (file.exists() && file.isDirectory() && (listFiles = file.listFiles()) != null) {
                                for (File file2 : listFiles) {
                                    try {
                                        C4671a.this.m34582a(C4671a.this.m34583a(file2), true);
                                    } catch (Throwable th) {
                                    }
                                }
                            }
                        }
                    } catch (Throwable th2) {
                    }
                    C4671a.this.f17071e.set(true);
                }
            }, 5);
        }
    }
}
