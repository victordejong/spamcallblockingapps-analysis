package p283x2;

import java.util.concurrent.Executor;
import p004a3.AbstractC0011a;
import p134j4.C3222k0;
import p134j4.C3245r0;
import p134j4.C3246r1;
import p134j4.C3259w;
import p161l9.AbstractC3541a;
import p189o4.AbstractC3882s;
import p189o4.C3881r;
import p261v2.AbstractC4592e;
import p293y2.AbstractC5003t;
import p303z2.AbstractC5039c;
/* renamed from: x2.d */
/* loaded from: classes-dex2jar.jar:x2/d.class */
public final class C4852d implements AbstractC3541a, AbstractC3882s {

    /* renamed from: a */
    public final Object f14877a;

    /* renamed from: b */
    public final Object f14878b;

    /* renamed from: c */
    public final Object f14879c;

    /* renamed from: d */
    public final Object f14880d;

    /* renamed from: e */
    public final Object f14881e;

    public /* synthetic */ C4852d(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        this.f14877a = obj;
        this.f14878b = obj2;
        this.f14879c = obj3;
        this.f14880d = obj4;
        this.f14881e = obj5;
    }

    @Override // p161l9.AbstractC3541a
    public Object get() {
        return new C4851c((Executor) ((AbstractC3541a) this.f14877a).get(), (AbstractC4592e) ((AbstractC3541a) this.f14878b).get(), (AbstractC5003t) ((AbstractC3541a) this.f14879c).get(), (AbstractC5039c) ((AbstractC3541a) this.f14880d).get(), (AbstractC0011a) ((AbstractC3541a) this.f14881e).get());
    }

    @Override // p189o4.AbstractC3882s
    public /* bridge */ /* synthetic */ Object zza() {
        Object zza = ((AbstractC3882s) this.f14877a).zza();
        return new C3222k0((C3259w) zza, C3881r.m1736a((AbstractC3882s) this.f14878b), C3881r.m1736a((AbstractC3882s) this.f14879c), (C3245r0) ((AbstractC3882s) this.f14880d).zza(), (C3246r1) ((AbstractC3882s) this.f14881e).zza());
    }
}
