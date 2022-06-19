package com.bumptech.glide.load.p081b;

import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.p079a.AbstractC1475d;
import com.bumptech.glide.load.p079a.C1483h;
import com.bumptech.glide.load.p079a.C1491m;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import com.bumptech.glide.p076g.C1431c;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.b.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a.class */
public class C1494a<Data> implements AbstractC1546n<Uri, Data> {

    /* renamed from: a */
    private static final int f4843a = "file:///android_asset/".length();

    /* renamed from: b */
    private final AssetManager f4844b;

    /* renamed from: c */
    private final AbstractC1495a<Data> f4845c;

    /* renamed from: com.bumptech.glide.load.b.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a$a.class */
    public interface AbstractC1495a<Data> {
        /* renamed from: a */
        AbstractC1475d<Data> mo16894a(AssetManager assetManager, String str);
    }

    /* renamed from: com.bumptech.glide.load.b.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a$b.class */
    public static class C1496b implements AbstractC1495a<ParcelFileDescriptor>, AbstractC1548o<Uri, ParcelFileDescriptor> {

        /* renamed from: a */
        private final AssetManager f4846a;

        public C1496b(AssetManager assetManager) {
            this.f4846a = assetManager;
        }

        @Override // com.bumptech.glide.load.p081b.C1494a.AbstractC1495a
        /* renamed from: a */
        public AbstractC1475d<ParcelFileDescriptor> mo16894a(AssetManager assetManager, String str) {
            return new C1483h(assetManager, str);
        }

        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<Uri, ParcelFileDescriptor> mo16801a(C1554r c1554r) {
            return new C1494a(this.f4846a, this);
        }
    }

    /* renamed from: com.bumptech.glide.load.b.a$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a$c.class */
    public static class C1497c implements AbstractC1495a<InputStream>, AbstractC1548o<Uri, InputStream> {

        /* renamed from: a */
        private final AssetManager f4847a;

        public C1497c(AssetManager assetManager) {
            this.f4847a = assetManager;
        }

        @Override // com.bumptech.glide.load.p081b.C1494a.AbstractC1495a
        /* renamed from: a */
        public AbstractC1475d<InputStream> mo16894a(AssetManager assetManager, String str) {
            return new C1491m(assetManager, str);
        }

        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<Uri, InputStream> mo16801a(C1554r c1554r) {
            return new C1494a(this.f4847a, this);
        }
    }

    public C1494a(AssetManager assetManager, AbstractC1495a<Data> abstractC1495a) {
        this.f4844b = assetManager;
        this.f4845c = abstractC1495a;
    }

    /* renamed from: a */
    public AbstractC1546n.C1547a<Data> mo16802a(Uri uri, int i, int i2, C1781h c1781h) {
        return new AbstractC1546n.C1547a<>(new C1431c(uri), this.f4845c.mo16894a(this.f4844b, uri.toString().substring(f4843a)));
    }

    /* renamed from: a */
    public boolean mo16803a(Uri uri) {
        boolean z = false;
        if ("file".equals(uri.getScheme())) {
            z = false;
            if (!uri.getPathSegments().isEmpty()) {
                z = false;
                if ("android_asset".equals(uri.getPathSegments().get(0))) {
                    z = true;
                }
            }
        }
        return z;
    }
}
