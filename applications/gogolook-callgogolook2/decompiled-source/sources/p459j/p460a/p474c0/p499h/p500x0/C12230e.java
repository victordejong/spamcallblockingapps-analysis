package p459j.p460a.p474c0.p499h.p500x0;

import java.io.BufferedOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: j.a.c0.h.x0.e */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/x0/e.class */
public class C12230e extends FilterOutputStream {

    /* renamed from: a */
    public C12226b f27535a;

    /* renamed from: c */
    public int f27537c;

    /* renamed from: d */
    public int f27538d;

    /* renamed from: g */
    public final C12227c f27541g;

    /* renamed from: b */
    public int f27536b = 0;

    /* renamed from: e */
    public final byte[] f27539e = new byte[1];

    /* renamed from: f */
    public final ByteBuffer f27540f = ByteBuffer.allocate(4);

    public C12230e(OutputStream outputStream, C12227c cVar) {
        super(new BufferedOutputStream(outputStream, 65536));
        this.f27541g = cVar;
    }

    /* renamed from: a */
    public static void m6658a(C12236h hVar, C12239k kVar) throws IOException {
        switch (hVar.m6595d()) {
            case 1:
            case 7:
                byte[] bArr = new byte[hVar.m6608b()];
                hVar.m6613a(bArr);
                kVar.write(bArr);
                return;
            case 2:
                byte[] g = hVar.m6589g();
                if (g.length == hVar.m6608b()) {
                    g[g.length - 1] = (byte) 0;
                    kVar.write(g);
                    return;
                }
                kVar.write(g);
                kVar.write(0);
                return;
            case 3:
                int b = hVar.m6608b();
                for (int i = 0; i < b; i++) {
                    kVar.m6569a((short) hVar.m6594d(i));
                }
                return;
            case 4:
            case 9:
                int b2 = hVar.m6608b();
                for (int i2 = 0; i2 < b2; i2++) {
                    kVar.writeInt((int) hVar.m6594d(i2));
                }
                return;
            case 5:
            case 10:
                int b3 = hVar.m6608b();
                for (int i3 = 0; i3 < b3; i3++) {
                    kVar.m6571a(hVar.m6599c(i3));
                }
                return;
            case 6:
            case 8:
            default:
                return;
        }
    }

    /* renamed from: a */
    public final int m6661a() {
        int i;
        C12237i a = this.f27535a.m6703a(0);
        int a2 = m6657a(a, 8);
        a.m6578a(C12227c.m6663i(C12227c.f27416F)).m6588g(a2);
        C12237i a3 = this.f27535a.m6703a(2);
        int a4 = m6657a(a3, a2);
        C12237i a5 = this.f27535a.m6703a(3);
        int i2 = a4;
        if (a5 != null) {
            a3.m6578a(C12227c.m6663i(C12227c.f27501p0)).m6588g(a4);
            i2 = m6657a(a5, a4);
        }
        C12237i a6 = this.f27535a.m6703a(4);
        int i3 = i2;
        if (a6 != null) {
            a.m6578a(C12227c.m6663i(C12227c.f27418G)).m6588g(i2);
            i3 = m6657a(a6, i2);
        }
        C12237i a7 = this.f27535a.m6703a(1);
        int i4 = i3;
        if (a7 != null) {
            a.m6580a(i3);
            i4 = m6657a(a7, i3);
        }
        if (this.f27535a.m6689f()) {
            a7.m6578a(C12227c.m6663i(C12227c.f27420H)).m6588g(i4);
            i = i4 + this.f27535a.m6691d().length;
        } else {
            i = i4;
            if (this.f27535a.m6688g()) {
                long[] jArr = new long[this.f27535a.m6690e()];
                for (int i5 = 0; i5 < this.f27535a.m6690e(); i5++) {
                    jArr[i5] = i4;
                    i4 += this.f27535a.m6692c(i5).length;
                }
                a7.m6578a(C12227c.m6663i(C12227c.f27488l)).m6602b(jArr);
                i = i4;
            }
        }
        return i;
    }

    /* renamed from: a */
    public final int m6660a(int i, byte[] bArr, int i2, int i3) {
        int position = i - this.f27540f.position();
        if (i3 <= position) {
            position = i3;
        }
        this.f27540f.put(bArr, i2, position);
        return position;
    }

