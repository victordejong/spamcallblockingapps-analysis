package com.google.android.gms.internal.ads;

import d.e.g;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ej0.class */
public final class ej0 {

    /* renamed from: h */
    public static final ej0 f6403h = new ej0(new dj0());

    /* renamed from: a */
    private final AbstractC1699d7 f6404a;

    /* renamed from: b */
    private final AbstractC1644a7 f6405b;

    /* renamed from: c */
    private final AbstractC1901q7 f6406c;

    /* renamed from: d */
    private final AbstractC1858n7 f6407d;

    /* renamed from: e */
    private final AbstractC1799jb f6408e;

    /* renamed from: f */
    private final g<String, AbstractC1798j7> f6409f;

    /* renamed from: g */
    private final g<String, AbstractC1747g7> f6410g;

    /* JADX INFO: Access modifiers changed from: private */
    public ej0(dj0 dj0Var) {
        this.f6404a = dj0Var.f6327a;
        this.f6405b = dj0Var.f6328b;
        this.f6406c = dj0Var.f6329c;
        this.f6409f = new g<>(dj0Var.f6332f);
        this.f6410g = new g<>(dj0Var.f6333g);
        this.f6407d = dj0Var.f6330d;
        this.f6408e = dj0Var.f6331e;
    }

    /* renamed from: a */
    public final AbstractC1699d7 m7623a() {
        return this.f6404a;
    }

    /* renamed from: b */
    public final AbstractC1644a7 m7622b() {
        return this.f6405b;
    }

    /* renamed from: c */
    public final AbstractC1901q7 m7621c() {
        return this.f6406c;
    }

    /* renamed from: d */
    public final AbstractC1858n7 m7620d() {
        return this.f6407d;
    }

    /* renamed from: e */
    public final AbstractC1799jb m7619e() {
        return this.f6408e;
    }

    /* renamed from: f */
    public final AbstractC1798j7 m7618f(String str) {
        return (AbstractC1798j7) this.f6409f.get(str);
    }

    /* renamed from: g */
    public final AbstractC1747g7 m7617g(String str) {
        return (AbstractC1747g7) this.f6410g.get(str);
    }

    /* renamed from: h */
    public final ArrayList<String> m7616h() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.f6406c != null) {
            arrayList.add(Integer.toString(6));
        }
        if (this.f6404a != null) {
            arrayList.add(Integer.toString(1));
        }
        if (this.f6405b != null) {
            arrayList.add(Integer.toString(2));
        }
        if (this.f6409f.size() > 0) {
            arrayList.add(Integer.toString(3));
        }
        if (this.f6408e != null) {
            arrayList.add(Integer.toString(7));
        }
        return arrayList;
    }

    /* renamed from: i */
    public final ArrayList<String> m7615i() {
        ArrayList<String> arrayList = new ArrayList<>(this.f6409f.size());
        for (int i = 0; i < this.f6409f.size(); i++) {
            arrayList.add((String) this.f6409f.i(i));
        }
        return arrayList;
    }
}
