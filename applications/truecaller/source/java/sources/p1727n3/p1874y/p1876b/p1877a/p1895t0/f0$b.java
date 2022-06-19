package p1727n3.p1874y.p1876b.p1877a.p1895t0;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.b.a.t0.f0$b */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/f0$b.class */
public final class f0$b {

    /* renamed from: a */
    public final AbstractC27179g[] f76912a;

    /* renamed from: b */
    public AbstractC27179g f76913b;

    public f0$b(AbstractC27179g[] abstractC27179gArr) {
        this.f76912a = abstractC27179gArr;
    }

    /* renamed from: a */
    public AbstractC27179g m500a(C27176d c27176d, AbstractC27180h abstractC27180h, Uri uri) throws IOException, InterruptedException {
        AbstractC27179g abstractC27179g = this.f76913b;
        if (abstractC27179g != null) {
            return abstractC27179g;
        }
        AbstractC27179g[] abstractC27179gArr = this.f76912a;
        if (abstractC27179gArr.length == 1) {
            this.f76913b = abstractC27179gArr[0];
        } else {
            int length = abstractC27179gArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                AbstractC27179g abstractC27179g2 = abstractC27179gArr[i];
                try {
                } catch (EOFException e) {
                } catch (Throwable th) {
                    c27176d.f76033f = 0;
                    throw th;
                }
                if (abstractC27179g2.mo604h(c27176d)) {
                    this.f76913b = abstractC27179g2;
                    c27176d.f76033f = 0;
                    break;
                }
                continue;
                c27176d.f76033f = 0;
                i++;
            }
            if (this.f76913b == null) {
                AbstractC27179g[] abstractC27179gArr2 = this.f76912a;
                int i2 = C27445x.f77229a;
                StringBuilder sb = new StringBuilder();
                for (int i3 = 0; i3 < abstractC27179gArr2.length; i3++) {
                    sb.append(abstractC27179gArr2[i3].getClass().getSimpleName());
                    if (i3 < abstractC27179gArr2.length - 1) {
                        sb.append(", ");
                    }
                }
                String sb2 = sb.toString();
                throw new n0(C22128a.m8671R1(C22128a.m8623f2(sb2, 58), "None of the available extractors (", sb2, ") could read the stream."), uri);
            }
        }
        this.f76913b.mo605d(abstractC27180h);
        return this.f76913b;
    }
}
