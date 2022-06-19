package com.criteo.publisher;

import com.criteo.publisher.model.C8452a0;
import com.criteo.publisher.model.C8503s;
import com.criteo.publisher.model.C8509u;
import com.criteo.publisher.p250j.C8353a;
import com.criteo.publisher.p254l.C8387d;
/* renamed from: com.criteo.publisher.m */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m.class */
public final class C8418m {

    /* renamed from: a */
    final C8452a0 f30165a;

    /* renamed from: b */
    final Criteo f30166b;

    /* renamed from: c */
    final C8353a f30167c;

    /* renamed from: d */
    final C8387d f30168d;

    /* renamed from: e */
    private final C8509u f30169e;

    /* renamed from: com.criteo.publisher.m$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m$a.class */
    public final class C8419a implements AbstractC8270d {
        public C8419a() {
            C8418m.this = r4;
        }

        @Override // com.criteo.publisher.AbstractC8270d
        /* renamed from: a */
        public final void mo25712a() {
            C8418m.this.m25714a();
            C8418m.this.f30165a.m25666a();
        }

        @Override // com.criteo.publisher.AbstractC8270d
        /* renamed from: a */
        public final void mo25711a(C8503s c8503s) {
            C8418m.this.m25713a(c8503s.m25547d());
        }
    }

    public C8418m(C8452a0 c8452a0, C8353a c8353a, Criteo criteo, C8387d c8387d) {
        this.f30165a = c8452a0;
        this.f30167c = c8353a;
        this.f30166b = criteo;
        this.f30169e = criteo.getDeviceInfo();
        this.f30168d = c8387d;
    }

    /* renamed from: a */
    public final void m25714a() {
        this.f30168d.m25751a(EnumC8518o.INVALID);
    }

    /* renamed from: a */
    public final void m25713a(String str) {
        this.f30165a.m25664a(str, this.f30169e, this.f30168d);
    }
}
