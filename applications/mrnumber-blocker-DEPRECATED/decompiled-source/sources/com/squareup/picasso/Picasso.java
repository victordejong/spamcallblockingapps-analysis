package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.widget.ImageView;
import android.widget.RemoteViews;
import com.squareup.picasso.AbstractC0169a;
import java.io.File;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso.class */
public class Picasso {
    static final String TAG = "Picasso";
    final AbstractC0182d cache;
    private final C0163c cleanupThread;
    final Context context;
    final Bitmap.Config defaultBitmapConfig;
    final C0190i dispatcher;
    boolean indicatorsEnabled;
    private final AbstractC0165d listener;
    volatile boolean loggingEnabled;
    final ReferenceQueue<Object> referenceQueue;
    private final List<AbstractC0208y> requestHandlers;
    private final AbstractC0168g requestTransformer;
    boolean shutdown;
    final C0171a0 stats;
    final Map<Object, AbstractC0169a> targetToAction;
    final Map<ImageView, ViewTreeObserver$OnPreDrawListenerC0189h> targetToDeferredRequestCreator;
    static final Handler HANDLER = new HandlerC0161a(Looper.getMainLooper());
    static volatile Picasso singleton = null;

    /* renamed from: com.squareup.picasso.Picasso$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$a.class */
    static final class HandlerC0161a extends Handler {
        HandlerC0161a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i != 3) {
                if (i == 8) {
                    List list = (List) message.obj;
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        RunnableC0175c cVar = (RunnableC0175c) list.get(i2);
                        cVar.f327g.complete(cVar);
                    }
                } else if (i == 13) {
                    List list2 = (List) message.obj;
                    int size2 = list2.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        AbstractC0169a aVar = (AbstractC0169a) list2.get(i3);
                        aVar.f279a.resumeAction(aVar);
                    }
                } else {
                    throw new AssertionError("Unknown handler message received: " + message.what);
                }
            } else {
                AbstractC0169a aVar2 = (AbstractC0169a) message.obj;
                if (aVar2.m848g().loggingEnabled) {
                    C0185f0.m774t("Main", "canceled", aVar2.f280b.m726d(), "target got garbage collected");
                }
                aVar2.f279a.cancelExistingRequest(aVar2.m844k());
            }
        }
    }

    /* renamed from: com.squareup.picasso.Picasso$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$b.class */
    public static class C0162b {

        /* renamed from: a */
        private final Context f264a;

        /* renamed from: b */
        private AbstractC0196j f265b;

        /* renamed from: c */
        private ExecutorService f266c;

        /* renamed from: d */
        private AbstractC0182d f267d;

        /* renamed from: e */
        private AbstractC0165d f268e;

        /* renamed from: f */
        private AbstractC0168g f269f;

        /* renamed from: g */
        private List<AbstractC0208y> f270g;

        /* renamed from: h */
        private Bitmap.Config f271h;

        /* renamed from: i */
        private boolean f272i;

        /* renamed from: j */
        private boolean f273j;

        public C0162b(Context context) {
            if (context != null) {
                this.f264a = context.getApplicationContext();
                return;
            }
            throw new IllegalArgumentException("Context must not be null.");
        }

        /* renamed from: a */
        public Picasso m862a() {
            Context context = this.f264a;
            if (this.f265b == null) {
                this.f265b = new s(context);
            }
            if (this.f267d == null) {
                this.f267d = new m(context);
            }
            if (this.f266c == null) {
                this.f266c = new C0201u();
            }
            if (this.f269f == null) {
                this.f269f = AbstractC0168g.f277a;
            }
            C0171a0 a0Var = new C0171a0(this.f267d);
            return new Picasso(context, new C0190i(context, this.f266c, Picasso.HANDLER, this.f265b, this.f267d, a0Var), this.f267d, this.f268e, this.f269f, this.f270g, a0Var, this.f271h, this.f272i, this.f273j);
        }

        /* renamed from: b */
        public C0162b m861b(Bitmap.Config config) {
            if (config != null) {
                this.f271h = config;
                return this;
            }
            throw new IllegalArgumentException("Bitmap config must not be null.");
        }

        /* renamed from: c */
        public C0162b m860c(AbstractC0196j jVar) {
            if (jVar == null) {
                throw new IllegalArgumentException("Downloader must not be null.");
            } else if (this.f265b == null) {
                this.f265b = jVar;
                return this;
            } else {
                throw new IllegalStateException("Downloader already set.");
            }
        }

        /* renamed from: d */
        public C0162b m859d(ExecutorService executorService) {
            if (executorService == null) {
                throw new IllegalArgumentException("Executor service must not be null.");
            } else if (this.f266c == null) {
                this.f266c = executorService;
                return this;
            } else {
                throw new IllegalStateException("Executor service already set.");
            }
        }

        /* renamed from: e */
        public C0162b m858e(AbstractC0165d dVar) {
            if (dVar == null) {
                throw new IllegalArgumentException("Listener must not be null.");
            } else if (this.f268e == null) {
                this.f268e = dVar;
                return this;
            } else {
                throw new IllegalStateException("Listener already set.");
            }
        }
    }

    /* renamed from: com.squareup.picasso.Picasso$c */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$c.class */
    private static class C0163c extends Thread {

        /* renamed from: f */
        private final ReferenceQueue<Object> f274f;

        /* renamed from: g */
        private final Handler f275g;

        /* renamed from: com.squareup.picasso.Picasso$c$a */
        /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$c$a.class */
        class RunnableC0164a implements Runnable {

            /* renamed from: f */
            final /* synthetic */ Exception f276f;

            RunnableC0164a(C0163c cVar, Exception exc) {
                this.f276f = exc;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new RuntimeException(this.f276f);
            }
        }

        C0163c(ReferenceQueue<Object> referenceQueue, Handler handler) {
            this.f274f = referenceQueue;
            this.f275g = handler;
            setDaemon(true);
            setName("Picasso-refQueue");
        }

        /* renamed from: a */
        void m857a() {
            interrupt();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            while (true) {
                AbstractC0169a.C0170a aVar = (AbstractC0169a.C0170a) this.f274f.remove(1000L);
                Message obtainMessage = this.f275g.obtainMessage();
                if (aVar != null) {
                    obtainMessage.what = 3;
                    obtainMessage.obj = aVar.f291a;
                    this.f275g.sendMessage(obtainMessage);
                } else {
                    obtainMessage.recycle();
                }
            }
        }
    }

    /* renamed from: com.squareup.picasso.Picasso$d */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$d.class */
    public interface AbstractC0165d {
        /* renamed from: a */
        void m856a(Picasso picasso, Uri uri, Exception exc);
    }

    /* renamed from: com.squareup.picasso.Picasso$e */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$e.class */
    public enum EnumC0166e {
        MEMORY(-16711936),
        DISK(-16776961),
        NETWORK(-65536);
        
        final int debugColor;

        EnumC0166e(int i) {
            this.debugColor = i;
        }
    }

    /* renamed from: com.squareup.picasso.Picasso$f */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$f.class */
    public enum EnumC0167f {
        LOW,
        NORMAL,
        HIGH
    }

    /* renamed from: com.squareup.picasso.Picasso$g */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Picasso$g.class */
    public interface AbstractC0168g {

        /* renamed from: a */
        public static final AbstractC0168g f277a = new a();

        /* renamed from: a */
        C0204w m855a(C0204w wVar);
    }

    Picasso(Context context, C0190i iVar, AbstractC0182d dVar, AbstractC0165d dVar2, AbstractC0168g gVar, List<AbstractC0208y> list, C0171a0 a0Var, Bitmap.Config config, boolean z, boolean z2) {
        this.context = context;
        this.dispatcher = iVar;
        this.cache = dVar;
        this.listener = dVar2;
        this.requestTransformer = gVar;
        this.defaultBitmapConfig = config;
        ArrayList arrayList = new ArrayList((list != null ? list.size() : 0) + 7);
        arrayList.add(new z(context));
        if (list != null) {
            arrayList.addAll(list);
        }
        arrayList.add(new f(context));
        arrayList.add(new o(context));
        arrayList.add(new g(context));
        arrayList.add(new b(context));
        arrayList.add(new k(context));
        arrayList.add(new r(iVar.f359d, a0Var));
        this.requestHandlers = Collections.unmodifiableList(arrayList);
        this.stats = a0Var;
        this.targetToAction = new WeakHashMap();
        this.targetToDeferredRequestCreator = new WeakHashMap();
        this.indicatorsEnabled = z;
        this.loggingEnabled = z2;
        ReferenceQueue<Object> referenceQueue = new ReferenceQueue<>();
        this.referenceQueue = referenceQueue;
        C0163c cVar = new C0163c(referenceQueue, HANDLER);
        this.cleanupThread = cVar;
        cVar.start();
    }

    private void deliverAction(Bitmap bitmap, EnumC0166e eVar, AbstractC0169a aVar, Exception exc) {
        if (!aVar.m843l()) {
            if (!aVar.m842m()) {
                this.targetToAction.remove(aVar.m844k());
            }
            if (bitmap == null) {
                aVar.m852c(exc);
                if (this.loggingEnabled) {
                    C0185f0.m774t("Main", "errored", aVar.f280b.m726d(), exc.getMessage());
                }
            } else if (eVar != null) {
                aVar.m853b(bitmap, eVar);
                if (this.loggingEnabled) {
                    String d = aVar.f280b.m726d();
                    C0185f0.m774t("Main", "completed", d, "from " + eVar);
                }
            } else {
                throw new AssertionError("LoadedFrom cannot be null.");
            }
        }
    }

    public static Picasso get() {
        if (singleton == null) {
            synchronized (Picasso.class) {
                if (singleton == null) {
                    Context context = PicassoProvider.f278f;
                    if (context != null) {
                        singleton = new C0162b(context).m862a();
                    } else {
                        throw new IllegalStateException("context == null");
                    }
                }
            }
        }
        return singleton;
    }

    public static void setSingletonInstance(Picasso picasso) {
        if (picasso != null) {
            synchronized (Picasso.class) {
                if (singleton == null) {
                    singleton = picasso;
                } else {
                    throw new IllegalStateException("Singleton instance already exists.");
                }
            }
            return;
        }
        throw new IllegalArgumentException("Picasso must not be null.");
    }

    public boolean areIndicatorsEnabled() {
        return this.indicatorsEnabled;
    }

    void cancelExistingRequest(Object obj) {
        C0185f0.m791c();
        AbstractC0169a remove = this.targetToAction.remove(obj);
        if (remove != null) {
            remove.m854a();
            this.dispatcher.m769c(remove);
        }
        if (obj instanceof ImageView) {
            ViewTreeObserver$OnPreDrawListenerC0189h remove2 = this.targetToDeferredRequestCreator.remove((ImageView) obj);
            if (remove2 != null) {
                remove2.m773a();
            }
        }
    }

    public void cancelRequest(ImageView imageView) {
        if (imageView != null) {
            cancelExistingRequest(imageView);
            return;
        }
        throw new IllegalArgumentException("view cannot be null.");
    }

    public void cancelRequest(RemoteViews remoteViews, int i) {
        if (remoteViews != null) {
            cancelExistingRequest(new C0203v(remoteViews, i));
            return;
        }
        throw new IllegalArgumentException("remoteViews cannot be null.");
    }

    public void cancelRequest(AbstractC0181c0 c0Var) {
        if (c0Var != null) {
            cancelExistingRequest(c0Var);
            return;
        }
        throw new IllegalArgumentException("target cannot be null.");
    }

    public void cancelTag(Object obj) {
        C0185f0.m791c();
        if (obj != null) {
            ArrayList arrayList = new ArrayList(this.targetToAction.values());
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                AbstractC0169a aVar = (AbstractC0169a) arrayList.get(i);
                if (obj.equals(aVar.m845j())) {
                    cancelExistingRequest(aVar.m844k());
                }
            }
            ArrayList arrayList2 = new ArrayList(this.targetToDeferredRequestCreator.values());
            int size2 = arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ViewTreeObserver$OnPreDrawListenerC0189h hVar = (ViewTreeObserver$OnPreDrawListenerC0189h) arrayList2.get(i2);
                if (obj.equals(hVar.m772b())) {
                    hVar.m773a();
                }
            }
            return;
        }
        throw new IllegalArgumentException("Cannot cancel requests with null tag.");
    }

    void complete(RunnableC0175c cVar) {
        AbstractC0169a h = cVar.m819h();
        List<AbstractC0169a> i = cVar.m818i();
        boolean z = i != null && !i.isEmpty();
        boolean z2 = true;
        if (h == null) {
            z2 = z;
        }
        if (z2) {
            Uri uri = cVar.m817j().f402d;
            Exception k = cVar.m816k();
            Bitmap s = cVar.m808s();
            EnumC0166e o = cVar.m812o();
            if (h != null) {
                deliverAction(s, o, h, k);
            }
            if (z) {
                int size = i.size();
                for (int i2 = 0; i2 < size; i2++) {
                    deliverAction(s, o, i.get(i2), k);
                }
            }
            AbstractC0165d dVar = this.listener;
            if (!(dVar == null || k == null)) {
                dVar.m856a(this, uri, k);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void defer(ImageView imageView, ViewTreeObserver$OnPreDrawListenerC0189h hVar) {
        if (this.targetToDeferredRequestCreator.containsKey(imageView)) {
            cancelExistingRequest(imageView);
        }
        this.targetToDeferredRequestCreator.put(imageView, hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void enqueueAndSubmit(AbstractC0169a aVar) {
        Object k = aVar.m844k();
        if (!(k == null || this.targetToAction.get(k) == aVar)) {
            cancelExistingRequest(k);
            this.targetToAction.put(k, aVar);
        }
        submit(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<AbstractC0208y> getRequestHandlers() {
        return this.requestHandlers;
    }

    public C0174b0 getSnapshot() {
        return this.stats.m841a();
    }

    public void invalidate(Uri uri) {
        if (uri != null) {
            this.cache.m795c(uri.toString());
        }
    }

    public void invalidate(File file) {
        if (file != null) {
            invalidate(Uri.fromFile(file));
            return;
        }
        throw new IllegalArgumentException("file == null");
    }

    public void invalidate(String str) {
        if (str != null) {
            invalidate(Uri.parse(str));
        }
    }

    public boolean isLoggingEnabled() {
        return this.loggingEnabled;
    }

    public C0207x load(int i) {
        if (i != 0) {
            return new C0207x(this, null, i);
        }
        throw new IllegalArgumentException("Resource ID must not be zero.");
    }

    public C0207x load(Uri uri) {
        return new C0207x(this, uri, 0);
    }

    public C0207x load(File file) {
        return file == null ? new C0207x(this, null, 0) : load(Uri.fromFile(file));
    }

    public C0207x load(String str) {
        if (str == null) {
            return new C0207x(this, null, 0);
        }
        if (str.trim().length() != 0) {
            return load(Uri.parse(str));
        }
        throw new IllegalArgumentException("Path must not be empty.");
    }

    public void pauseTag(Object obj) {
        if (obj != null) {
            this.dispatcher.m765g(obj);
            return;
        }
        throw new IllegalArgumentException("tag == null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bitmap quickMemoryCacheCheck(String str) {
        Bitmap bitmap = this.cache.get(str);
        if (bitmap != null) {
            this.stats.m838d();
        } else {
            this.stats.m837e();
        }
        return bitmap;
    }

    void resumeAction(AbstractC0169a aVar) {
        Bitmap quickMemoryCacheCheck = EnumC0198p.shouldReadFromMemoryCache(aVar.f283e) ? quickMemoryCacheCheck(aVar.m851d()) : null;
        if (quickMemoryCacheCheck != null) {
            EnumC0166e eVar = EnumC0166e.MEMORY;
            deliverAction(quickMemoryCacheCheck, eVar, aVar, null);
            if (this.loggingEnabled) {
                String d = aVar.f280b.m726d();
                C0185f0.m774t("Main", "completed", d, "from " + eVar);
                return;
            }
            return;
        }
        enqueueAndSubmit(aVar);
        if (this.loggingEnabled) {
            C0185f0.m775s("Main", "resumed", aVar.f280b.m726d());
        }
    }

    public void resumeTag(Object obj) {
        if (obj != null) {
            this.dispatcher.m764h(obj);
            return;
        }
        throw new IllegalArgumentException("tag == null");
    }

    public void setIndicatorsEnabled(boolean z) {
        this.indicatorsEnabled = z;
    }

    public void setLoggingEnabled(boolean z) {
        this.loggingEnabled = z;
    }

    public void shutdown() {
        if (this == singleton) {
            throw new UnsupportedOperationException("Default singleton instance cannot be shutdown.");
        } else if (!this.shutdown) {
            this.cache.clear();
            this.cleanupThread.m857a();
            this.stats.m828n();
            this.dispatcher.m746z();
            for (ViewTreeObserver$OnPreDrawListenerC0189h hVar : this.targetToDeferredRequestCreator.values()) {
                hVar.m773a();
            }
            this.targetToDeferredRequestCreator.clear();
            this.shutdown = true;
        }
    }

    void submit(AbstractC0169a aVar) {
        this.dispatcher.m762j(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0204w transformRequest(C0204w wVar) {
        this.requestTransformer.m855a(wVar);
        if (wVar != null) {
            return wVar;
        }
        throw new IllegalStateException("Request transformer " + this.requestTransformer.getClass().getCanonicalName() + " returned null for " + wVar);
    }
}
