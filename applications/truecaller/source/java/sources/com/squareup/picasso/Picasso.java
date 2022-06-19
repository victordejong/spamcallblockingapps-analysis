package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import e.p.b.a;
import e.p.b.a0;
import e.p.b.b;
import e.p.b.b0;
import e.p.b.c;
import e.p.b.d;
import e.p.b.f;
import e.p.b.f0;
import e.p.b.g;
import e.p.b.h;
import e.p.b.i;
import e.p.b.l;
import e.p.b.p;
import e.p.b.r;
import e.p.b.s;
import e.p.b.t;
import e.p.b.u;
import e.p.b.w;
import e.p.b.y;
import e.p.b.z;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/squareup/picasso/Picasso.class */
public class Picasso {

    /* renamed from: o */
    public static final Handler f9481o = new HandlerC2738a(Looper.getMainLooper());

    /* renamed from: p */
    public static volatile Picasso f9482p = null;

    /* renamed from: b */
    public final AbstractC2744f f9484b;

    /* renamed from: c */
    public final C2739b f9485c;

    /* renamed from: d */
    public final List<z> f9486d;

    /* renamed from: e */
    public final Context f9487e;

    /* renamed from: f */
    public final i f9488f;

    /* renamed from: g */
    public final d f9489g;

    /* renamed from: h */
    public final b0 f9490h;

    /* renamed from: k */
    public final ReferenceQueue<Object> f9493k;

    /* renamed from: m */
    public boolean f9495m;

    /* renamed from: n */
    public volatile boolean f9496n;

    /* renamed from: a */
    public final AbstractC2741c f9483a = null;

    /* renamed from: l */
    public final Bitmap.Config f9494l = null;

    /* renamed from: i */
    public final Map<Object, a> f9491i = new WeakHashMap();

    /* renamed from: j */
    public final Map<ImageView, h> f9492j = new WeakHashMap();

