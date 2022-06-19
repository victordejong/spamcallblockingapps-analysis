package androidx.media2.widget;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.accessibility.CaptioningManager;
import androidx.media2.widget.AbstractC2595p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media2.widget.o */
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/o.class */
public final class C2588o {

    /* renamed from: a */
    AbstractC2568h f9787a;

    /* renamed from: b */
    AbstractC2595p f9788b;

    /* renamed from: c */
    CaptioningManager f9789c;

    /* renamed from: d */
    Handler f9790d;

    /* renamed from: e */
    final Handler.Callback f9791e;

    /* renamed from: f */
    boolean f9792f;

    /* renamed from: g */
    boolean f9793g;

    /* renamed from: h */
    AbstractC2591a f9794h;

    /* renamed from: i */
    AbstractC2592b f9795i;

    /* renamed from: j */
    private ArrayList<AbstractC2594d> f9796j;

    /* renamed from: k */
    private ArrayList<AbstractC2595p> f9797k;

    /* renamed from: l */
    private final Object f9798l;

    /* renamed from: m */
    private final Object f9799m;

    /* renamed from: n */
    private CaptioningManager.CaptioningChangeListener f9800n;

    /* renamed from: androidx.media2.widget.o$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/o$a.class */
    interface AbstractC2591a {
        /* renamed from: a */
        Looper mo40594a();

        /* renamed from: a */
        void mo40593a(AbstractC2595p.AbstractC2598c abstractC2598c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.widget.o$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/o$b.class */
    public interface AbstractC2592b {
        /* renamed from: a */
        void mo40592a(AbstractC2595p abstractC2595p);
    }

    /* renamed from: androidx.media2.widget.o$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/o$c.class */
    public static final class C2593c {
        C2593c() {
        }

        /* renamed from: a */
        static int m40591a(MediaFormat mediaFormat, String str, int i) {
            try {
                return mediaFormat.getInteger(str);
            } catch (ClassCastException | NullPointerException e) {
                return i;
            }
        }
    }

    /* renamed from: androidx.media2.widget.o$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/o$d.class */
    public static abstract class AbstractC2594d {
        /* renamed from: a */
        public abstract boolean mo40590a(MediaFormat mediaFormat);

        /* renamed from: b */
        public abstract AbstractC2595p mo40589b(MediaFormat mediaFormat);
    }

    C2588o(Context context) {
        this(context, null, null);
    }

    public C2588o(Context context, AbstractC2568h abstractC2568h, AbstractC2592b abstractC2592b) {
        this.f9798l = new Object();
        this.f9799m = new Object();
        this.f9791e = new Handler.Callback() { // from class: androidx.media2.widget.o.1
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                int i = message.what;
                if (i == 1) {
                    C2588o c2588o = C2588o.this;
                    c2588o.f9793g = true;
                    if (c2588o.f9788b == null) {
                        return true;
                    }
                    c2588o.f9788b.m40584b();
                    return true;
                } else if (i == 2) {
                    C2588o c2588o2 = C2588o.this;
                    c2588o2.f9793g = true;
                    if (c2588o2.f9788b == null) {
                        return true;
                    }
                    c2588o2.f9788b.m40583c();
                    return true;
                } else {
                    boolean z = true;
                    if (i == 3) {
                        C2588o c2588o3 = C2588o.this;
                        AbstractC2595p abstractC2595p = (AbstractC2595p) message.obj;
                        c2588o3.f9792f = true;
                        if (c2588o3.f9788b == abstractC2595p) {
                            return true;
                        }
                        if (c2588o3.f9788b != null) {
                            c2588o3.f9788b.m40583c();
                            c2588o3.f9788b.m40586a((AbstractC2568h) null);
                        }
                        c2588o3.f9788b = abstractC2595p;
                        if (c2588o3.f9794h != null) {
                            c2588o3.f9794h.mo40593a(c2588o3.m40602a());
                        }
                        if (c2588o3.f9788b != null) {
                            c2588o3.f9788b.m40586a(c2588o3.f9787a);
                            c2588o3.f9788b.m40584b();
                        }
                        if (c2588o3.f9795i == null) {
                            return true;
                        }
                        c2588o3.f9795i.mo40592a(abstractC2595p);
                        return true;
                    } else if (i != 4) {
                        return false;
                    } else {
                        C2588o c2588o4 = C2588o.this;
                        if (c2588o4.f9792f) {
                            if (c2588o4.f9793g) {
                                return true;
                            }
                            if ((Build.VERSION.SDK_INT >= 19 ? c2588o4.f9789c.isEnabled() : false) || !(c2588o4.f9788b == null || C2593c.m40591a(c2588o4.f9788b.f9807e, "is-forced-subtitle", 0) == 0)) {
                                c2588o4.m40595d();
                            } else if (c2588o4.f9788b != null) {
                                if (c2588o4.f9788b.mo40588a() != null) {
                                    z = true;
                                }
                                if (z) {
                                    c2588o4.m40600a(c2588o4.f9790d.obtainMessage(2));
                                }
                            }
                            c2588o4.f9793g = false;
                        }
                        AbstractC2595p m40597b = c2588o4.m40597b();
                        if (m40597b == null) {
                            return true;
                        }
                        c2588o4.m40598a(m40597b);
                        c2588o4.f9792f = false;
                        if (c2588o4.f9793g) {
                            return true;
                        }
                        c2588o4.m40595d();
                        c2588o4.f9793g = false;
                        return true;
                    }
                }
            }
        };
        this.f9792f = false;
        this.f9793g = false;
        this.f9787a = abstractC2568h;
        this.f9795i = abstractC2592b;
        this.f9796j = new ArrayList<>();
        this.f9797k = new ArrayList<>();
        if (Build.VERSION.SDK_INT >= 19) {
            this.f9789c = (CaptioningManager) context.getSystemService("captioning");
            this.f9800n = new CaptioningManager.CaptioningChangeListener() { // from class: androidx.media2.widget.o.2
                @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
                public final void onEnabledChanged(boolean z) {
                    C2588o.this.m40596c();
                }

                @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
                public final void onLocaleChanged(Locale locale) {
                    C2588o.this.m40596c();
                }
            };
        }
    }

