package p081h.p119d.p120a.p124s.p134k.p135e;

import android.graphics.Bitmap;
import android.util.Log;
import java.io.OutputStream;
import p081h.p119d.p120a.p124s.AbstractC5809f;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
import p081h.p119d.p120a.p149y.C6092d;
import p081h.p119d.p120a.p149y.C6096h;
/* renamed from: h.d.a.s.k.e.b */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/e/b.class */
public class C5954b implements AbstractC5809f<Bitmap> {

    /* renamed from: a */
    public Bitmap.CompressFormat f14870a;

    /* renamed from: b */
    public int f14871b;

    public C5954b() {
        this(null, 90);
    }

    public C5954b(Bitmap.CompressFormat compressFormat, int i) {
        this.f14870a = compressFormat;
        this.f14871b = i;
    }

    /* renamed from: a */
    public final Bitmap.CompressFormat m24123a(Bitmap bitmap) {
        Bitmap.CompressFormat compressFormat = this.f14870a;
        return compressFormat != null ? compressFormat : bitmap.hasAlpha() ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
    }

    /* renamed from: a */
    public boolean mo24027a(AbstractC5848l<Bitmap> lVar, OutputStream outputStream) {
        Bitmap bitmap = lVar.get();
        long a = C6092d.m23879a();
        Bitmap.CompressFormat a2 = m24123a(bitmap);
        bitmap.compress(a2, this.f14871b, outputStream);
        if (!Log.isLoggable("BitmapEncoder", 2)) {
            return true;
        }
        String str = "Compressed with type: " + a2 + " of size " + C6096h.m23860a(bitmap) + " in " + C6092d.m23878a(a);
        return true;
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5805b
    public String getId() {
        return "BitmapEncoder.com.bumptech.glide.load.resource.bitmap";
    }
}
