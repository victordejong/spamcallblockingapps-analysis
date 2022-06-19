package com.googlecode.mp4parser.p420b;

import com.explorestack.iab.utils.C9605o;
import com.explorestack.protobuf.openrtb.LossReason;
import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import com.mp4parser.p471a.p472a.C17027a;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.io.IOException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.googlecode.mp4parser.b.a */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/a.class */
public abstract class AbstractC16247a extends AbstractC16280c {

    /* renamed from: e */
    public static final AbstractC20997a.AbstractC20998a f57332e = null;

    /* renamed from: f */
    private static final AbstractC20997a.AbstractC20998a f57333f = null;

    /* renamed from: g */
    private static final AbstractC20997a.AbstractC20998a f57334g = null;

    /* renamed from: h */
    private static final AbstractC20997a.AbstractC20998a f57335h = null;

    /* renamed from: i */
    private static final AbstractC20997a.AbstractC20998a f57336i = null;

    /* renamed from: j */
    private static final AbstractC20997a.AbstractC20998a f57337j = null;

    /* renamed from: a */
    protected int f57338a = -1;

    /* renamed from: b */
    protected int f57339b = -1;

    /* renamed from: c */
    protected byte[] f57340c = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

    /* renamed from: d */
    public List<C17027a> f57341d = Collections.emptyList();

    static {
        m7557c();
    }

    public AbstractC16247a(String str) {
        super(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* renamed from: a */
    private List<C17027a> m7559a(ByteBuffer byteBuffer, long j, int i) {
        ArrayList arrayList = new ArrayList();
        for (?? r9 = j; r9 > 0; r9--) {
            try {
                C17027a c17027a = new C17027a();
                c17027a.f60477a = new byte[i];
                byteBuffer.get(c17027a.f60477a);
                if ((m7518i() & 2) > 0) {
                    c17027a.f60478b = new C17027a.AbstractC17037j[C3515e.m37848c(byteBuffer)];
                    for (int i2 = 0; i2 < c17027a.f60478b.length; i2++) {
                        c17027a.f60478b[i2] = c17027a.m5976a(C3515e.m37848c(byteBuffer), C3515e.m37851a(byteBuffer));
                    }
                }
                arrayList.add(c17027a);
            } catch (BufferUnderflowException e) {
                return null;
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    private boolean m7558b() {
        return (m7518i() & 1) > 0;
    }

    /* renamed from: c */
    private static void m7557c() {
        C20987b c20987b = new C20987b("AbstractSampleEncryptionBox.java", AbstractC16247a.class);
        f57333f = c20987b.m164a("method-execution", c20987b.m165a("1", "getOffsetToFirstIV", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "", "", "", "int"), 29);
        f57334g = c20987b.m164a("method-execution", c20987b.m165a("1", "getEntries", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "", "", "", "java.util.List"), 89);
        f57332e = c20987b.m164a("method-execution", c20987b.m165a("1", "setEntries", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "java.util.List", "entries", "", "void"), 93);
        f57335h = c20987b.m164a("method-execution", c20987b.m165a("1", "equals", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "java.lang.Object", C9605o.f32625a, "", "boolean"), 173);
        f57336i = c20987b.m164a("method-execution", c20987b.m165a("1", "hashCode", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "", "", "", "int"), 200);
        f57337j = c20987b.m164a("method-execution", c20987b.m165a("1", "getEntrySizes", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "", "", "", "java.util.List"), LossReason.LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        if ((m7518i() & 1) > 0) {
            this.f57338a = C3515e.m37849b(byteBuffer);
            this.f57339b = C3515e.m37852a(byteBuffer.get());
            byte[] bArr = new byte[16];
            this.f57340c = bArr;
            byteBuffer.get(bArr);
        }
        long m37851a = C3515e.m37851a(byteBuffer);
        ByteBuffer duplicate = byteBuffer.duplicate();
        ByteBuffer duplicate2 = byteBuffer.duplicate();
        List<C17027a> m7559a = m7559a(duplicate, m37851a, 8);
        this.f57341d = m7559a;
        if (m7559a == null) {
            this.f57341d = m7559a(duplicate2, m37851a, 16);
            byteBuffer.position((byteBuffer.position() + byteBuffer.remaining()) - duplicate2.remaining());
        } else {
            byteBuffer.position((byteBuffer.position() + byteBuffer.remaining()) - duplicate.remaining());
        }
        if (this.f57341d != null) {
            return;
        }
        throw new RuntimeException("Cannot parse SampleEncryptionBox");
    }

    /* renamed from: a */
    public final int m7560a() {
        AbstractC20997a m163a = C20987b.m163a(f57333f, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return (getSize() > 4294967296L ? 16 : 8) + (m7558b() ? this.f57340c.length + 4 : 0) + 4;
    }

    public boolean equals(Object obj) {
        AbstractC20997a m162a = C20987b.m162a(f57335h, this, this, obj);
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AbstractC16247a abstractC16247a = (AbstractC16247a) obj;
        if (this.f57338a != abstractC16247a.f57338a || this.f57339b != abstractC16247a.f57339b) {
            return false;
        }
        List<C17027a> list = this.f57341d;
        if (list != null) {
            if (!list.equals(abstractC16247a.f57341d)) {
                return false;
            }
        } else if (abstractC16247a.f57341d != null) {
            return false;
        }
        return Arrays.equals(this.f57340c, abstractC16247a.f57340c);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a, com.p102b.p103a.p104a.AbstractC3476b
    public void getBox(WritableByteChannel writableByteChannel) throws IOException {
        super.getBox(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        C17027a.AbstractC17037j[] abstractC17037jArr;
        m7521b(byteBuffer);
        if (m7558b()) {
            C3516f.m37840a(byteBuffer, this.f57338a);
            C3516f.m37832c(byteBuffer, this.f57339b);
            byteBuffer.put(this.f57340c);
        }
        int i = 0;
        for (C17027a c17027a : this.f57341d) {
            if (c17027a.m5977a() > 0) {
                i++;
            }
        }
        C3516f.m37835b(byteBuffer, i);
        for (C17027a c17027a2 : this.f57341d) {
            if (c17027a2.m5977a() > 0) {
                if (c17027a2.f60477a.length != 8 && c17027a2.f60477a.length != 16) {
                    throw new RuntimeException("IV must be either 8 or 16 bytes");
                }
                byteBuffer.put(c17027a2.f60477a);
                if ((m7518i() & 2) > 0) {
                    C3516f.m37836b(byteBuffer, c17027a2.f60478b.length);
                    for (C17027a.AbstractC17037j abstractC17037j : c17027a2.f60478b) {
                        C3516f.m37836b(byteBuffer, abstractC17037j.mo5975a());
                        C3516f.m37835b(byteBuffer, abstractC17037j.mo5974b());
                    }
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        char length = (m7558b() ? this.f57340c.length + 8 : (char) 4) + 4;
        for (C17027a c17027a : this.f57341d) {
            length += c17027a.m5977a();
        }
        return length;
    }

    public int hashCode() {
        AbstractC20997a m163a = C20987b.m163a(f57336i, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        int i = this.f57338a;
        int i2 = this.f57339b;
        byte[] bArr = this.f57340c;
        int i3 = 0;
        int hashCode = bArr != null ? Arrays.hashCode(bArr) : 0;
        List<C17027a> list = this.f57341d;
        if (list != null) {
            i3 = list.hashCode();
        }
        return (((((i * 31) + i2) * 31) + hashCode) * 31) + i3;
    }
}
