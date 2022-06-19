package p078c.p122d.p123a.p125f0;

import android.util.SparseArray;
import com.liulishuo.filedownloader.model.C9379a;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p078c.p122d.p123a.p125f0.AbstractC2003a;
import p078c.p122d.p123a.p128i0.C2036d;
/* renamed from: c.d.a.f0.b */
/* loaded from: classes2-dex2jar.jar:c/d/a/f0/b.class */
public class C2005b implements AbstractC2003a {

    /* renamed from: a */
    final SparseArray<FileDownloadModel> f7117a = new SparseArray<>();

    /* renamed from: b */
    final SparseArray<List<C9379a>> f7118b = new SparseArray<>();

    /* renamed from: c.d.a.f0.b$a */
    /* loaded from: classes2-dex2jar.jar:c/d/a/f0/b$a.class */
    class C2006a implements AbstractC2003a.AbstractC2004a {
        C2006a() {
            C2005b.this = r4;
        }

        @Override // p078c.p122d.p123a.p125f0.AbstractC2003a.AbstractC2004a
        /* renamed from: E */
        public void mo28301E(int i, FileDownloadModel fileDownloadModel) {
        }

        @Override // p078c.p122d.p123a.p125f0.AbstractC2003a.AbstractC2004a
        /* renamed from: Y */
        public void mo28300Y() {
        }

        @Override // java.lang.Iterable
        public Iterator<FileDownloadModel> iterator() {
            return new C2007b();
        }

        @Override // p078c.p122d.p123a.p125f0.AbstractC2003a.AbstractC2004a
        /* renamed from: u */
        public void mo28299u(FileDownloadModel fileDownloadModel) {
        }

        @Override // p078c.p122d.p123a.p125f0.AbstractC2003a.AbstractC2004a
        /* renamed from: z */
        public void mo28298z(FileDownloadModel fileDownloadModel) {
        }
    }

    /* renamed from: c.d.a.f0.b$b */
    /* loaded from: classes2-dex2jar.jar:c/d/a/f0/b$b.class */
    class C2007b implements Iterator<FileDownloadModel> {
        C2007b() {
            C2005b.this = r4;
        }

        /* renamed from: a */
        public FileDownloadModel next() {
            return null;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
        }
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: a */
    public void mo28324a(int i) {
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: b */
    public AbstractC2003a.AbstractC2004a mo28323b() {
        return new C2006a();
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: c */
    public void mo28322c(int i, Throwable th) {
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    public void clear() {
        synchronized (this.f7117a) {
            this.f7117a.clear();
        }
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: d */
    public void mo28321d(int i, long j) {
        remove(i);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: e */
    public void mo28320e(int i, String str, long j, long j2, int i2) {
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: f */
    public void mo28319f(int i, int i2, long j) {
        C9379a next;
        synchronized (this.f7118b) {
            List<C9379a> list = this.f7118b.get(i);
            if (list == null) {
                return;
            }
            Iterator<C9379a> it = list.iterator();
            do {
                if (!it.hasNext()) {
                    return;
                }
                next = it.next();
            } while (next.m833d() != i2);
            next.m830g(j);
        }
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: g */
    public void mo28318g(C9379a c9379a) {
        int m834c = c9379a.m834c();
        synchronized (this.f7118b) {
            List<C9379a> list = this.f7118b.get(m834c);
            List<C9379a> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>();
                this.f7118b.put(m834c, list2);
            }
            list2.add(c9379a);
        }
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: h */
    public void mo28317h(int i) {
        synchronized (this.f7118b) {
            this.f7118b.remove(i);
        }
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: i */
    public void mo28316i(int i) {
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: j */
    public void mo28315j(FileDownloadModel fileDownloadModel) {
        if (fileDownloadModel == null) {
            C2036d.m28245i(this, "update but model == null!", new Object[0]);
        } else if (mo28310o(fileDownloadModel.m859e()) == null) {
            m28334r(fileDownloadModel);
        } else {
            synchronized (this.f7117a) {
                this.f7117a.remove(fileDownloadModel.m859e());
                this.f7117a.put(fileDownloadModel.m859e(), fileDownloadModel);
            }
        }
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: k */
    public void mo28314k(int i, Throwable th, long j) {
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: l */
    public void mo28313l(int i, long j) {
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: m */
    public void mo28312m(int i, long j, String str, String str2) {
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: n */
    public List<C9379a> mo28311n(int i) {
        List<C9379a> list;
        ArrayList arrayList = new ArrayList();
        synchronized (this.f7118b) {
            list = this.f7118b.get(i);
        }
        if (list != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: o */
    public FileDownloadModel mo28310o(int i) {
        FileDownloadModel fileDownloadModel;
        synchronized (this.f7117a) {
            fileDownloadModel = this.f7117a.get(i);
        }
        return fileDownloadModel;
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: p */
    public void mo28309p(int i, int i2) {
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: q */
    public void mo28308q(int i, long j) {
    }

    /* renamed from: r */
    public void m28334r(FileDownloadModel fileDownloadModel) {
        synchronized (this.f7117a) {
            this.f7117a.put(fileDownloadModel.m859e(), fileDownloadModel);
        }
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    public boolean remove(int i) {
        synchronized (this.f7117a) {
            this.f7117a.remove(i);
        }
        return true;
    }
}
