package com.googlecode.mp4parser.a;

import com.b.a.a.a.g;
import com.b.a.a.ag;
import com.b.a.a.c;
import com.b.a.a.e;
import com.b.a.a.r;
import com.b.a.a.z;
import com.b.a.d;
import com.googlecode.mp4parser.c.j;
import com.googlecode.mp4parser.h;
import com.mp4parser.a.a.a;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/b.class */
public class b extends e implements com.googlecode.mp4parser.a.d.b {

    /* renamed from: d  reason: collision with root package name */
    static final /* synthetic */ boolean f33050d = true;
    private List<com.mp4parser.a.a.a> h;
    private UUID i;

    /* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/b$a.class */
    final class a {

        /* renamed from: d  reason: collision with root package name */
        static final /* synthetic */ boolean f33051d = true;

        /* renamed from: a  reason: collision with root package name */
        com.mp4parser.iso14496.a.b f33052a;

        /* renamed from: b  reason: collision with root package name */
        com.mp4parser.iso14496.a.a f33053b;
        private e e;

        public a(e eVar) {
            this.e = eVar;
        }

        public final a a() {
            List a2 = this.e.a(com.mp4parser.iso14496.a.b.class);
            List a3 = this.e.a(com.mp4parser.iso14496.a.a.class);
            if (f33051d || a2.size() == a3.size()) {
                this.f33052a = null;
                this.f33053b = null;
                for (int i = 0; i < a2.size(); i++) {
                    if (!(this.f33052a == null && ((com.mp4parser.iso14496.a.b) a2.get(i)).a() == null) && !"cenc".equals(((com.mp4parser.iso14496.a.b) a2.get(i)).a())) {
                        com.mp4parser.iso14496.a.b bVar = this.f33052a;
                        if (bVar == null || bVar.a() != null || !"cenc".equals(((com.mp4parser.iso14496.a.b) a2.get(i)).a())) {
                            throw new RuntimeException("Are there two cenc labeled saiz?");
                        }
                        this.f33052a = (com.mp4parser.iso14496.a.b) a2.get(i);
                    } else {
                        this.f33052a = (com.mp4parser.iso14496.a.b) a2.get(i);
                    }
                    if (!(this.f33053b == null && ((com.mp4parser.iso14496.a.a) a3.get(i)).a() == null) && !"cenc".equals(((com.mp4parser.iso14496.a.a) a3.get(i)).a())) {
                        com.mp4parser.iso14496.a.a aVar = this.f33053b;
                        if (aVar == null || aVar.a() != null || !"cenc".equals(((com.mp4parser.iso14496.a.a) a3.get(i)).a())) {
                            throw new RuntimeException("Are there two cenc labeled saio?");
                        }
                        this.f33053b = (com.mp4parser.iso14496.a.a) a3.get(i);
                    } else {
                        this.f33053b = (com.mp4parser.iso14496.a.a) a3.get(i);
                    }
                }
                return this;
            }
            throw new AssertionError();
        }
    }

