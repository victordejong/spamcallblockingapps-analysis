package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wt0.class */
public final class wt0 {

    /* renamed from: a */
    private final lt0 f9063a;

    /* renamed from: b */
    private final cp0 f9064b;

    /* renamed from: c */
    private final Object f9065c = new Object();

    /* renamed from: d */
    private final List<vt0> f9066d = new ArrayList();

    /* renamed from: e */
    private boolean f9067e;

    wt0(lt0 lt0Var, cp0 cp0Var) {
        this.f9063a = lt0Var;
        this.f9064b = cp0Var;
    }

    /* renamed from: d */
    public final void m4996d(List<zzamj> list) {
        zzasv zzasvVar;
        synchronized (this.f9065c) {
            try {
                if (this.f9067e) {
                    return;
                }
                for (zzamj zzamjVar : list) {
                    List<vt0> list2 = this.f9066d;
                    String str = zzamjVar.b;
                    bp0 m7788c = this.f9064b.m7788c(str);
                    list2.add(new vt0(str, (m7788c == null || (zzasvVar = m7788c.f6196b) == null) ? "" : zzasvVar.toString(), zzamjVar.c ? 1 : 0, zzamjVar.e, zzamjVar.d));
                }
                this.f9067e = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final void m4999a() {
        this.f9063a.m6659b(new ut0(this));
    }

    /* renamed from: b */
    public final JSONArray m4998b() {
        JSONArray jSONArray = new JSONArray();
        synchronized (this.f9065c) {
            try {
                if (!this.f9067e) {
                    if (!this.f9063a.m6656e()) {
                        m4999a();
                        return jSONArray;
                    }
                    m4996d(this.f9063a.m6657d());
                }
                for (vt0 vt0Var : this.f9066d) {
                    jSONArray.put(vt0Var.m5185a());
                }
                return jSONArray;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
