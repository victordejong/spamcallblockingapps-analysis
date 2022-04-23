package p081h.p444n.p445a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import p081h.p444n.p445a.C10798u;
import p645m.AbstractC15193s;
/* renamed from: h.n.a.z */
/* loaded from: classes2-dex2jar.jar:h/n/a/z.class */
public abstract class AbstractC10815z {

    /* renamed from: h.n.a.z$a */
    /* loaded from: classes2-dex2jar.jar:h/n/a/z$a.class */
    public static final class C10816a {

        /* renamed from: a */
        public final C10798u.EnumC10804e f24752a;

        /* renamed from: b */
        public final Bitmap f24753b;

        /* renamed from: c */
        public final AbstractC15193s f24754c;

        /* renamed from: d */
        public final int f24755d;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public C10816a(@NonNull Bitmap bitmap, @NonNull C10798u.EnumC10804e eVar) {
            this(bitmap, null, eVar, 0);
            C10770e0.m10669a(bitmap, "bitmap == null");
        }

        public C10816a(@Nullable Bitmap bitmap, @Nullable AbstractC15193s sVar, @NonNull C10798u.EnumC10804e eVar, int i) {
            if ((bitmap != null) != (sVar == null ? false : true)) {
                this.f24753b = bitmap;
                this.f24754c = sVar;
                C10770e0.m10669a(eVar, "loadedFrom == null");
                this.f24752a = eVar;
                this.f24755d = i;
                return;
            }
            throw new AssertionError();
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public C10816a(@NonNull AbstractC15193s sVar, @NonNull C10798u.EnumC10804e eVar) {
            this(null, sVar, eVar, 0);
            C10770e0.m10669a(sVar, "source == null");
        }

        @Nullable
        /* renamed from: a */
        public Bitmap m10557a() {
            return this.f24753b;
        }

        /* renamed from: b */
        public int m10556b() {
            return this.f24755d;
        }

        @NonNull
        /* renamed from: c */
        public C10798u.EnumC10804e m10555c() {
            return this.f24752a;
        }

        @Nullable
        /* renamed from: d */
        public AbstractC15193s m10554d() {
            return this.f24754c;
        }
    }

    /* renamed from: a */
    public static void m10565a(int i, int i2, int i3, int i4, BitmapFactory.Options options, C10811x xVar) {
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
                i5 = xVar.f24713l ? Math.max(floor2, floor3) : Math.min(floor2, floor3);
            }
            i5 = (int) floor;
        } else {
            i5 = 1;
        }
        options.inSampleSize = i5;
        options.inJustDecodeBounds = false;
    }

    /* renamed from: a */
    public static void m10564a(int i, int i2, BitmapFactory.Options options, C10811x xVar) {
        m10565a(i, i2, options.outWidth, options.outHeight, options, xVar);
    }

    /* renamed from: a */
    public static boolean m10563a(BitmapFactory.Options options) {
        return options != null && options.inJustDecodeBounds;
    }

    /* renamed from: b */
    public static BitmapFactory.Options m10558b(C10811x xVar) {
        boolean c = xVar.m10587c();
        boolean z = xVar.f24720s != null;
        BitmapFactory.Options options = null;
        if (c || z || xVar.f24719r) {
            BitmapFactory.Options options2 = new BitmapFactory.Options();
            options2.inJustDecodeBounds = c;
            boolean z2 = xVar.f24719r;
            options2.inInputShareable = z2;
            options2.inPurgeable = z2;
            options = options2;
            if (z) {
                options2.inPreferredConfig = xVar.f24720s;
                options = options2;
            }
        }
        return options;
    }

    /* renamed from: a */
    public int mo10566a() {
        return 0;
    }

    @Nullable
    /* renamed from: a */
    public abstract C10816a mo10561a(C10811x xVar, int i) throws IOException;

    /* renamed from: a */
    public abstract boolean mo10562a(C10811x xVar);

    /* renamed from: a */
    public boolean mo10560a(boolean z, NetworkInfo networkInfo) {
        return false;
    }

    /* renamed from: b */
    public boolean mo10559b() {
        return false;
    }
}
