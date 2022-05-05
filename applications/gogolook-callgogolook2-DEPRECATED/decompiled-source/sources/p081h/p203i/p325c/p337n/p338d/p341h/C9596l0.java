package p081h.p203i.p325c.p337n.p338d.p341h;

import android.os.Looper;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p081h.p203i.p204a.p224e.p293r.AbstractC9128a;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9145i;
/* renamed from: h.i.c.n.d.h.l0 */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/l0.class */
public final class C9596l0 {

    /* renamed from: a */
    public static final FilenameFilter f21856a = new C9597a();

    /* renamed from: b */
    public static final ExecutorService f21857b = C9616w.m14698a("awaitEvenIfOnMainThread task continuation executor");

    /* renamed from: h.i.c.n.d.h.l0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/l0$a.class */
    public class C9597a implements FilenameFilter {
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return true;
        }
    }

    /* renamed from: h.i.c.n.d.h.l0$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/l0$b.class */
    public class C9598b implements AbstractC9128a<T, Void> {

        /* renamed from: a */
        public final /* synthetic */ C9145i f21858a;

        public C9598b(C9145i iVar) {
            this.f21858a = iVar;
        }

        @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9128a
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public Void mo14017a(@NonNull AbstractC9143h<T> hVar) throws Exception {
            if (hVar.mo16009e()) {
                this.f21858a.m16004b((C9145i) hVar.mo16014b());
                return null;
            }
            this.f21858a.m16005b(hVar.mo16030a());
            return null;
        }
    }

    /* renamed from: h.i.c.n.d.h.l0$c */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/l0$c.class */
    public class RunnableC9599c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Callable f21859a;

        /* renamed from: b */
        public final /* synthetic */ C9145i f21860b;

        /* renamed from: h.i.c.n.d.h.l0$c$a */
        /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/l0$c$a.class */
        public class C9600a implements AbstractC9128a<T, Void> {
            public C9600a() {
            }

            @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9128a
            /* renamed from: a  reason: avoid collision after fix types in other method */
            public Void mo14017a(@NonNull AbstractC9143h<T> hVar) throws Exception {
                if (hVar.mo16009e()) {
                    RunnableC9599c.this.f21860b.m16006a((C9145i) hVar.mo16014b());
                    return null;
                }
                RunnableC9599c.this.f21860b.m16007a(hVar.mo16030a());
                return null;
            }
        }

        public RunnableC9599c(Callable callable, C9145i iVar) {
            this.f21859a = callable;
            this.f21860b = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ((AbstractC9143h) this.f21859a.call()).mo16027a(new C9600a());
            } catch (Exception e) {
                this.f21860b.m16007a(e);
            }
        }
    }

    /* renamed from: a */
    public static int m14764a(File file, int i, Comparator<File> comparator) {
        return m14762a(file, f21856a, i, comparator);
    }

    /* renamed from: a */
    public static int m14763a(File file, File file2, int i, Comparator<File> comparator) {
        ArrayList arrayList = new ArrayList();
        File[] listFiles = file.listFiles();
        File[] listFiles2 = file2.listFiles(f21856a);
        if (listFiles == null) {
            listFiles = new File[0];
        }
        if (listFiles2 == null) {
            listFiles2 = new File[0];
        }
        arrayList.addAll(Arrays.asList(listFiles));
        arrayList.addAll(Arrays.asList(listFiles2));
        return m14761a(arrayList, i, comparator);
    }

    /* renamed from: a */
    public static int m14762a(File file, FilenameFilter filenameFilter, int i, Comparator<File> comparator) {
        File[] listFiles = file.listFiles(filenameFilter);
        if (listFiles == null) {
            return 0;
        }
        return m14761a(Arrays.asList(listFiles), i, comparator);
    }

    /* renamed from: a */
    public static int m14761a(List<File> list, int i, Comparator<File> comparator) {
        int size = list.size();
        Collections.sort(list, comparator);
        for (File file : list) {
            if (size <= i) {
                return size;
            }
            m14765a(file);
            size--;
        }
        return size;
    }

    /* renamed from: a */
    public static <T> AbstractC9143h<T> m14766a(AbstractC9143h<T> hVar, AbstractC9143h<T> hVar2) {
        C9145i iVar = new C9145i();
        C9598b bVar = new C9598b(iVar);
        hVar.mo16027a(bVar);
        hVar2.mo16027a(bVar);
        return iVar.m16008a();
    }

    /* renamed from: a */
    public static <T> AbstractC9143h<T> m14759a(Executor executor, Callable<AbstractC9143h<T>> callable) {
        C9145i iVar = new C9145i();
        executor.execute(new RunnableC9599c(callable, iVar));
        return iVar.m16008a();
    }

    /* renamed from: a */
    public static <T> T m14767a(AbstractC9143h<T> hVar) throws InterruptedException, TimeoutException {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        hVar.mo16020a(f21857b, C9594k0.m14770a(countDownLatch));
        if (Looper.getMainLooper() == Looper.myLooper()) {
            countDownLatch.await(4L, TimeUnit.SECONDS);
        } else {
            countDownLatch.await();
        }
        if (hVar.mo16009e()) {
            return hVar.mo16014b();
        }
        if (hVar.mo16011c()) {
            throw new CancellationException("Task is already canceled");
        } else if (hVar.mo16010d()) {
            throw new IllegalStateException(hVar.mo16030a());
        } else {
            throw new TimeoutException();
        }
    }

    /* renamed from: a */
    public static void m14765a(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                m14765a(file2);
            }
        }
        file.delete();
    }
}
