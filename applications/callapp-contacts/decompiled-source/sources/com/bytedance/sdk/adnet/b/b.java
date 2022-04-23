package com.bytedance.sdk.adnet.b;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import com.bytedance.sdk.adnet.b.c;
import com.bytedance.sdk.adnet.core.l;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.adnet.core.o;
import com.bytedance.sdk.adnet.face.a;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/b.class */
public class b {

    /* renamed from: c  reason: collision with root package name */
    private final l f8197c;

    /* renamed from: d  reason: collision with root package name */
    private Context f8198d;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f8196b = new Handler(Looper.getMainLooper());

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, C0156b> f8195a = Collections.synchronizedMap(new LinkedHashMap());

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/b$a.class */
    public interface a extends c.a {
        File a(String str);

        void a(String str, File file);

        File b(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.adnet.b.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/b$b.class */
    public class C0156b {

        /* renamed from: a  reason: collision with root package name */
        String f8202a;

        /* renamed from: b  reason: collision with root package name */
        String f8203b;

        /* renamed from: c  reason: collision with root package name */
        List<a> f8204c;

        /* renamed from: d  reason: collision with root package name */
        boolean f8205d;
        c e;

        C0156b(String str, String str2, a aVar, boolean z) {
            this.f8202a = str;
            this.f8203b = str2;
            this.f8205d = z;
            a(aVar);
        }

        void a() {
            c cVar = new c(this.f8203b, this.f8202a, new c.a() { // from class: com.bytedance.sdk.adnet.b.b.b.1
                @Override // com.bytedance.sdk.adnet.b.c.a
                public void a(long j, long j2) {
                    if (C0156b.this.f8204c != null) {
                        for (a aVar : C0156b.this.f8204c) {
                            try {
                                aVar.a(j, j2);
                            } catch (Throwable th) {
                                o.a(th, "file loader onDownloadProgress error", new Object[0]);
                            }
                        }
                    }
                }

                @Override // com.bytedance.sdk.adnet.core.m.a
                public void a(m<File> mVar) {
                    if (C0156b.this.f8204c != null) {
                        for (a aVar : C0156b.this.f8204c) {
                            try {
                                aVar.a(mVar);
                            } catch (Throwable th) {
                                o.a(th, "file loader onResponse error", new Object[0]);
                            }
                            try {
                                aVar.a(C0156b.this.f8202a, mVar.f8332a);
                            } catch (Throwable th2) {
                                o.a(th2, "file loader putFile error", new Object[0]);
                            }
                        }
                        C0156b.this.f8204c.clear();
                    }
                    b.this.f8195a.remove(C0156b.this.f8202a);
                }

                @Override // com.bytedance.sdk.adnet.core.m.a
                public void b(m<File> mVar) {
                    if (C0156b.this.f8204c != null) {
                        for (a aVar : C0156b.this.f8204c) {
                            try {
                                aVar.b(mVar);
                            } catch (Throwable th) {
                                o.a(th, "file loader onErrorResponse error", new Object[0]);
                            }
                        }
                        C0156b.this.f8204c.clear();
                    }
                    b.this.f8195a.remove(C0156b.this.f8202a);
                }
            });
            this.e = cVar;
            cVar.setTag("FileLoader#" + this.f8202a);
            b.this.f8197c.a(this.e);
        }

        void a(a aVar) {
            if (aVar != null) {
                if (this.f8204c == null) {
                    this.f8204c = Collections.synchronizedList(new ArrayList());
                }
                this.f8204c.add(aVar);
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof C0156b ? ((C0156b) obj).f8202a.equals(this.f8202a) : super.equals(obj);
        }
    }

    public b(Context context, l lVar) {
        this.f8198d = context;
        this.f8197c = lVar;
    }

    private String a() {
        File file = new File(com.bytedance.sdk.adnet.a.b(this.f8198d), "fileLoader");
        file.mkdirs();
        return file.getAbsolutePath();
    }

    private void a(C0156b bVar) {
        if (bVar != null) {
            bVar.a();
            this.f8195a.put(bVar.f8202a, bVar);
        }
    }

    private boolean a(String str) {
        return this.f8195a.containsKey(str);
    }

    private C0156b b(String str, a aVar, boolean z) {
        File b2 = aVar != null ? aVar.b(str) : null;
        return new C0156b(str, b2 == null ? new File(a(), new String(Base64.encode(str.getBytes(), 0))).getAbsolutePath() : b2.getAbsolutePath(), aVar, z);
    }

    public void a(String str, a aVar) {
        a(str, aVar, true);
    }

    public void a(String str, final a aVar, boolean z) {
        C0156b bVar;
        if (!TextUtils.isEmpty(str)) {
            if (!a(str) || (bVar = this.f8195a.get(str)) == null) {
                final File a2 = aVar.a(str);
                if (a2 == null || aVar == null) {
                    a(b(str, aVar, z));
                } else {
                    this.f8196b.post(new Runnable() { // from class: com.bytedance.sdk.adnet.b.b.1
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.a(a2.length(), a2.length());
                            aVar.a(m.a(a2, (a.C0159a) null));
                        }
                    });
                }
            } else {
                bVar.a(aVar);
            }
        }
    }
}
