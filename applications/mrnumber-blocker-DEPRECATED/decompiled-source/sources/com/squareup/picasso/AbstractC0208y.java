package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import com.squareup.picasso.Picasso;
import java.io.IOException;
import n.d0;
/* renamed from: com.squareup.picasso.y */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/y.class */
public abstract class AbstractC0208y {

    /* renamed from: com.squareup.picasso.y$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/y$a.class */
    public static final class C0209a {

        /* renamed from: a */
        private final Picasso.EnumC0166e f449a;

        /* renamed from: b */
        private final Bitmap f450b;

        /* renamed from: c */
        private final d0 f451c;

        /* renamed from: d */
        private final int f452d;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public C0209a(Bitmap bitmap, Picasso.EnumC0166e eVar) {
            this(bitmap, null, eVar, 0);
            C0185f0.m790d(bitmap, "bitmap == null");
        }

        C0209a(Bitmap bitmap, d0 d0Var, Picasso.EnumC0166e eVar, int i) {
            if ((bitmap != null) != (d0Var == null ? false : true)) {
                this.f450b = bitmap;
                this.f451c = d0Var;
                C0185f0.m790d(eVar, "loadedFrom == null");
                this.f449a = eVar;
                this.f452d = i;
                return;
            }
            throw new AssertionError();
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public C0209a(d0 d0Var, Picasso.EnumC0166e eVar) {
            this(null, d0Var, eVar, 0);
            C0185f0.m790d(d0Var, "source == null");
        }

        /* renamed from: a */
        public Bitmap m691a() {
            return this.f450b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public int m690b() {
            return this.f452d;
        }

        /* renamed from: c */
        public Picasso.EnumC0166e m689c() {
            return this.f449a;
        }

        /* renamed from: d */
        public d0 m688d() {
            return this.f451c;
        }
    }

    /* renamed from: a */
    static void m700a(int i, int i2, int i3, int i4, BitmapFactory.Options options, C0204w wVar) {
        int i5;
        double floor;
        if (i4 > i2 || i3 > i) {
            if (i2 == 0) {
                floor = Math.floor(i3 / i);
            } else if (i == 0) {
                floor = Math.floor(i4 / i2);
            } else {
                int floor2 = (int) Math.floor(i4 / i2);
                int floor3 = (int) Math.floor(i3 / i);
                i5 = wVar.f410l ? Math.max(floor2, floor3) : Math.min(floor2, floor3);
            }
            i5 = (int) floor;
        } else {
            i5 = 1;
        }
        options.inSampleSize = i5;
        options.inJustDecodeBounds = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m699b(int i, int i2, BitmapFactory.Options options, C0204w wVar) {
        m700a(i, i2, options.outWidth, options.outHeight, options, wVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static BitmapFactory.Options m697d(C0204w wVar) {
        boolean c = wVar.m727c();
        boolean z = wVar.f417s != null;
        BitmapFactory.Options options = null;
        if (c || z || wVar.f416r) {
            BitmapFactory.Options options2 = new BitmapFactory.Options();
            options2.inJustDecodeBounds = c;
            boolean z2 = wVar.f416r;
            options2.inInputShareable = z2;
            options2.inPurgeable = z2;
            options = options2;
            if (z) {
                options2.inPreferredConfig = wVar.f417s;
                options = options2;
            }
        }
        return options;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static boolean m694g(BitmapFactory.Options options) {
        return options != null && options.inJustDecodeBounds;
    }

    /* renamed from: c */
    public abstract boolean m698c(C0204w wVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public int m696e() {
        return 0;
    }

    /* renamed from: f */
    public abstract C0209a m695f(C0204w wVar, int i) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public boolean m693h(boolean z, NetworkInfo networkInfo) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public boolean m692i() {
        return false;
    }
}
