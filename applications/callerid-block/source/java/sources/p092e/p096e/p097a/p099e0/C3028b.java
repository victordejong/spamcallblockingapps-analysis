package p092e.p096e.p097a.p099e0;

import android.util.SparseArray;
import com.liulishuo.filedownloader.model.C2774a;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p092e.p096e.p097a.p099e0.AbstractC3026a;
import p092e.p096e.p097a.p102h0.C3062d;
/* renamed from: e.e.a.e0.b */
/* loaded from: classes2-dex2jar.jar:e/e/a/e0/b.class */
public class C3028b implements AbstractC3026a {

    /* renamed from: a */
    final SparseArray<FileDownloadModel> f12649a = new SparseArray<>();

    /* renamed from: b */
    final SparseArray<List<C2774a>> f12650b = new SparseArray<>();

    /* renamed from: e.e.a.e0.b$a */
    /* loaded from: classes2-dex2jar.jar:e/e/a/e0/b$a.class */
    class C3029a implements AbstractC3026a.AbstractC3027a {
        C3029a() {
            C3028b.this = r4;
        }

        @Override // java.lang.Iterable
        public Iterator<FileDownloadModel> iterator() {
            return new C3030b(C3028b.this);
        }

        @Override // p092e.p096e.p097a.p099e0.AbstractC3026a.AbstractC3027a
        /* renamed from: m */
        public void mo477m(FileDownloadModel fileDownloadModel) {
        }

        @Override // p092e.p096e.p097a.p099e0.AbstractC3026a.AbstractC3027a
        /* renamed from: o */
        public void mo476o(FileDownloadModel fileDownloadModel) {
        }

        @Override // p092e.p096e.p097a.p099e0.AbstractC3026a.AbstractC3027a
        /* renamed from: s */
        public void mo475s() {
        }

        @Override // p092e.p096e.p097a.p099e0.AbstractC3026a.AbstractC3027a
        /* renamed from: v */
        public void mo474v(int i, FileDownloadModel fileDownloadModel) {
        }
    }

    /* renamed from: e.e.a.e0.b$b */
    /* loaded from: classes2-dex2jar.jar:e/e/a/e0/b$b.class */
    class C3030b implements Iterator<FileDownloadModel> {
        C3030b(C3028b c3028b) {
        }

        /* renamed from: b */
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

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: a */
    public void mo500a(int i) {
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: b */
    public void mo499b(C2774a c2774a) {
        int m1789c = c2774a.m1789c();
        synchronized (this.f12650b) {
            List<C2774a> list = this.f12650b.get(m1789c);
            List<C2774a> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>();
                this.f12650b.put(m1789c, list2);
            }
            list2.add(c2774a);
        }
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: c */
    public void mo498c(int i) {
        synchronized (this.f12650b) {
            this.f12650b.remove(i);
        }
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    public void clear() {
        synchronized (this.f12649a) {
            this.f12649a.clear();
        }
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: d */
    public AbstractC3026a.AbstractC3027a mo497d() {
        return new C3029a();
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: e */
    public void mo496e(int i, Throwable th) {
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: f */
    public void mo495f(int i) {
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: g */
    public void mo494g(int i, long j) {
        remove(i);
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: h */
    public void mo493h(FileDownloadModel fileDownloadModel) {
        if (fileDownloadModel == null) {
            C3062d.m406i(this, "update but model == null!", new Object[0]);
        } else if (mo486o(fileDownloadModel.m1813e()) == null) {
            m510r(fileDownloadModel);
        } else {
            synchronized (this.f12649a) {
                this.f12649a.remove(fileDownloadModel.m1813e());
                this.f12649a.put(fileDownloadModel.m1813e(), fileDownloadModel);
            }
        }
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: i */
    public void mo492i(int i, Throwable th, long j) {
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: j */
    public void mo491j(int i, String str, long j, long j2, int i2) {
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: k */
    public void mo490k(int i, int i2, long j) {
        C2774a next;
        synchronized (this.f12650b) {
            try {
                List<C2774a> list = this.f12650b.get(i);
                if (list == null) {
                    return;
                }
                Iterator<C2774a> it = list.iterator();
                do {
                    if (!it.hasNext()) {
                        return;
                    }
                    next = it.next();
                } while (next.m1788d() != i2);
                next.m1785g(j);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: l */
    public void mo489l(int i, long j) {
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: m */
    public void mo488m(int i, long j, String str, String str2) {
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: n */
    public List<C2774a> mo487n(int i) {
        List<C2774a> list;
        ArrayList arrayList = new ArrayList();
        synchronized (this.f12650b) {
            list = this.f12650b.get(i);
        }
        if (list != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: o */
    public FileDownloadModel mo486o(int i) {
        FileDownloadModel fileDownloadModel;
        synchronized (this.f12649a) {
            fileDownloadModel = this.f12649a.get(i);
        }
        return fileDownloadModel;
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: p */
    public void mo485p(int i, int i2) {
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: q */
    public void mo484q(int i, long j) {
    }

    /* renamed from: r */
    public void m510r(FileDownloadModel fileDownloadModel) {
        synchronized (this.f12649a) {
            this.f12649a.put(fileDownloadModel.m1813e(), fileDownloadModel);
        }
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    public boolean remove(int i) {
        synchronized (this.f12649a) {
            this.f12649a.remove(i);
        }
        return true;
    }
}
