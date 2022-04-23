package p081h.p119d.p120a.p124s.p134k.p135e;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
import p081h.p119d.p120a.p124s.EnumC5804a;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
/* renamed from: h.d.a.s.k.e.r */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/e/r.class */
public class C5975r implements AbstractC5953a<ParcelFileDescriptor> {

    /* renamed from: c */
    public static final C5976a f14916c = new C5976a();

    /* renamed from: a */
    public C5976a f14917a;

    /* renamed from: b */
    public int f14918b;

    /* renamed from: h.d.a.s.k.e.r$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/k/e/r$a.class */
    public static class C5976a {
        /* renamed from: a */
        public MediaMetadataRetriever m24089a() {
            return new MediaMetadataRetriever();
        }
    }

    public C5975r() {
        this(f14916c, -1);
    }

    public C5975r(C5976a aVar, int i) {
        this.f14917a = aVar;
        this.f14918b = i;
    }

    /* renamed from: a */
    public Bitmap m24090a(ParcelFileDescriptor parcelFileDescriptor, AbstractC5856c cVar, int i, int i2, EnumC5804a aVar) throws IOException {
        MediaMetadataRetriever a = this.f14917a.m24089a();
        a.setDataSource(parcelFileDescriptor.getFileDescriptor());
        int i3 = this.f14918b;
        Bitmap frameAtTime = i3 >= 0 ? a.getFrameAtTime(i3) : a.getFrameAtTime();
        a.release();
        parcelFileDescriptor.close();
        return frameAtTime;
    }
}
