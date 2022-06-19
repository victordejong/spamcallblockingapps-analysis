package p107g9;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.support.p012v4.media.C0082b;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import com.squareup.picasso.PicassoProvider;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import p107g9.AbstractC2915a;
import p107g9.C2945n;
/* renamed from: g9.s */
/* loaded from: classes2-dex2jar.jar:g9/s.class */
public class C2953s {

    /* renamed from: n */
    public static final Handler f9920n = new HandlerC2954a(Looper.getMainLooper());
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: o */
    public static volatile C2953s f9921o = null;

    /* renamed from: b */
    public final AbstractC2959e f9923b;

    /* renamed from: c */
    public final List<AbstractC2968x> f9924c;

    /* renamed from: d */
    public final Context f9925d;

    /* renamed from: e */
    public final C2936i f9926e;

    /* renamed from: f */
    public final AbstractC2928d f9927f;

    /* renamed from: g */
    public final C2971z f9928g;

    /* renamed from: j */
    public final ReferenceQueue<Object> f9931j;

    /* renamed from: l */
    public boolean f9933l;

    /* renamed from: m */
    public volatile boolean f9934m;

    /* renamed from: a */
    public final AbstractC2957c f9922a = null;

    /* renamed from: k */
    public final Bitmap.Config f9932k = null;

    /* renamed from: h */
    public final Map<Object, AbstractC2915a> f9929h = new WeakHashMap();

    /* renamed from: i */
    public final Map<ImageView, ViewTreeObserver$OnPreDrawListenerC2935h> f9930i = new WeakHashMap();

