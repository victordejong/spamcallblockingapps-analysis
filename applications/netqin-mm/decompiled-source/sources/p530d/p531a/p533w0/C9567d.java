package p530d.p531a.p533w0;

import io.grpc.ManagedChannelProvider;
import io.grpc.okhttp.OkHttpChannelBuilder;
import p530d.p531a.C9217b0;
/* renamed from: d.a.w0.d */
/* loaded from: classes2-dex2jar.jar:d/a/w0/d.class */
public final class C9567d extends ManagedChannelProvider {
    @Override // io.grpc.ManagedChannelProvider
    /* renamed from: a */
    public OkHttpChannelBuilder mo642a(String str) {
        return OkHttpChannelBuilder.m319a(str);
    }

    @Override // io.grpc.ManagedChannelProvider
    /* renamed from: a */
    public boolean mo643a() {
        return true;
    }

    @Override // io.grpc.ManagedChannelProvider
    /* renamed from: b */
    public int mo641b() {
        return C9217b0.m3142a(C9567d.class.getClassLoader()) ? 8 : 3;
    }
}
