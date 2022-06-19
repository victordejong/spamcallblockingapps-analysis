package p223r7;

import com.google.android.gms.common.api.Api;
import java.nio.ByteBuffer;
import p148k7.AbstractC3362o;
import p148k7.C3357k;
import p148k7.C3358l;
/* renamed from: r7.b */
/* loaded from: classes2-dex2jar.jar:r7/b.class */
public class C4228b extends C3357k {
    public C4228b(AbstractC3362o abstractC3362o) {
        super(abstractC3362o);
        this.f11371e = 0;
    }

    @Override // p148k7.C3357k
    /* renamed from: b */
    public void mo1268b(C3358l c3358l) {
        c3358l.m2351b(ByteBuffer.wrap((Integer.toString(c3358l.f11382c, 16) + "\r\n").getBytes()));
        c3358l.m2352a(ByteBuffer.wrap("\r\n".getBytes()));
    }

    @Override // p148k7.C3357k, p148k7.AbstractC3362o
    /* renamed from: j */
    public void mo1267j() {
        this.f11371e = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        mo1479k(new C3358l());
        this.f11371e = 0;
    }
}
