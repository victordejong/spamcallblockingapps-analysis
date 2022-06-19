package com.liulishuo.filedownloader.services;

import android.util.SparseArray;
import com.liulishuo.filedownloader.download.DownloadLaunchRunnable;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import p078c.p122d.p123a.p128i0.C2029b;
import p078c.p122d.p123a.p128i0.C2036d;
import p078c.p122d.p123a.p128i0.C2037e;
/* renamed from: com.liulishuo.filedownloader.services.h */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/h.class */
class C9390h {

    /* renamed from: b */
    private ThreadPoolExecutor f40140b;

    /* renamed from: d */
    private int f40142d;

    /* renamed from: a */
    private SparseArray<DownloadLaunchRunnable> f40139a = new SparseArray<>();

    /* renamed from: c */
    private final String f40141c = "Network";

    /* renamed from: e */
    private int f40143e = 0;

    public C9390h(int i) {
        this.f40140b = C2029b.m28265a(i, "Network");
        this.f40142d = i;
    }

    /* renamed from: d */
    private void m756d() {
        synchronized (this) {
            SparseArray<DownloadLaunchRunnable> sparseArray = new SparseArray<>();
            int size = this.f40139a.size();
            for (int i = 0; i < size; i++) {
                int keyAt = this.f40139a.keyAt(i);
                DownloadLaunchRunnable downloadLaunchRunnable = this.f40139a.get(keyAt);
                if (downloadLaunchRunnable != null && downloadLaunchRunnable.m1026p()) {
                    sparseArray.put(keyAt, downloadLaunchRunnable);
                }
            }
            this.f40139a = sparseArray;
        }
    }

    /* renamed from: a */
    public void m759a(int i) {
        m756d();
        synchronized (this) {
            DownloadLaunchRunnable downloadLaunchRunnable = this.f40139a.get(i);
            if (downloadLaunchRunnable != null) {
                downloadLaunchRunnable.m1024r();
                boolean remove = this.f40140b.remove(downloadLaunchRunnable);
                if (C2036d.f7151a) {
                    C2036d.m28253a(this, "successful cancel %d %B", Integer.valueOf(i), Boolean.valueOf(remove));
                }
            }
            this.f40139a.remove(i);
        }
    }

    /* renamed from: b */
    public int m758b() {
        int size;
        synchronized (this) {
            m756d();
            size = this.f40139a.size();
        }
        return size;
    }

    /* renamed from: c */
    public void m757c(DownloadLaunchRunnable downloadLaunchRunnable) {
        downloadLaunchRunnable.m1023s();
        synchronized (this) {
            this.f40139a.put(downloadLaunchRunnable.m1031k(), downloadLaunchRunnable);
        }
        this.f40140b.execute(downloadLaunchRunnable);
        int i = this.f40143e;
        if (i < 600) {
            this.f40143e = i + 1;
            return;
        }
        m756d();
        this.f40143e = 0;
    }

    /* renamed from: e */
    public int m755e(String str, int i) {
        synchronized (this) {
            if (str == null) {
                return 0;
            }
            int size = this.f40139a.size();
            for (int i2 = 0; i2 < size; i2++) {
                DownloadLaunchRunnable valueAt = this.f40139a.valueAt(i2);
                if (valueAt != null && valueAt.m1026p() && valueAt.m1031k() != i && str.equals(valueAt.m1030l())) {
                    return valueAt.m1031k();
                }
            }
            return 0;
        }
    }

    /* renamed from: f */
    public List<Integer> m754f() {
        ArrayList arrayList;
        synchronized (this) {
            m756d();
            arrayList = new ArrayList();
            for (int i = 0; i < this.f40139a.size(); i++) {
                SparseArray<DownloadLaunchRunnable> sparseArray = this.f40139a;
                arrayList.add(Integer.valueOf(sparseArray.get(sparseArray.keyAt(i)).m1031k()));
            }
        }
        return arrayList;
    }

    /* renamed from: g */
    public boolean m753g(int i) {
        boolean z;
        synchronized (this) {
            DownloadLaunchRunnable downloadLaunchRunnable = this.f40139a.get(i);
            if (downloadLaunchRunnable != null) {
                if (downloadLaunchRunnable.m1026p()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    /* renamed from: h */
    public boolean m752h(int i) {
        synchronized (this) {
            if (m758b() > 0) {
                C2036d.m28245i(this, "Can't change the max network thread count, because the  network thread pool isn't in IDLE, please try again after all running tasks are completed or invoking FileDownloader#pauseAll directly.", new Object[0]);
                return false;
            }
            int m28243b = C2037e.m28243b(i);
            if (C2036d.f7151a) {
                C2036d.m28253a(this, "change the max network thread count, from %d to %d", Integer.valueOf(this.f40142d), Integer.valueOf(m28243b));
            }
            List<Runnable> shutdownNow = this.f40140b.shutdownNow();
            this.f40140b = C2029b.m28265a(m28243b, "Network");
            if (shutdownNow.size() > 0) {
                C2036d.m28245i(this, "recreate the network thread pool and discard %d tasks", Integer.valueOf(shutdownNow.size()));
            }
            this.f40142d = m28243b;
            return true;
        }
    }
}
