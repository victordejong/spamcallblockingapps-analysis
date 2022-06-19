package p193e.p194a.p1406z3.p1407g;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import p193e.p1451f.p1452a.EnumC22227f;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o;
import p193e.p1451f.p1452a.p1457n.p1464p.C22444r;
import p193e.p1451f.p1452a.p1479s.C22610d;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p682e.C12864a2;
import s1.g;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.z3.g.a */
/* loaded from: classes9-dex2jar.jar:e/a/z3/g/a.class */
public final class C21855a implements AbstractC22436n<Uri, ByteBuffer> {

    /* renamed from: a */
    public final Context f60734a;

    /* renamed from: e.a.z3.g.a$a */
    /* loaded from: classes9-dex2jar.jar:e/a/z3/g/a$a.class */
    public static final class C21856a implements AbstractC22274d<ByteBuffer> {

        /* renamed from: a */
        public final g f60735a = C25225a.m3978P1(new C21858b());

        /* renamed from: b */
        public final Context f60736b;

        /* renamed from: c */
        public final Uri f60737c;

        /* renamed from: d */
        public final int f60738d;

        /* renamed from: e */
        public final int f60739e;

        /* renamed from: e.a.z3.g.a$a$a */
        /* loaded from: classes9-dex2jar.jar:e/a/z3/g/a$a$a.class */
        public static final class C21857a extends m implements l<Bitmap, ByteBuffer> {

            /* renamed from: c */
            public final /* synthetic */ Drawable f60741c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C21857a(Drawable drawable) {
                super(1);
                C21856a.this = r4;
                this.f60741c = drawable;
            }

            /* renamed from: d */
            public Object m8958d(Object obj) {
                Bitmap bitmap = (Bitmap) obj;
                Canvas canvas = new Canvas(bitmap);
                Drawable drawable = this.f60741c;
                C21856a c21856a = C21856a.this;
                drawable.setBounds(0, 0, c21856a.f60738d, c21856a.f60739e);
                this.f60741c.draw(canvas);
                C21856a c21856a2 = C21856a.this;
                s1.z.c.l.d(bitmap, "bitmap");
                return c21856a2.m8959e(bitmap);
            }
        }

        /* renamed from: e.a.z3.g.a$a$b */
        /* loaded from: classes9-dex2jar.jar:e/a/z3/g/a$a$b.class */
        public static final class C21858b extends m implements a<PackageManager> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C21858b() {
                super(0);
                C21856a.this = r4;
            }

            public Object invoke() {
                return C21856a.this.f60736b.getPackageManager();
            }
        }

        public C21856a(Context context, Uri uri, int i, int i2) {
            s1.z.c.l.e(context, "appContext");
            s1.z.c.l.e(uri, "uri");
            this.f60736b = context;
            this.f60737c = uri;
            this.f60738d = i;
            this.f60739e = i2;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: a */
        public Class<ByteBuffer> mo8220a() {
            return ByteBuffer.class;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: b */
        public void mo8219b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: c */
        public EnumC22258a mo8218c() {
            return EnumC22258a.LOCAL;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        public void cancel() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: d */
        public void mo8217d(EnumC22227f enumC22227f, AbstractC22274d.AbstractC22275a<? super ByteBuffer> abstractC22275a) {
            s1.z.c.l.e(enumC22227f, RemoteMessageConst.Notification.PRIORITY);
            s1.z.c.l.e(abstractC22275a, "callback");
            try {
                ApplicationInfo applicationInfo = ((PackageManager) this.f60735a.getValue()).getApplicationInfo(this.f60737c.getSchemeSpecificPart(), 0);
                s1.z.c.l.d(applicationInfo, "packageManager.getApplic…ri.schemeSpecificPart, 0)");
                Drawable loadIcon = applicationInfo.loadIcon((PackageManager) this.f60735a.getValue());
                ByteBuffer byteBuffer = null;
                if (loadIcon != null) {
                    if (loadIcon instanceof BitmapDrawable) {
                        Bitmap bitmap = ((BitmapDrawable) loadIcon).getBitmap();
                        if (bitmap != null) {
                            byteBuffer = m8959e(bitmap);
                        }
                    } else {
                        byteBuffer = (ByteBuffer) C12864a2.m22548j0(Bitmap.createBitmap(this.f60738d, this.f60739e, Bitmap.Config.ARGB_8888), new C21857a(loadIcon));
                    }
                }
                if (byteBuffer != null) {
                    abstractC22275a.mo8231e(byteBuffer);
                } else {
                    abstractC22275a.mo8230f(new C21860c());
                }
            } catch (PackageManager.NameNotFoundException e) {
                abstractC22275a.mo8230f(e);
            }
        }

        /* renamed from: e */
        public final ByteBuffer m8959e(Bitmap bitmap) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.WEBP, 100, byteArrayOutputStream);
            ByteBuffer wrap = ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
            s1.z.c.l.d(wrap, "ByteArrayOutputStream().….toByteArray())\n        }");
            return wrap;
        }
    }

    /* renamed from: e.a.z3.g.a$b */
    /* loaded from: classes9-dex2jar.jar:e/a/z3/g/a$b.class */
    public static final class C21859b implements AbstractC22438o<Uri, ByteBuffer> {

        /* renamed from: a */
        public final Context f60743a;

        public C21859b(Context context) {
            s1.z.c.l.e(context, "appContext");
            this.f60743a = context;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<Uri, ByteBuffer> mo8212c(C22444r c22444r) {
            s1.z.c.l.e(c22444r, "multiFactory");
            return new C21855a(this.f60743a);
        }
    }

    /* renamed from: e.a.z3.g.a$c */
    /* loaded from: classes9-dex2jar.jar:e/a/z3/g/a$c.class */
    public static final class C21860c extends RuntimeException {
    }

    public C21855a(Context context) {
        s1.z.c.l.e(context, "appContext");
        this.f60734a = context;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: a */
    public AbstractC22436n.C22437a<ByteBuffer> mo8215a(Uri uri, int i, int i2, C22267i c22267i) {
        Uri uri2 = uri;
        s1.z.c.l.e(uri2, "model");
        s1.z.c.l.e(c22267i, "options");
        return new AbstractC22436n.C22437a<>(new C22610d(uri2), new C21856a(this.f60734a, uri2, i, i2));
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: b */
    public boolean mo8214b(Uri uri) {
        Uri uri2 = uri;
        s1.z.c.l.e(uri2, "model");
        return s1.z.c.l.a(uri2.getScheme(), "appicon");
    }
}
