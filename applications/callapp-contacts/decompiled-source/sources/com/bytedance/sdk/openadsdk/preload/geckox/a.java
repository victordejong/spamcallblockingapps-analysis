package com.bytedance.sdk.openadsdk.preload.geckox;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.preload.b.d;
import com.bytedance.sdk.openadsdk.preload.geckox.e.b;
import com.bytedance.sdk.openadsdk.preload.geckox.model.CheckRequestBodyModel;
import com.bytedance.sdk.openadsdk.preload.geckox.statistic.c;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.g;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f10126a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private b f10127b = new b();

    /* renamed from: c  reason: collision with root package name */
    private Queue<String> f10128c = new LinkedBlockingQueue();

    /* renamed from: d  reason: collision with root package name */
    private b f10129d;
    private File e;

    private a(b bVar) {
        this.f10129d = bVar;
        File m = bVar.m();
        this.e = m;
        m.mkdirs();
        c.a(this, this.f10129d);
    }

    public static a a(b bVar) {
        if (bVar != null) {
            List<String> e = bVar.e();
            if (e == null || e.isEmpty()) {
                throw new IllegalArgumentException("access key empty");
            }
            g.a(bVar.a());
            return new a(bVar);
        }
        throw new IllegalArgumentException("config == null");
    }

    private void a(String str, int i) {
        if (this.f10129d.o() != null && this.f10129d.o().a()) {
            this.f10129d.o().a(str, i);
        } else if (this.f10128c.size() < 10) {
            this.f10128c.add(str);
        }
    }

    private boolean a() {
        List<String> d2 = this.f10129d.d();
        List<String> e = this.f10129d.e();
        if (d2 == null || d2.isEmpty() || e == null || e.isEmpty()) {
            return false;
        }
        for (String str : e) {
            boolean z = false;
            for (String str2 : d2) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f10129d.e());
        a(com.bytedance.sdk.openadsdk.preload.geckox.c.b.a().b().a(new com.bytedance.sdk.openadsdk.preload.geckox.k.a.a(arrayList)), 100);
    }

    private boolean b(Map<String, List<CheckRequestBodyModel.TargetChannel>> map) {
        if (map == null || map.isEmpty()) {
            return true;
        }
        List<String> e = this.f10129d.e();
        for (Map.Entry<String, List<CheckRequestBodyModel.TargetChannel>> entry : map.entrySet()) {
            boolean z = false;
            for (String str : e) {
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

    public final void a(Class<? extends d<?, ?>> cls, com.bytedance.sdk.openadsdk.preload.b.b.a aVar) {
        this.f10127b.a(cls, aVar);
    }

    public final void a(final String str, final Map<String, Map<String, Object>> map, final Map<String, List<CheckRequestBodyModel.TargetChannel>> map2, final com.bytedance.sdk.openadsdk.preload.geckox.e.a aVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("groupType == null");
        } else if (!a()) {
            throw new IllegalArgumentException("deployments keys not in local keys");
        } else if (b(map2)) {
            this.f10129d.g().execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.a.1
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.preload.geckox.a.a.b bVar;
                    com.bytedance.sdk.openadsdk.preload.geckox.h.b.a("gecko-debug-tag", "start check update...", str);
                    if (a.this.f10129d.b() != null) {
                        bVar = a.this.f10129d.b().a();
                        bVar.a(a.this.f10129d.b(), a.this.f10129d.m(), a.this.f10129d.e());
                    } else {
                        bVar = null;
                    }
                    try {
                        try {
                            com.bytedance.sdk.openadsdk.preload.geckox.h.b.a("gecko-debug-tag", "update finished", com.bytedance.sdk.openadsdk.preload.geckox.j.a.a(aVar, a.this.e, a.this.f10129d, a.this.f10127b, map, map2, str).a((com.bytedance.sdk.openadsdk.preload.b.b<Object>) str));
                            com.bytedance.sdk.openadsdk.preload.geckox.e.a aVar2 = aVar;
                            if (aVar2 != null) {
                                aVar2.a();
                            }
                            if (bVar != null) {
                                bVar.a();
                            }
                            com.bytedance.sdk.openadsdk.preload.geckox.h.b.a("gecko-debug-tag", "all channel update finished");
                        } catch (Exception e) {
                            com.bytedance.sdk.openadsdk.preload.geckox.h.b.a("gecko-debug-tag", "Gecko update failed:", e);
                            com.bytedance.sdk.openadsdk.preload.geckox.e.a aVar3 = aVar;
                            if (aVar3 != null) {
                                aVar3.a();
                            }
                            if (bVar != null) {
                                bVar.a();
                            }
                            com.bytedance.sdk.openadsdk.preload.geckox.h.b.a("gecko-debug-tag", "all channel update finished");
                        }
                        a.this.b();
                    } catch (Throwable th) {
                        com.bytedance.sdk.openadsdk.preload.geckox.e.a aVar4 = aVar;
                        if (aVar4 != null) {
                            aVar4.a();
                        }
                        if (bVar != null) {
                            bVar.a();
                        }
                        com.bytedance.sdk.openadsdk.preload.geckox.h.b.a("gecko-debug-tag", "all channel update finished");
                        throw th;
                    }
                }
            });
        } else {
            throw new IllegalArgumentException("target keys not in deployments keys");
        }
    }

    public final void a(Map<String, List<CheckRequestBodyModel.TargetChannel>> map) {
        a("default", null, map, null);
    }
}
