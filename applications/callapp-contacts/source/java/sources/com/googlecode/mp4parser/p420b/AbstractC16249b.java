package com.googlecode.mp4parser.p420b;

import com.explorestack.iab.utils.C9605o;
import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.UUID;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.googlecode.mp4parser.b.b */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b.class */
public abstract class AbstractC16249b extends AbstractC16280c {

    /* renamed from: d */
    private static final AbstractC20997a.AbstractC20998a f57342d = null;

    /* renamed from: e */
    private static final AbstractC20997a.AbstractC20998a f57343e = null;

    /* renamed from: f */
    private static final AbstractC20997a.AbstractC20998a f57344f = null;

    /* renamed from: g */
    private static final AbstractC20997a.AbstractC20998a f57345g = null;

    /* renamed from: h */
    private static final AbstractC20997a.AbstractC20998a f57346h = null;

    /* renamed from: i */
    private static final AbstractC20997a.AbstractC20998a f57347i = null;

    /* renamed from: j */
    private static final AbstractC20997a.AbstractC20998a f57348j = null;

    /* renamed from: k */
    private static final AbstractC20997a.AbstractC20998a f57349k = null;

    /* renamed from: a */
    int f57350a;

    /* renamed from: b */
    int f57351b;

    /* renamed from: c */
    byte[] f57352c;

    static {
        m7554c();
    }

    public AbstractC16249b(String str) {
        super(str);
    }

    /* renamed from: c */
    private static void m7554c() {
        C20987b c20987b = new C20987b("AbstractTrackEncryptionBox.java", AbstractC16249b.class);
        f57342d = c20987b.m164a("method-execution", c20987b.m165a("1", "getDefaultAlgorithmId", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "", "", "", "int"), 24);
        f57343e = c20987b.m164a("method-execution", c20987b.m165a("1", "setDefaultAlgorithmId", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "int", "defaultAlgorithmId", "", "void"), 28);
        f57344f = c20987b.m164a("method-execution", c20987b.m165a("1", "getDefaultIvSize", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "", "", "", "int"), 32);
        f57345g = c20987b.m164a("method-execution", c20987b.m165a("1", "setDefaultIvSize", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "int", "defaultIvSize", "", "void"), 36);
        f57346h = c20987b.m164a("method-execution", c20987b.m165a("1", "getDefault_KID", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "", "", "", "java.util.UUID"), 40);
        f57347i = c20987b.m164a("method-execution", c20987b.m165a("1", "setDefault_KID", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "java.util.UUID", "uuid", "", "void"), 46);
        f57348j = c20987b.m164a("method-execution", c20987b.m165a("1", "equals", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "java.lang.Object", C9605o.f32625a, "", "boolean"), 76);
        f57349k = c20987b.m164a("method-execution", c20987b.m165a("1", "hashCode", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "", "", "", "int"), 90);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        this.f57350a = C3515e.m37849b(byteBuffer);
        this.f57351b = C3515e.m37852a(byteBuffer.get());
        byte[] bArr = new byte[16];
        this.f57352c = bArr;
        byteBuffer.get(bArr);
    }

    /* renamed from: a */
    public final int m7556a() {
        AbstractC20997a m163a = C20987b.m163a(f57344f, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f57351b;
    }

    /* renamed from: b */
    public final UUID m7555b() {
        AbstractC20997a m163a = C20987b.m163a(f57346h, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        ByteBuffer wrap = ByteBuffer.wrap(this.f57352c);
        wrap.order(ByteOrder.BIG_ENDIAN);
        return new UUID(wrap.getLong(), wrap.getLong());
    }

    public boolean equals(Object obj) {
        AbstractC20997a m162a = C20987b.m162a(f57348j, this, this, obj);
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AbstractC16249b abstractC16249b = (AbstractC16249b) obj;
        return this.f57350a == abstractC16249b.f57350a && this.f57351b == abstractC16249b.f57351b && Arrays.equals(this.f57352c, abstractC16249b.f57352c);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        C3516f.m37840a(byteBuffer, this.f57350a);
        C3516f.m37832c(byteBuffer, this.f57351b);
        byteBuffer.put(this.f57352c);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return 24L;
    }

    public int hashCode() {
        AbstractC20997a m163a = C20987b.m163a(f57349k, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        int i = this.f57350a;
        int i2 = this.f57351b;
        byte[] bArr = this.f57352c;
        return (((i * 31) + i2) * 31) + (bArr != null ? Arrays.hashCode(bArr) : 0);
    }
}
