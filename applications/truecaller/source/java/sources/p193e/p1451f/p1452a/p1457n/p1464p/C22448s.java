package p193e.p1451f.p1452a.p1457n.p1464p;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.InputStream;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
/* renamed from: e.f.a.n.p.s */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/s.class */
public class C22448s<Data> implements AbstractC22436n<Integer, Data> {

    /* renamed from: a */
    public final AbstractC22436n<Uri, Data> f62308a;

    /* renamed from: b */
    public final Resources f62309b;

    /* renamed from: e.f.a.n.p.s$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/s$a.class */
    public static final class C22449a implements AbstractC22438o<Integer, AssetFileDescriptor> {

        /* renamed from: a */
        public final Resources f62310a;

        public C22449a(Resources resources) {
            this.f62310a = resources;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<Integer, AssetFileDescriptor> mo8212c(C22444r c22444r) {
            return new C22448s(this.f62310a, c22444r.m8226c(Uri.class, AssetFileDescriptor.class));
        }
    }

    /* renamed from: e.f.a.n.p.s$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/s$b.class */
    public static class C22450b implements AbstractC22438o<Integer, ParcelFileDescriptor> {

        /* renamed from: a */
        public final Resources f62311a;

        public C22450b(Resources resources) {
            this.f62311a = resources;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<Integer, ParcelFileDescriptor> mo8212c(C22444r c22444r) {
            return new C22448s(this.f62311a, c22444r.m8226c(Uri.class, ParcelFileDescriptor.class));
        }
    }

    /* renamed from: e.f.a.n.p.s$c */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/s$c.class */
    public static class C22451c implements AbstractC22438o<Integer, InputStream> {

        /* renamed from: a */
        public final Resources f62312a;

        public C22451c(Resources resources) {
            this.f62312a = resources;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<Integer, InputStream> mo8212c(C22444r c22444r) {
            return new C22448s(this.f62312a, c22444r.m8226c(Uri.class, InputStream.class));
        }
    }

    /* renamed from: e.f.a.n.p.s$d */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/s$d.class */
    public static class C22452d implements AbstractC22438o<Integer, Uri> {

        /* renamed from: a */
        public final Resources f62313a;

        public C22452d(Resources resources) {
            this.f62313a = resources;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<Integer, Uri> mo8212c(C22444r c22444r) {
            return new C22448s(this.f62313a, C22458v.f62316a);
        }
    }

    public C22448s(Resources resources, AbstractC22436n<Uri, Data> abstractC22436n) {
        this.f62309b = resources;
        this.f62308a = abstractC22436n;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: a */
    public AbstractC22436n.C22437a mo8215a(Integer num, int i, int i2, C22267i c22267i) {
        Uri uri;
        Integer num2 = num;
        try {
            uri = Uri.parse("android.resource://" + this.f62309b.getResourcePackageName(num2.intValue()) + '/' + this.f62309b.getResourceTypeName(num2.intValue()) + '/' + this.f62309b.getResourceEntryName(num2.intValue()));
        } catch (Resources.NotFoundException e) {
            if (Log.isLoggable("ResourceLoader", 5)) {
                String str = "Received invalid resource id: " + num2;
            }
            uri = null;
        }
        return uri == null ? null : this.f62308a.mo8215a(uri, i, i2, c22267i);
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: b */
    public /* bridge */ /* synthetic */ boolean mo8214b(Integer num) {
        return true;
    }
}
