package com.bytedance.sdk.openadsdk.core.video.b;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import com.bytedance.sdk.adnet.b.b;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.g;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.j.e;
import com.bytedance.sdk.openadsdk.utils.k;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.s;
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
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/b/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile a f9154a;

    /* renamed from: b  reason: collision with root package name */
    private String f9155b;

    /* renamed from: c  reason: collision with root package name */
    private Map<i, b> f9156c = Collections.synchronizedMap(new HashMap());

    /* renamed from: d  reason: collision with root package name */
    private Map<String, JSONObject> f9157d = Collections.synchronizedMap(new HashMap());
    private AtomicBoolean e = new AtomicBoolean(false);
    private Set<String> f = Collections.synchronizedSet(new HashSet());
    private Handler g = new Handler(Looper.getMainLooper());

    /* renamed from: com.bytedance.sdk.openadsdk.core.video.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/b/a$a.class */
    public interface AbstractC0166a {
        void a(boolean z);
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/b/a$b.class */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        long f9169a;

        /* renamed from: b  reason: collision with root package name */
        long f9170b;

        /* renamed from: c  reason: collision with root package name */
        long f9171c;

        /* renamed from: d  reason: collision with root package name */
        long f9172d;

        private b() {
        }

        public long a() {
            return this.f9170b - this.f9169a;
        }

        public b a(long j) {
            this.f9169a = j;
            return this;
        }

        public long b() {
            return this.f9172d - this.f9171c;
        }

        public b b(long j) {
            this.f9170b = j;
            return this;
        }

        public b c(long j) {
            this.f9171c = j;
            return this;
        }

        public b d(long j) {
            this.f9172d = j;
            return this;
        }
    }

    private a() {
    }

    public static a a() {
        if (f9154a == null) {
            synchronized (a.class) {
                try {
                    if (f9154a == null) {
                        f9154a = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9154a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File a(File file) {
        File file2 = new File(file, "tt_open_ad_sdk_check_res.dat");
        return b(file2) ? file2 : new File(file, "tt_open_ad_sdk_check_res.dat");
    }

    private String a(String str) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject a(File file, boolean z) {
        byte[] d2;
        try {
            if (!b(file) || (d2 = k.d(file)) == null || d2.length <= 0) {
                return null;
            }
            String b2 = TextUtils.equals(file.getName(), "tt_open_ad_sdk_check_res.dat") ? com.bytedance.sdk.openadsdk.utils.a.b(new String(d2)) : com.bytedance.sdk.openadsdk.c.a.a(new String(d2), com.bytedance.sdk.openadsdk.core.a.a());
            if (TextUtils.isEmpty(b2)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(b2);
            if (z && jSONObject.length() > 0) {
                this.f9157d.put(file.getParentFile().getName(), jSONObject);
            }
            return jSONObject;
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final AbstractC0166a aVar, final boolean z) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            if (aVar != null) {
                aVar.a(z);
            }
        } else if (aVar != null) {
            this.g.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.b.a.3
                @Override // java.lang.Runnable
                public void run() {
                    AbstractC0166a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.a(z);
                    }
                }
            });
        }
    }

    private boolean a(String str, String str2, File file) {
        JSONObject jSONObject;
        String optString;
        return (file == null || !file.exists() || (jSONObject = this.f9157d.get(str)) == null || (optString = jSONObject.optString(str2)) == null || !optString.equalsIgnoreCase(com.bytedance.sdk.openadsdk.utils.i.a(file))) ? false : true;
    }

    private boolean b(File file) {
        return file != null && file.exists() && file.isFile() && file.canRead();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String c() {
        File file = new File(d(), "games");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(File file) {
        d(file);
        try {
            g.b().o().a(file);
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String d() {
        if (TextUtils.isEmpty(this.f9155b)) {
            try {
                File file = new File(n.a().getCacheDir(), "playable");
                if (!file.exists()) {
                    file.mkdirs();
                }
                this.f9155b = file.getAbsolutePath();
            } catch (Throwable th) {
                q.e("PlayableCache", "init root path error: ".concat(String.valueOf(th)));
            }
        }
        return this.f9155b;
    }

    private void d(File file) {
        try {
            if (file.exists()) {
                long currentTimeMillis = System.currentTimeMillis();
                if (!file.setLastModified(currentTimeMillis)) {
                    file.renameTo(file);
                    if (file.lastModified() < currentTimeMillis) {
                        q.d("PlayableCache", "Last modified date " + new Date(file.lastModified()) + " is not set for file " + file.getAbsolutePath());
                    }
                }
            }
        } catch (Throwable th) {
        }
    }

    private boolean e(File file) {
        String[] list;
        if (file == null || !file.isDirectory() || (list = file.list()) == null || list.length <= 0) {
            return false;
        }
        return Arrays.asList(list).contains("index.html");
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x010d -> B:28:0x0073). Please submit an issue!!! */
    public WebResourceResponse a(String str, String str2, String str3) {
        try {
            if (!this.e.get() || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
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
            String a2 = s.a(n.a(), str4);
            if (TextUtils.isEmpty(a2)) {
                return null;
            }
            String a3 = com.bytedance.sdk.openadsdk.utils.i.a(str);
            if (TextUtils.isEmpty(a3)) {
                return null;
            }
            File file = new File(c(), a3);
            if (!e(file)) {
                return null;
            }
            String a4 = a(str2);
            if (TextUtils.isEmpty(a4)) {
                return null;
            }
            String replace = str4.replace(a4, "");
            if (TextUtils.isEmpty(replace)) {
                return null;
            }
            File file2 = new File(file, replace);
            if (a(a3, replace, file2)) {
                return new WebResourceResponse(a2, "utf-8", new FileInputStream(file2));
            }
            return null;
        } catch (Throwable th2) {
            q.c("PlayableCache", "playable intercept error: ", th2);
            return null;
        }
    }

    public void a(final i iVar, final AbstractC0166a aVar) {
        if (iVar == null || iVar.B() == null || TextUtils.isEmpty(iVar.B().j())) {
            com.bytedance.sdk.openadsdk.core.video.b.b.a(n.a(), iVar, -701, (String) null);
            a(aVar, false);
            return;
        }
        final String j = iVar.B().j();
        if (!this.f.contains(j)) {
            this.f9156c.put(iVar, new b().a(System.currentTimeMillis()));
            com.bytedance.sdk.openadsdk.core.video.b.b.a(n.a(), iVar);
            final String a2 = com.bytedance.sdk.openadsdk.utils.i.a(j);
            final File file = new File(c(), a2);
            if (e(file)) {
                com.bytedance.sdk.openadsdk.core.video.b.b.a(n.a(), iVar, -702, (String) null);
                d(file);
                this.f9156c.remove(iVar);
                a(aVar, true);
                return;
            }
            try {
                k.c(file);
            } catch (Throwable th) {
            }
            this.f.add(j);
            e.c().a(j, new b.a() { // from class: com.bytedance.sdk.openadsdk.core.video.b.a.2
                @Override // com.bytedance.sdk.adnet.b.b.a
                public File a(String str) {
                    return null;
                }

                @Override // com.bytedance.sdk.adnet.b.c.a
                public void a(long j2, long j3) {
                }

                @Override // com.bytedance.sdk.adnet.core.m.a
                public void a(final m<File> mVar) {
                    a.this.f.remove(j);
                    final b bVar = (b) a.this.f9156c.remove(iVar);
                    if (bVar != null) {
                        bVar.b(System.currentTimeMillis());
                    }
                    if (mVar == null || mVar.f8332a == null) {
                        int i = -700;
                        if (mVar != null) {
                            i = -700;
                            if (mVar.h != 0) {
                                i = Long.valueOf(mVar.h).intValue();
                            }
                        }
                        com.bytedance.sdk.openadsdk.core.video.b.b.a(n.a(), iVar, i, (String) null);
                        a.this.a(aVar, false);
                        return;
                    }
                    com.bytedance.sdk.openadsdk.l.e.a(new com.bytedance.sdk.openadsdk.l.g("_downloadZip_onResponse") { // from class: com.bytedance.sdk.openadsdk.core.video.b.a.2.1
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r10v0, types: [long] */
                        /* JADX WARN: Type inference failed for: r10v1 */
                        /* JADX WARN: Type inference failed for: r10v3 */
                        /* JADX WARN: Unknown variable types count: 1 */
                        @Override // java.lang.Runnable
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public void run() {
                            /*
                                Method dump skipped, instructions count: 234
                                To view this dump add '--comments-level debug' option
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.video.b.a.AnonymousClass2.AnonymousClass1.run():void");
                        }
                    }, 5);
                }

                @Override // com.bytedance.sdk.adnet.b.b.a
                public void a(String str, File file2) {
                }

                @Override // com.bytedance.sdk.adnet.b.b.a
                public File b(String str) {
                    String d2 = a.this.d();
                    return new File(d2, a2 + ".zip");
                }

                @Override // com.bytedance.sdk.adnet.core.m.a
                public void b(m<File> mVar) {
                    int i;
                    a.this.f.remove(j);
                    a.this.f9156c.remove(iVar);
                    int i2 = -700;
                    String str = null;
                    if (mVar != null) {
                        if (mVar.h != 0) {
                            i = Long.valueOf(mVar.h).intValue();
                        } else {
                            i = -700;
                            if (mVar.f8334c != null) {
                                i = -700;
                                if (mVar.f8334c.networkResponse != null) {
                                    i = -700;
                                    if (mVar.f8334c.networkResponse.f8322a != 0) {
                                        i = mVar.f8334c.networkResponse.f8322a;
                                    }
                                }
                            }
                        }
                        i2 = i;
                        str = null;
                        if (mVar.f8334c != null) {
                            str = mVar.f8334c.getMessage();
                            i2 = i;
                        }
                    }
                    com.bytedance.sdk.openadsdk.core.video.b.b.a(n.a(), iVar, i2, str);
                    a.this.a(aVar, false);
                }
            });
        }
    }

    public boolean a(i iVar) {
        if (!this.e.get() || iVar == null || iVar.B() == null || iVar.B().j() == null) {
            return false;
        }
        try {
            String a2 = com.bytedance.sdk.openadsdk.utils.i.a(iVar.B().j());
            if (this.f9157d.get(a2) == null) {
                return false;
            }
            return e(new File(c(), a2));
        } catch (Throwable th) {
            return false;
        }
    }

    public void b() {
        if (!this.e.get()) {
            com.bytedance.sdk.openadsdk.l.e.a(new com.bytedance.sdk.openadsdk.l.g("PlayableCache_init") { // from class: com.bytedance.sdk.openadsdk.core.video.b.a.1
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:16:0x0053). Please submit an issue!!! */
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        String c2 = a.this.c();
                        if (!TextUtils.isEmpty(c2)) {
                            File file = new File(c2);
                            if (file.exists() && file.isDirectory() && (r0 = file.listFiles()) != null) {
                                for (File file2 : r0) {
                                    try {
                                        a.this.a(a.this.a(file2), true);
                                    } catch (Throwable th) {
                                    }
                                }
                            }
                        }
                    } catch (Throwable th2) {
                    }
                    a.this.e.set(true);
                }
            }, 5);
        }
    }
}
