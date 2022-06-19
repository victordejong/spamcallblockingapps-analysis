package p268v9;

import java.io.IOException;
import p134j4.C3248s0;
import p214q9.AbstractRunnableC4170b;
import p268v9.C4667f;
/* renamed from: v9.m */
/* loaded from: classes2-dex2jar.jar:v9/m.class */
public class C4680m extends AbstractRunnableC4170b {

    /* renamed from: b */
    public final /* synthetic */ C3248s0 f14453b;

    /* renamed from: c */
    public final /* synthetic */ C4667f.C4673e f14454c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4680m(C4667f.C4673e c4673e, String str, Object[] objArr, C3248s0 c3248s0) {
        super(str, objArr);
        this.f14454c = c4673e;
        this.f14453b = c3248s0;
    }

    @Override // p214q9.AbstractRunnableC4170b
    /* renamed from: b */
    public void mo635b() {
        try {
            C4667f.this.f14419r.m603d(this.f14453b);
        } catch (IOException e) {
            C4667f.m644d(C4667f.this);
        }
    }
}