    /* renamed from: a */
    public final int m6657a(C12237i iVar, int i) {
        C12236h[] a;
        int d = i + (iVar.m6574d() * 12) + 2 + 4;
        for (C12236h hVar : iVar.m6581a()) {
            d = d;
            if (hVar.m6600c() > 4) {
                hVar.m6590f(d);
                d += hVar.m6600c();
            }
        }
        return d;
    }

    /* renamed from: a */
    public void m6659a(C12226b bVar) {
        this.f27535a = bVar;
    }

    /* renamed from: a */
    public final void m6656a(C12237i iVar, C12239k kVar) throws IOException {
        C12236h[] a = iVar.m6581a();
        kVar.m6569a((short) a.length);
        for (C12236h hVar : a) {
            kVar.m6569a(hVar.m6587h());
            kVar.m6569a(hVar.m6595d());
            kVar.writeInt(hVar.m6608b());
            if (hVar.m6600c() > 4) {
                kVar.writeInt(hVar.m6591f());
            } else {
                m6658a(hVar, kVar);
                int c = hVar.m6600c();
                for (int i = 0; i < 4 - c; i++) {
                    kVar.write(0);
                }
            }
        }
        kVar.writeInt(iVar.m6575c());
        for (C12236h hVar2 : a) {
            if (hVar2.m6600c() > 4) {
                m6658a(hVar2, kVar);
            }
        }
    }

    /* renamed from: a */
    public final void m6655a(C12239k kVar) throws IOException {
        m6656a(this.f27535a.m6703a(0), kVar);
        m6656a(this.f27535a.m6703a(2), kVar);
        C12237i a = this.f27535a.m6703a(3);
        if (a != null) {
            m6656a(a, kVar);
        }
        C12237i a2 = this.f27535a.m6703a(4);
        if (a2 != null) {
            m6656a(a2, kVar);
        }
        if (this.f27535a.m6703a(1) != null) {
            m6656a(this.f27535a.m6703a(1), kVar);
        }
    }

