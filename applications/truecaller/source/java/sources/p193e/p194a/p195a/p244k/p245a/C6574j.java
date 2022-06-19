package p193e.p194a.p195a.p244k.p245a;

import android.graphics.Bitmap;
import java.io.OutputStream;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.k.a.j */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/j.class */
public final class C6574j extends m implements l<OutputStream, s> {

    /* renamed from: b */
    public final /* synthetic */ Bitmap f21674b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6574j(Bitmap bitmap) {
        super(1);
        this.f21674b = bitmap;
    }

    /* renamed from: d */
    public Object m30761d(Object obj) {
        OutputStream outputStream = (OutputStream) obj;
        s1.z.c.l.e(outputStream, "out");
        this.f21674b.compress(Bitmap.CompressFormat.JPEG, 100, outputStream);
        return s.a;
    }
}
