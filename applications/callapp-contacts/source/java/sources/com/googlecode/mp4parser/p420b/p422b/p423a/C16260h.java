package com.googlecode.mp4parser.p420b.p422b.p423a;

import com.p102b.p103a.C3515e;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
@AbstractC16259g(m7537a = {3})
/* renamed from: com.googlecode.mp4parser.b.b.a.h */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/h.class */
public class C16260h extends AbstractC16254b {

    /* renamed from: n */
    private static Logger f57457n = Logger.getLogger(C16260h.class.getName());

    /* renamed from: a */
    public int f57458a;

    /* renamed from: b */
    public int f57459b;

    /* renamed from: c */
    public int f57460c;

    /* renamed from: d */
    public int f57461d;

    /* renamed from: e */
    public int f57462e;

    /* renamed from: g */
    public String f57464g;

    /* renamed from: h */
    public int f57465h;

    /* renamed from: i */
    public int f57466i;

    /* renamed from: j */
    public int f57467j;

    /* renamed from: k */
    public C16257e f57468k;

    /* renamed from: l */
    public C16266n f57469l;

    /* renamed from: f */
    public int f57463f = 0;

    /* renamed from: m */
    public List<AbstractC16254b> f57470m = new ArrayList();

    public C16260h() {
        this.f57435Y = 3;
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    /* renamed from: a */
    public final int mo7534a() {
        int i = this.f57459b > 0 ? 5 : 3;
        int i2 = i;
        if (this.f57460c > 0) {
            i2 = i + this.f57463f + 1;
        }
        int i3 = i2;
        if (this.f57461d > 0) {
            i3 = i2 + 2;
        }
        int b = this.f57468k.m7544b();
        int b2 = this.f57469l.m7544b();
        if (this.f57470m.size() <= 0) {
            return i3 + b + b2;
        }
        throw new RuntimeException(" Doesn't handle other descriptors yet");
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    /* renamed from: a */
    public final void mo7533a(ByteBuffer byteBuffer) throws IOException {
        this.f57458a = C3515e.m37848c(byteBuffer);
        int m37852a = C3515e.m37852a(byteBuffer.get());
        int i = m37852a >>> 7;
        this.f57459b = i;
        this.f57460c = (m37852a >>> 6) & 1;
        this.f57461d = (m37852a >>> 5) & 1;
        this.f57462e = m37852a & 31;
        if (i == 1) {
            this.f57466i = C3515e.m37848c(byteBuffer);
        }
        if (this.f57460c == 1) {
            int m37852a2 = C3515e.m37852a(byteBuffer.get());
            this.f57463f = m37852a2;
            this.f57464g = C3515e.m37850a(byteBuffer, m37852a2);
        }
        if (this.f57461d == 1) {
            this.f57467j = C3515e.m37848c(byteBuffer);
        }
        while (byteBuffer.remaining() > 1) {
            AbstractC16254b m7535a = C16264l.m7535a(-1, byteBuffer);
            if (m7535a instanceof C16257e) {
                this.f57468k = (C16257e) m7535a;
            } else if (m7535a instanceof C16266n) {
                this.f57469l = (C16266n) m7535a;
            } else {
                this.f57470m.add(m7535a);
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C16260h c16260h = (C16260h) obj;
        if (this.f57460c != c16260h.f57460c || this.f57463f != c16260h.f57463f || this.f57466i != c16260h.f57466i || this.f57458a != c16260h.f57458a || this.f57467j != c16260h.f57467j || this.f57461d != c16260h.f57461d || this.f57465h != c16260h.f57465h || this.f57459b != c16260h.f57459b || this.f57462e != c16260h.f57462e) {
            return false;
        }
        String str = this.f57464g;
        if (str != null) {
            if (!str.equals(c16260h.f57464g)) {
                return false;
            }
        } else if (c16260h.f57464g != null) {
            return false;
        }
        C16257e c16257e = this.f57468k;
        if (c16257e != null) {
            if (!c16257e.equals(c16260h.f57468k)) {
                return false;
            }
        } else if (c16260h.f57468k != null) {
            return false;
        }
        List<AbstractC16254b> list = this.f57470m;
        if (list != null) {
            if (!list.equals(c16260h.f57470m)) {
                return false;
            }
        } else if (c16260h.f57470m != null) {
            return false;
        }
        C16266n c16266n = this.f57469l;
        C16266n c16266n2 = c16260h.f57469l;
        return c16266n != null ? c16266n.equals(c16266n2) : c16266n2 == null;
    }

    public int hashCode() {
        int i = this.f57458a;
        int i2 = this.f57459b;
        int i3 = this.f57460c;
        int i4 = this.f57461d;
        int i5 = this.f57462e;
        int i6 = this.f57463f;
        String str = this.f57464g;
        int i7 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i8 = this.f57465h;
        int i9 = this.f57466i;
        int i10 = this.f57467j;
        C16257e c16257e = this.f57468k;
        int hashCode2 = c16257e != null ? c16257e.hashCode() : 0;
        C16266n c16266n = this.f57469l;
        int hashCode3 = c16266n != null ? c16266n.hashCode() : 0;
        List<AbstractC16254b> list = this.f57470m;
        if (list != null) {
            i7 = list.hashCode();
        }
        return (((((((((((((((((((((((i * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + hashCode) * 31) + i8) * 31) + i9) * 31) + i10) * 31) + hashCode2) * 31) + hashCode3) * 31) + i7;
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    public String toString() {
        return "ESDescriptor{esId=" + this.f57458a + ", streamDependenceFlag=" + this.f57459b + ", URLFlag=" + this.f57460c + ", oCRstreamFlag=" + this.f57461d + ", streamPriority=" + this.f57462e + ", URLLength=" + this.f57463f + ", URLString='" + this.f57464g + "', remoteODFlag=" + this.f57465h + ", dependsOnEsId=" + this.f57466i + ", oCREsId=" + this.f57467j + ", decoderConfigDescriptor=" + this.f57468k + ", slConfigDescriptor=" + this.f57469l + '}';
    }
}
