package com.googlecode.mp4parser.p420b.p422b.p423a;

import com.p102b.p103a.C3513c;
import com.p102b.p103a.C3515e;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;
import kotlinx.serialization.json.internal.JsonReaderKt;
@AbstractC16259g(m7537a = {4})
/* renamed from: com.googlecode.mp4parser.b.b.a.e */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/e.class */
public class C16257e extends AbstractC16254b {

    /* renamed from: k */
    private static Logger f57445k = Logger.getLogger(C16257e.class.getName());

    /* renamed from: a */
    public int f57446a;

    /* renamed from: b */
    public int f57447b;

    /* renamed from: c */
    public int f57448c;

    /* renamed from: d */
    public int f57449d;

    /* renamed from: e */
    public long f57450e;

    /* renamed from: f */
    public long f57451f;

    /* renamed from: g */
    public C16258f f57452g;

    /* renamed from: h */
    public C16251a f57453h;

    /* renamed from: i */
    public List<C16265m> f57454i = new ArrayList();

    /* renamed from: j */
    byte[] f57455j;

    public C16257e() {
        this.f57435Y = 4;
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    /* renamed from: a */
    public final int mo7534a() {
        C16251a c16251a = this.f57453h;
        int i = 0;
        int b = c16251a == null ? 0 : c16251a.m7544b();
        C16258f c16258f = this.f57452g;
        if (c16258f != null) {
            i = c16258f.m7544b();
        }
        int i2 = b + 13 + i;
        for (C16265m c16265m : this.f57454i) {
            i2 += c16265m.m7544b();
        }
        return i2;
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    /* renamed from: a */
    public final void mo7533a(ByteBuffer byteBuffer) throws IOException {
        int m7544b;
        this.f57446a = C3515e.m37852a(byteBuffer.get());
        int m37852a = C3515e.m37852a(byteBuffer.get());
        this.f57447b = m37852a >>> 2;
        this.f57448c = (m37852a >> 1) & 1;
        this.f57449d = C3515e.m37849b(byteBuffer);
        this.f57450e = C3515e.m37851a(byteBuffer);
        this.f57451f = C3515e.m37851a(byteBuffer);
        while (byteBuffer.remaining() > 2) {
            int position = byteBuffer.position();
            AbstractC16254b m7535a = C16264l.m7535a(this.f57446a, byteBuffer);
            int position2 = byteBuffer.position() - position;
            Logger logger = f57445k;
            StringBuilder sb = new StringBuilder();
            sb.append(m7535a);
            sb.append(" - DecoderConfigDescr1 read: ");
            sb.append(position2);
            sb.append(", size: ");
            sb.append(m7535a != null ? Integer.valueOf(m7535a.m7544b()) : null);
            logger.finer(sb.toString());
            if (m7535a != null && position2 < (m7544b = m7535a.m7544b())) {
                byte[] bArr = new byte[m7544b - position2];
                this.f57455j = bArr;
                byteBuffer.get(bArr);
            }
            if (m7535a instanceof C16258f) {
                this.f57452g = (C16258f) m7535a;
            } else if (m7535a instanceof C16251a) {
                this.f57453h = (C16251a) m7535a;
            } else if (m7535a instanceof C16265m) {
                this.f57454i.add((C16265m) m7535a);
            }
        }
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("DecoderConfigDescriptor");
        sb.append("{objectTypeIndication=");
        sb.append(this.f57446a);
        sb.append(", streamType=");
        sb.append(this.f57447b);
        sb.append(", upStream=");
        sb.append(this.f57448c);
        sb.append(", bufferSizeDB=");
        sb.append(this.f57449d);
        sb.append(", maxBitRate=");
        sb.append(this.f57450e);
        sb.append(", avgBitRate=");
        sb.append(this.f57451f);
        sb.append(", decoderSpecificInfo=");
        sb.append(this.f57452g);
        sb.append(", audioSpecificInfo=");
        sb.append(this.f57453h);
        sb.append(", configDescriptorDeadBytes=");
        byte[] bArr = this.f57455j;
        if (bArr == null) {
            bArr = new byte[0];
        }
        sb.append(C3513c.m37856a(bArr));
        sb.append(", profileLevelIndicationDescriptors=");
        List<C16265m> list = this.f57454i;
        sb.append(list == null ? JsonReaderKt.NULL : Arrays.asList(list).toString());
        sb.append('}');
        return sb.toString();
    }
}
