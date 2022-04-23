package com.googlecode.mp4parser.b.b.a;

import com.b.a.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;
import kotlinx.serialization.json.internal.JsonReaderKt;
@g(a = {4})
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/e.class */
public class e extends b {
    private static Logger k = Logger.getLogger(e.class.getName());

    /* renamed from: a  reason: collision with root package name */
    public int f33116a;

    /* renamed from: b  reason: collision with root package name */
    public int f33117b;

    /* renamed from: c  reason: collision with root package name */
    public int f33118c;

    /* renamed from: d  reason: collision with root package name */
    public int f33119d;
    public long e;
    public long f;
    public f g;
    public a h;
    public List<m> i = new ArrayList();
    byte[] j;

    public e() {
        this.Y = 4;
    }

    @Override // com.googlecode.mp4parser.b.b.a.b
    public final int a() {
        a aVar = this.h;
        int i = 0;
        int b2 = aVar == null ? 0 : aVar.b();
        f fVar = this.g;
        if (fVar != null) {
            i = fVar.b();
        }
        int i2 = b2 + 13 + i;
        for (m mVar : this.i) {
            i2 += mVar.b();
        }
        return i2;
    }

    @Override // com.googlecode.mp4parser.b.b.a.b
    public final void a(ByteBuffer byteBuffer) throws IOException {
        int b2;
        this.f33116a = com.b.a.e.a(byteBuffer.get());
        int a2 = com.b.a.e.a(byteBuffer.get());
        this.f33117b = a2 >>> 2;
        this.f33118c = (a2 >> 1) & 1;
        this.f33119d = com.b.a.e.b(byteBuffer);
        this.e = com.b.a.e.a(byteBuffer);
        this.f = com.b.a.e.a(byteBuffer);
        while (byteBuffer.remaining() > 2) {
            int position = byteBuffer.position();
            b a3 = l.a(this.f33116a, byteBuffer);
            int position2 = byteBuffer.position() - position;
            Logger logger = k;
            StringBuilder sb = new StringBuilder();
            sb.append(a3);
            sb.append(" - DecoderConfigDescr1 read: ");
            sb.append(position2);
            sb.append(", size: ");
            sb.append(a3 != null ? Integer.valueOf(a3.b()) : null);
            logger.finer(sb.toString());
            if (a3 != null && position2 < (b2 = a3.b())) {
                byte[] bArr = new byte[b2 - position2];
                this.j = bArr;
                byteBuffer.get(bArr);
            }
            if (a3 instanceof f) {
                this.g = (f) a3;
            } else if (a3 instanceof a) {
                this.h = (a) a3;
            } else if (a3 instanceof m) {
                this.i.add((m) a3);
            }
        }
    }

    @Override // com.googlecode.mp4parser.b.b.a.b
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("DecoderConfigDescriptor");
        sb.append("{objectTypeIndication=");
        sb.append(this.f33116a);
        sb.append(", streamType=");
        sb.append(this.f33117b);
        sb.append(", upStream=");
        sb.append(this.f33118c);
        sb.append(", bufferSizeDB=");
        sb.append(this.f33119d);
        sb.append(", maxBitRate=");
        sb.append(this.e);
        sb.append(", avgBitRate=");
        sb.append(this.f);
        sb.append(", decoderSpecificInfo=");
        sb.append(this.g);
        sb.append(", audioSpecificInfo=");
        sb.append(this.h);
        sb.append(", configDescriptorDeadBytes=");
        byte[] bArr = this.j;
        if (bArr == null) {
            bArr = new byte[0];
        }
        sb.append(c.a(bArr));
        sb.append(", profileLevelIndicationDescriptors=");
        List<m> list = this.i;
        sb.append(list == null ? JsonReaderKt.NULL : Arrays.asList(list).toString());
        sb.append('}');
        return sb.toString();
    }
}
