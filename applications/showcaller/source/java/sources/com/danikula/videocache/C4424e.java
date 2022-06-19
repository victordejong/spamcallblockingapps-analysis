package com.danikula.videocache;

import android.text.TextUtils;
import com.danikula.videocache.p227q.C4446b;
import java.io.BufferedOutputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Locale;
/* renamed from: com.danikula.videocache.e */
/* loaded from: classes-dex2jar.jar:com/danikula/videocache/e.class */
public class C4424e extends C4438l {

    /* renamed from: j */
    private final C4432h f13511j;

    /* renamed from: k */
    private final C4446b f13512k;

    /* renamed from: l */
    private AbstractC4421b f13513l;

    public C4424e(C4432h c4432h, C4446b c4446b) {
        super(c4432h, c4446b);
        this.f13512k = c4446b;
        this.f13511j = c4432h;
    }

    /* renamed from: p */
    private String m22530p(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    /* renamed from: q */
    private boolean m22529q(C4423d c4423d) {
        long length = this.f13511j.length();
        boolean z = length > 0;
        long mo22447b = this.f13512k.mo22447b();
        boolean z2 = true;
        if (z) {
            z2 = true;
            if (c4423d.f13510e) {
                z2 = ((float) c4423d.f13509d) <= ((float) mo22447b) + (((float) length) * 0.2f);
            }
        }
        return z2;
    }

    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* renamed from: r */
    private String m22528r(C4423d c4423d) {
        String m22493d = this.f13511j.m22493d();
        boolean isEmpty = TextUtils.isEmpty(m22493d);
        char mo22447b = this.f13512k.mo22445d() ? this.f13512k.mo22447b() : this.f13511j.length();
        boolean z = mo22447b >= 0;
        boolean z2 = c4423d.f13510e;
        char c = z2 ? mo22447b - c4423d.f13509d : mo22447b;
        boolean z3 = z && z2;
        StringBuilder sb = new StringBuilder();
        sb.append(c4423d.f13510e ? "HTTP/1.1 206 PARTIAL CONTENT\n" : "HTTP/1.1 200 OK\n");
        sb.append("Accept-Ranges: bytes\n");
        sb.append(z ? m22530p("Content-Length: %d\n", Long.valueOf(c)) : "");
        sb.append(z3 ? m22530p("Content-Range: bytes %d-%d/%d\n", Long.valueOf(c4423d.f13509d), Long.valueOf(mo22447b - 1), Long.valueOf(mo22447b)) : "");
        String str = "";
        if (!isEmpty) {
            str = m22530p("Content-Type: %s\n", m22493d);
        }
        sb.append(str);
        sb.append("\n");
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.danikula.videocache.e, com.danikula.videocache.l] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* renamed from: u */
    private void m22525u(OutputStream outputStream, long j) {
        byte[] bArr = new byte[8192];
        ?? r8 = j;
        while (true) {
            int m22465j = m22465j(bArr, r8, 8192);
            if (m22465j == -1) {
                outputStream.flush();
                return;
            } else {
                outputStream.write(bArr, 0, m22465j);
                r8 += m22465j;
            }
        }
    }

    /* renamed from: v */
    private void m22524v(OutputStream outputStream, long j) {
        C4432h c4432h = new C4432h(this.f13511j);
        try {
            c4432h.mo22452a((int) j);
            byte[] bArr = new byte[8192];
            while (true) {
                int read = c4432h.read(bArr);
                if (read == -1) {
                    outputStream.flush();
                    return;
                }
                outputStream.write(bArr, 0, read);
            }
        } finally {
            c4432h.close();
        }
    }

    @Override // com.danikula.videocache.C4438l
    /* renamed from: g */
    protected void mo22468g(int i) {
        AbstractC4421b abstractC4421b = this.f13513l;
        if (abstractC4421b != null) {
            abstractC4421b.mo22496a(this.f13512k.f13571b, this.f13511j.m22492e(), i);
        }
    }

    /* renamed from: s */
    public void m22527s(C4423d c4423d, Socket socket) {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(socket.getOutputStream());
        bufferedOutputStream.write(m22528r(c4423d).getBytes("UTF-8"));
        long j = c4423d.f13509d;
        if (m22529q(c4423d)) {
            m22525u(bufferedOutputStream, j);
        } else {
            m22524v(bufferedOutputStream, j);
        }
    }

    /* renamed from: t */
    public void m22526t(AbstractC4421b abstractC4421b) {
        this.f13513l = abstractC4421b;
    }
}
