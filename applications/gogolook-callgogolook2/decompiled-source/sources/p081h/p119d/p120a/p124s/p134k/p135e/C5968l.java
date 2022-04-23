package p081h.p119d.p120a.p124s.p134k.p135e;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import java.io.InputStream;
import p081h.p119d.p120a.p124s.AbstractC5808e;
import p081h.p119d.p120a.p124s.p131j.C5909g;
/* renamed from: h.d.a.s.k.e.l */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/e/l.class */
public class C5968l implements AbstractC5808e<C5909g, Bitmap> {

    /* renamed from: a */
    public final AbstractC5808e<InputStream, Bitmap> f14897a;

    /* renamed from: b */
    public final AbstractC5808e<ParcelFileDescriptor, Bitmap> f14898b;

    public C5968l(AbstractC5808e<InputStream, Bitmap> eVar, AbstractC5808e<ParcelFileDescriptor, Bitmap> eVar2) {
        this.f14897a = eVar;
        this.f14898b = eVar2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0032  */
    /* renamed from: a  reason: avoid collision after fix types in other method */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p081h.p119d.p120a.p124s.p126i.AbstractC5848l<android.graphics.Bitmap> mo24025a(p081h.p119d.p120a.p124s.p131j.C5909g r6, int r7, int r8) throws java.io.IOException {
        /*
            r5 = this;
            r0 = r6
            java.io.InputStream r0 = r0.m24149b()
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0026
            r0 = r5
            h.d.a.s.e<java.io.InputStream, android.graphics.Bitmap> r0 = r0.f14897a     // Catch: IOException -> 0x001d
            r1 = r9
            r2 = r7
            r3 = r8
            h.d.a.s.i.l r0 = r0.mo24025a(r1, r2, r3)     // Catch: IOException -> 0x001d
            r9 = r0
            goto L_0x0029
        L_0x001d:
            r9 = move-exception
            java.lang.String r0 = "ImageVideoDecoder"
            r1 = 2
            boolean r0 = android.util.Log.isLoggable(r0, r1)
        L_0x0026:
            r0 = 0
            r9 = r0
        L_0x0029:
            r0 = r9
            r10 = r0
            r0 = r9
            if (r0 != 0) goto L_0x004d
            r0 = r6
            android.os.ParcelFileDescriptor r0 = r0.m24150a()
            r6 = r0
            r0 = r9
            r10 = r0
            r0 = r6
            if (r0 == 0) goto L_0x004d
            r0 = r5
            h.d.a.s.e<android.os.ParcelFileDescriptor, android.graphics.Bitmap> r0 = r0.f14898b
            r1 = r6
            r2 = r7
            r3 = r8
            h.d.a.s.i.l r0 = r0.mo24025a(r1, r2, r3)
            r10 = r0
        L_0x004d:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p119d.p120a.p124s.p134k.p135e.C5968l.mo24025a(h.d.a.s.j.g, int, int):h.d.a.s.i.l");
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5808e
    public String getId() {
        return "ImageVideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap";
    }
}
