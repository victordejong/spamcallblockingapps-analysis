package androidx.media2.exoplayer.external.extractor.d;

import androidx.media2.exoplayer.external.extractor.h;
import androidx.media2.exoplayer.external.util.a;
import androidx.media2.exoplayer.external.util.p;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/e.class */
final class e {

    /* renamed from: a  reason: collision with root package name */
    final f f3096a = new f();

    /* renamed from: b  reason: collision with root package name */
    final p f3097b = new p(new byte[65025], 0);

    /* renamed from: c  reason: collision with root package name */
    int f3098c = -1;

    /* renamed from: d  reason: collision with root package name */
    boolean f3099d;
    private int e;

    private int a(int i) {
        int i2;
        int i3;
        int i4 = 0;
        this.e = 0;
        do {
            i2 = i4;
            if (this.e + i >= this.f3096a.g) {
                break;
            }
            int[] iArr = this.f3096a.j;
            int i5 = this.e;
            this.e = i5 + 1;
            i3 = iArr[i5 + i];
            i2 = i4 + i3;
            i4 = i2;
        } while (i3 == 255);
        return i2;
    }

    public final boolean a(h hVar) throws IOException, InterruptedException {
        int i;
        a.b(hVar != null);
        if (this.f3099d) {
            this.f3099d = false;
            this.f3097b.a();
        }
        while (!this.f3099d) {
            if (this.f3098c < 0) {
                if (!this.f3096a.a(hVar, true)) {
                    return false;
                }
                int i2 = this.f3096a.h;
                if ((this.f3096a.f3101b & 1) == 1 && this.f3097b.f4168c == 0) {
                    i2 += a(0);
                    i = this.e + 0;
                } else {
                    i = 0;
                }
                hVar.b(i2);
                this.f3098c = i;
            }
            int a2 = a(this.f3098c);
            int i3 = this.f3098c + this.e;
            if (a2 > 0) {
                if (this.f3097b.f4166a.length < this.f3097b.f4168c + a2) {
                    p pVar = this.f3097b;
                    pVar.f4166a = Arrays.copyOf(pVar.f4166a, this.f3097b.f4168c + a2);
                }
                hVar.b(this.f3097b.f4166a, this.f3097b.f4168c, a2);
                p pVar2 = this.f3097b;
                pVar2.b(pVar2.f4168c + a2);
                this.f3099d = this.f3096a.j[i3 - 1] != 255;
            }
            int i4 = i3;
            if (i3 == this.f3096a.g) {
                i4 = -1;
            }
            this.f3098c = i4;
        }
        return true;
    }
}
