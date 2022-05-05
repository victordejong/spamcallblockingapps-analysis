package androidx.recyclerview.widget;

import android.os.Handler;
import android.util.Log;
import androidx.recyclerview.widget.ThreadUtil;
import androidx.recyclerview.widget.TileList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/MessageThreadUtil.class */
class MessageThreadUtil<T> implements ThreadUtil<T> {

    /* renamed from: androidx.recyclerview.widget.MessageThreadUtil$1 */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/MessageThreadUtil$1.class */
    class C04761 implements ThreadUtil.MainThreadCallback<T> {

        /* renamed from: a */
        final MessageQueue f4710a;

        /* renamed from: b */
        private final Handler f4711b;

        /* renamed from: c */
        private Runnable f4712c;

        /* renamed from: d */
        final /* synthetic */ ThreadUtil.MainThreadCallback f4713d;

        /* renamed from: androidx.recyclerview.widget.MessageThreadUtil$1$1 */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/MessageThreadUtil$1$1.class */
        class RunnableC04771 implements Runnable {

            /* renamed from: f */
            final /* synthetic */ C04761 f4714f;

            @Override // java.lang.Runnable
            public void run() {
                SyncQueueItem a = this.f4714f.f4710a.m17562a();
                while (a != null) {
                    int i = a.f4725b;
                    if (i == 1) {
                        this.f4714f.f4713d.mo17059c(a.f4726c, a.f4727d);
                    } else if (i == 2) {
                        this.f4714f.f4713d.mo17061a(a.f4726c, (TileList.Tile) a.f4731h);
                    } else if (i != 3) {
                        Log.e("ThreadUtil", "Unsupported message, what=" + a.f4725b);
                    } else {
                        this.f4714f.f4713d.mo17060b(a.f4726c, a.f4727d);
                    }
                    a = this.f4714f.f4710a.m17562a();
                }
            }
        }

