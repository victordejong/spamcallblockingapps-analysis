package p193e.p1451f.p1452a.p1457n.p1464p;

import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import p193e.p1451f.p1452a.EnumC22227f;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1479s.C22610d;
/* renamed from: e.f.a.n.p.f */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/f.class */
public class C22419f<Data> implements AbstractC22436n<File, Data> {

    /* renamed from: a */
    public final AbstractC22422d<Data> f62254a;

    /* renamed from: e.f.a.n.p.f$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/f$a.class */
    public static class C22420a<Data> implements AbstractC22438o<File, Data> {

        /* renamed from: a */
        public final AbstractC22422d<Data> f62255a;

        public C22420a(AbstractC22422d<Data> abstractC22422d) {
            this.f62255a = abstractC22422d;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public final void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public final AbstractC22436n<File, Data> mo8212c(C22444r c22444r) {
            return new C22419f(this.f62255a);
        }
    }

    /* renamed from: e.f.a.n.p.f$c */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/f$c.class */
    public static final class C22421c<Data> implements AbstractC22274d<Data> {

        /* renamed from: a */
        public final File f62256a;

        /* renamed from: b */
        public final AbstractC22422d<Data> f62257b;

        /* renamed from: c */
        public Data f62258c;

        public C22421c(File file, AbstractC22422d<Data> abstractC22422d) {
            this.f62256a = file;
            this.f62257b = abstractC22422d;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: a */
        public Class<Data> mo8220a() {
            return this.f62257b.mo8241a();
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: b */
        public void mo8219b() {
            Data data = this.f62258c;
            if (data != null) {
                try {
                    this.f62257b.mo8240b(data);
                } catch (IOException e) {
                }
            }
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: c */
        public EnumC22258a mo8218c() {
            return EnumC22258a.LOCAL;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        public void cancel() {
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object, Data] */
        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: d */
        public void mo8217d(EnumC22227f enumC22227f, AbstractC22274d.AbstractC22275a<? super Data> abstractC22275a) {
            try {
                Data mo8239c = this.f62257b.mo8239c(this.f62256a);
                this.f62258c = mo8239c;
                abstractC22275a.mo8231e(mo8239c);
            } catch (FileNotFoundException e) {
                Log.isLoggable("FileLoader", 3);
                abstractC22275a.mo8230f(e);
            }
        }
    }

    /* renamed from: e.f.a.n.p.f$d */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/f$d.class */
    public interface AbstractC22422d<Data> {
        /* renamed from: a */
        Class<Data> mo8241a();

        /* renamed from: b */
        void mo8240b(Data data) throws IOException;

        /* renamed from: c */
        Data mo8239c(File file) throws FileNotFoundException;
    }

    public C22419f(AbstractC22422d<Data> abstractC22422d) {
        this.f62254a = abstractC22422d;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: a */
    public AbstractC22436n.C22437a mo8215a(File file, int i, int i2, C22267i c22267i) {
        File file2 = file;
        return new AbstractC22436n.C22437a(new C22610d(file2), new C22421c(file2, this.f62254a));
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: b */
    public /* bridge */ /* synthetic */ boolean mo8214b(File file) {
        return true;
    }
}
