package p131c.p161d.p170b.p188c.p201f1;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.upstream.Loader;
import java.io.FileNotFoundException;
import java.io.IOException;
/* renamed from: c.d.b.c.f1.o */
/* loaded from: classes-dex2jar.jar:c/d/b/c/f1/o.class */
public class C2836o implements AbstractC2838q {

    /* renamed from: a */
    public final int f10329a;

    public C2836o() {
        this(-1);
    }

    public C2836o(int i) {
        this.f10329a = i;
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2838q
    /* renamed from: a */
    public int mo28896a(int i) {
        int i2 = this.f10329a;
        if (i2 != -1) {
            return i2;
        }
        return i == 7 ? 6 : 3;
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2838q
    /* renamed from: a */
    public long mo28895a(int i, long j, IOException iOException, int i2) {
        return ((iOException instanceof ParserException) || (iOException instanceof FileNotFoundException) || (iOException instanceof Loader.UnexpectedLoaderException)) ? -9223372036854775807L : Math.min((i2 - 1) * 1000, 5000);
    }
}
