package com.bytedance.sdk.openadsdk.preload.geckox;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.preload.geckox.model.CheckRequestBodyModel;
import com.bytedance.sdk.openadsdk.preload.geckox.p206a.p207a.AbstractC5310b;
import com.bytedance.sdk.openadsdk.preload.geckox.p210c.C5335b;
import com.bytedance.sdk.openadsdk.preload.geckox.p218e.AbstractC5369a;
import com.bytedance.sdk.openadsdk.preload.geckox.p218e.C5370b;
import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import com.bytedance.sdk.openadsdk.preload.geckox.p224j.C5386a;
import com.bytedance.sdk.openadsdk.preload.geckox.p225k.p226a.C5394a;
import com.bytedance.sdk.openadsdk.preload.geckox.statistic.C5399c;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5423g;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5279b;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d;
import com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/a.class */
public final class C5302a {

    /* renamed from: a */
    private final List<String> f18743a = new ArrayList();

    /* renamed from: b */
    private C5370b f18744b = new C5370b();

    /* renamed from: c */
    private Queue<String> f18745c = new LinkedBlockingQueue();

    /* renamed from: d */
    private C5320b f18746d;

    /* renamed from: e */
    private File f18747e;

    private C5302a(C5320b c5320b) {
        this.f18746d = c5320b;
        File m32572m = c5320b.m32572m();
        this.f18747e = m32572m;
        m32572m.mkdirs();
        C5399c.m32399a(this, this.f18746d);
    }

    /* renamed from: a */
    public static C5302a m32623a(C5320b c5320b) {
        if (c5320b != null) {
            List<String> m32580e = c5320b.m32580e();
            if (m32580e == null || m32580e.isEmpty()) {
                throw new IllegalArgumentException("access key empty");
            }
            C5423g.m32350a(c5320b.m32584a());
            return new C5302a(c5320b);
        }
        throw new IllegalArgumentException("config == null");
    }

    /* renamed from: a */
    private void m32621a(String str, int i) {
        if (this.f18746d.m32570o() != null && this.f18746d.m32570o().m32405a()) {
            this.f18746d.m32570o().m32404a(str, i);
        } else if (this.f18745c.size() >= 10) {
        } else {
            this.f18745c.add(str);
        }
    }

    /* renamed from: a */
    private boolean m32625a() {
        List<String> m32581d = this.f18746d.m32581d();
        List<String> m32580e = this.f18746d.m32580e();
        if (m32581d == null || m32581d.isEmpty() || m32580e == null || m32580e.isEmpty()) {
            return false;
        }
        for (String str : m32580e) {
            boolean z = false;
            for (String str2 : m32581d) {
                if (TextUtils.equals(str, str2)) {
                    z = true;
                }
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public void m32618b() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f18746d.m32580e());
        m32621a(C5335b.m32516a().m32515b().m32723a(new C5394a(arrayList)), 100);
    }

    /* renamed from: b */
    private boolean m32616b(Map<String, List<CheckRequestBodyModel.TargetChannel>> map) {
        if (map == null || map.isEmpty()) {
            return true;
        }
        List<String> m32580e = this.f18746d.m32580e();
        for (Map.Entry<String, List<CheckRequestBodyModel.TargetChannel>> entry : map.entrySet()) {
            boolean z = false;
            for (String str : m32580e) {
                if (TextUtils.equals(str, entry.getKey())) {
                    z = true;
                }
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public final void m32622a(Class<? extends AbstractC5283d<?, ?>> cls, AbstractC5280a abstractC5280a) {
        this.f18744b.m32455a(cls, abstractC5280a);
    }

    /* renamed from: a */
    public final void m32620a(final String str, final Map<String, Map<String, Object>> map, final Map<String, List<CheckRequestBodyModel.TargetChannel>> map2, final AbstractC5369a abstractC5369a) {
        if (!TextUtils.isEmpty(str)) {
            if (!m32625a()) {
                throw new IllegalArgumentException("deployments keys not in local keys");
            }
            if (!m32616b(map2)) {
                throw new IllegalArgumentException("target keys not in deployments keys");
            }
            this.f18746d.m32578g().execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.a.1
                @Override // java.lang.Runnable
                public void run() {
                    AbstractC5310b abstractC5310b;
                    C5381b.m32429a("gecko-debug-tag", "start check update...", str);
                    if (C5302a.this.f18746d.m32583b() != null) {
                        abstractC5310b = C5302a.this.f18746d.m32583b().m32606a();
                        abstractC5310b.mo32596a(C5302a.this.f18746d.m32583b(), C5302a.this.f18746d.m32572m(), C5302a.this.f18746d.m32580e());
                    } else {
                        abstractC5310b = null;
                    }
                    try {
                        try {
                            C5381b.m32429a("gecko-debug-tag", "update finished", C5386a.m32418a(abstractC5369a, C5302a.this.f18747e, C5302a.this.f18746d, C5302a.this.f18744b, map, map2, str).mo32631a((AbstractC5279b<Object>) str));
                            AbstractC5369a abstractC5369a2 = abstractC5369a;
                            if (abstractC5369a2 != null) {
                                abstractC5369a2.m32468a();
                            }
                            if (abstractC5310b != null) {
                                abstractC5310b.mo32595a();
                            }
                            C5381b.m32429a("gecko-debug-tag", "all channel update finished");
                        } catch (Exception e) {
                            C5381b.m32430a("gecko-debug-tag", "Gecko update failed:", e);
                            AbstractC5369a abstractC5369a3 = abstractC5369a;
                            if (abstractC5369a3 != null) {
                                abstractC5369a3.m32468a();
                            }
                            if (abstractC5310b != null) {
                                abstractC5310b.mo32595a();
                            }
                            C5381b.m32429a("gecko-debug-tag", "all channel update finished");
                        }
                        C5302a.this.m32618b();
                    } catch (Throwable th) {
                        AbstractC5369a abstractC5369a4 = abstractC5369a;
                        if (abstractC5369a4 != null) {
                            abstractC5369a4.m32468a();
                        }
                        if (abstractC5310b != null) {
                            abstractC5310b.mo32595a();
                        }
                        C5381b.m32429a("gecko-debug-tag", "all channel update finished");
                        throw th;
                    }
                }
            });
            return;
        }
        throw new IllegalArgumentException("groupType == null");
    }

    /* renamed from: a */
    public final void m32619a(Map<String, List<CheckRequestBodyModel.TargetChannel>> map) {
        m32620a("default", null, map, null);
    }
}
