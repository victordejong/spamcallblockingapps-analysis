package com.googlecode.mp4parser.b;

import com.b.a.e;
import com.b.a.f;
import com.explorestack.iab.utils.o;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.h;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.UUID;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b.class */
public abstract class b extends c {

    /* renamed from: d  reason: collision with root package name */
    private static final a.AbstractC0755a f33089d = null;
    private static final a.AbstractC0755a e = null;
    private static final a.AbstractC0755a f = null;
    private static final a.AbstractC0755a g = null;
    private static final a.AbstractC0755a h = null;
    private static final a.AbstractC0755a i = null;
    private static final a.AbstractC0755a j = null;
    private static final a.AbstractC0755a k = null;

    /* renamed from: a  reason: collision with root package name */
    int f33090a;

    /* renamed from: b  reason: collision with root package name */
    int f33091b;

    /* renamed from: c  reason: collision with root package name */
    byte[] f33092c;

    static {
        c();
    }

    public b(String str) {
        super(str);
    }

    private static void c() {
        org.mp4parser.aspectj.a.b.b bVar = new org.mp4parser.aspectj.a.b.b("AbstractTrackEncryptionBox.java", b.class);
        f33089d = bVar.a("method-execution", bVar.a("1", "getDefaultAlgorithmId", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "", "", "", "int"), 24);
        e = bVar.a("method-execution", bVar.a("1", "setDefaultAlgorithmId", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "int", "defaultAlgorithmId", "", "void"), 28);
        f = bVar.a("method-execution", bVar.a("1", "getDefaultIvSize", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "", "", "", "int"), 32);
        g = bVar.a("method-execution", bVar.a("1", "setDefaultIvSize", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "int", "defaultIvSize", "", "void"), 36);
        h = bVar.a("method-execution", bVar.a("1", "getDefault_KID", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "", "", "", "java.util.UUID"), 40);
        i = bVar.a("method-execution", bVar.a("1", "setDefault_KID", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "java.util.UUID", "uuid", "", "void"), 46);
        j = bVar.a("method-execution", bVar.a("1", "equals", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "java.lang.Object", o.f19200a, "", "boolean"), 76);
        k = bVar.a("method-execution", bVar.a("1", "hashCode", "com.googlecode.mp4parser.boxes.AbstractTrackEncryptionBox", "", "", "", "int"), 90);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        this.f33090a = e.b(byteBuffer);
        this.f33091b = e.a(byteBuffer.get());
        byte[] bArr = new byte[16];
        this.f33092c = bArr;
        byteBuffer.get(bArr);
    }

    public final int a() {
        a a2 = org.mp4parser.aspectj.a.b.b.a(f, this, this);
        h.a();
        h.a(a2);
        return this.f33091b;
    }

    public final UUID b() {
        a a2 = org.mp4parser.aspectj.a.b.b.a(h, this, this);
        h.a();
        h.a(a2);
        ByteBuffer wrap = ByteBuffer.wrap(this.f33092c);
        wrap.order(ByteOrder.BIG_ENDIAN);
        return new UUID(wrap.getLong(), wrap.getLong());
    }

    public boolean equals(Object obj) {
        a a2 = org.mp4parser.aspectj.a.b.b.a(j, this, this, obj);
        h.a();
        h.a(a2);
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f33090a == bVar.f33090a && this.f33091b == bVar.f33091b && Arrays.equals(this.f33092c, bVar.f33092c);
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        f.a(byteBuffer, this.f33090a);
        f.c(byteBuffer, this.f33091b);
        byteBuffer.put(this.f33092c);
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return 24L;
    }

    public int hashCode() {
        a a2 = org.mp4parser.aspectj.a.b.b.a(k, this, this);
        h.a();
        h.a(a2);
        int i2 = this.f33090a;
        int i3 = this.f33091b;
        byte[] bArr = this.f33092c;
        return (((i2 * 31) + i3) * 31) + (bArr != null ? Arrays.hashCode(bArr) : 0);
    }
}
