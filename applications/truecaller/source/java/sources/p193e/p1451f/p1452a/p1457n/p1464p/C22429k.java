package p193e.p1451f.p1452a.p1457n.p1464p;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.io.FileNotFoundException;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.EnumC22227f;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1479s.C22610d;
/* renamed from: e.f.a.n.p.k */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/k.class */
public final class C22429k implements AbstractC22436n<Uri, File> {

    /* renamed from: a */
    public final Context f62273a;

    /* renamed from: e.f.a.n.p.k$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/k$a.class */
    public static final class C22430a implements AbstractC22438o<Uri, File> {

        /* renamed from: a */
        public final Context f62274a;

        public C22430a(Context context) {
            this.f62274a = context;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<Uri, File> mo8212c(C22444r c22444r) {
            return new C22429k(this.f62274a);
        }
    }

    /* renamed from: e.f.a.n.p.k$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/k$b.class */
    public static class C22431b implements AbstractC22274d<File> {

        /* renamed from: c */
        public static final String[] f62275c = {"_data"};

        /* renamed from: a */
        public final Context f62276a;

        /* renamed from: b */
        public final Uri f62277b;

        public C22431b(Context context, Uri uri) {
            this.f62276a = context;
            this.f62277b = uri;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: a */
        public Class<File> mo8220a() {
            return File.class;
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
        public void mo8217d(EnumC22227f enumC22227f, AbstractC22274d.AbstractC22275a<? super File> abstractC22275a) {
            Cursor query = this.f62276a.getContentResolver().query(this.f62277b, f62275c, null, null, null);
            String str = null;
            if (query != null) {
                str = null;
                try {
                    if (query.moveToFirst()) {
                        str = query.getString(query.getColumnIndexOrThrow("_data"));
                    }
                } finally {
                    query.close();
                }
            }
            if (!TextUtils.isEmpty(str)) {
                abstractC22275a.mo8231e(new File(str));
                return;
            }
            StringBuilder m8728C = C22128a.m8728C("Failed to find file path for: ");
            m8728C.append(this.f62277b);
            abstractC22275a.mo8230f(new FileNotFoundException(m8728C.toString()));
        }
    }

    public C22429k(Context context) {
        this.f62273a = context;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: a */
    public AbstractC22436n.C22437a<File> mo8215a(Uri uri, int i, int i2, C22267i c22267i) {
        Uri uri2 = uri;
        return new AbstractC22436n.C22437a<>(new C22610d(uri2), new C22431b(this.f62273a, uri2));
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: b */
    public boolean mo8214b(Uri uri) {
        return C26232y.m2403V0(uri);
    }
}
