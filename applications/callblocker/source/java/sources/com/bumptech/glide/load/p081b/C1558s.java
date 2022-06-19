package com.bumptech.glide.load.p081b;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.b.s */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/s.class */
public class C1558s<Data> implements AbstractC1546n<Integer, Data> {

    /* renamed from: a */
    private final AbstractC1546n<Uri, Data> f4927a;

    /* renamed from: b */
    private final Resources f4928b;

    /* renamed from: com.bumptech.glide.load.b.s$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/s$a.class */
    public static final class C1559a implements AbstractC1548o<Integer, AssetFileDescriptor> {

        /* renamed from: a */
        private final Resources f4929a;

        public C1559a(Resources resources) {
            this.f4929a = resources;
        }

        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<Integer, AssetFileDescriptor> mo16801a(C1554r c1554r) {
            return new C1558s(this.f4929a, c1554r.m16830a(Uri.class, AssetFileDescriptor.class));
        }
    }

    /* renamed from: com.bumptech.glide.load.b.s$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/s$b.class */
    public static class C1560b implements AbstractC1548o<Integer, ParcelFileDescriptor> {

        /* renamed from: a */
        private final Resources f4930a;

        public C1560b(Resources resources) {
            this.f4930a = resources;
        }

        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<Integer, ParcelFileDescriptor> mo16801a(C1554r c1554r) {
            return new C1558s(this.f4930a, c1554r.m16830a(Uri.class, ParcelFileDescriptor.class));
        }
    }

    /* renamed from: com.bumptech.glide.load.b.s$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/s$c.class */
    public static class C1561c implements AbstractC1548o<Integer, InputStream> {

        /* renamed from: a */
        private final Resources f4931a;

        public C1561c(Resources resources) {
            this.f4931a = resources;
        }

        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<Integer, InputStream> mo16801a(C1554r c1554r) {
            return new C1558s(this.f4931a, c1554r.m16830a(Uri.class, InputStream.class));
        }
    }

    /* renamed from: com.bumptech.glide.load.b.s$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/s$d.class */
    public static class C1562d implements AbstractC1548o<Integer, Uri> {

        /* renamed from: a */
        private final Resources f4932a;

        public C1562d(Resources resources) {
            this.f4932a = resources;
        }

        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<Integer, Uri> mo16801a(C1554r c1554r) {
            return new C1558s(this.f4932a, C1568v.m16815a());
        }
    }

    public C1558s(Resources resources, AbstractC1546n<Uri, Data> abstractC1546n) {
        this.f4928b = resources;
        this.f4927a = abstractC1546n;
    }

    /* renamed from: b */
    private Uri m16821b(Integer num) {
        Uri uri;
        try {
            uri = Uri.parse("android.resource://" + this.f4928b.getResourcePackageName(num.intValue()) + '/' + this.f4928b.getResourceTypeName(num.intValue()) + '/' + this.f4928b.getResourceEntryName(num.intValue()));
        } catch (Resources.NotFoundException e) {
            if (Log.isLoggable("ResourceLoader", 5)) {
                Log.w("ResourceLoader", "Received invalid resource id: " + num, e);
            }
            uri = null;
        }
        return uri;
    }

    /* renamed from: a */
    public AbstractC1546n.C1547a<Data> mo16802a(Integer num, int i, int i2, C1781h c1781h) {
        Uri m16821b = m16821b(num);
        return m16821b == null ? null : this.f4927a.mo16802a(m16821b, i, i2, c1781h);
    }

    /* renamed from: a */
    public boolean mo16803a(Integer num) {
        return true;
    }
}
