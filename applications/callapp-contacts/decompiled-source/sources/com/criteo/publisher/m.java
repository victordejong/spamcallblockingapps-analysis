package com.criteo.publisher;

import com.criteo.publisher.l.d;
import com.criteo.publisher.model.a0;
import com.criteo.publisher.model.s;
import com.criteo.publisher.model.u;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m.class */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    final a0 f17484a;

    /* renamed from: b  reason: collision with root package name */
    final Criteo f17485b;

    /* renamed from: c  reason: collision with root package name */
    final com.criteo.publisher.j.a f17486c;

    /* renamed from: d  reason: collision with root package name */
    final d f17487d;
    private final u e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m$a.class */
    public final class a implements d {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a() {
        }

        @Override // com.criteo.publisher.d
        public final void a() {
            m.this.a();
            m.this.f17484a.a();
        }

        @Override // com.criteo.publisher.d
        public final void a(s sVar) {
            m.this.a(sVar.d());
        }
    }

    public m(a0 a0Var, com.criteo.publisher.j.a aVar, Criteo criteo, d dVar) {
        this.f17484a = a0Var;
        this.f17486c = aVar;
        this.f17485b = criteo;
        this.e = criteo.getDeviceInfo();
        this.f17487d = dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f17487d.a(o.INVALID);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        this.f17484a.a(str, this.e, this.f17487d);
    }
}
