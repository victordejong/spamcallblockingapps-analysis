package p193e.p1451f.p1452a.p1457n.p1460o;

import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.EnumC22260c;
/* renamed from: e.f.a.n.o.k */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/k.class */
public abstract class AbstractC22364k {

    /* renamed from: a */
    public static final AbstractC22364k f62124a = new C22365a();

    /* renamed from: b */
    public static final AbstractC22364k f62125b = new C22366b();

    /* renamed from: c */
    public static final AbstractC22364k f62126c = new C22367c();

    /* renamed from: d */
    public static final AbstractC22364k f62127d = new C22368d();

    /* renamed from: e.f.a.n.o.k$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/k$a.class */
    public class C22365a extends AbstractC22364k {
        @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k
        /* renamed from: a */
        public boolean mo8278a() {
            return true;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k
        /* renamed from: b */
        public boolean mo8277b() {
            return true;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k
        /* renamed from: c */
        public boolean mo8276c(EnumC22258a enumC22258a) {
            return enumC22258a == EnumC22258a.REMOTE;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k
        /* renamed from: d */
        public boolean mo8275d(boolean z, EnumC22258a enumC22258a, EnumC22260c enumC22260c) {
            return (enumC22258a == EnumC22258a.RESOURCE_DISK_CACHE || enumC22258a == EnumC22258a.MEMORY_CACHE) ? false : true;
        }
    }

    /* renamed from: e.f.a.n.o.k$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/k$b.class */
    public class C22366b extends AbstractC22364k {
        @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k
        /* renamed from: a */
        public boolean mo8278a() {
            return false;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k
        /* renamed from: b */
        public boolean mo8277b() {
            return false;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k
        /* renamed from: c */
        public boolean mo8276c(EnumC22258a enumC22258a) {
            return false;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k
        /* renamed from: d */
        public boolean mo8275d(boolean z, EnumC22258a enumC22258a, EnumC22260c enumC22260c) {
            return false;
        }
    }

    /* renamed from: e.f.a.n.o.k$c */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/k$c.class */
    public class C22367c extends AbstractC22364k {
        @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k
        /* renamed from: a */
        public boolean mo8278a() {
            return true;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k
        /* renamed from: b */
        public boolean mo8277b() {
            return false;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k
        /* renamed from: c */
        public boolean mo8276c(EnumC22258a enumC22258a) {
            return (enumC22258a == EnumC22258a.DATA_DISK_CACHE || enumC22258a == EnumC22258a.MEMORY_CACHE) ? false : true;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k
        /* renamed from: d */
        public boolean mo8275d(boolean z, EnumC22258a enumC22258a, EnumC22260c enumC22260c) {
            return false;
        }
    }

    /* renamed from: e.f.a.n.o.k$d */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/k$d.class */
    public class C22368d extends AbstractC22364k {
        @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k
        /* renamed from: a */
        public boolean mo8278a() {
            return true;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k
        /* renamed from: b */
        public boolean mo8277b() {
            return true;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k
        /* renamed from: c */
        public boolean mo8276c(EnumC22258a enumC22258a) {
            return enumC22258a == EnumC22258a.REMOTE;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k
        /* renamed from: d */
        public boolean mo8275d(boolean z, EnumC22258a enumC22258a, EnumC22260c enumC22260c) {
            return ((z && enumC22258a == EnumC22258a.DATA_DISK_CACHE) || enumC22258a == EnumC22258a.LOCAL) && enumC22260c == EnumC22260c.TRANSFORMED;
        }
    }

    /* renamed from: a */
    public abstract boolean mo8278a();

    /* renamed from: b */
    public abstract boolean mo8277b();

    /* renamed from: c */
    public abstract boolean mo8276c(EnumC22258a enumC22258a);

    /* renamed from: d */
    public abstract boolean mo8275d(boolean z, EnumC22258a enumC22258a, EnumC22260c enumC22260c);
}
