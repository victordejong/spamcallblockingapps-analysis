package p107g9;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import java.io.IOException;
import java.util.Objects;
import p011aa.AbstractC0074y;
import p107g9.C2953s;
/* renamed from: g9.x */
/* loaded from: classes2-dex2jar.jar:g9/x.class */
public abstract class AbstractC2968x {

    /* renamed from: g9.x$a */
    /* loaded from: classes2-dex2jar.jar:g9/x$a.class */
    public static final class C2969a {

        /* renamed from: a */
        public final C2953s.EnumC2958d f9983a;

        /* renamed from: b */
        public final Bitmap f9984b;

        /* renamed from: c */
        public final AbstractC0074y f9985c;

        /* renamed from: d */
        public final int f9986d;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public C2969a(AbstractC0074y abstractC0074y, C2953s.EnumC2958d enumC2958d) {
            this(null, abstractC0074y, enumC2958d, 0);
            StringBuilder sb = C2929d0.f9877a;
            Objects.requireNonNull(abstractC0074y, "source == null");
        }

        public C2969a(Bitmap bitmap, AbstractC0074y abstractC0074y, C2953s.EnumC2958d enumC2958d, int i) {
            if ((bitmap != null) != (abstractC0074y != null)) {
                this.f9984b = bitmap;
                this.f9985c = abstractC0074y;
                StringBuilder sb = C2929d0.f9877a;
                Objects.requireNonNull(enumC2958d, "loadedFrom == null");
                this.f9983a = enumC2958d;
                this.f9986d = i;
                return;
            }
            throw new AssertionError();
        }
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [double] */
    /* JADX WARN: Type inference failed for: r0v34, types: [double] */
    /* renamed from: a */
    public static void m2805a(int i, int i2, int i3, int i4, BitmapFactory.Options options, C2964v c2964v) {
        int i5;
        char c;
        if (i4 > i2 || i3 > i) {
            if (i2 == 0) {
                c = Math.floor(i3 / i);
            } else if (i == 0) {
                c = Math.floor(i4 / i2);
            } else {
                int floor = (int) Math.floor(i4 / i2);
                int floor2 = (int) Math.floor(i3 / i);
                i5 = c2964v.f9963j ? Math.max(floor, floor2) : Math.min(floor, floor2);
            }
            i5 = c;
        } else {
            i5 = 1;
        }
        options.inSampleSize = i5;
        options.inJustDecodeBounds = false;
    }

    /* renamed from: b */
    public static void m2804b(int i, int i2, BitmapFactory.Options options, C2964v c2964v) {
        m2805a(i, i2, options.outWidth, options.outHeight, options, c2964v);
    }

    /* renamed from: d */
    public static BitmapFactory.Options m2803d(C2964v c2964v) {
        boolean m2814a = c2964v.m2814a();
        boolean z = c2964v.f9970q != null;
        BitmapFactory.Options options = null;
        if (m2814a || z || c2964v.f9969p) {
            BitmapFactory.Options options2 = new BitmapFactory.Options();
            options2.inJustDecodeBounds = m2814a;
            boolean z2 = c2964v.f9969p;
            options2.inInputShareable = z2;
            options2.inPurgeable = z2;
            options = options2;
            if (z) {
                options2.inPreferredConfig = c2964v.f9970q;
                options = options2;
            }
        }
        return options;
    }

    /* renamed from: c */
    public abstract boolean mo2800c(C2964v c2964v);

    /* renamed from: e */
    public int mo2802e() {
        return 0;
    }

    /* renamed from: f */
    public abstract C2969a mo2799f(C2964v c2964v, int i) throws IOException;

    /* renamed from: g */
    public boolean mo2801g(boolean z, NetworkInfo networkInfo) {
        return false;
    }
}
