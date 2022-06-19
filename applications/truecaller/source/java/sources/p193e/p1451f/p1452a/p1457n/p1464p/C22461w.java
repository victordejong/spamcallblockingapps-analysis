package p193e.p1451f.p1452a.p1457n.p1464p;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import e.f.a.n.n.a;
import e.f.a.n.n.i;
import e.f.a.n.n.n;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1479s.C22610d;
/* renamed from: e.f.a.n.p.w */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/w.class */
public class C22461w<Data> implements AbstractC22436n<Uri, Data> {

    /* renamed from: b */
    public static final Set<String> f62319b = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", "android.resource", "content")));

    /* renamed from: a */
    public final AbstractC22464c<Data> f62320a;

    /* renamed from: e.f.a.n.p.w$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/w$a.class */
    public static final class C22462a implements AbstractC22438o<Uri, AssetFileDescriptor>, AbstractC22464c<AssetFileDescriptor> {

        /* renamed from: a */
        public final ContentResolver f62321a;

        public C22462a(ContentResolver contentResolver) {
            this.f62321a = contentResolver;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.C22461w.AbstractC22464c
        /* renamed from: a */
        public AbstractC22274d<AssetFileDescriptor> mo8216a(Uri uri) {
            return new a(this.f62321a, uri);
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<Uri, AssetFileDescriptor> mo8212c(C22444r c22444r) {
            return new C22461w(this);
        }
    }

    /* renamed from: e.f.a.n.p.w$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/w$b.class */
    public static class C22463b implements AbstractC22438o<Uri, ParcelFileDescriptor>, AbstractC22464c<ParcelFileDescriptor> {

        /* renamed from: a */
        public final ContentResolver f62322a;

        public C22463b(ContentResolver contentResolver) {
            this.f62322a = contentResolver;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.C22461w.AbstractC22464c
        /* renamed from: a */
        public AbstractC22274d<ParcelFileDescriptor> mo8216a(Uri uri) {
            return new i(this.f62322a, uri);
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<Uri, ParcelFileDescriptor> mo8212c(C22444r c22444r) {
            return new C22461w(this);
        }
    }

    /* renamed from: e.f.a.n.p.w$c */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/w$c.class */
    public interface AbstractC22464c<Data> {
        /* renamed from: a */
        AbstractC22274d<Data> mo8216a(Uri uri);
    }

    /* renamed from: e.f.a.n.p.w$d */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/w$d.class */
    public static class C22465d implements AbstractC22438o<Uri, InputStream>, AbstractC22464c<InputStream> {

        /* renamed from: a */
        public final ContentResolver f62323a;

        public C22465d(ContentResolver contentResolver) {
            this.f62323a = contentResolver;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.C22461w.AbstractC22464c
        /* renamed from: a */
        public AbstractC22274d<InputStream> mo8216a(Uri uri) {
            return new n(this.f62323a, uri);
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<Uri, InputStream> mo8212c(C22444r c22444r) {
            return new C22461w(this);
        }
    }

    public C22461w(AbstractC22464c<Data> abstractC22464c) {
        this.f62320a = abstractC22464c;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: a */
    public AbstractC22436n.C22437a mo8215a(Uri uri, int i, int i2, C22267i c22267i) {
        Uri uri2 = uri;
        return new AbstractC22436n.C22437a(new C22610d(uri2), this.f62320a.mo8216a(uri2));
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: b */
    public boolean mo8214b(Uri uri) {
        return f62319b.contains(uri.getScheme());
    }
}
