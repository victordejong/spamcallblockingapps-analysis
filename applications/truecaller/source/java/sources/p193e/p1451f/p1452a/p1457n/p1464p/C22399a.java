package p193e.p1451f.p1452a.p1457n.p1464p;

import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import e.f.a.n.n.h;
import e.f.a.n.n.m;
import java.io.InputStream;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1479s.C22610d;
/* renamed from: e.f.a.n.p.a */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/a.class */
public class C22399a<Data> implements AbstractC22436n<Uri, Data> {

    /* renamed from: a */
    public final AssetManager f62241a;

    /* renamed from: b */
    public final AbstractC22400a<Data> f62242b;

    /* renamed from: e.f.a.n.p.a$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/a$a.class */
    public interface AbstractC22400a<Data> {
        /* renamed from: a */
        AbstractC22274d<Data> mo8245a(AssetManager assetManager, String str);
    }

    /* renamed from: e.f.a.n.p.a$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/a$b.class */
    public static class C22401b implements AbstractC22438o<Uri, ParcelFileDescriptor>, AbstractC22400a<ParcelFileDescriptor> {

        /* renamed from: a */
        public final AssetManager f62243a;

        public C22401b(AssetManager assetManager) {
            this.f62243a = assetManager;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.C22399a.AbstractC22400a
        /* renamed from: a */
        public AbstractC22274d<ParcelFileDescriptor> mo8245a(AssetManager assetManager, String str) {
            return new h(assetManager, str);
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<Uri, ParcelFileDescriptor> mo8212c(C22444r c22444r) {
            return new C22399a(this.f62243a, this);
        }
    }

    /* renamed from: e.f.a.n.p.a$c */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/a$c.class */
    public static class C22402c implements AbstractC22438o<Uri, InputStream>, AbstractC22400a<InputStream> {

        /* renamed from: a */
        public final AssetManager f62244a;

        public C22402c(AssetManager assetManager) {
            this.f62244a = assetManager;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.C22399a.AbstractC22400a
        /* renamed from: a */
        public AbstractC22274d<InputStream> mo8245a(AssetManager assetManager, String str) {
            return new m(assetManager, str);
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<Uri, InputStream> mo8212c(C22444r c22444r) {
            return new C22399a(this.f62244a, this);
        }
    }

    public C22399a(AssetManager assetManager, AbstractC22400a<Data> abstractC22400a) {
        this.f62241a = assetManager;
        this.f62242b = abstractC22400a;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: a */
    public AbstractC22436n.C22437a mo8215a(Uri uri, int i, int i2, C22267i c22267i) {
        Uri uri2 = uri;
        return new AbstractC22436n.C22437a(new C22610d(uri2), this.f62242b.mo8245a(this.f62241a, uri2.toString().substring(22)));
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: b */
    public boolean mo8214b(Uri uri) {
        Uri uri2 = uri;
        boolean z = false;
        if ("file".equals(uri2.getScheme())) {
            z = false;
            if (!uri2.getPathSegments().isEmpty()) {
                z = false;
                if ("android_asset".equals(uri2.getPathSegments().get(0))) {
                    z = true;
                }
            }
        }
        return z;
    }
}