        /* renamed from: d */
        private void m17566d(SyncQueueItem syncQueueItem) {
            this.f4710a.m17560c(syncQueueItem);
            this.f4711b.post(this.f4712c);
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        /* renamed from: a */
        public void mo17061a(int i, TileList.Tile<T> tile) {
            m17566d(SyncQueueItem.m17556c(2, i, tile));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        /* renamed from: b */
        public void mo17060b(int i, int i2) {
            m17566d(SyncQueueItem.m17558a(3, i, i2));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        /* renamed from: c */
        public void mo17059c(int i, int i2) {
            m17566d(SyncQueueItem.m17558a(1, i, i2));
        }
    }

    /* renamed from: androidx.recyclerview.widget.MessageThreadUtil$2 */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/MessageThreadUtil$2.class */
    class C04782 implements ThreadUtil.BackgroundCallback<T> {

        /* renamed from: a */
        final MessageQueue f4715a;

        /* renamed from: b */
        private final Executor f4716b;

        /* renamed from: c */
        AtomicBoolean f4717c;

        /* renamed from: d */
        private Runnable f4718d;

        /* renamed from: e */
        final /* synthetic */ ThreadUtil.BackgroundCallback f4719e;

        /* renamed from: androidx.recyclerview.widget.MessageThreadUtil$2$1 */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/MessageThreadUtil$2$1.class */
        class RunnableC04791 implements Runnable {

            /* renamed from: f */
            final /* synthetic */ C04782 f4720f;

            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    SyncQueueItem a = this.f4720f.f4715a.m17562a();
                    if (a == null) {
                        this.f4720f.f4717c.set(false);
                        return;
                    }
                    int i = a.f4725b;
                    if (i == 1) {
                        this.f4720f.f4715a.m17561b(1);
                        this.f4720f.f4719e.mo17062d(a.f4726c);
                    } else if (i == 2) {
                        this.f4720f.f4715a.m17561b(2);
                        this.f4720f.f4715a.m17561b(3);
                        this.f4720f.f4719e.mo17065a(a.f4726c, a.f4727d, a.f4728e, a.f4729f, a.f4730g);
                    } else if (i == 3) {
                        this.f4720f.f4719e.mo17063c(a.f4726c, a.f4727d);
                    } else if (i != 4) {
                        Log.e("ThreadUtil", "Unsupported message, what=" + a.f4725b);
                    } else {
                        this.f4720f.f4719e.mo17064b((TileList.Tile) a.f4731h);
                    }
                }
            }
        }

        /* renamed from: e */
        private void m17565e() {
            if (this.f4717c.compareAndSet(false, true)) {
                this.f4716b.execute(this.f4718d);
            }
        }

        /* renamed from: f */
        private void m17564f(SyncQueueItem syncQueueItem) {
            this.f4715a.m17560c(syncQueueItem);
            m17565e();
        }

        /* renamed from: g */
        private void m17563g(SyncQueueItem syncQueueItem) {
            this.f4715a.m17559d(syncQueueItem);
            m17565e();
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        /* renamed from: a */
        public void mo17065a(int i, int i2, int i3, int i4, int i5) {
            m17563g(SyncQueueItem.m17557b(2, i, i2, i3, i4, i5, null));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        /* renamed from: b */
        public void mo17064b(TileList.Tile<T> tile) {
            m17564f(SyncQueueItem.m17556c(4, 0, tile));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        /* renamed from: c */
        public void mo17063c(int i, int i2) {
            m17564f(SyncQueueItem.m17558a(3, i, i2));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        /* renamed from: d */
        public void mo17062d(int i) {
            m17563g(SyncQueueItem.m17556c(1, i, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/MessageThreadUtil$MessageQueue.class */
    public static class MessageQueue {

        /* renamed from: a */
        private SyncQueueItem f4721a;

        MessageQueue() {
        }

        /* renamed from: a */
        SyncQueueItem m17562a() {
            synchronized (this) {
                if (this.f4721a == null) {
                    return null;
                }
                SyncQueueItem syncQueueItem = this.f4721a;
                this.f4721a = this.f4721a.f4724a;
                return syncQueueItem;
            }
        }

        /* renamed from: b */
        void m17561b(int i) {
            synchronized (this) {
                while (this.f4721a != null && this.f4721a.f4725b == i) {
                    SyncQueueItem syncQueueItem = this.f4721a;
                    this.f4721a = this.f4721a.f4724a;
                    syncQueueItem.m17555d();
                }
                if (this.f4721a != null) {
                    SyncQueueItem syncQueueItem2 = this.f4721a;
                    SyncQueueItem syncQueueItem3 = syncQueueItem2.f4724a;
                    while (syncQueueItem3 != null) {
                        SyncQueueItem syncQueueItem4 = syncQueueItem3.f4724a;
                        if (syncQueueItem3.f4725b == i) {
                            syncQueueItem2.f4724a = syncQueueItem4;
                            syncQueueItem3.m17555d();
                        } else {
                            syncQueueItem2 = syncQueueItem3;
                        }
                        syncQueueItem3 = syncQueueItem4;
                    }
                }
            }
        }

        /* renamed from: c */
        void m17560c(SyncQueueItem syncQueueItem) {
            synchronized (this) {
                if (this.f4721a == null) {
                    this.f4721a = syncQueueItem;
                    return;
                }
                SyncQueueItem syncQueueItem2 = this.f4721a;
                while (syncQueueItem2.f4724a != null) {
                    syncQueueItem2 = syncQueueItem2.f4724a;
                }
                syncQueueItem2.f4724a = syncQueueItem;
            }
        }

        /* renamed from: d */
        void m17559d(SyncQueueItem syncQueueItem) {
            synchronized (this) {
                syncQueueItem.f4724a = this.f4721a;
                this.f4721a = syncQueueItem;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem.class */
    public static class SyncQueueItem {

        /* renamed from: i */
        private static SyncQueueItem f4722i;

        /* renamed from: j */
        private static final Object f4723j = new Object();

        /* renamed from: a */
        SyncQueueItem f4724a;

        /* renamed from: b */
        public int f4725b;

        /* renamed from: c */
        public int f4726c;

        /* renamed from: d */
        public int f4727d;

        /* renamed from: e */
        public int f4728e;

        /* renamed from: f */
        public int f4729f;

        /* renamed from: g */
        public int f4730g;

        /* renamed from: h */
        public Object f4731h;

        SyncQueueItem() {
        }

        /* renamed from: a */
        static SyncQueueItem m17558a(int i, int i2, int i3) {
            return m17557b(i, i2, i3, 0, 0, 0, null);
        }

        /* renamed from: b */
        static SyncQueueItem m17557b(int i, int i2, int i3, int i4, int i5, int i6, Object obj) {
            SyncQueueItem syncQueueItem;
            synchronized (f4723j) {
                if (f4722i == null) {
                    syncQueueItem = new SyncQueueItem();
                } else {
                    syncQueueItem = f4722i;
                    f4722i = f4722i.f4724a;
                    syncQueueItem.f4724a = null;
                }
                syncQueueItem.f4725b = i;
                syncQueueItem.f4726c = i2;
                syncQueueItem.f4727d = i3;
                syncQueueItem.f4728e = i4;
                syncQueueItem.f4729f = i5;
                syncQueueItem.f4730g = i6;
                syncQueueItem.f4731h = obj;
            }
            return syncQueueItem;
        }

        /* renamed from: c */
        static SyncQueueItem m17556c(int i, int i2, Object obj) {
            return m17557b(i, i2, 0, 0, 0, 0, obj);
        }

        /* renamed from: d */
        void m17555d() {
            this.f4724a = null;
            this.f4730g = 0;
            this.f4729f = 0;
            this.f4728e = 0;
            this.f4727d = 0;
            this.f4726c = 0;
            this.f4725b = 0;
            this.f4731h = null;
            synchronized (f4723j) {
                if (f4722i != null) {
                    this.f4724a = f4722i;
                }
                f4722i = this;
            }
        }
    }

    MessageThreadUtil() {
    }
}
