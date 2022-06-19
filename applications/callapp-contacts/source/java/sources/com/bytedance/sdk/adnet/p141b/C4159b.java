package com.bytedance.sdk.adnet.p141b;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import com.bytedance.sdk.adnet.C4151a;
import com.bytedance.sdk.adnet.core.C4215l;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.core.C4221o;
import com.bytedance.sdk.adnet.face.AbstractC4246a;
import com.bytedance.sdk.adnet.p141b.C4164c;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bytedance.sdk.adnet.b.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/b.class */
public class C4159b {

    /* renamed from: c */
    private final C4215l f15255c;

    /* renamed from: d */
    private Context f15256d;

    /* renamed from: b */
    private final Handler f15254b = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    private final Map<String, C4162b> f15253a = Collections.synchronizedMap(new LinkedHashMap());

    /* renamed from: com.bytedance.sdk.adnet.b.b$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/b$a.class */
    public interface AbstractC4161a extends C4164c.AbstractC4165a {
        /* renamed from: a */
        File mo34565a(String str);

        /* renamed from: a */
        void mo34564a(String str, File file);

        /* renamed from: b */
        File mo34563b(String str);
    }

    /* renamed from: com.bytedance.sdk.adnet.b.b$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/b$b.class */
    public class C4162b {

        /* renamed from: a */
        String f15260a;

        /* renamed from: b */
        String f15261b;

        /* renamed from: c */
        List<AbstractC4161a> f15262c;

        /* renamed from: d */
        boolean f15263d;

        /* renamed from: e */
        C4164c f15264e;

        C4162b(String str, String str2, AbstractC4161a abstractC4161a, boolean z) {
            C4159b.this = r4;
            this.f15260a = str;
            this.f15261b = str2;
            this.f15263d = z;
            m36271a(abstractC4161a);
        }

        /* renamed from: a */
        void m36272a() {
            C4164c c4164c = new C4164c(this.f15261b, this.f15260a, new C4164c.AbstractC4165a() { // from class: com.bytedance.sdk.adnet.b.b.b.1
                @Override // com.bytedance.sdk.adnet.p141b.C4164c.AbstractC4165a
                /* renamed from: a */
                public void mo34566a(long j, long j2) {
                    if (C4162b.this.f15262c != null) {
                        for (AbstractC4161a abstractC4161a : C4162b.this.f15262c) {
                            try {
                                abstractC4161a.mo34566a(j, j2);
                            } catch (Throwable th) {
                                C4221o.m36107a(th, "file loader onDownloadProgress error", new Object[0]);
                            }
                        }
                    }
                }

                @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
                /* renamed from: a */
                public void mo33422a(C4218m<File> c4218m) {
                    if (C4162b.this.f15262c != null) {
                        for (AbstractC4161a abstractC4161a : C4162b.this.f15262c) {
                            try {
                                abstractC4161a.mo33422a(c4218m);
                            } catch (Throwable th) {
                                C4221o.m36107a(th, "file loader onResponse error", new Object[0]);
                            }
                            try {
                                abstractC4161a.mo34564a(C4162b.this.f15260a, c4218m.f15468a);
                            } catch (Throwable th2) {
                                C4221o.m36107a(th2, "file loader putFile error", new Object[0]);
                            }
                        }
                        C4162b.this.f15262c.clear();
                    }
                    C4159b.this.f15253a.remove(C4162b.this.f15260a);
                }

                @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
                /* renamed from: b */
                public void mo33419b(C4218m<File> c4218m) {
                    if (C4162b.this.f15262c != null) {
                        for (AbstractC4161a abstractC4161a : C4162b.this.f15262c) {
                            try {
                                abstractC4161a.mo33419b(c4218m);
                            } catch (Throwable th) {
                                C4221o.m36107a(th, "file loader onErrorResponse error", new Object[0]);
                            }
                        }
                        C4162b.this.f15262c.clear();
                    }
                    C4159b.this.f15253a.remove(C4162b.this.f15260a);
                }
            });
            this.f15264e = c4164c;
            c4164c.setTag("FileLoader#" + this.f15260a);
            C4159b.this.f15255c.m36123a(this.f15264e);
        }

        /* renamed from: a */
        void m36271a(AbstractC4161a abstractC4161a) {
            if (abstractC4161a == null) {
                return;
            }
            if (this.f15262c == null) {
                this.f15262c = Collections.synchronizedList(new ArrayList());
            }
            this.f15262c.add(abstractC4161a);
        }

        public boolean equals(Object obj) {
            return obj instanceof C4162b ? ((C4162b) obj).f15260a.equals(this.f15260a) : super.equals(obj);
        }
    }

    public C4159b(Context context, C4215l c4215l) {
        this.f15256d = context;
        this.f15255c = c4215l;
    }

    /* renamed from: a */
    private String m36280a() {
        File file = new File(C4151a.m36302b(this.f15256d), "fileLoader");
        file.mkdirs();
        return file.getAbsolutePath();
    }

    /* renamed from: a */
    private void m36279a(C4162b c4162b) {
        if (c4162b == null) {
            return;
        }
        c4162b.m36272a();
        this.f15253a.put(c4162b.f15260a, c4162b);
    }

    /* renamed from: a */
    private boolean m36277a(String str) {
        return this.f15253a.containsKey(str);
    }

    /* renamed from: b */
    private C4162b m36273b(String str, AbstractC4161a abstractC4161a, boolean z) {
        File mo34563b = abstractC4161a != null ? abstractC4161a.mo34563b(str) : null;
        return new C4162b(str, mo34563b == null ? new File(m36280a(), new String(Base64.encode(str.getBytes(), 0))).getAbsolutePath() : mo34563b.getAbsolutePath(), abstractC4161a, z);
    }

    /* renamed from: a */
    public void m36276a(String str, AbstractC4161a abstractC4161a) {
        m36275a(str, abstractC4161a, true);
    }

    /* renamed from: a */
    public void m36275a(String str, final AbstractC4161a abstractC4161a, boolean z) {
        C4162b c4162b;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (m36277a(str) && (c4162b = this.f15253a.get(str)) != null) {
            c4162b.m36271a(abstractC4161a);
            return;
        }
        final File mo34565a = abstractC4161a.mo34565a(str);
        if (mo34565a == null || abstractC4161a == null) {
            m36279a(m36273b(str, abstractC4161a, z));
        } else {
            this.f15254b.post(new Runnable() { // from class: com.bytedance.sdk.adnet.b.b.1
                @Override // java.lang.Runnable
                public void run() {
                    abstractC4161a.mo34566a(mo34565a.length(), mo34565a.length());
                    abstractC4161a.mo33422a(C4218m.m36112a(mo34565a, (AbstractC4246a.C4247a) null));
                }
            });
        }
    }
}
