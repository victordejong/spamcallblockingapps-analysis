package p012b.p031d.p032b;

import android.os.IBinder;
import p000a.p001a.p002a.AbstractC0000a;
/* renamed from: b.d.b.d */
/* loaded from: classes-dex2jar.jar:b/d/b/d.class */
public class C0763d {

    /* renamed from: a */
    public final AbstractC0000a f3627a;

    /* renamed from: b.d.b.d$a */
    /* loaded from: classes-dex2jar.jar:b/d/b/d$a.class */
    public class C0764a extends C0759a {
        public C0764a(C0763d dVar) {
        }
    }

    public C0763d(AbstractC0000a aVar) {
        this.f3627a = aVar;
        new C0764a(this);
    }

    /* renamed from: a */
    public IBinder m36129a() {
        return this.f3627a.asBinder();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C0763d)) {
            return false;
        }
        return ((C0763d) obj).m36129a().equals(this.f3627a.asBinder());
    }

    public int hashCode() {
        return m36129a().hashCode();
    }
}
