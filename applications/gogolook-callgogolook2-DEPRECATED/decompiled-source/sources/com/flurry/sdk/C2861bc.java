package com.flurry.sdk;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.bc */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/bc.class */
public final class C2861bc {

    /* renamed from: l */
    public static int f4145l;

    /* renamed from: a */
    public final int f4146a;

    /* renamed from: b */
    public final C2909cf f4147b;

    /* renamed from: e */
    public int f4150e;

    /* renamed from: i */
    public String f4154i;

    /* renamed from: k */
    public C3114ft f4156k;

    /* renamed from: c */
    public final List<C2854az> f4148c = new ArrayList();

    /* renamed from: m */
    public final Map<String, C2856ba> f4157m = new HashMap();

    /* renamed from: d */
    public final LinkedList<C3155gd> f4149d = new LinkedList<>();

    /* renamed from: f */
    public boolean f4151f = false;

    /* renamed from: g */
    public boolean f4152g = false;

    /* renamed from: h */
    public boolean f4153h = true;

    /* renamed from: j */
    public HashMap<String, Object> f4155j = null;

    public C2861bc(C2909cf cfVar) {
        int i = f4145l + 1;
        f4145l = i;
        this.f4146a = i;
        this.f4147b = cfVar;
        for (int i2 = 0; i2 < cfVar.f4440f.size(); i2++) {
            this.f4148c.add(new C2854az());
            String str = cfVar.f4440f.get(i2).f4371f;
            this.f4157m.put(str, new C2856ba(str));
        }
        this.f4156k = new C3114ft(cfVar.f4450p);
    }

    /* renamed from: a */
    public final C2862bd m33505a(String str) {
        return this.f4157m.get(str).f4138a;
    }

    /* renamed from: a */
    public final EnumC2875bj m33506a(int i) {
        EnumC2875bj[] values;
        for (EnumC2875bj bjVar : EnumC2875bj.values()) {
            String bjVar2 = bjVar.toString();
            C2904ca b = m33503b(i);
            if (bjVar2.equals(b != null ? b.f4369d.f4430d : null)) {
                return bjVar;
            }
        }
        return EnumC2875bj.UNKNOWN;
    }

    /* renamed from: a */
    public final String m33507a() {
        return this.f4147b.f4440f.get(this.f4150e).f4371f;
    }

    /* renamed from: b */
    public final C2904ca m33503b(int i) {
        List<C2904ca> list = this.f4147b.f4440f;
        if (list == null || list.size() <= i) {
            return null;
        }
        return list.get(i);
    }

    /* renamed from: b */
    public final List<C2921cr> m33504b() {
        C2920cq cqVar = this.f4147b.f4460z;
        return cqVar != null ? cqVar.f4513f : Collections.emptyList();
    }

    /* renamed from: c */
    public final EnumC2875bj m33502c() {
        return this.f4147b != null ? m33506a(this.f4150e) : EnumC2875bj.UNKNOWN;
    }

    /* renamed from: c */
    public final C3021eh m33501c(int i) {
        if (i < 0 || i >= this.f4148c.size()) {
            return null;
        }
        return this.f4148c.get(i).f4116b;
    }

    /* renamed from: d */
    public final C3155gd m33500d() {
        synchronized (this) {
            synchronized (this.f4149d) {
                if (this.f4149d.size() <= 0) {
                    return null;
                }
                return this.f4149d.pop();
            }
        }
    }

    /* renamed from: d */
    public final List<String> m33499d(int i) {
        if (i < 0 || i >= this.f4148c.size()) {
            return Collections.emptyList();
        }
        List<String> list = this.f4148c.get(i).f4118d;
        List<String> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    /* renamed from: e */
    public final C3155gd m33498e() {
        synchronized (this) {
            synchronized (this.f4149d) {
                if (this.f4149d.size() <= 0) {
                    return null;
                }
                return this.f4149d.peek();
            }
        }
    }

    /* renamed from: e */
    public final boolean m33497e(int i) {
        return !m33499d(i).isEmpty();
    }
}
