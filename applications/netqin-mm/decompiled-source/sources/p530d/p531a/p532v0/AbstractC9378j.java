package p530d.p531a.p532v0;

import io.grpc.internal.DnsNameResolver;
import io.grpc.internal.GrpcUtil;
import java.net.URI;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p267a.C4938q;
import p530d.p531a.AbstractC9271l0;
import p530d.p531a.AbstractC9286m0;
import p530d.p531a.C9217b0;
/* renamed from: d.a.v0.j */
/* loaded from: classes2-dex2jar.jar:d/a/v0/j.class */
public abstract class AbstractC9378j extends AbstractC9286m0 {
    @Override // p530d.p531a.AbstractC9271l0.AbstractC9276d
    /* renamed from: a */
    public DnsNameResolver mo2869a(URI uri, AbstractC9271l0.C9273b bVar) {
        if (!"dns".equals(uri.getScheme())) {
            return null;
        }
        String path = uri.getPath();
        C4933n.m24794a(path, "targetPath");
        String str = path;
        C4933n.m24781a(str.startsWith("/"), "the path component (%s) of the target (%s) must start with '/'", str, uri);
        return new DnsNameResolver(uri.getAuthority(), str.substring(1), bVar, GrpcUtil.f38070m, C4938q.m24757f(), C9217b0.m3142a(getClass().getClassLoader()), mo2515d());
    }

    @Override // p530d.p531a.AbstractC9271l0.AbstractC9276d
    /* renamed from: a */
    public String mo2870a() {
        return "dns";
    }

    @Override // p530d.p531a.AbstractC9286m0
    /* renamed from: b */
    public boolean mo2868b() {
        return true;
    }

    /* renamed from: d */
    public abstract boolean mo2515d();
}
