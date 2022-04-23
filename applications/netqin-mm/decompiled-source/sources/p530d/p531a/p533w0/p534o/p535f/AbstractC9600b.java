package p530d.p531a.p533w0.p534o.p535f;

import io.grpc.okhttp.internal.framed.ErrorCode;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import p610i.C10260c;
/* renamed from: d.a.w0.o.f.b */
/* loaded from: classes2-dex2jar.jar:d/a/w0/o/f/b.class */
public interface AbstractC9600b extends Closeable {
    /* renamed from: P0 */
    void mo2211P0() throws IOException;

    /* renamed from: a */
    void mo2208a(int i, long j) throws IOException;

    /* renamed from: a */
    void mo2207a(int i, ErrorCode errorCode) throws IOException;

    /* renamed from: a */
    void mo2206a(int i, ErrorCode errorCode, byte[] bArr) throws IOException;

    /* renamed from: a */
    void mo2205a(C9612g gVar) throws IOException;

    /* renamed from: a */
    void mo2204a(boolean z, int i, int i2) throws IOException;

    /* renamed from: a */
    void mo2203a(boolean z, int i, C10260c cVar, int i2) throws IOException;

    /* renamed from: a */
    void mo2201a(boolean z, boolean z2, int i, int i2, List<C9601c> list) throws IOException;

    /* renamed from: a2 */
    int mo2200a2();

    /* renamed from: b */
    void mo2198b(C9612g gVar) throws IOException;

    void flush() throws IOException;
}
