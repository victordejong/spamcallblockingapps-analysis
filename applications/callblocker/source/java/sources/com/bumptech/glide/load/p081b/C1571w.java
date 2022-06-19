package com.bumptech.glide.load.p081b;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.p079a.AbstractC1475d;
import com.bumptech.glide.load.p079a.C1465a;
import com.bumptech.glide.load.p079a.C1484i;
import com.bumptech.glide.load.p079a.C1492n;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import com.bumptech.glide.p076g.C1431c;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.bumptech.glide.load.b.w */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/w.class */
public class C1571w<Data> implements AbstractC1546n<Uri, Data> {

    /* renamed from: a */
    private static final Set<String> f4938a = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", "android.resource", "content")));

    /* renamed from: b */
    private final AbstractC1574c<Data> f4939b;

    /* renamed from: com.bumptech.glide.load.b.w$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/w$a.class */
    public static final class C1572a implements AbstractC1548o<Uri, AssetFileDescriptor>, AbstractC1574c<AssetFileDescriptor> {

        /* renamed from: a */
        private final ContentResolver f4940a;

        public C1572a(ContentResolver contentResolver) {
            this.f4940a = contentResolver;
        }

        @Override // com.bumptech.glide.load.p081b.C1571w.AbstractC1574c
        /* renamed from: a */
        public AbstractC1475d<AssetFileDescriptor> mo16806a(Uri uri) {
            return new C1465a(this.f4940a, uri);
        }

        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<Uri, AssetFileDescriptor> mo16801a(C1554r c1554r) {
            return new C1571w(this);
        }
    }

    /* renamed from: com.bumptech.glide.load.b.w$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/w$b.class */
    public static class C1573b implements AbstractC1548o<Uri, ParcelFileDescriptor>, AbstractC1574c<ParcelFileDescriptor> {

        /* renamed from: a */
        private final ContentResolver f4941a;

        public C1573b(ContentResolver contentResolver) {
            this.f4941a = contentResolver;
        }

        @Override // com.bumptech.glide.load.p081b.C1571w.AbstractC1574c
        /* renamed from: a */
        public AbstractC1475d<ParcelFileDescriptor> mo16806a(Uri uri) {
            return new C1484i(this.f4941a, uri);
        }

        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<Uri, ParcelFileDescriptor> mo16801a(C1554r c1554r) {
            return new C1571w(this);
        }
    }

    /* renamed from: com.bumptech.glide.load.b.w$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/w$c.class */
    public interface AbstractC1574c<Data> {
        /* renamed from: a */
        AbstractC1475d<Data> mo16806a(Uri uri);
    }

    /* renamed from: com.bumptech.glide.load.b.w$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/w$d.class */
    public static class C1575d implements AbstractC1548o<Uri, InputStream>, AbstractC1574c<InputStream> {

        /* renamed from: a */
        private final ContentResolver f4942a;

        public C1575d(ContentResolver contentResolver) {
            this.f4942a = contentResolver;
        }

        @Override // com.bumptech.glide.load.p081b.C1571w.AbstractC1574c
        /* renamed from: a */
        public AbstractC1475d<InputStream> mo16806a(Uri uri) {
            return new C1492n(this.f4942a, uri);
        }

        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<Uri, InputStream> mo16801a(C1554r c1554r) {
            return new C1571w(this);
        }
    }

    public C1571w(AbstractC1574c<Data> abstractC1574c) {
        this.f4939b = abstractC1574c;
    }

    /* renamed from: a */
    public AbstractC1546n.C1547a<Data> mo16802a(Uri uri, int i, int i2, C1781h c1781h) {
        return new AbstractC1546n.C1547a<>(new C1431c(uri), this.f4939b.mo16806a(uri));
    }

    /* renamed from: a */
    public boolean mo16803a(Uri uri) {
        return f4938a.contains(uri.getScheme());
    }
}
