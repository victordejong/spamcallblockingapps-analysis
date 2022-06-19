package com.google.android.gms.internal.ads;

import androidx.p023b.C0441g;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bcy.class */
public final class bcy {

    /* renamed from: g */
    public static final bcy f43607g = new bdb().m18133a();

    /* renamed from: a */
    final AbstractC12541ex f43608a;

    /* renamed from: b */
    final AbstractC12536es f43609b;

    /* renamed from: c */
    final AbstractC12557fm f43610c;

    /* renamed from: d */
    final AbstractC12552fh f43611d;

    /* renamed from: e */
    final AbstractC12658jf f43612e;

    /* renamed from: f */
    final C0441g<String, AbstractC12549fe> f43613f;

    /* renamed from: h */
    private final C0441g<String, AbstractC12542ey> f43614h;

    /* JADX INFO: Access modifiers changed from: private */
    public bcy(bdb bdbVar) {
        this.f43608a = bdbVar.f43616a;
        this.f43609b = bdbVar.f43617b;
        this.f43610c = bdbVar.f43618c;
        this.f43613f = new C0441g<>(bdbVar.f43621f);
        this.f43614h = new C0441g<>(bdbVar.f43622g);
        this.f43611d = bdbVar.f43619d;
        this.f43612e = bdbVar.f43620e;
    }

    /* renamed from: a */
    public final AbstractC12549fe m18136a(String str) {
        return this.f43613f.get(str);
    }

    /* renamed from: a */
    public final ArrayList<String> m18137a() {
        ArrayList<String> arrayList = new ArrayList<>(this.f43613f.size());
        for (int i = 0; i < this.f43613f.size(); i++) {
            arrayList.add(this.f43613f.m45517b(i));
        }
        return arrayList;
    }

    /* renamed from: b */
    public final AbstractC12542ey m18135b(String str) {
        return this.f43614h.get(str);
    }
}
