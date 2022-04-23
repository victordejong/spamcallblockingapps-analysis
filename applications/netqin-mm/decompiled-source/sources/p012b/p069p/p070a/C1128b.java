package p012b.p069p.p070a;

import android.os.Bundle;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p012b.p035f.C0794h;
import p012b.p042i.p053o.C0941a;
import p012b.p068o.AbstractC1109g;
import p012b.p068o.AbstractC1117m;
import p012b.p068o.AbstractC1121p;
import p012b.p068o.C1116l;
import p012b.p068o.C1122q;
import p012b.p068o.C1125r;
import p012b.p069p.p071b.C1133a;
/* renamed from: b.p.a.b */
/* loaded from: classes-dex2jar.jar:b/p/a/b.class */
public class C1128b extends AbstractC1127a {

    /* renamed from: c */
    public static boolean f4627c = false;

    /* renamed from: a */
    public final AbstractC1109g f4628a;

    /* renamed from: b */
    public final C1131c f4629b;

    /* renamed from: b.p.a.b$a */
    /* loaded from: classes-dex2jar.jar:b/p/a/b$a.class */
    public static class C1129a<D> extends C1116l<D> {

        /* renamed from: j */
        public final int f4630j;

        /* renamed from: k */
        public final Bundle f4631k;

        /* renamed from: l */
        public final C1133a<D> f4632l;

        /* renamed from: m */
        public AbstractC1109g f4633m;

        /* renamed from: n */
        public C1130b<D> f4634n;

        /* renamed from: o */
        public C1133a<D> f4635o;

        /* renamed from: a */
        public C1133a<D> m34614a(boolean z) {
            if (C1128b.f4627c) {
                Log.v("LoaderManager", "  Destroying: " + this);
            }
            this.f4632l.m34606a();
            throw null;
        }

        @Override // androidx.lifecycle.LiveData
        /* renamed from: a */
        public void mo34618a() {
            if (C1128b.f4627c) {
                Log.v("LoaderManager", "  Starting: " + this);
            }
            this.f4632l.m34603c();
            throw null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        /* renamed from: a */
        public void mo34617a(AbstractC1117m<? super D> mVar) {
            super.mo34617a((AbstractC1117m) mVar);
            this.f4633m = null;
            this.f4634n = null;
        }

        @Override // p012b.p068o.C1116l, androidx.lifecycle.LiveData
        /* renamed from: a */
        public void mo34616a(D d) {
            super.mo34616a((C1129a<D>) d);
            C1133a<D> aVar = this.f4635o;
            if (aVar != null) {
                aVar.m34604b();
                throw null;
            }
        }

        /* renamed from: a */
        public void m34615a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f4630j);
            printWriter.print(" mArgs=");
            printWriter.println(this.f4631k);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.f4632l);
            C1133a<D> aVar = this.f4632l;
            aVar.m34605a(str + "  ", fileDescriptor, printWriter, strArr);
            throw null;
        }

        @Override // androidx.lifecycle.LiveData
        /* renamed from: b */
        public void mo34613b() {
            if (C1128b.f4627c) {
                Log.v("LoaderManager", "  Stopping: " + this);
            }
            this.f4632l.m34602d();
            throw null;
        }

        /* renamed from: c */
        public void m34612c() {
            AbstractC1109g gVar = this.f4633m;
            C1130b<D> bVar = this.f4634n;
            if (gVar != null && bVar != null) {
                super.mo34617a((AbstractC1117m) bVar);
                m38322a(gVar, bVar);
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.f4630j);
            sb.append(" : ");
            C0941a.m35451a(this.f4632l, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    /* renamed from: b.p.a.b$b */
    /* loaded from: classes-dex2jar.jar:b/p/a/b$b.class */
    public static class C1130b<D> implements AbstractC1117m<D> {
    }

    /* renamed from: b.p.a.b$c */
    /* loaded from: classes-dex2jar.jar:b/p/a/b$c.class */
    public static class C1131c extends AbstractC1121p {

        /* renamed from: c */
        public static final C1122q.AbstractC1123a f4636c = new C1132a();

        /* renamed from: b */
        public C0794h<C1129a> f4637b = new C0794h<>();

        /* renamed from: b.p.a.b$c$a */
        /* loaded from: classes-dex2jar.jar:b/p/a/b$c$a.class */
        public static final class C1132a implements C1122q.AbstractC1123a {
            @Override // p012b.p068o.C1122q.AbstractC1123a
            /* renamed from: a */
            public <T extends AbstractC1121p> T mo34607a(Class<T> cls) {
                return new C1131c();
            }
        }

        /* renamed from: a */
        public static C1131c m34611a(C1125r rVar) {
            return (C1131c) new C1122q(rVar, f4636c).m34628a(C1131c.class);
        }

        /* renamed from: a */
        public void m34610a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.f4637b.m36000g() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                if (this.f4637b.m36000g() > 0) {
                    C1129a e = this.f4637b.m36001e(0);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.f4637b.m36005c(0));
                    printWriter.print(": ");
                    printWriter.println(e.toString());
                    e.m34615a(str2, fileDescriptor, printWriter, strArr);
                    throw null;
                }
            }
        }

        @Override // p012b.p068o.AbstractC1121p
        /* renamed from: b */
        public void mo34609b() {
            super.mo34609b();
            if (this.f4637b.m36000g() <= 0) {
                this.f4637b.m36006c();
            } else {
                this.f4637b.m36001e(0).m34614a(true);
                throw null;
            }
        }

        /* renamed from: c */
        public void m34608c() {
            int g = this.f4637b.m36000g();
            for (int i = 0; i < g; i++) {
                this.f4637b.m36001e(i).m34612c();
            }
        }
    }

    public C1128b(AbstractC1109g gVar, C1125r rVar) {
        this.f4628a = gVar;
        this.f4629b = C1131c.m34611a(rVar);
    }

    @Override // p012b.p069p.p070a.AbstractC1127a
    /* renamed from: a */
    public void mo34620a() {
        this.f4629b.m34608c();
    }

    @Override // p012b.p069p.p070a.AbstractC1127a
    @Deprecated
    /* renamed from: a */
    public void mo34619a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f4629b.m34610a(str, fileDescriptor, printWriter, strArr);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        C0941a.m35451a(this.f4628a, sb);
        sb.append("}}");
        return sb.toString();
    }
}
