package com.googlecode.mp4parser.b.b.a;

import com.b.a.e;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
@g(a = {3})
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/h.class */
public class h extends b {
    private static Logger n = Logger.getLogger(h.class.getName());

    /* renamed from: a  reason: collision with root package name */
    public int f33121a;

    /* renamed from: b  reason: collision with root package name */
    public int f33122b;

    /* renamed from: c  reason: collision with root package name */
    public int f33123c;

    /* renamed from: d  reason: collision with root package name */
    public int f33124d;
    public int e;
    public String g;
    public int h;
    public int i;
    public int j;
    public e k;
    public n l;
    public int f = 0;
    public List<b> m = new ArrayList();

    public h() {
        this.Y = 3;
    }

    @Override // com.googlecode.mp4parser.b.b.a.b
    public final int a() {
        int i = this.f33122b > 0 ? 5 : 3;
        int i2 = i;
        if (this.f33123c > 0) {
            i2 = i + this.f + 1;
        }
        int i3 = i2;
        if (this.f33124d > 0) {
            i3 = i2 + 2;
        }
        int b2 = this.k.b();
        int b3 = this.l.b();
        if (this.m.size() <= 0) {
            return i3 + b2 + b3;
        }
        throw new RuntimeException(" Doesn't handle other descriptors yet");
    }

    @Override // com.googlecode.mp4parser.b.b.a.b
    public final void a(ByteBuffer byteBuffer) throws IOException {
        this.f33121a = e.c(byteBuffer);
        int a2 = e.a(byteBuffer.get());
        int i = a2 >>> 7;
        this.f33122b = i;
        this.f33123c = (a2 >>> 6) & 1;
        this.f33124d = (a2 >>> 5) & 1;
        this.e = a2 & 31;
        if (i == 1) {
            this.i = e.c(byteBuffer);
        }
        if (this.f33123c == 1) {
            int a3 = e.a(byteBuffer.get());
            this.f = a3;
            this.g = e.a(byteBuffer, a3);
        }
        if (this.f33124d == 1) {
            this.j = e.c(byteBuffer);
        }
        while (byteBuffer.remaining() > 1) {
            b a4 = l.a(-1, byteBuffer);
            if (a4 instanceof e) {
                this.k = (e) a4;
            } else if (a4 instanceof n) {
                this.l = (n) a4;
            } else {
                this.m.add(a4);
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
        h hVar = (h) obj;
        if (this.f33123c != hVar.f33123c || this.f != hVar.f || this.i != hVar.i || this.f33121a != hVar.f33121a || this.j != hVar.j || this.f33124d != hVar.f33124d || this.h != hVar.h || this.f33122b != hVar.f33122b || this.e != hVar.e) {
            return false;
        }
        String str = this.g;
        if (str != null) {
            if (!str.equals(hVar.g)) {
                return false;
            }
        } else if (hVar.g != null) {
            return false;
        }
        e eVar = this.k;
        if (eVar != null) {
            if (!eVar.equals(hVar.k)) {
                return false;
            }
        } else if (hVar.k != null) {
            return false;
        }
        List<b> list = this.m;
        if (list != null) {
            if (!list.equals(hVar.m)) {
                return false;
            }
        } else if (hVar.m != null) {
            return false;
        }
        n nVar = this.l;
        n nVar2 = hVar.l;
        return nVar != null ? nVar.equals(nVar2) : nVar2 == null;
    }

    public int hashCode() {
        int i = this.f33121a;
        int i2 = this.f33122b;
        int i3 = this.f33123c;
        int i4 = this.f33124d;
        int i5 = this.e;
        int i6 = this.f;
        String str = this.g;
        int i7 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i8 = this.h;
        int i9 = this.i;
        int i10 = this.j;
        e eVar = this.k;
        int hashCode2 = eVar != null ? eVar.hashCode() : 0;
        n nVar = this.l;
        int hashCode3 = nVar != null ? nVar.hashCode() : 0;
        List<b> list = this.m;
        if (list != null) {
            i7 = list.hashCode();
        }
        return (((((((((((((((((((((((i * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + hashCode) * 31) + i8) * 31) + i9) * 31) + i10) * 31) + hashCode2) * 31) + hashCode3) * 31) + i7;
    }

    @Override // com.googlecode.mp4parser.b.b.a.b
    public String toString() {
        return "ESDescriptor{esId=" + this.f33121a + ", streamDependenceFlag=" + this.f33122b + ", URLFlag=" + this.f33123c + ", oCRstreamFlag=" + this.f33124d + ", streamPriority=" + this.e + ", URLLength=" + this.f + ", URLString='" + this.g + "', remoteODFlag=" + this.h + ", dependsOnEsId=" + this.i + ", oCREsId=" + this.j + ", decoderConfigDescriptor=" + this.k + ", slConfigDescriptor=" + this.l + '}';
    }
}
