package p268v9;

import android.support.p012v4.media.C0082b;
import java.io.IOException;
import p214q9.AbstractRunnableC4170b;
import p268v9.C4667f;
import p290x9.C4945f;
/* renamed from: v9.k */
/* loaded from: classes2-dex2jar.jar:v9/k.class */
public class C4678k extends AbstractRunnableC4170b {

    /* renamed from: b */
    public final /* synthetic */ C4684o f14450b;

    /* renamed from: c */
    public final /* synthetic */ C4667f.C4673e f14451c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4678k(C4667f.C4673e c4673e, String str, Object[] objArr, C4684o c4684o) {
        super(str, objArr);
        this.f14451c = c4673e;
        this.f14450b = c4684o;
    }

    @Override // p214q9.AbstractRunnableC4170b
    /* renamed from: b */
    public void mo635b() {
        try {
            C4667f.this.f14403b.mo636b(this.f14450b);
        } catch (IOException e) {
            C4945f c4945f = C4945f.f15078a;
            StringBuilder m8752j = C0082b.m8752j("Http2Connection.Listener failure for ");
            m8752j.append(C4667f.this.f14405d);
            c4945f.mo210l(4, m8752j.toString(), e);
            try {
                this.f14450b.m621c(2);
            } catch (IOException e2) {
            }
        }
    }
}
