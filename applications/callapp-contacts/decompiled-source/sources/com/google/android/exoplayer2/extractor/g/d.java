package com.google.android.exoplayer2.extractor.g;

import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.u;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/d.class */
final class d {

    /* renamed from: a  reason: collision with root package name */
    final e f21119a = new e();

    /* renamed from: b  reason: collision with root package name */
    final u f21120b = new u(new byte[65025], 0);

    /* renamed from: c  reason: collision with root package name */
    int f21121c = -1;

    /* renamed from: d  reason: collision with root package name */
    boolean f21122d;
    private int e;

    private int a(int i) {
        int i2;
        int i3;
        int i4 = 0;
        this.e = 0;
        do {
            i2 = i4;
            if (this.e + i >= this.f21119a.g) {
                break;
            }
            int[] iArr = this.f21119a.j;
            int i5 = this.e;
            this.e = i5 + 1;
            i3 = iArr[i5 + i];
            i2 = i4 + i3;
            i4 = i2;
        } while (i3 == 255);
        return i2;
    }

    public final boolean a(i iVar) throws IOException {
        int i;
        a.b(iVar != null);
        if (this.f21122d) {
            this.f21122d = false;
            this.f21120b.a(0);
        }
        while (!this.f21122d) {
            if (this.f21121c < 0) {
                if (!this.f21119a.a(iVar) || !this.f21119a.a(iVar, true)) {
                    return false;
                }
                int i2 = this.f21119a.h;
                if ((this.f21119a.f21124b & 1) == 1 && this.f21120b.f22337c == 0) {
                    i2 += a(0);
                    i = this.e + 0;
                } else {
                    i = 0;
                }
                iVar.b(i2);
                this.f21121c = i;
            }
            int a2 = a(this.f21121c);
            int i3 = this.f21121c + this.e;
            if (a2 > 0) {
                u uVar = this.f21120b;
                uVar.b(uVar.f22337c + a2);
                iVar.b(this.f21120b.f22335a, this.f21120b.f22337c, a2);
                u uVar2 = this.f21120b;
                uVar2.c(uVar2.f22337c + a2);
                this.f21122d = this.f21119a.j[i3 - 1] != 255;
            }
            int i4 = i3;
            if (i3 == this.f21119a.g) {
                i4 = -1;
            }
            this.f21121c = i4;
        }
        return true;
    }
}