    /* renamed from: b */
    public final ArrayList<C12236h> m6653b(C12226b bVar) {
        ArrayList<C12236h> arrayList = new ArrayList<>();
        if (bVar.m6696b() == null) {
            return arrayList;
        }
        for (C12236h hVar : bVar.m6696b()) {
            if (hVar.m6585i() == null && !C12227c.m6679a(hVar.m6587h())) {
                bVar.m6694b(hVar.m6587h(), hVar.m6593e());
                arrayList.add(hVar);
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public final void m6654b() throws IOException {
        C12237i a = this.f27535a.m6703a(0);
        C12237i iVar = a;
        if (a == null) {
            iVar = new C12237i(0);
            this.f27535a.m6699a(iVar);
        }
        C12236h a2 = this.f27541g.m6686a(C12227c.f27416F);
        if (a2 != null) {
            iVar.m6579a(a2);
            C12237i a3 = this.f27535a.m6703a(2);
            C12237i iVar2 = a3;
            if (a3 == null) {
                iVar2 = new C12237i(2);
                this.f27535a.m6699a(iVar2);
            }
            if (this.f27535a.m6703a(4) != null) {
                C12236h a4 = this.f27541g.m6686a(C12227c.f27418G);
                if (a4 != null) {
                    iVar.m6579a(a4);
                } else {
                    throw new IOException("No definition for crucial exif tag: " + C12227c.f27418G);
                }
            }
            if (this.f27535a.m6703a(3) != null) {
                C12236h a5 = this.f27541g.m6686a(C12227c.f27501p0);
                if (a5 != null) {
                    iVar2.m6579a(a5);
                } else {
                    throw new IOException("No definition for crucial exif tag: " + C12227c.f27501p0);
                }
            }
            C12237i a6 = this.f27535a.m6703a(1);
            if (this.f27535a.m6689f()) {
                C12237i iVar3 = a6;
                if (a6 == null) {
                    iVar3 = new C12237i(1);
                    this.f27535a.m6699a(iVar3);
                }
                C12236h a7 = this.f27541g.m6686a(C12227c.f27420H);
                if (a7 != null) {
                    iVar3.m6579a(a7);
                    C12236h a8 = this.f27541g.m6686a(C12227c.f27422I);
                    if (a8 != null) {
                        a8.m6588g(this.f27535a.m6691d().length);
                        iVar3.m6579a(a8);
                        iVar3.m6576b(C12227c.m6663i(C12227c.f27488l));
                        iVar3.m6576b(C12227c.m6663i(C12227c.f27500p));
                        return;
                    }
                    throw new IOException("No definition for crucial exif tag: " + C12227c.f27422I);
                }
                throw new IOException("No definition for crucial exif tag: " + C12227c.f27420H);
            } else if (this.f27535a.m6688g()) {
                C12237i iVar4 = a6;
                if (a6 == null) {
                    iVar4 = new C12237i(1);
                    this.f27535a.m6699a(iVar4);
                }
                int e = this.f27535a.m6690e();
                C12236h a9 = this.f27541g.m6686a(C12227c.f27488l);
                if (a9 != null) {
                    C12236h a10 = this.f27541g.m6686a(C12227c.f27500p);
                    if (a10 != null) {
                        long[] jArr = new long[e];
                        for (int i = 0; i < this.f27535a.m6690e(); i++) {
                            jArr[i] = this.f27535a.m6692c(i).length;
                        }
                        a10.m6602b(jArr);
                        iVar4.m6579a(a9);
                        iVar4.m6579a(a10);
                        iVar4.m6576b(C12227c.m6663i(C12227c.f27420H));
                        iVar4.m6576b(C12227c.m6663i(C12227c.f27422I));
                        return;
                    }
                    throw new IOException("No definition for crucial exif tag: " + C12227c.f27500p);
                }
                throw new IOException("No definition for crucial exif tag: " + C12227c.f27488l);
            } else if (a6 != null) {
                a6.m6576b(C12227c.m6663i(C12227c.f27488l));
                a6.m6576b(C12227c.m6663i(C12227c.f27500p));
                a6.m6576b(C12227c.m6663i(C12227c.f27420H));
                a6.m6576b(C12227c.m6663i(C12227c.f27422I));
            }
        } else {
            throw new IOException("No definition for crucial exif tag: " + C12227c.f27416F);
        }
    }

    /* renamed from: b */
    public final void m6652b(C12239k kVar) throws IOException {
        if (this.f27535a.m6689f()) {
            kVar.write(this.f27535a.m6691d());
        } else if (this.f27535a.m6688g()) {
            for (int i = 0; i < this.f27535a.m6690e(); i++) {
                kVar.write(this.f27535a.m6692c(i));
            }
        }
    }

    /* renamed from: c */
    public final void m6651c() throws IOException {
        C12226b bVar = this.f27535a;
        if (bVar != null) {
            ArrayList<C12236h> b = m6653b(bVar);
            m6654b();
            int a = m6661a() + 8;
            if (a <= 65535) {
                C12239k kVar = new C12239k(((FilterOutputStream) this).out);
                kVar.m6570a(ByteOrder.BIG_ENDIAN);
                kVar.m6569a((short) -31);
                kVar.m6569a((short) a);
                kVar.writeInt(1165519206);
                kVar.m6569a((short) 0);
                if (this.f27535a.m6693c() == ByteOrder.BIG_ENDIAN) {
                    kVar.m6569a((short) 19789);
                } else {
                    kVar.m6569a((short) 18761);
                }
                kVar.m6570a(this.f27535a.m6693c());
                kVar.m6569a((short) 42);
                kVar.writeInt(8);
                m6655a(kVar);
                m6652b(kVar);
                Iterator<C12236h> it = b.iterator();
                while (it.hasNext()) {
                    this.f27535a.m6701a(it.next());
                }
                return;
            }
            throw new IOException("Exif header is too large (>64Kb)");
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.f27539e;
        bArr[0] = (byte) (i & 255);
        write(bArr);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x01db, code lost:
        if (r9 <= 0) goto L_?;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01de, code lost:
        ((java.io.FilterOutputStream) r6).out.write(r7, r8, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01e8, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:?, code lost:
        return;
     */
    @Override // java.io.FilterOutputStream, java.io.OutputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(byte[] r7, int r8, int r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p499h.p500x0.C12230e.write(byte[], int, int):void");
    }
}
