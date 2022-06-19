package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import p020b.p036e.C1502g;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cf1.class */
public final class cf1 {

    /* renamed from: a */
    public static final cf1 f21214a = new cf1(new af1());

    /* renamed from: b */
    private final g00 f21215b;

    /* renamed from: c */
    private final d00 f21216c;

    /* renamed from: d */
    private final t00 f21217d;

    /* renamed from: e */
    private final q00 f21218e;

    /* renamed from: f */
    private final q40 f21219f;

    /* renamed from: g */
    private final C1502g<String, m00> f21220g;

    /* renamed from: h */
    private final C1502g<String, j00> f21221h;

    /* JADX INFO: Access modifiers changed from: private */
    public cf1(af1 af1Var) {
        this.f21215b = af1Var.f19930a;
        this.f21216c = af1Var.f19931b;
        this.f21217d = af1Var.f19932c;
        this.f21220g = new C1502g<>(af1Var.f19935f);
        this.f21221h = new C1502g<>(af1Var.f19936g);
        this.f21218e = af1Var.f19933d;
        this.f21219f = af1Var.f19934e;
    }

    /* renamed from: a */
    public final g00 m16069a() {
        return this.f21215b;
    }

    /* renamed from: b */
    public final d00 m16068b() {
        return this.f21216c;
    }

    /* renamed from: c */
    public final t00 m16067c() {
        return this.f21217d;
    }

    /* renamed from: d */
    public final q00 m16066d() {
        return this.f21218e;
    }

    /* renamed from: e */
    public final q40 m16065e() {
        return this.f21219f;
    }

    /* renamed from: f */
    public final m00 m16064f(String str) {
        return this.f21220g.get(str);
    }

    /* renamed from: g */
    public final j00 m16063g(String str) {
        return this.f21221h.get(str);
    }

    /* renamed from: h */
    public final ArrayList<String> m16062h() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.f21217d != null) {
            arrayList.add(Integer.toString(6));
        }
        if (this.f21215b != null) {
            arrayList.add(Integer.toString(1));
        }
        if (this.f21216c != null) {
            arrayList.add(Integer.toString(2));
        }
        if (this.f21220g.size() > 0) {
            arrayList.add(Integer.toString(3));
        }
        if (this.f21219f != null) {
            arrayList.add(Integer.toString(7));
        }
        return arrayList;
    }

    /* renamed from: i */
    public final ArrayList<String> m16061i() {
        ArrayList<String> arrayList = new ArrayList<>(this.f21220g.size());
        for (int i = 0; i < this.f21220g.size(); i++) {
            arrayList.add(this.f21220g.m29910i(i));
        }
        return arrayList;
    }
}
