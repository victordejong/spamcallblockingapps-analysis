package com.googlecode.mp4parser.b;

import com.b.a.e;
import com.b.a.f;
import com.explorestack.iab.utils.o;
import com.explorestack.protobuf.openrtb.LossReason;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.h;
import com.mp4parser.a.a.a;
import java.io.IOException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/a.class */
public abstract class a extends c {
    public static final a.AbstractC0755a e = null;
    private static final a.AbstractC0755a f = null;
    private static final a.AbstractC0755a g = null;
    private static final a.AbstractC0755a h = null;
    private static final a.AbstractC0755a i = null;
    private static final a.AbstractC0755a j = null;

    /* renamed from: a  reason: collision with root package name */
    protected int f33085a = -1;

    /* renamed from: b  reason: collision with root package name */
    protected int f33086b = -1;

    /* renamed from: c  reason: collision with root package name */
    protected byte[] f33087c = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

    /* renamed from: d  reason: collision with root package name */
    public List<com.mp4parser.a.a.a> f33088d = Collections.emptyList();

    static {
        c();
    }

    public a(String str) {
        super(str);
    }

    private List<com.mp4parser.a.a.a> a(ByteBuffer byteBuffer, long j2, int i2) {
        ArrayList arrayList = new ArrayList();
        while (j2 > 0) {
            try {
                com.mp4parser.a.a.a aVar = new com.mp4parser.a.a.a();
                aVar.f34881a = new byte[i2];
                byteBuffer.get(aVar.f34881a);
                if ((i() & 2) > 0) {
                    aVar.f34882b = new a.j[e.c(byteBuffer)];
                    for (int i3 = 0; i3 < aVar.f34882b.length; i3++) {
                        aVar.f34882b[i3] = aVar.a(e.c(byteBuffer), e.a(byteBuffer));
                    }
                }
                arrayList.add(aVar);
                j2--;
            } catch (BufferUnderflowException e2) {
                return null;
            }
        }
        return arrayList;
    }

    private boolean b() {
        return (i() & 1) > 0;
    }

    private static void c() {
        b bVar = new b("AbstractSampleEncryptionBox.java", a.class);
        f = bVar.a("method-execution", bVar.a("1", "getOffsetToFirstIV", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "", "", "", "int"), 29);
        g = bVar.a("method-execution", bVar.a("1", "getEntries", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "", "", "", "java.util.List"), 89);
        e = bVar.a("method-execution", bVar.a("1", "setEntries", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "java.util.List", "entries", "", "void"), 93);
        h = bVar.a("method-execution", bVar.a("1", "equals", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "java.lang.Object", o.f19200a, "", "boolean"), 173);
        i = bVar.a("method-execution", bVar.a("1", "hashCode", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "", "", "", "int"), 200);
        j = bVar.a("method-execution", bVar.a("1", "getEntrySizes", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "", "", "", "java.util.List"), LossReason.LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        if ((i() & 1) > 0) {
            this.f33085a = e.b(byteBuffer);
            this.f33086b = e.a(byteBuffer.get());
            byte[] bArr = new byte[16];
            this.f33087c = bArr;
            byteBuffer.get(bArr);
        }
        long a2 = e.a(byteBuffer);
        ByteBuffer duplicate = byteBuffer.duplicate();
        ByteBuffer duplicate2 = byteBuffer.duplicate();
        List<com.mp4parser.a.a.a> a3 = a(duplicate, a2, 8);
        this.f33088d = a3;
        if (a3 == null) {
            this.f33088d = a(duplicate2, a2, 16);
            byteBuffer.position((byteBuffer.position() + byteBuffer.remaining()) - duplicate2.remaining());
        } else {
            byteBuffer.position((byteBuffer.position() + byteBuffer.remaining()) - duplicate.remaining());
        }
        if (this.f33088d == null) {
            throw new RuntimeException("Cannot parse SampleEncryptionBox");
        }
    }

    public final int a() {
        org.mp4parser.aspectj.lang.a a2 = b.a(f, this, this);
        h.a();
        h.a(a2);
        return (getSize() > 4294967296L ? 16 : 8) + (b() ? this.f33087c.length + 4 : 0) + 4;
    }

    public boolean equals(Object obj) {
        org.mp4parser.aspectj.lang.a a2 = b.a(h, this, this, obj);
        h.a();
        h.a(a2);
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f33085a != aVar.f33085a || this.f33086b != aVar.f33086b) {
            return false;
        }
        List<com.mp4parser.a.a.a> list = this.f33088d;
        if (list != null) {
            if (!list.equals(aVar.f33088d)) {
                return false;
            }
        } else if (aVar.f33088d != null) {
            return false;
        }
        return Arrays.equals(this.f33087c, aVar.f33087c);
    }

    @Override // com.googlecode.mp4parser.a, com.b.a.a.b
    public void getBox(WritableByteChannel writableByteChannel) throws IOException {
        super.getBox(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        a.j[] jVarArr;
        b(byteBuffer);
        if (b()) {
            f.a(byteBuffer, this.f33085a);
            f.c(byteBuffer, this.f33086b);
            byteBuffer.put(this.f33087c);
        }
        int i2 = 0;
        for (com.mp4parser.a.a.a aVar : this.f33088d) {
            if (aVar.a() > 0) {
                i2++;
            }
        }
        f.b(byteBuffer, i2);
        for (com.mp4parser.a.a.a aVar2 : this.f33088d) {
            if (aVar2.a() > 0) {
                if (aVar2.f34881a.length == 8 || aVar2.f34881a.length == 16) {
                    byteBuffer.put(aVar2.f34881a);
                    if ((i() & 2) > 0) {
                        f.b(byteBuffer, aVar2.f34882b.length);
                        for (a.j jVar : aVar2.f34882b) {
                            f.b(byteBuffer, jVar.a());
                            f.b(byteBuffer, jVar.b());
                        }
                    }
                } else {
                    throw new RuntimeException("IV must be either 8 or 16 bytes");
                }
            }
        }
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        long length = (b() ? this.f33087c.length + 8 : 4L) + 4;
        for (com.mp4parser.a.a.a aVar : this.f33088d) {
            length += aVar.a();
        }
        return length;
    }

    public int hashCode() {
        org.mp4parser.aspectj.lang.a a2 = b.a(i, this, this);
        h.a();
        h.a(a2);
        int i2 = this.f33085a;
        int i3 = this.f33086b;
        byte[] bArr = this.f33087c;
        int i4 = 0;
        int hashCode = bArr != null ? Arrays.hashCode(bArr) : 0;
        List<com.mp4parser.a.a.a> list = this.f33088d;
        if (list != null) {
            i4 = list.hashCode();
        }
        return (((((i2 * 31) + i3) * 31) + hashCode) * 31) + i4;
    }
}
