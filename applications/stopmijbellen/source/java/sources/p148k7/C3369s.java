package p148k7;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Objects;
import p159l7.AbstractC3513c;
import p255u7.C4535b;
import p255u7.C4538c;
/* renamed from: k7.s */
/* loaded from: classes2-dex2jar.jar:k7/s.class */
public class C3369s implements AbstractC3513c {

    /* renamed from: a */
    public C3358l f11399a = new C3358l();

    /* renamed from: b */
    public AbstractC3370a f11400b;

    /* renamed from: k7.s$a */
    /* loaded from: classes2-dex2jar.jar:k7/s$a.class */
    public interface AbstractC3370a {
        /* renamed from: a */
        void mo1795a(String str);
    }

    @Override // p159l7.AbstractC3513c
    /* renamed from: c */
    public void mo1099c(AbstractC3360m abstractC3360m, C3358l c3358l) {
        int i;
        int i2;
        byte[] bArr;
        ByteBuffer allocate = ByteBuffer.allocate(c3358l.f11382c);
        while (c3358l.f11382c > 0) {
            byte m2350c = c3358l.m2350c();
            if (m2350c == 10) {
                allocate.flip();
                this.f11399a.m2352a(allocate);
                AbstractC3370a abstractC3370a = this.f11400b;
                C3358l c3358l2 = this.f11399a;
                Objects.requireNonNull(c3358l2);
                Charset charset = C4538c.f13951b;
                StringBuilder sb = new StringBuilder();
                Iterator<ByteBuffer> it2 = c3358l2.f11380a.iterator();
                while (true) {
                    C4535b.C4537b c4537b = (C4535b.C4537b) it2;
                    if (!c4537b.hasNext()) {
                        String sb2 = sb.toString();
                        c3358l2.m2339n();
                        abstractC3370a.mo1795a(sb2);
                        this.f11399a = new C3358l();
                        return;
                    }
                    ByteBuffer byteBuffer = (ByteBuffer) c4537b.next();
                    if (byteBuffer.isDirect()) {
                        bArr = new byte[byteBuffer.remaining()];
                        i2 = 0;
                        i = byteBuffer.remaining();
                        byteBuffer.get(bArr);
                    } else {
                        bArr = byteBuffer.array();
                        i2 = byteBuffer.arrayOffset() + byteBuffer.position();
                        i = byteBuffer.remaining();
                    }
                    sb.append(new String(bArr, i2, i, charset));
                }
            } else {
                allocate.put(m2350c);
            }
        }
        allocate.flip();
        this.f11399a.m2352a(allocate);
    }
}
