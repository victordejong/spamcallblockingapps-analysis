package p193e.p1451f.p1452a.p1457n.p1466q;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import e.f.a.n.q.d.d;
import java.io.IOException;
import p193e.p1451f.p1452a.p1457n.AbstractC22269k;
import p193e.p1451f.p1452a.p1457n.C22264h;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.EnumC22259b;
import p193e.p1451f.p1452a.p1457n.EnumC22268j;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.AbstractC22505m;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22490e;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22512n;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22517t;
/* renamed from: e.f.a.n.q.a */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/a.class */
public abstract class AbstractC22478a<T> implements AbstractC22269k<ImageDecoder.Source, T> {

    /* renamed from: a */
    public final C22517t f62336a = C22517t.m8175a();

    /* renamed from: e.f.a.n.q.a$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/a$a.class */
    public class C22479a implements ImageDecoder.OnHeaderDecodedListener {

        /* renamed from: a */
        public final /* synthetic */ int f62337a;

        /* renamed from: b */
        public final /* synthetic */ int f62338b;

        /* renamed from: c */
        public final /* synthetic */ boolean f62339c;

        /* renamed from: d */
        public final /* synthetic */ EnumC22259b f62340d;

        /* renamed from: e */
        public final /* synthetic */ AbstractC22505m f62341e;

        /* renamed from: f */
        public final /* synthetic */ EnumC22268j f62342f;

        /* renamed from: e.f.a.n.q.a$a$a */
        /* loaded from: classes-dex2jar.jar:e/f/a/n/q/a$a$a.class */
        public class C22480a implements ImageDecoder.OnPartialImageListener {
            public C22480a(C22479a c22479a) {
            }

            @Override // android.graphics.ImageDecoder.OnPartialImageListener
            public boolean onPartialImage(ImageDecoder.DecodeException decodeException) {
                return false;
            }
        }

        public C22479a(int i, int i2, boolean z, EnumC22259b enumC22259b, AbstractC22505m abstractC22505m, EnumC22268j enumC22268j) {
            AbstractC22478a.this = r4;
            this.f62337a = i;
            this.f62338b = i2;
            this.f62339c = z;
            this.f62340d = enumC22259b;
            this.f62341e = abstractC22505m;
            this.f62342f = enumC22268j;
        }

        @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
        public void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
            if (AbstractC22478a.this.f62336a.m8174b(this.f62337a, this.f62338b, this.f62339c, false)) {
                imageDecoder.setAllocator(3);
            } else {
                imageDecoder.setAllocator(1);
            }
            if (this.f62340d == EnumC22259b.PREFER_RGB_565) {
                imageDecoder.setMemorySizePolicy(0);
            }
            imageDecoder.setOnPartialImageListener(new C22480a(this));
            Size size = imageInfo.getSize();
            int i = this.f62337a;
            int i2 = i;
            if (i == Integer.MIN_VALUE) {
                i2 = size.getWidth();
            }
            int i3 = this.f62338b;
            int i4 = i3;
            if (i3 == Integer.MIN_VALUE) {
                i4 = size.getHeight();
            }
            float mo8190b = this.f62341e.mo8190b(size.getWidth(), size.getHeight(), i2, i4);
            int round = Math.round(size.getWidth() * mo8190b);
            int round2 = Math.round(mo8190b * size.getHeight());
            if (Log.isLoggable("ImageDecoder", 2)) {
                size.getWidth();
                size.getHeight();
            }
            imageDecoder.setTargetSize(round, round2);
            int i5 = Build.VERSION.SDK_INT;
            if (i5 < 28) {
                if (i5 < 26) {
                    return;
                }
                imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
                return;
            }
            boolean z = false;
            if (this.f62342f == EnumC22268j.DISPLAY_P3) {
                z = false;
                if (imageInfo.getColorSpace() != null) {
                    z = false;
                    if (imageInfo.getColorSpace().isWideGamut()) {
                        z = true;
                    }
                }
            }
            imageDecoder.setTargetColorSpace(ColorSpace.get(z ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: a */
    public /* bridge */ /* synthetic */ boolean mo8147a(ImageDecoder.Source source, C22267i c22267i) throws IOException {
        return true;
    }

    /* renamed from: c */
    public final AbstractC22394w<T> mo8146b(ImageDecoder.Source source, int i, int i2, C22267i c22267i) throws IOException {
        EnumC22259b enumC22259b = (EnumC22259b) c22267i.m8361c(C22512n.f62386f);
        AbstractC22505m abstractC22505m = (AbstractC22505m) c22267i.m8361c(AbstractC22505m.f62381g);
        C22264h<Boolean> c22264h = C22512n.f62389i;
        C22479a c22479a = new C22479a(i, i2, c22267i.m8361c(c22264h) != null && ((Boolean) c22267i.m8361c(c22264h)).booleanValue(), enumC22259b, abstractC22505m, (EnumC22268j) c22267i.m8361c(C22512n.f62387g));
        d dVar = (d) this;
        Bitmap decodeBitmap = ImageDecoder.decodeBitmap(source, c22479a);
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            decodeBitmap.getWidth();
            decodeBitmap.getHeight();
        }
        return new C22490e(decodeBitmap, dVar.b);
    }
}
