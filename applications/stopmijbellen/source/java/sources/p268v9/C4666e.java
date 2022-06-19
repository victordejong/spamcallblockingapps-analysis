package p268v9;

import java.io.IOException;
import p214q9.AbstractRunnableC4170b;
/* renamed from: v9.e */
/* loaded from: classes2-dex2jar.jar:v9/e.class */
public class C4666e extends AbstractRunnableC4170b {

    /* renamed from: b */
    public final /* synthetic */ int f14398b;

    /* renamed from: c */
    public final /* synthetic */ int f14399c;

    /* renamed from: d */
    public final /* synthetic */ C4667f f14400d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4666e(C4667f c4667f, String str, Object[] objArr, int i, int i2) {
        super(str, objArr);
        this.f14400d = c4667f;
        this.f14398b = i;
        this.f14399c = i2;
    }

    @Override // p214q9.AbstractRunnableC4170b
    /* renamed from: b */
    public void mo635b() {
        try {
            C4667f c4667f = this.f14400d;
            c4667f.f14419r.m597s(this.f14398b, this.f14399c);
        } catch (IOException e) {
            C4667f.m644d(this.f14400d);
        }
    }
}