    public b(String str, ag agVar, d... dVarArr) throws IOException {
        super(str, agVar, dVarArr);
        long j;
        int i;
        long j2;
        e eVar;
        int i2;
        z zVar = (z) j.a((com.googlecode.mp4parser.b) agVar, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schm[0]");
        if (f33050d || (zVar != null && (zVar.a().equals("cenc") || zVar.a().equals("cbc1")))) {
            this.h = new ArrayList();
            long a2 = agVar.a().a();
            if (agVar.getParent().a(com.b.a.a.a.a.class).size() > 0) {
                for (com.b.a.a.a.b bVar : ((com.b.a.a.b) agVar.getParent()).getParent().a(com.b.a.a.a.b.class)) {
                    for (com.b.a.a.a.e eVar2 : bVar.a(com.b.a.a.a.e.class)) {
                        if (eVar2.a().b() == a2) {
                            com.mp4parser.a.a.b bVar2 = (com.mp4parser.a.a.b) j.a((com.googlecode.mp4parser.b) agVar, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/tenc[0]");
                            this.i = bVar2.b();
                            if (eVar2.a().a()) {
                                eVar = ((com.b.a.a.b) agVar.getParent()).getParent();
                                j2 = eVar2.a().c();
                            } else {
                                eVar = bVar;
                                j2 = 0;
                            }
                            a a3 = new a(eVar2).a();
                            com.mp4parser.iso14496.a.a aVar = a3.f33053b;
                            com.mp4parser.iso14496.a.b bVar3 = a3.f33052a;
                            boolean z = f33050d;
                            if (z || aVar != null) {
                                long[] b2 = aVar.b();
                                if (!z && b2.length != eVar2.a(g.class).size()) {
                                    throw new AssertionError();
                                } else if (z || bVar3 != null) {
                                    List a4 = eVar2.a(g.class);
                                    int i3 = 0;
                                    int i4 = 0;
                                    while (i3 < b2.length) {
                                        int size = ((g) a4.get(i3)).a().size();
                                        long j3 = b2[i3];
                                        int i5 = i4;
                                        long j4 = 0;
                                        while (true) {
                                            i2 = i4 + size;
                                            if (i5 >= i2) {
                                                break;
                                            }
                                            j4 += bVar3.a(i5);
                                            i5++;
                                        }
                                        ByteBuffer a5 = eVar.a(j2 + j3, j4);
                                        while (i4 < i2) {
                                            this.h.add(a(bVar2.a(), a5, bVar3.a(i4)));
                                            i4++;
                                        }
                                        i3++;
                                        i4 = i2;
                                    }
                                    bVar = bVar;
                                } else {
                                    throw new AssertionError();
                                }
                            } else {
                                throw new AssertionError();
                            }
                        }
                    }
                }
                return;
            }
            com.mp4parser.a.a.b bVar4 = (com.mp4parser.a.a.b) j.a((com.googlecode.mp4parser.b) agVar, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/tenc[0]");
            this.i = bVar4.b();
            c cVar = (c) j.a((com.googlecode.mp4parser.b) agVar, "mdia[0]/minf[0]/stbl[0]/stco[0]");
            long[] a6 = agVar.c().d().a((cVar == null ? (c) j.a((com.googlecode.mp4parser.b) agVar, "mdia[0]/minf[0]/stbl[0]/co64[0]") : cVar).a().length);
            a a7 = new a((e) j.a((com.googlecode.mp4parser.b) agVar, "mdia[0]/minf[0]/stbl[0]")).a();
            com.mp4parser.iso14496.a.a aVar2 = a7.f33053b;
            com.mp4parser.iso14496.a.b bVar5 = a7.f33052a;
            e parent = ((r) agVar.getParent()).getParent();
            if (aVar2.b().length == 1) {
                long j5 = aVar2.b()[0];
                if (bVar5.b() > 0) {
                    i = (bVar5.c() * bVar5.b()) + 0;
                } else {
                    i = 0;
                    for (int i6 = 0; i6 < bVar5.c(); i6++) {
                        org.mp4parser.aspectj.lang.a a8 = org.mp4parser.aspectj.a.b.b.a(com.mp4parser.iso14496.a.b.h, bVar5, bVar5);
                        h.a();
                        h.a(a8);
                        short[] sArr = new short[bVar5.f34925b.length];
                        System.arraycopy(bVar5.f34925b, 0, sArr, 0, bVar5.f34925b.length);
                        i += sArr[i6];
                    }
                }
                ByteBuffer a9 = parent.a(j5, i);
                for (int i7 = 0; i7 < bVar5.c(); i7++) {
                    this.h.add(a(bVar4.a(), a9, bVar5.a(i7)));
                }
            } else if (aVar2.b().length == a6.length) {
                int i8 = 0;
                for (int i9 = 0; i9 < a6.length; i9++) {
                    long j6 = aVar2.b()[i9];
                    if (bVar5.b() > 0) {
                        j = (bVar5.c() * a6[i9]) + 0;
                    } else {
                        j = 0;
                        for (int i10 = 0; i10 < a6[i9]; i10++) {
                            j += bVar5.a(i8 + i10);
                        }
                    }
                    ByteBuffer a10 = parent.a(j6, j);
                    for (int i11 = 0; i11 < a6[i9]; i11++) {
                        this.h.add(a(bVar4.a(), a10, bVar5.a(i8 + i11)));
                    }
                    i8 = (int) (i8 + a6[i9]);
                }
            } else {
                throw new RuntimeException("Number of saio offsets must be either 1 or number of chunks");
            }
        } else {
            throw new AssertionError("Track must be CENC (cenc or cbc1) encrypted");
        }
    }

    private static com.mp4parser.a.a.a a(int i, ByteBuffer byteBuffer, long j) {
        com.mp4parser.a.a.a aVar = new com.mp4parser.a.a.a();
        if (j > 0) {
            aVar.f34881a = new byte[i];
            byteBuffer.get(aVar.f34881a);
            if (j > i) {
                aVar.f34882b = new a.j[com.b.a.e.c(byteBuffer)];
                for (int i2 = 0; i2 < aVar.f34882b.length; i2++) {
                    aVar.f34882b[i2] = aVar.a(com.b.a.e.c(byteBuffer), com.b.a.e.a(byteBuffer));
                }
            }
        }
        return aVar;
    }

    @Override // com.googlecode.mp4parser.a.a, com.googlecode.mp4parser.a.g
    public final String f() {
        return "enc(" + super.f() + ")";
    }

    @Override // com.googlecode.mp4parser.a.d.b
    public final List<com.mp4parser.a.a.a> i() {
        return this.h;
    }

    public String toString() {
        return "CencMp4TrackImpl{handler='" + n() + "'}";
    }
}
