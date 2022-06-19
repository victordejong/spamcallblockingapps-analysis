package p124i4;

import java.util.Collections;
import java.util.HashMap;
import p189o4.AbstractC3882s;
import p275w5.AbstractC4739b;
/* renamed from: i4.s */
/* loaded from: classes-dex2jar.jar:i4/s.class */
public class C3117s implements AbstractC3882s {

    /* renamed from: a */
    public final Object f10550a;

    /* renamed from: b */
    public final Object f10551b;

    public /* synthetic */ C3117s(AbstractC3882s abstractC3882s, AbstractC3882s abstractC3882s2) {
        this.f10550a = abstractC3882s;
        this.f10551b = abstractC3882s2;
    }

    public /* synthetic */ C3117s(AbstractC4739b abstractC4739b) {
        this.f10551b = Collections.synchronizedMap(new HashMap());
        this.f10550a = abstractC4739b;
    }

    @Override // p189o4.AbstractC3882s
    public /* bridge */ /* synthetic */ Object zza() {
        return new C3116r(((C3110l) ((AbstractC3882s) this.f10550a)).m2605a(), (C3118t) ((AbstractC3882s) this.f10551b).zza());
    }
}
