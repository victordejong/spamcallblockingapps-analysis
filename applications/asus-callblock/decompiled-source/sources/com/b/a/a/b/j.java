package com.b.a.a.b;

import b.e;
import b.f;
import b.h;
import b.k;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.Inflater;
/* loaded from: classes-dex2jar.jar:com/b/a/a/b/j.class */
final class j {

    /* renamed from: a  reason: collision with root package name */
    int f3250a;

    /* renamed from: b  reason: collision with root package name */
    final e f3251b;
    private final b.j c;

    public j(e eVar) {
        this.c = new b.j(new h(eVar) { // from class: com.b.a.a.b.j.1
            /* JADX WARN: Type inference failed for: r0v5, types: [long] */
            /* JADX WARN: Unknown variable types count: 1 */
            @Override // b.h, b.q
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final long a(b.c r8, long r9) {
                /*
                    r7 = this;
                    r0 = -1
                    r11 = r0
                    r0 = r7
                    com.b.a.a.b.j r0 = com.b.a.a.b.j.this
                    int r0 = r0.f3250a
                    if (r0 != 0) goto L_0x0014
                    r0 = r11
                    r9 = r0
                L_0x0012:
                    r0 = r9
                    return r0
                L_0x0014:
                    r0 = r7
                    r1 = r8
                    r2 = r9
                    r3 = r7
                    com.b.a.a.b.j r3 = com.b.a.a.b.j.this
                    int r3 = r3.f3250a
                    long r3 = (long) r3
                    long r2 = java.lang.Math.min(r2, r3)
                    long r0 = super.a(r1, r2)
                    r13 = r0
                    r0 = r11
                    r9 = r0
                    r0 = r13
                    r1 = -1
                    int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                    if (r0 == 0) goto L_0x0012
                    r0 = r7
                    com.b.a.a.b.j r0 = com.b.a.a.b.j.this
                    r1 = r7
                    com.b.a.a.b.j r1 = com.b.a.a.b.j.this
                    int r1 = r1.f3250a
                    long r1 = (long) r1
                    r2 = r13
                    long r1 = r1 - r2
                    int r1 = (int) r1
                    r0.f3250a = r1
                    r0 = r13
                    r9 = r0
                    goto L_0x0012
                */
                throw new UnsupportedOperationException("Method not decompiled: com.b.a.a.b.j.AnonymousClass1.a(b.c, long):long");
            }
        }, new Inflater() { // from class: com.b.a.a.b.j.2
            @Override // java.util.zip.Inflater
            public final int inflate(byte[] bArr, int i, int i2) {
                int inflate = super.inflate(bArr, i, i2);
                int i3 = inflate;
                if (inflate == 0) {
                    i3 = inflate;
                    if (needsDictionary()) {
                        setDictionary(n.f3259a);
                        i3 = super.inflate(bArr, i, i2);
                    }
                }
                return i3;
            }
        });
        this.f3251b = k.a(this.c);
    }

    private f a() {
        return this.f3251b.d(this.f3251b.g());
    }

    public final List<d> a(int i) {
        this.f3250a += i;
        int g = this.f3251b.g();
        if (g < 0) {
            throw new IOException("numberOfPairs < 0: " + g);
        } else if (g > 1024) {
            throw new IOException("numberOfPairs > 1024: " + g);
        } else {
            ArrayList arrayList = new ArrayList(g);
            for (int i2 = 0; i2 < g; i2++) {
                f c = a().c();
                f a2 = a();
                if (c.c.length == 0) {
                    throw new IOException("name.size == 0");
                }
                arrayList.add(new d(c, a2));
            }
            if (this.f3250a > 0) {
                this.c.b();
                if (this.f3250a != 0) {
                    throw new IOException("compressedLimit > 0: " + this.f3250a);
                }
            }
            return arrayList;
        }
    }
}
