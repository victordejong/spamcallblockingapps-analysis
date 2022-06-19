package p093f6;

import java.util.Objects;
import p161l9.AbstractC3541a;
import p218r2.AbstractC4189g;
import p241t4.C4392c;
import p275w5.AbstractC4739b;
/* renamed from: f6.c */
/* loaded from: classes-dex2jar.jar:f6/c.class */
public final class C2765c implements AbstractC3541a {

    /* renamed from: a */
    public final /* synthetic */ int f9466a;

    /* renamed from: b */
    public final C2763a f9467b;

    public /* synthetic */ C2765c(C2763a c2763a, int i) {
        this.f9466a = i;
        this.f9467b = c2763a;
    }

    @Override // p161l9.AbstractC3541a
    public Object get() {
        switch (this.f9466a) {
            case 0:
                C4392c c4392c = this.f9467b.f9460a;
                Objects.requireNonNull(c4392c, "Cannot return null from a non-@Nullable @Provides method");
                return c4392c;
            default:
                AbstractC4739b<AbstractC4189g> abstractC4739b = this.f9467b.f9463d;
                Objects.requireNonNull(abstractC4739b, "Cannot return null from a non-@Nullable @Provides method");
                return abstractC4739b;
        }
    }
}