    /* renamed from: a */
    public final AbstractC2595p.AbstractC2598c m40602a() {
        AbstractC2595p abstractC2595p = this.f9788b;
        if (abstractC2595p == null) {
            return null;
        }
        return abstractC2595p.mo40588a();
    }

    /* renamed from: a */
    public final AbstractC2595p m40601a(MediaFormat mediaFormat) {
        AbstractC2594d next;
        synchronized (this.f9798l) {
            Iterator<AbstractC2594d> it2 = this.f9796j.iterator();
            do {
                if (!it2.hasNext()) {
                    return null;
                }
                next = it2.next();
            } while (!next.mo40590a(mediaFormat));
            AbstractC2595p mo40589b = next.mo40589b(mediaFormat);
            synchronized (this.f9799m) {
                if (this.f9797k.size() == 0 && Build.VERSION.SDK_INT >= 19) {
                    this.f9789c.addCaptioningChangeListener(this.f9800n);
                }
                this.f9797k.add(mo40589b);
            }
            return mo40589b;
        }
    }

    /* renamed from: a */
    final void m40600a(Message message) {
        if (Looper.myLooper() == this.f9790d.getLooper()) {
            this.f9790d.dispatchMessage(message);
        } else {
            this.f9790d.sendMessage(message);
        }
    }

    /* renamed from: a */
    public final void m40599a(AbstractC2594d abstractC2594d) {
        synchronized (this.f9798l) {
            if (!this.f9796j.contains(abstractC2594d)) {
                this.f9796j.add(abstractC2594d);
            }
        }
    }

    /* renamed from: a */
    public final boolean m40598a(AbstractC2595p abstractC2595p) {
        if (abstractC2595p == null || this.f9797k.contains(abstractC2595p)) {
            m40600a(this.f9790d.obtainMessage(3, abstractC2595p));
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x013f A[SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.media2.widget.AbstractC2595p m40597b() {
        /*
            Method dump skipped, instructions count: 407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.widget.C2588o.m40597b():androidx.media2.widget.p");
    }

    /* renamed from: c */
    public final void m40596c() {
        m40600a(this.f9790d.obtainMessage(4));
    }

    /* renamed from: d */
    public final void m40595d() {
        m40600a(this.f9790d.obtainMessage(1));
    }

    protected final void finalize() throws Throwable {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f9789c.removeCaptioningChangeListener(this.f9800n);
        }
        super.finalize();
    }
}
