package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzejz;
/* renamed from: c.d.b.d.g.a.v70 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/v70.class */
public final class v70 implements o80 {

    /* renamed from: a */
    public static final v70 f15703a = new v70();

    /* renamed from: a */
    public static v70 m26212a() {
        return f15703a;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.o80
    /* renamed from: a */
    public final m80 mo26211a(Class<?> cls) {
        if (!zzejz.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (m80) zzejz.m12402a((Class<zzejz>) cls.asSubclass(zzejz.class)).mo11212a(zzejz.zze.f28076c, (Object) null, (Object) null);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.o80
    /* renamed from: b */
    public final boolean mo26210b(Class<?> cls) {
        return zzejz.class.isAssignableFrom(cls);
    }
}
