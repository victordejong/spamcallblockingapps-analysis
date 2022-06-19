package p193e.p194a.p1406z3.p1408h;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import com.tenor.android.core.constant.StringConstant;
import e.f.a.n.q.d.f;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22303d;
import s1.z.c.l;
/* renamed from: e.a.z3.h.a */
/* loaded from: classes9-dex2jar.jar:e/a/z3/h/a.class */
public final class C21867a extends f {

    /* renamed from: b */
    public final byte[] f60752b;

    /* renamed from: c */
    public final int f60753c;

    public C21867a(int i) {
        this.f60753c = i;
        Charset forName = Charset.forName(StringConstant.UTF8);
        l.d(forName, "Charset.forName(\"UTF-8\")");
        byte[] bytes = "com.truecaller.glide.transform.FillAlphaTransformation".getBytes(forName);
        l.d(bytes, "(this as java.lang.String).getBytes(charset)");
        this.f60752b = bytes;
    }

    /* renamed from: b */
    public void m8956b(MessageDigest messageDigest) {
        l.e(messageDigest, "messageDigest");
        messageDigest.update(this.f60752b);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f60753c).array());
    }

    /* renamed from: c */
    public Bitmap m8955c(AbstractC22303d abstractC22303d, Bitmap bitmap, int i, int i2) {
        l.e(abstractC22303d, "pool");
        l.e(bitmap, "toTransform");
        if (!bitmap.hasAlpha()) {
            return bitmap;
        }
        Bitmap mo8325e = abstractC22303d.mo8325e(i, i2, bitmap.getConfig());
        l.d(mo8325e, "pool.get(outWidth, outHeight, toTransform.config)");
        Canvas canvas = new Canvas(mo8325e);
        canvas.drawBitmap(bitmap, (Rect) null, new Rect(0, 0, i, i2), (Paint) null);
        canvas.drawColor(this.f60753c, PorterDuff.Mode.DST_ATOP);
        return mo8325e;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C21867a) {
            z = false;
            if (this.f60753c == ((C21867a) obj).f60753c) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        return (this.f60753c * 31) + 408671249;
    }
}
