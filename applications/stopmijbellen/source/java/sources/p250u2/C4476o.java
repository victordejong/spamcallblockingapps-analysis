package p250u2;

import p018b3.AbstractC0721a;
import p134j4.C3187b1;
import p134j4.C3245r0;
import p134j4.C3259w;
import p134j4.C3264x1;
import p161l9.AbstractC3541a;
import p189o4.AbstractC3882s;
import p189o4.C3881r;
import p283x2.AbstractC4853e;
import p293y2.C4997n;
import p293y2.C5001r;
/* renamed from: u2.o */
/* loaded from: classes-dex2jar.jar:u2/o.class */
public final class C4476o implements AbstractC3541a, AbstractC3882s {

    /* renamed from: a */
    public final Object f13860a;

    /* renamed from: b */
    public final Object f13861b;

    /* renamed from: c */
    public final Object f13862c;

    /* renamed from: d */
    public final Object f13863d;

    /* renamed from: e */
    public final Object f13864e;

    public /* synthetic */ C4476o(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        this.f13860a = obj;
        this.f13861b = obj2;
        this.f13862c = obj3;
        this.f13863d = obj4;
        this.f13864e = obj5;
    }

    @Override // p161l9.AbstractC3541a
    public Object get() {
        return new C4474m((AbstractC0721a) ((AbstractC3541a) this.f13860a).get(), (AbstractC0721a) ((AbstractC3541a) this.f13861b).get(), (AbstractC4853e) ((AbstractC3541a) this.f13862c).get(), (C4997n) ((AbstractC3541a) this.f13863d).get(), (C5001r) ((AbstractC3541a) this.f13864e).get());
    }

    @Override // p189o4.AbstractC3882s
    public /* bridge */ /* synthetic */ Object zza() {
        Object zza = ((AbstractC3882s) this.f13860a).zza();
        return new C3264x1((C3259w) zza, C3881r.m1736a((AbstractC3882s) this.f13861b), (C3187b1) ((AbstractC3882s) this.f13862c).zza(), C3881r.m1736a((AbstractC3882s) this.f13863d), (C3245r0) ((AbstractC3882s) this.f13864e).zza());
    }
}
