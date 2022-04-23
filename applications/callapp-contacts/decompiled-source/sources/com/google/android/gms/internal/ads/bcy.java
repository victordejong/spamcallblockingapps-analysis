package com.google.android.gms.internal.ads;

import androidx.b.g;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bcy.class */
public final class bcy {
    public static final bcy g = new bdb().a();

    /* renamed from: a  reason: collision with root package name */
    final ex f24193a;

    /* renamed from: b  reason: collision with root package name */
    final es f24194b;

    /* renamed from: c  reason: collision with root package name */
    final fm f24195c;

    /* renamed from: d  reason: collision with root package name */
    final fh f24196d;
    final jf e;
    final g<String, fe> f;
    private final g<String, ey> h;

    private bcy(bdb bdbVar) {
        this.f24193a = bdbVar.f24198a;
        this.f24194b = bdbVar.f24199b;
        this.f24195c = bdbVar.f24200c;
        this.f = new g<>(bdbVar.f);
        this.h = new g<>(bdbVar.g);
        this.f24196d = bdbVar.f24201d;
        this.e = bdbVar.e;
    }

    public final fe a(String str) {
        return this.f.get(str);
    }

    public final ArrayList<String> a() {
        ArrayList<String> arrayList = new ArrayList<>(this.f.size());
        for (int i = 0; i < this.f.size(); i++) {
            arrayList.add(this.f.b(i));
        }
        return arrayList;
    }

    public final ey b(String str) {
        return this.h.get(str);
    }
}
