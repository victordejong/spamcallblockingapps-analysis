package p193e.p1451f.p1452a.p1457n.p1464p;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import p193e.p1451f.p1452a.EnumC22227f;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1479s.C22610d;
import p193e.p1451f.p1452a.p1480t.C22611a;
/* renamed from: e.f.a.n.p.d */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/d.class */
public class C22411d implements AbstractC22436n<File, ByteBuffer> {

    /* renamed from: e.f.a.n.p.d$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/d$a.class */
    public static final class C22412a implements AbstractC22274d<ByteBuffer> {

        /* renamed from: a */
        public final File f62248a;

        public C22412a(File file) {
            this.f62248a = file;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: a */
        public Class<ByteBuffer> mo8220a() {
            return ByteBuffer.class;
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
        public void mo8217d(EnumC22227f enumC22227f, AbstractC22274d.AbstractC22275a<? super ByteBuffer> abstractC22275a) {
            try {
                abstractC22275a.mo8231e(C22611a.m8035a(this.f62248a));
            } catch (IOException e) {
                Log.isLoggable("ByteBufferFileLoader", 3);
                abstractC22275a.mo8230f(e);
            }
        }
    }

    /* renamed from: e.f.a.n.p.d$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/d$b.class */
    public static class C22413b implements AbstractC22438o<File, ByteBuffer> {
        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<File, ByteBuffer> mo8212c(C22444r c22444r) {
            return new C22411d();
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: a */
    public AbstractC22436n.C22437a<ByteBuffer> mo8215a(File file, int i, int i2, C22267i c22267i) {
        File file2 = file;
        return new AbstractC22436n.C22437a<>(new C22610d(file2), new C22412a(file2));
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: b */
    public /* bridge */ /* synthetic */ boolean mo8214b(File file) {
        return true;
    }
}
