package p081h.p119d.p120a.p124s.p134k.p141k;

import android.graphics.Bitmap;
import java.io.ByteArrayOutputStream;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
import p081h.p119d.p120a.p124s.p134k.p136f.C5977a;
/* renamed from: h.d.a.s.k.k.a */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/k/a.class */
public class C6016a implements AbstractC6019d<Bitmap, byte[]> {

    /* renamed from: a */
    public final Bitmap.CompressFormat f15005a;

    /* renamed from: b */
    public final int f15006b;

    public C6016a(Bitmap.CompressFormat compressFormat, int i) {
        this.f15005a = compressFormat;
        this.f15006b = i;
    }

    @Override // p081h.p119d.p120a.p124s.p134k.p141k.AbstractC6019d
    /* renamed from: a */
    public AbstractC5848l<byte[]> mo24021a(AbstractC5848l<Bitmap> lVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        lVar.get().compress(this.f15005a, this.f15006b, byteArrayOutputStream);
        lVar.mo24036b();
        return new C5977a(byteArrayOutputStream.toByteArray());
    }

    @Override // p081h.p119d.p120a.p124s.p134k.p141k.AbstractC6019d
    public String getId() {
        return "BitmapBytesTranscoder.com.bumptech.glide.load.resource.transcode";
    }
}
