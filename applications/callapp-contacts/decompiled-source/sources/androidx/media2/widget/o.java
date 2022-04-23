package androidx.media2.widget;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.accessibility.CaptioningManager;
import androidx.media2.widget.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/o.class */
final class o {

    /* renamed from: a  reason: collision with root package name */
    h f5264a;

    /* renamed from: b  reason: collision with root package name */
    p f5265b;

    /* renamed from: c  reason: collision with root package name */
    CaptioningManager f5266c;

    /* renamed from: d  reason: collision with root package name */
    Handler f5267d;
    final Handler.Callback e;
    boolean f;
    boolean g;
    a h;
    b i;
    private ArrayList<d> j;
    private ArrayList<p> k;
    private final Object l;
    private final Object m;
    private CaptioningManager.CaptioningChangeListener n;

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/o$a.class */
    interface a {
        Looper a();

        void a(p.c cVar);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/o$b.class */
    interface b {
        void a(p pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/o$c.class */
    public static final class c {
        c() {
        }

        static int a(MediaFormat mediaFormat, String str, int i) {
            try {
                return mediaFormat.getInteger(str);
            } catch (ClassCastException | NullPointerException e) {
                return i;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/o$d.class */
    public static abstract class d {
        public abstract boolean a(MediaFormat mediaFormat);

        public abstract p b(MediaFormat mediaFormat);
    }

    o(Context context) {
        this(context, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(Context context, h hVar, b bVar) {
        this.l = new Object();
        this.m = new Object();
        this.e = new Handler.Callback() { // from class: androidx.media2.widget.o.1
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                int i = message.what;
                if (i == 1) {
                    o oVar = o.this;
                    oVar.g = true;
                    if (oVar.f5265b == null) {
                        return true;
                    }
                    oVar.f5265b.b();
                    return true;
                } else if (i != 2) {
                    char c2 = 3;
                    if (i == 3) {
                        o oVar2 = o.this;
                        p pVar = (p) message.obj;
                        oVar2.f = true;
                        if (oVar2.f5265b == pVar) {
                            return true;
                        }
                        if (oVar2.f5265b != null) {
                            oVar2.f5265b.c();
                            oVar2.f5265b.a((h) null);
                        }
                        oVar2.f5265b = pVar;
                        if (oVar2.h != null) {
                            oVar2.h.a(oVar2.a());
                        }
                        if (oVar2.f5265b != null) {
                            oVar2.f5265b.a(oVar2.f5264a);
                            oVar2.f5265b.b();
                        }
                        if (oVar2.i == null) {
                            return true;
                        }
                        oVar2.i.a(pVar);
                        return true;
                    } else if (i != 4) {
                        return false;
                    } else {
                        o oVar3 = o.this;
                        if (oVar3.f) {
                            if (oVar3.g) {
                                return true;
                            }
                            if ((Build.VERSION.SDK_INT >= 19 ? oVar3.f5266c.isEnabled() : false) || !(oVar3.f5265b == null || c.a(oVar3.f5265b.e, "is-forced-subtitle", 0) == 0)) {
                                oVar3.d();
                            } else if (oVar3.f5265b != null) {
                                if (oVar3.f5265b.a() != null) {
                                    c2 = 4;
                                }
                                if (c2 == 4) {
                                    oVar3.a(oVar3.f5267d.obtainMessage(2));
                                }
                            }
                            oVar3.g = false;
                        }
                        p b2 = oVar3.b();
                        if (b2 == null) {
                            return true;
                        }
                        oVar3.a(b2);
                        oVar3.f = false;
                        if (oVar3.g) {
                            return true;
                        }
                        oVar3.d();
                        oVar3.g = false;
                        return true;
                    }
                } else {
                    o oVar4 = o.this;
                    oVar4.g = true;
                    if (oVar4.f5265b == null) {
                        return true;
                    }
                    oVar4.f5265b.c();
                    return true;
                }
            }
        };
        this.f = false;
        this.g = false;
        this.f5264a = hVar;
        this.i = bVar;
        this.j = new ArrayList<>();
        this.k = new ArrayList<>();
        if (Build.VERSION.SDK_INT >= 19) {
            this.f5266c = (CaptioningManager) context.getSystemService("captioning");
            this.n = new CaptioningManager.CaptioningChangeListener() { // from class: androidx.media2.widget.o.2
                @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
                public final void onEnabledChanged(boolean z) {
                    o.this.c();
                }

                @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
                public final void onLocaleChanged(Locale locale) {
                    o.this.c();
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final p.c a() {
        p pVar = this.f5265b;
        if (pVar == null) {
            return null;
        }
        return pVar.a();
    }

    public final p a(MediaFormat mediaFormat) {
        d next;
        synchronized (this.l) {
            Iterator<d> it2 = this.j.iterator();
            do {
                if (!it2.hasNext()) {
                    return null;
                }
                next = it2.next();
            } while (!next.a(mediaFormat));
            p b2 = next.b(mediaFormat);
            synchronized (this.m) {
                if (this.k.size() == 0 && Build.VERSION.SDK_INT >= 19) {
                    this.f5266c.addCaptioningChangeListener(this.n);
                }
                this.k.add(b2);
            }
            return b2;
        }
    }

    final void a(Message message) {
        if (Looper.myLooper() == this.f5267d.getLooper()) {
            this.f5267d.dispatchMessage(message);
        } else {
            this.f5267d.sendMessage(message);
        }
    }

    public final void a(d dVar) {
        synchronized (this.l) {
            if (!this.j.contains(dVar)) {
                this.j.add(dVar);
            }
        }
    }

    public final boolean a(p pVar) {
        if (pVar != null && !this.k.contains(pVar)) {
            return false;
        }
        a(this.f5267d.obtainMessage(3, pVar));
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x013f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.media2.widget.p b() {
        /*
            Method dump skipped, instructions count: 407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.widget.o.b():androidx.media2.widget.p");
    }

    public final void c() {
        a(this.f5267d.obtainMessage(4));
    }

    public final void d() {
        a(this.f5267d.obtainMessage(1));
    }

    protected final void finalize() throws Throwable {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f5266c.removeCaptioningChangeListener(this.n);
        }
        super.finalize();
    }
}