    /* renamed from: com.squareup.picasso.Picasso$a */
    /* loaded from: classes3-dex2jar.jar:com/squareup/picasso/Picasso$a.class */
    public static final class HandlerC2738a extends Handler {
        public HandlerC2738a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 3) {
                a aVar = (a) message.obj;
                if (aVar.a.f9496n) {
                    f0.f("Main", "canceled", aVar.b.b(), "target got garbage collected");
                }
                aVar.a.m36043a(aVar.d());
                return;
            }
            if (i != 8) {
                if (i != 13) {
                    StringBuilder m8728C = C22128a.m8728C("Unknown handler message received: ");
                    m8728C.append(message.what);
                    throw new AssertionError(m8728C.toString());
                }
                List list = (List) message.obj;
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    a aVar2 = (a) list.get(i2);
                    Picasso picasso = aVar2.a;
                    Objects.requireNonNull(picasso);
                    Bitmap m36038f = s.a(aVar2.e) ? picasso.m36038f(aVar2.i) : null;
                    if (m36038f != null) {
                        EnumC2742d enumC2742d = EnumC2742d.MEMORY;
                        picasso.m36042b(m36038f, enumC2742d, aVar2, null);
                        if (picasso.f9496n) {
                            f0.f("Main", "completed", aVar2.b.b(), "from " + enumC2742d);
                        }
                    } else {
                        picasso.m36041c(aVar2);
                        if (picasso.f9496n) {
                            f0.f("Main", "resumed", aVar2.b.b(), "");
                        }
                    }
                }
                return;
            }
            List list2 = (List) message.obj;
            int size2 = list2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                c cVar = (c) list2.get(i3);
                Picasso picasso2 = cVar.b;
                Objects.requireNonNull(picasso2);
                a aVar3 = cVar.k;
                List list3 = cVar.l;
                boolean z = list3 != null && !list3.isEmpty();
                boolean z2 = true;
                if (aVar3 == null) {
                    z2 = z;
                }
                if (z2) {
                    Uri uri = cVar.g.c;
                    Exception exc = cVar.p;
                    Bitmap bitmap = cVar.m;
                    EnumC2742d enumC2742d2 = cVar.o;
                    if (aVar3 != null) {
                        picasso2.m36042b(bitmap, enumC2742d2, aVar3, exc);
                    }
                    if (z) {
                        int size3 = list3.size();
                        for (int i4 = 0; i4 < size3; i4++) {
                            picasso2.m36042b(bitmap, enumC2742d2, (a) list3.get(i4), exc);
                        }
                    }
                    AbstractC2741c abstractC2741c = picasso2.f9483a;
                    if (abstractC2741c != null && exc != null) {
                        abstractC2741c.m36037a(picasso2, uri, exc);
                    }
                }
            }
        }
    }

    /* renamed from: com.squareup.picasso.Picasso$b */
    /* loaded from: classes3-dex2jar.jar:com/squareup/picasso/Picasso$b.class */
    public static class C2739b extends Thread {

        /* renamed from: a */
        public final ReferenceQueue<Object> f9497a;

        /* renamed from: b */
        public final Handler f9498b;

        /* renamed from: com.squareup.picasso.Picasso$b$a */
        /* loaded from: classes3-dex2jar.jar:com/squareup/picasso/Picasso$b$a.class */
        public class RunnableC2740a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Exception f9499a;

            public RunnableC2740a(C2739b c2739b, Exception exc) {
                this.f9499a = exc;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new RuntimeException(this.f9499a);
            }
        }

        public C2739b(ReferenceQueue<Object> referenceQueue, Handler handler) {
            this.f9497a = referenceQueue;
            this.f9498b = handler;
            setDaemon(true);
            setName("Picasso-refQueue");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            while (true) {
                try {
                    a.a remove = this.f9497a.remove(1000L);
                    Message obtainMessage = this.f9498b.obtainMessage();
                    if (remove != null) {
                        obtainMessage.what = 3;
                        obtainMessage.obj = remove.a;
                        this.f9498b.sendMessage(obtainMessage);
                    } else {
                        obtainMessage.recycle();
                    }
                } catch (InterruptedException e) {
                    return;
                } catch (Exception e2) {
                    this.f9498b.post(new RunnableC2740a(this, e2));
                    return;
                }
            }
        }
    }

    /* renamed from: com.squareup.picasso.Picasso$c */
    /* loaded from: classes3-dex2jar.jar:com/squareup/picasso/Picasso$c.class */
    public interface AbstractC2741c {
        /* renamed from: a */
        void m36037a(Picasso picasso, Uri uri, Exception exc);
    }

    /* renamed from: com.squareup.picasso.Picasso$d */
    /* loaded from: classes3-dex2jar.jar:com/squareup/picasso/Picasso$d.class */
    public enum EnumC2742d {
        MEMORY(-16711936),
        DISK(-16776961),
        NETWORK(-65536);
        

        /* renamed from: a */
        public final int f9504a;

        EnumC2742d(int i) {
            this.f9504a = i;
        }
    }

    /* renamed from: com.squareup.picasso.Picasso$e */
    /* loaded from: classes3-dex2jar.jar:com/squareup/picasso/Picasso$e.class */
    public enum EnumC2743e {
        LOW,
        NORMAL,
        HIGH
    }

    /* renamed from: com.squareup.picasso.Picasso$f */
    /* loaded from: classes3-dex2jar.jar:com/squareup/picasso/Picasso$f.class */
    public interface AbstractC2744f {

        /* renamed from: a */
        public static final AbstractC2744f f9509a = new a();
    }

    public Picasso(Context context, i iVar, d dVar, AbstractC2741c abstractC2741c, AbstractC2744f abstractC2744f, List<z> list, b0 b0Var, Bitmap.Config config, boolean z, boolean z2) {
        this.f9487e = context;
        this.f9488f = iVar;
        this.f9489g = dVar;
        this.f9484b = abstractC2744f;
        ArrayList arrayList = new ArrayList(7);
        arrayList.add(new a0(context));
        arrayList.add(new f(context));
        arrayList.add(new r(context));
        arrayList.add(new g(context));
        arrayList.add(new b(context));
        arrayList.add(new l(context));
        arrayList.add(new t(iVar.d, b0Var));
        this.f9486d = Collections.unmodifiableList(arrayList);
        this.f9490h = b0Var;
        this.f9495m = z;
        this.f9496n = z2;
        ReferenceQueue<Object> referenceQueue = new ReferenceQueue<>();
        this.f9493k = referenceQueue;
        C2739b c2739b = new C2739b(referenceQueue, f9481o);
        this.f9485c = c2739b;
        c2739b.start();
    }

    public static Picasso get() {
        if (f9482p == null) {
            synchronized (Picasso.class) {
                try {
                    if (f9482p == null) {
                        Context context = PicassoProvider.f9510a;
                        if (context == null) {
                            throw new IllegalStateException("context == null");
                        }
                        Context applicationContext = context.getApplicationContext();
                        u uVar = new u(applicationContext);
                        p pVar = new p(applicationContext);
                        w wVar = new w();
                        AbstractC2744f abstractC2744f = AbstractC2744f.f9509a;
                        b0 b0Var = new b0(pVar);
                        f9482p = new Picasso(applicationContext, new i(applicationContext, wVar, f9481o, uVar, pVar, b0Var), pVar, null, abstractC2744f, null, b0Var, null, false, false);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9482p;
    }

    /* renamed from: a */
    public void m36043a(Object obj) {
        if (f0.e()) {
            a remove = this.f9491i.remove(obj);
            if (remove != null) {
                remove.a();
                Handler handler = this.f9488f.i;
                handler.sendMessage(handler.obtainMessage(2, remove));
            }
            if (!(obj instanceof ImageView)) {
                return;
            }
            h remove2 = this.f9492j.remove((ImageView) obj);
            if (remove2 == null) {
                return;
            }
            Objects.requireNonNull(remove2.a);
            remove2.c = null;
            ImageView imageView = (ImageView) remove2.b.get();
            if (imageView == null) {
                return;
            }
            remove2.b.clear();
            imageView.removeOnAttachStateChangeListener(remove2);
            ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
            if (!viewTreeObserver.isAlive()) {
                return;
            }
            viewTreeObserver.removeOnPreDrawListener(remove2);
            return;
        }
        throw new IllegalStateException("Method call should happen from the main thread.");
    }

    /* renamed from: b */
    public final void m36042b(Bitmap bitmap, EnumC2742d enumC2742d, a aVar, Exception exc) {
        if (aVar.l) {
            return;
        }
        if (!aVar.k) {
            this.f9491i.remove(aVar.d());
        }
        if (bitmap == null) {
            aVar.c(exc);
            if (!this.f9496n) {
                return;
            }
            f0.f("Main", "errored", aVar.b.b(), exc.getMessage());
        } else if (enumC2742d == null) {
            throw new AssertionError("LoadedFrom cannot be null.");
        } else {
            aVar.b(bitmap, enumC2742d);
            if (!this.f9496n) {
                return;
            }
            String b = aVar.b.b();
            f0.f("Main", "completed", b, "from " + enumC2742d);
        }
    }

    /* renamed from: c */
    public void m36041c(a aVar) {
        Object d = aVar.d();
        if (d != null && this.f9491i.get(d) != aVar) {
            m36043a(d);
            this.f9491i.put(d, aVar);
        }
        Handler handler = this.f9488f.i;
        handler.sendMessage(handler.obtainMessage(1, aVar));
    }

    /* renamed from: d */
    public y m36040d(Uri uri) {
        return new y(this, uri, 0);
    }

    /* renamed from: e */
    public y m36039e(String str) {
        if (str == null) {
            return new y(this, (Uri) null, 0);
        }
        if (str.trim().length() == 0) {
            throw new IllegalArgumentException("Path must not be empty.");
        }
        return m36040d(Uri.parse(str));
    }

    /* renamed from: f */
    public Bitmap m36038f(String str) {
        Bitmap bitmap = this.f9489g.get(str);
        if (bitmap != null) {
            this.f9490h.c.sendEmptyMessage(0);
        } else {
            this.f9490h.c.sendEmptyMessage(1);
        }
        return bitmap;
    }
}
