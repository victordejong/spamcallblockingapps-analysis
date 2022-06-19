package com.liulishuo.filedownloader.services;

import android.util.SparseArray;
import com.liulishuo.filedownloader.download.DownloadLaunchRunnable;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import p092e.p096e.p097a.p102h0.C3054b;
import p092e.p096e.p097a.p102h0.C3062d;
import p092e.p096e.p097a.p102h0.C3063e;
/* renamed from: com.liulishuo.filedownloader.services.h */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/h.class */
class C2785h {

    /* renamed from: b */
    private ThreadPoolExecutor f11549b;

    /* renamed from: c */
    private int f11550c;

    /* renamed from: a */
    private SparseArray<DownloadLaunchRunnable> f11548a = new SparseArray<>();

    /* renamed from: d */
    private int f11551d = 0;

    public C2785h(int i) {
        this.f11549b = C3054b.m429a(i, "Network");
        this.f11550c = i;
    }

    /* renamed from: d */
    private void m1739d() {
        synchronized (this) {
            SparseArray<DownloadLaunchRunnable> sparseArray = new SparseArray<>();
            int size = this.f11548a.size();
            for (int i = 0; i < size; i++) {
                int keyAt = this.f11548a.keyAt(i);
                DownloadLaunchRunnable downloadLaunchRunnable = this.f11548a.get(keyAt);
                if (downloadLaunchRunnable != null && downloadLaunchRunnable.m1980p()) {
                    sparseArray.put(keyAt, downloadLaunchRunnable);
                }
            }
            this.f11548a = sparseArray;
        }
    }

    /* renamed from: a */
    public void m1742a(int i) {
        m1739d();
        synchronized (this) {
            DownloadLaunchRunnable downloadLaunchRunnable = this.f11548a.get(i);
            if (downloadLaunchRunnable != null) {
                downloadLaunchRunnable.m1978r();
                boolean remove = this.f11549b.remove(downloadLaunchRunnable);
                if (C3062d.f12682a) {
                    C3062d.m414a(this, "successful cancel %d %B", Integer.valueOf(i), Boolean.valueOf(remove));
                }
            }
            this.f11548a.remove(i);
        }
    }

    /* renamed from: b */
    public int m1741b() {
        int size;
        synchronized (this) {
            m1739d();
            size = this.f11548a.size();
        }
        return size;
    }

    /* renamed from: c */
    public void m1740c(DownloadLaunchRunnable downloadLaunchRunnable) {
        int i;
        downloadLaunchRunnable.m1977s();
        synchronized (this) {
            this.f11548a.put(downloadLaunchRunnable.m1985k(), downloadLaunchRunnable);
        }
        this.f11549b.execute(downloadLaunchRunnable);
        int i2 = this.f11551d;
        if (i2 >= 600) {
            m1739d();
            i = 0;
        } else {
            i = i2 + 1;
        }
        this.f11551d = i;
    }

    /* renamed from: e */
    public int m1738e(String str, int i) {
        synchronized (this) {
            if (str == null) {
                return 0;
            }
            int size = this.f11548a.size();
            for (int i2 = 0; i2 < size; i2++) {
                DownloadLaunchRunnable valueAt = this.f11548a.valueAt(i2);
                if (valueAt != null && valueAt.m1980p() && valueAt.m1985k() != i && str.equals(valueAt.m1984l())) {
                    return valueAt.m1985k();
                }
            }
            return 0;
        }
    }

    /* renamed from: f */
    public List<Integer> m1737f() {
        ArrayList arrayList;
        synchronized (this) {
            m1739d();
            arrayList = new ArrayList();
            for (int i = 0; i < this.f11548a.size(); i++) {
                SparseArray<DownloadLaunchRunnable> sparseArray = this.f11548a;
                arrayList.add(Integer.valueOf(sparseArray.get(sparseArray.keyAt(i)).m1985k()));
            }
        }
        return arrayList;
    }

    /* renamed from: g */
    public boolean m1736g(int i) {
        boolean z;
        synchronized (this) {
            DownloadLaunchRunnable downloadLaunchRunnable = this.f11548a.get(i);
            if (downloadLaunchRunnable != null) {
                if (downloadLaunchRunnable.m1980p()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    /* renamed from: h */
    public boolean m1735h(int i) {
        synchronized (this) {
            if (m1741b() > 0) {
                C3062d.m406i(this, "Can't change the max network thread count, because the  network thread pool isn't in IDLE, please try again after all running tasks are completed or invoking FileDownloader#pauseAll directly.", new Object[0]);
                return false;
            }
            int m404b = C3063e.m404b(i);
            if (C3062d.f12682a) {
                C3062d.m414a(this, "change the max network thread count, from %d to %d", Integer.valueOf(this.f11550c), Integer.valueOf(m404b));
            }
            List<Runnable> shutdownNow = this.f11549b.shutdownNow();
            this.f11549b = C3054b.m429a(m404b, "Network");
            if (shutdownNow.size() > 0) {
                C3062d.m406i(this, "recreate the network thread pool and discard %d tasks", Integer.valueOf(shutdownNow.size()));
            }
            this.f11550c = m404b;
            return true;
        }
    }
}
