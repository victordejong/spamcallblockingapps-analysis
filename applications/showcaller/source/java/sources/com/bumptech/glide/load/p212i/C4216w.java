package com.bumptech.glide.load.p212i;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.data.AbstractC4007d;
import com.bumptech.glide.load.data.C4004a;
import com.bumptech.glide.load.data.C4016i;
import com.bumptech.glide.load.data.C4024n;
import com.bumptech.glide.load.p212i.AbstractC4191n;
import com.bumptech.glide.p222o.C4367d;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.bumptech.glide.load.i.w */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/w.class */
public class C4216w<Data> implements AbstractC4191n<Uri, Data> {

    /* renamed from: a */
    private static final Set<String> f13095a = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", "android.resource", "content")));

    /* renamed from: b */
    private final AbstractC4219c<Data> f13096b;

    /* renamed from: com.bumptech.glide.load.i.w$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/w$a.class */
    public static final class C4217a implements AbstractC4193o<Uri, AssetFileDescriptor>, AbstractC4219c<AssetFileDescriptor> {

        /* renamed from: a */
        private final ContentResolver f13097a;

        public C4217a(ContentResolver contentResolver) {
            this.f13097a = contentResolver;
        }

        @Override // com.bumptech.glide.load.p212i.C4216w.AbstractC4219c
        /* renamed from: a */
        public AbstractC4007d<AssetFileDescriptor> mo23102a(Uri uri) {
            return new C4004a(this.f13097a, uri);
        }

        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public AbstractC4191n<Uri, AssetFileDescriptor> mo23078b(C4199r c4199r) {
            return new C4216w(this);
        }
    }

    /* renamed from: com.bumptech.glide.load.i.w$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/w$b.class */
    public static class C4218b implements AbstractC4193o<Uri, ParcelFileDescriptor>, AbstractC4219c<ParcelFileDescriptor> {

        /* renamed from: a */
        private final ContentResolver f13098a;

        public C4218b(ContentResolver contentResolver) {
            this.f13098a = contentResolver;
        }

        @Override // com.bumptech.glide.load.p212i.C4216w.AbstractC4219c
        /* renamed from: a */
        public AbstractC4007d<ParcelFileDescriptor> mo23102a(Uri uri) {
            return new C4016i(this.f13098a, uri);
        }

        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public AbstractC4191n<Uri, ParcelFileDescriptor> mo23078b(C4199r c4199r) {
            return new C4216w(this);
        }
    }

    /* renamed from: com.bumptech.glide.load.i.w$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/w$c.class */
    public interface AbstractC4219c<Data> {
        /* renamed from: a */
        AbstractC4007d<Data> mo23102a(Uri uri);
    }

    /* renamed from: com.bumptech.glide.load.i.w$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/w$d.class */
    public static class C4220d implements AbstractC4193o<Uri, InputStream>, AbstractC4219c<InputStream> {

        /* renamed from: a */
        private final ContentResolver f13099a;

        public C4220d(ContentResolver contentResolver) {
            this.f13099a = contentResolver;
        }

        @Override // com.bumptech.glide.load.p212i.C4216w.AbstractC4219c
        /* renamed from: a */
        public AbstractC4007d<InputStream> mo23102a(Uri uri) {
            return new C4024n(this.f13099a, uri);
        }

        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public AbstractC4191n<Uri, InputStream> mo23078b(C4199r c4199r) {
            return new C4216w(this);
        }
    }

    public C4216w(AbstractC4219c<Data> abstractC4219c) {
        this.f13096b = abstractC4219c;
    }

    /* renamed from: c */
    public AbstractC4191n.C4192a<Data> mo23081b(Uri uri, int i, int i2, C4032e c4032e) {
        return new AbstractC4191n.C4192a<>(new C4367d(uri), this.f13096b.mo23102a(uri));
    }

    /* renamed from: d */
    public boolean mo23082a(Uri uri) {
        return f13095a.contains(uri.getScheme());
    }
}
