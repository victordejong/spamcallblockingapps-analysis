package p1727n3.p1744b0.p1745a;

import android.os.Handler;
import android.os.Looper;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import p1727n3.p1744b0.p1745a.C25586h;
/* renamed from: n3.b0.a.d */
/* loaded from: classes-dex2jar.jar:n3/b0/a/d.class */
public class C25576d<T> {

    /* renamed from: h */
    public static final Executor f71584h = new ExecutorC25581c();

    /* renamed from: a */
    public final AbstractC25617q f71585a;

    /* renamed from: b */
    public final C25574c<T> f71586b;

    /* renamed from: e */
    public List<T> f71589e;

    /* renamed from: g */
    public int f71591g;

    /* renamed from: d */
    public final List<AbstractC25580b<T>> f71588d = new CopyOnWriteArrayList();

    /* renamed from: f */
    public List<T> f71590f = Collections.emptyList();

    /* renamed from: c */
    public Executor f71587c = f71584h;

    /* renamed from: n3.b0.a.d$a */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/d$a.class */
    public class RunnableC25577a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ List f71592a;

        /* renamed from: b */
        public final /* synthetic */ List f71593b;

        /* renamed from: c */
        public final /* synthetic */ int f71594c;

        /* renamed from: d */
        public final /* synthetic */ Runnable f71595d;

        /* renamed from: n3.b0.a.d$a$a */
        /* loaded from: classes-dex2jar.jar:n3/b0/a/d$a$a.class */
        public class C25578a extends C25586h.AbstractC25588b {
            public C25578a() {
                RunnableC25577a.this = r4;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
            public boolean areContentsTheSame(int i, int i2) {
                Object obj = RunnableC25577a.this.f71592a.get(i);
                Object obj2 = RunnableC25577a.this.f71593b.get(i2);
                if (obj == null || obj2 == null) {
                    if (obj != null || obj2 != null) {
                        throw new AssertionError();
                    }
                    return true;
                }
                return C25576d.this.f71586b.f71579b.areContentsTheSame(obj, obj2);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
            public boolean areItemsTheSame(int i, int i2) {
                Object obj = RunnableC25577a.this.f71592a.get(i);
                Object obj2 = RunnableC25577a.this.f71593b.get(i2);
                if (obj == null || obj2 == null) {
                    return obj == null && obj2 == null;
                }
                return C25576d.this.f71586b.f71579b.areItemsTheSame(obj, obj2);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
            public Object getChangePayload(int i, int i2) {
                Object obj = RunnableC25577a.this.f71592a.get(i);
                Object obj2 = RunnableC25577a.this.f71593b.get(i2);
                if (obj == null || obj2 == null) {
                    throw new AssertionError();
                }
                return C25576d.this.f71586b.f71579b.getChangePayload(obj, obj2);
            }

            @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
            public int getNewListSize() {
                return RunnableC25577a.this.f71593b.size();
            }

            @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
            public int getOldListSize() {
                return RunnableC25577a.this.f71592a.size();
            }
        }

        /* renamed from: n3.b0.a.d$a$b */
        /* loaded from: classes-dex2jar.jar:n3/b0/a/d$a$b.class */
        public class RunnableC25579b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C25586h.C25590d f71598a;

            public RunnableC25579b(C25586h.C25590d c25590d) {
                RunnableC25577a.this = r4;
                this.f71598a = c25590d;
            }

            @Override // java.lang.Runnable
            public void run() {
                RunnableC25577a runnableC25577a = RunnableC25577a.this;
                C25576d c25576d = C25576d.this;
                if (c25576d.f71591g == runnableC25577a.f71594c) {
                    List<T> list = runnableC25577a.f71593b;
                    C25586h.C25590d c25590d = this.f71598a;
                    Runnable runnable = runnableC25577a.f71595d;
                    List<T> list2 = c25576d.f71590f;
                    c25576d.f71589e = list;
                    c25576d.f71590f = Collections.unmodifiableList(list);
                    c25590d.m3179b(c25576d.f71585a);
                    c25576d.m3205a(list2, runnable);
                }
            }
        }

        public RunnableC25577a(List list, List list2, int i, Runnable runnable) {
            C25576d.this = r4;
            this.f71592a = list;
            this.f71593b = list2;
            this.f71594c = i;
            this.f71595d = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            C25576d.this.f71587c.execute(new RunnableC25579b(C25586h.m3181a(new C25578a(), true)));
        }
    }

    /* renamed from: n3.b0.a.d$b */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/d$b.class */
    public interface AbstractC25580b<T> {
        /* renamed from: a */
        void mo3136a(List<T> list, List<T> list2);
    }

    /* renamed from: n3.b0.a.d$c */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/d$c.class */
    public static class ExecutorC25581c implements Executor {

        /* renamed from: a */
        public final Handler f71600a = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f71600a.post(runnable);
        }
    }

    public C25576d(AbstractC25617q abstractC25617q, C25574c<T> c25574c) {
        this.f71585a = abstractC25617q;
        this.f71586b = c25574c;
        Objects.requireNonNull(c25574c);
    }

    /* renamed from: a */
    public final void m3205a(List<T> list, Runnable runnable) {
        for (AbstractC25580b<T> abstractC25580b : this.f71588d) {
            abstractC25580b.mo3136a(list, this.f71590f);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    /* renamed from: b */
    public void m3204b(List<T> list, Runnable runnable) {
        int i = this.f71591g + 1;
        this.f71591g = i;
        List<T> list2 = this.f71589e;
        if (list == list2) {
            if (runnable == null) {
                return;
            }
            runnable.run();
            return;
        }
        List<T> list3 = this.f71590f;
        if (list == null) {
            int size = list2.size();
            this.f71589e = null;
            this.f71590f = Collections.emptyList();
            this.f71585a.onRemoved(0, size);
            m3205a(list3, runnable);
        } else if (list2 != null) {
            this.f71586b.f71578a.execute(new RunnableC25577a(list2, list, i, runnable));
        } else {
            this.f71589e = list;
            this.f71590f = Collections.unmodifiableList(list);
            this.f71585a.onInserted(0, list.size());
            m3205a(list3, runnable);
        }
    }
}
