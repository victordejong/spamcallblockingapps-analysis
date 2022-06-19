package com.bumptech.glide.load.p212i;

import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.data.AbstractC4007d;
import com.bumptech.glide.load.data.C4015h;
import com.bumptech.glide.load.data.C4023m;
import com.bumptech.glide.load.p212i.AbstractC4191n;
import com.bumptech.glide.p222o.C4367d;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.i.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/a.class */
public class C4149a<Data> implements AbstractC4191n<Uri, Data> {

    /* renamed from: a */
    private static final int f13009a = 22;

    /* renamed from: b */
    private final AssetManager f13010b;

    /* renamed from: c */
    private final AbstractC4150a<Data> f13011c;

    /* renamed from: com.bumptech.glide.load.i.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/a$a.class */
    public interface AbstractC4150a<Data> {
        /* renamed from: a */
        AbstractC4007d<Data> mo23179a(AssetManager assetManager, String str);
    }

    /* renamed from: com.bumptech.glide.load.i.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/a$b.class */
    public static class C4151b implements AbstractC4193o<Uri, ParcelFileDescriptor>, AbstractC4150a<ParcelFileDescriptor> {

        /* renamed from: a */
        private final AssetManager f13012a;

        public C4151b(AssetManager assetManager) {
            this.f13012a = assetManager;
        }

        @Override // com.bumptech.glide.load.p212i.C4149a.AbstractC4150a
        /* renamed from: a */
        public AbstractC4007d<ParcelFileDescriptor> mo23179a(AssetManager assetManager, String str) {
            return new C4015h(assetManager, str);
        }

        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public AbstractC4191n<Uri, ParcelFileDescriptor> mo23078b(C4199r c4199r) {
            return new C4149a(this.f13012a, this);
        }
    }

    /* renamed from: com.bumptech.glide.load.i.a$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/a$c.class */
    public static class C4152c implements AbstractC4193o<Uri, InputStream>, AbstractC4150a<InputStream> {

        /* renamed from: a */
        private final AssetManager f13013a;

        public C4152c(AssetManager assetManager) {
            this.f13013a = assetManager;
        }

        @Override // com.bumptech.glide.load.p212i.C4149a.AbstractC4150a
        /* renamed from: a */
        public AbstractC4007d<InputStream> mo23179a(AssetManager assetManager, String str) {
            return new C4023m(assetManager, str);
        }

        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public AbstractC4191n<Uri, InputStream> mo23078b(C4199r c4199r) {
            return new C4149a(this.f13013a, this);
        }
    }

    public C4149a(AssetManager assetManager, AbstractC4150a<Data> abstractC4150a) {
        this.f13010b = assetManager;
        this.f13011c = abstractC4150a;
    }

    /* renamed from: c */
    public AbstractC4191n.C4192a<Data> mo23081b(Uri uri, int i, int i2, C4032e c4032e) {
        return new AbstractC4191n.C4192a<>(new C4367d(uri), this.f13011c.mo23179a(this.f13010b, uri.toString().substring(f13009a)));
    }

    /* renamed from: d */
    public boolean mo23082a(Uri uri) {
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
