package p268v9;

import java.util.Objects;
import p214q9.AbstractRunnableC4170b;
/* renamed from: v9.j */
/* loaded from: classes2-dex2jar.jar:v9/j.class */
public class C4677j extends AbstractRunnableC4170b {

    /* renamed from: b */
    public final /* synthetic */ int f14448b;

    /* renamed from: c */
    public final /* synthetic */ C4667f f14449c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4677j(C4667f c4667f, String str, Object[] objArr, int i, int i2) {
        super(str, objArr);
        this.f14449c = c4667f;
        this.f14448b = i;
    }

    @Override // p214q9.AbstractRunnableC4170b
    /* renamed from: b */
    public void mo635b() {
        Objects.requireNonNull(this.f14449c.f14411j);
        synchronized (this.f14449c) {
            this.f14449c.f14421t.remove(Integer.valueOf(this.f14448b));
        }
    }
}