    /* renamed from: g9.s$a */
    /* loaded from: classes2-dex2jar.jar:g9/s$a.class */
    public static final class HandlerC2954a extends Handler {
        public HandlerC2954a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 3) {
                AbstractC2915a abstractC2915a = (AbstractC2915a) message.obj;
                if (abstractC2915a.f9819a.f9934m) {
                    C2929d0.m2838e("Main", "canceled", abstractC2915a.f9820b.m2813b(), "target got garbage collected");
                }
                abstractC2915a.f9819a.m2824a(abstractC2915a.m2852d());
                return;
            }
            if (i != 8) {
                if (i != 13) {
                    StringBuilder m8752j = C0082b.m8752j("Unknown handler message received: ");
                    m8752j.append(message.what);
                    throw new AssertionError(m8752j.toString());
                }
                List list = (List) message.obj;
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    AbstractC2915a abstractC2915a2 = (AbstractC2915a) list.get(i2);
                    C2953s c2953s = abstractC2915a2.f9819a;
                    Objects.requireNonNull(c2953s);
                    Bitmap m2819f = C0082b.m8761a(abstractC2915a2.f9823e) ? c2953s.m2819f(abstractC2915a2.f9827i) : null;
                    if (m2819f != null) {
                        EnumC2958d enumC2958d = EnumC2958d.MEMORY;
                        c2953s.m2823b(m2819f, enumC2958d, abstractC2915a2, null);
                        if (c2953s.f9934m) {
                            C2929d0.m2838e("Main", "completed", abstractC2915a2.f9820b.m2813b(), "from " + enumC2958d);
                        }
                    } else {
                        c2953s.m2822c(abstractC2915a2);
                        if (c2953s.f9934m) {
                            C2929d0.m2838e("Main", "resumed", abstractC2915a2.f9820b.m2813b(), "");
                        }
                    }
                }
                return;
            }
            List list2 = (List) message.obj;
            int size2 = list2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                RunnableC2920c runnableC2920c = (RunnableC2920c) list2.get(i3);
                C2953s c2953s2 = runnableC2920c.f9854b;
                Objects.requireNonNull(c2953s2);
                AbstractC2915a abstractC2915a3 = runnableC2920c.f9863k;
                List<AbstractC2915a> list3 = runnableC2920c.f9864l;
                boolean z = list3 != null && !list3.isEmpty();
                boolean z2 = true;
                if (abstractC2915a3 == null) {
                    z2 = z;
                }
                if (z2) {
                    Uri uri = runnableC2920c.f9859g.f9956c;
                    Exception exc = runnableC2920c.f9868p;
                    Bitmap bitmap = runnableC2920c.f9865m;
                    EnumC2958d enumC2958d2 = runnableC2920c.f9867o;
                    if (abstractC2915a3 != null) {
                        c2953s2.m2823b(bitmap, enumC2958d2, abstractC2915a3, exc);
                    }
                    if (z) {
                        int size3 = list3.size();
                        for (int i4 = 0; i4 < size3; i4++) {
                            c2953s2.m2823b(bitmap, enumC2958d2, list3.get(i4), exc);
                        }
                    }
                    AbstractC2957c abstractC2957c = c2953s2.f9922a;
                    if (abstractC2957c != null && exc != null) {
                        abstractC2957c.m2818a(c2953s2, uri, exc);
                    }
                }
            }
        }
    }

    /* renamed from: g9.s$b */
    /* loaded from: classes2-dex2jar.jar:g9/s$b.class */
    public static class C2955b extends Thread {

        /* renamed from: a */
        public final ReferenceQueue<Object> f9935a;

        /* renamed from: b */
        public final Handler f9936b;

        /* renamed from: g9.s$b$a */
        /* loaded from: classes2-dex2jar.jar:g9/s$b$a.class */
        public class RunnableC2956a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Exception f9937a;

            public RunnableC2956a(C2955b c2955b, Exception exc) {
                this.f9937a = exc;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new RuntimeException(this.f9937a);
            }
        }

        public C2955b(ReferenceQueue<Object> referenceQueue, Handler handler) {
            this.f9935a = referenceQueue;
            this.f9936b = handler;
            setDaemon(true);
            setName("Picasso-refQueue");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            while (true) {
                try {
                    AbstractC2915a.C2916a c2916a = (AbstractC2915a.C2916a) this.f9935a.remove(1000L);
                    Message obtainMessage = this.f9936b.obtainMessage();
                    if (c2916a != null) {
                        obtainMessage.what = 3;
                        obtainMessage.obj = c2916a.f9831a;
                        this.f9936b.sendMessage(obtainMessage);
                    } else {
                        obtainMessage.recycle();
                    }
                } catch (InterruptedException e) {
                    return;
                } catch (Exception e2) {
                    this.f9936b.post(new RunnableC2956a(this, e2));
                    return;
                }
            }
        }
    }

    /* renamed from: g9.s$c */
    /* loaded from: classes2-dex2jar.jar:g9/s$c.class */
    public interface AbstractC2957c {
        /* renamed from: a */
        void m2818a(C2953s c2953s, Uri uri, Exception exc);
    }

    /* renamed from: g9.s$d */
    /* loaded from: classes2-dex2jar.jar:g9/s$d.class */
    public enum EnumC2958d {
        MEMORY(-16711936),
        DISK(-16776961),
        NETWORK(-65536);
        

        /* renamed from: a */
        public final int f9942a;

        EnumC2958d(int i) {
            this.f9942a = i;
        }
    }

    /* renamed from: g9.s$e */
    /* loaded from: classes2-dex2jar.jar:g9/s$e.class */
    public interface AbstractC2959e {

        /* renamed from: a */
        public static final AbstractC2959e f9943a = new C2960a();

        /* renamed from: g9.s$e$a */
        /* loaded from: classes2-dex2jar.jar:g9/s$e$a.class */
        public static final class C2960a implements AbstractC2959e {
        }
    }

    public C2953s(Context context, C2936i c2936i, AbstractC2928d abstractC2928d, AbstractC2957c abstractC2957c, AbstractC2959e abstractC2959e, List<AbstractC2968x> list, C2971z c2971z, Bitmap.Config config, boolean z, boolean z2) {
        this.f9925d = context;
        this.f9926e = c2936i;
        this.f9927f = abstractC2928d;
        this.f9923b = abstractC2959e;
        ArrayList arrayList = new ArrayList(7);
        arrayList.add(new C2970y(context));
        arrayList.add(new C2933f(context));
        arrayList.add(new C2948p(context));
        arrayList.add(new C2934g(context));
        arrayList.add(new C2918b(context));
        arrayList.add(new C2942k(context));
        arrayList.add(new C2949q(c2936i.f9888c, c2971z));
        this.f9924c = Collections.unmodifiableList(arrayList);
        this.f9928g = c2971z;
        this.f9933l = z;
        this.f9934m = z2;
        ReferenceQueue<Object> referenceQueue = new ReferenceQueue<>();
        this.f9931j = referenceQueue;
        new C2955b(referenceQueue, f9920n).start();
    }

    /* renamed from: d */
    public static C2953s m2821d() {
        if (f9921o == null) {
            synchronized (C2953s.class) {
                try {
                    if (f9921o == null) {
                        Context context = PicassoProvider.f7830a;
                        if (context == null) {
                            throw new IllegalStateException("context == null");
                        }
                        if (context == null) {
                            throw new IllegalArgumentException("Context must not be null.");
                        }
                        Context applicationContext = context.getApplicationContext();
                        C2952r c2952r = new C2952r(applicationContext);
                        C2945n c2945n = new C2945n(applicationContext);
                        C2962u c2962u = new C2962u();
                        AbstractC2959e abstractC2959e = AbstractC2959e.f9943a;
                        C2971z c2971z = new C2971z(c2945n);
                        f9921o = new C2953s(applicationContext, new C2936i(applicationContext, c2962u, f9920n, c2952r, c2945n, c2971z), c2945n, null, abstractC2959e, null, c2971z, null, false, false);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9921o;
    }

    /* renamed from: a */
    public void m2824a(Object obj) {
        C2929d0.m2842a();
        AbstractC2915a remove = this.f9929h.remove(obj);
        if (remove != null) {
            remove.mo2830a();
            Handler handler = this.f9926e.f9893h;
            handler.sendMessage(handler.obtainMessage(2, remove));
        }
        if (obj instanceof ImageView) {
            ViewTreeObserver$OnPreDrawListenerC2935h remove2 = this.f9930i.remove((ImageView) obj);
            if (remove2 == null) {
                return;
            }
            Objects.requireNonNull(remove2.f9883a);
            remove2.f9885c = null;
            ImageView imageView = remove2.f9884b.get();
            if (imageView == null) {
                return;
            }
            remove2.f9884b.clear();
            imageView.removeOnAttachStateChangeListener(remove2);
            ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
            if (!viewTreeObserver.isAlive()) {
                return;
            }
            viewTreeObserver.removeOnPreDrawListener(remove2);
        }
    }

    /* renamed from: b */
    public final void m2823b(Bitmap bitmap, EnumC2958d enumC2958d, AbstractC2915a abstractC2915a, Exception exc) {
        if (abstractC2915a.f9830l) {
            return;
        }
        if (!abstractC2915a.f9829k) {
            this.f9929h.remove(abstractC2915a.m2852d());
        }
        if (bitmap == null) {
            abstractC2915a.mo2828c(exc);
            if (!this.f9934m) {
                return;
            }
            C2929d0.m2838e("Main", "errored", abstractC2915a.f9820b.m2813b(), exc.getMessage());
        } else if (enumC2958d == null) {
            throw new AssertionError("LoadedFrom cannot be null.");
        } else {
            abstractC2915a.mo2829b(bitmap, enumC2958d);
            if (!this.f9934m) {
                return;
            }
            String m2813b = abstractC2915a.f9820b.m2813b();
            C2929d0.m2838e("Main", "completed", m2813b, "from " + enumC2958d);
        }
    }

    /* renamed from: c */
    public void m2822c(AbstractC2915a abstractC2915a) {
        Object m2852d = abstractC2915a.m2852d();
        if (m2852d != null && this.f9929h.get(m2852d) != abstractC2915a) {
            m2824a(m2852d);
            this.f9929h.put(m2852d, abstractC2915a);
        }
        Handler handler = this.f9926e.f9893h;
        handler.sendMessage(handler.obtainMessage(1, abstractC2915a));
    }

    /* renamed from: e */
    public C2967w m2820e(String str) {
        if (str == null) {
            return new C2967w(this, null, 0);
        }
        if (str.trim().length() == 0) {
            throw new IllegalArgumentException("Path must not be empty.");
        }
        return new C2967w(this, Uri.parse(str), 0);
    }

    /* renamed from: f */
    public Bitmap m2819f(String str) {
        C2945n.C2946a c2946a = ((C2945n) this.f9927f).f9904a.get(str);
        Bitmap bitmap = c2946a != null ? c2946a.f9905a : null;
        if (bitmap != null) {
            this.f9928g.f9989b.sendEmptyMessage(0);
        } else {
            this.f9928g.f9989b.sendEmptyMessage(1);
        }
        return bitmap;
    }
}
