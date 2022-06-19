package p268v9;

import java.io.IOException;
import java.util.List;
import java.util.Objects;
import p214q9.AbstractRunnableC4170b;
/* renamed from: v9.h */
/* loaded from: classes2-dex2jar.jar:v9/h.class */
public class C4675h extends AbstractRunnableC4170b {

    /* renamed from: b */
    public final /* synthetic */ int f14441b;

    /* renamed from: c */
    public final /* synthetic */ List f14442c;

    /* renamed from: d */
    public final /* synthetic */ C4667f f14443d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4675h(C4667f c4667f, String str, Object[] objArr, int i, List list, boolean z) {
        super(str, objArr);
        this.f14443d = c4667f;
        this.f14441b = i;
        this.f14442c = list;
    }

    @Override // p214q9.AbstractRunnableC4170b
    /* renamed from: b */
    public void mo635b() {
        Objects.requireNonNull(this.f14443d.f14411j);
        try {
            this.f14443d.f14419r.m597s(this.f14441b, 6);
            synchronized (this.f14443d) {
                this.f14443d.f14421t.remove(Integer.valueOf(this.f14441b));
            }
        } catch (IOException e) {
        }
    }
}
