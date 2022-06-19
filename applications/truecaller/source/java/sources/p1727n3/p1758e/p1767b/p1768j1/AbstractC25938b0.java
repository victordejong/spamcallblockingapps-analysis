package p1727n3.p1758e.p1767b.p1768j1;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collection;
import p1727n3.p1758e.p1767b.AbstractC25921g1;
import p1727n3.p1758e.p1767b.AbstractC25926h0;
import p1727n3.p1758e.p1767b.AbstractC26075l0;
/* renamed from: n3.e.b.j1.b0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/b0.class */
public interface AbstractC25938b0 extends AbstractC25926h0, AbstractC25921g1.AbstractC25924c {

    /* renamed from: n3.e.b.j1.b0$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/b0$a.class */
    public enum EnumC25939a {
        PENDING_OPEN(false),
        OPENING(true),
        OPEN(true),
        CLOSING(true),
        CLOSED(false),
        RELEASING(true),
        RELEASED(false);
        

        /* renamed from: a */
        public final boolean f72542a;

        EnumC25939a(boolean z) {
            this.f72542a = z;
        }
    }

    @Override // p1727n3.p1758e.p1767b.AbstractC25926h0
    /* renamed from: a */
    AbstractC26075l0 mo2761a();

    /* renamed from: d */
    AbstractC26059z m2878d();

    /* renamed from: e */
    AbstractC25943c1<EnumC25939a> m2877e();

    /* renamed from: g */
    AbstractC26047w m2876g();

    /* renamed from: h */
    void m2875h(Collection<AbstractC25921g1> collection);

    /* renamed from: i */
    void m2874i(Collection<AbstractC25921g1> collection);

    ListenableFuture<Void> release();
}
