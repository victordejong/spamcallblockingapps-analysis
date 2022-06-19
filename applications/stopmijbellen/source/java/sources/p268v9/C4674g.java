package p268v9;

import java.io.IOException;
import java.util.List;
import java.util.Objects;
import p214q9.AbstractRunnableC4170b;
/* renamed from: v9.g */
/* loaded from: classes2-dex2jar.jar:v9/g.class */
public class C4674g extends AbstractRunnableC4170b {

    /* renamed from: b */
    public final /* synthetic */ int f14438b;

    /* renamed from: c */
    public final /* synthetic */ List f14439c;

    /* renamed from: d */
    public final /* synthetic */ C4667f f14440d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4674g(C4667f c4667f, String str, Object[] objArr, int i, List list) {
        super(str, objArr);
        this.f14440d = c4667f;
        this.f14438b = i;
        this.f14439c = list;
    }

    @Override // p214q9.AbstractRunnableC4170b
    /* renamed from: b */
    public void mo635b() {
        Objects.requireNonNull(this.f14440d.f14411j);
        try {
            this.f14440d.f14419r.m597s(this.f14438b, 6);
            synchronized (this.f14440d) {
                this.f14440d.f14421t.remove(Integer.valueOf(this.f14438b));
            }
        } catch (IOException e) {
        }
    }
}
