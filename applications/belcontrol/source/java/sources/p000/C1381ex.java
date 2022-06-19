package p000;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.accessibility.CaptioningManager;
import fx;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
/* renamed from: ex */
/* loaded from: classes-dex2jar.jar:ex.class */
public class C1381ex {

    /* renamed from: a */
    public rw f6451a;

    /* renamed from: f */
    public fx f6456f;

    /* renamed from: g */
    public CaptioningManager f6457g;

    /* renamed from: h */
    public Handler f6458h;

    /* renamed from: m */
    public AbstractC1384c f6463m;

    /* renamed from: n */
    public AbstractC1385d f6464n;

    /* renamed from: d */
    public final Object f6454d = new Object();

    /* renamed from: e */
    public final Object f6455e = new Object();

    /* renamed from: i */
    public final Handler.Callback f6459i = new C1382a();

    /* renamed from: j */
    public CaptioningManager.CaptioningChangeListener f6460j = new C1383b();

    /* renamed from: k */
    public boolean f6461k = false;

    /* renamed from: l */
    public boolean f6462l = false;

    /* renamed from: b */
    public ArrayList<AbstractC1387f> f6452b = new ArrayList<>();

    /* renamed from: c */
    public ArrayList<fx> f6453c = new ArrayList<>();

    /* renamed from: ex$a */
    /* loaded from: classes-dex2jar.jar:ex$a.class */
    public class C1382a implements Handler.Callback {
        public C1382a() {
            C1381ex.this = r4;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                C1381ex.this.m2038f();
                return true;
            } else if (i == 2) {
                C1381ex.this.m2041c();
                return true;
            } else if (i == 3) {
                C1381ex.this.m2039e((fx) message.obj);
                return true;
            } else if (i != 4) {
                return false;
            } else {
                C1381ex.this.m2040d();
                return true;
            }
        }
    }

    /* renamed from: ex$b */
    /* loaded from: classes-dex2jar.jar:ex$b.class */
    public class C1383b extends CaptioningManager.CaptioningChangeListener {
        public C1383b() {
            C1381ex.this = r4;
        }

        @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
        public void onEnabledChanged(boolean z) {
            C1381ex.this.m2032l();
        }

        @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
        public void onLocaleChanged(Locale locale) {
            C1381ex.this.m2032l();
        }
    }

    /* renamed from: ex$c */
    /* loaded from: classes-dex2jar.jar:ex$c.class */
    public interface AbstractC1384c {
        /* renamed from: a */
        void m2028a(fx.c cVar);

        /* renamed from: b */
        Looper m2027b();
    }

    /* renamed from: ex$d */
    /* loaded from: classes-dex2jar.jar:ex$d.class */
    public interface AbstractC1385d {
        /* renamed from: a */
        void m2026a(fx fxVar);
    }

    /* renamed from: ex$e */
    /* loaded from: classes-dex2jar.jar:ex$e.class */
    public static class C1386e {
        /* renamed from: a */
        public static int m2025a(MediaFormat mediaFormat, String str, int i) {
            try {
                return mediaFormat.getInteger(str);
            } catch (ClassCastException | NullPointerException e) {
                return i;
            }
        }
    }

    /* renamed from: ex$f */
    /* loaded from: classes-dex2jar.jar:ex$f.class */
    public static abstract class AbstractC1387f {
        /* renamed from: a */
        public abstract fx m2024a(MediaFormat mediaFormat);

        /* renamed from: b */
        public abstract boolean m2023b(MediaFormat mediaFormat);
    }

    public C1381ex(Context context, rw rwVar, AbstractC1385d abstractC1385d) {
        this.f6451a = rwVar;
        this.f6464n = abstractC1385d;
        this.f6457g = (CaptioningManager) context.getSystemService("captioning");
    }

    /* renamed from: a */
    public fx m2043a(MediaFormat mediaFormat) {
        fx m2024a;
        synchronized (this.f6454d) {
            Iterator<AbstractC1387f> it = this.f6452b.iterator();
            while (it.hasNext()) {
                AbstractC1387f next = it.next();
                if (next.m2023b(mediaFormat) && (m2024a = next.m2024a(mediaFormat)) != null) {
                    synchronized (this.f6455e) {
                        if (this.f6453c.size() == 0) {
                            this.f6457g.addCaptioningChangeListener(this.f6460j);
                        }
                        this.f6453c.add(m2024a);
                    }
                    return m2024a;
                }
            }
            return null;
        }
    }

    /* renamed from: b */
    public final void m2042b() {
    }

    /* renamed from: c */
    public void m2041c() {
        this.f6462l = true;
        fx fxVar = this.f6456f;
        if (fxVar != null) {
            fxVar.e();
        }
    }

    /* renamed from: d */
    public void m2040d() {
        fx fxVar;
        if (this.f6461k) {
            if (this.f6462l) {
                return;
            }
            if (this.f6457g.isEnabled() || !((fxVar = this.f6456f) == null || C1386e.m2025a(fxVar.b(), "is-forced-subtitle", 0) == 0)) {
                m2029o();
            } else {
                fx fxVar2 = this.f6456f;
                if (fxVar2 != null && fxVar2.d() == 4) {
                    m2035i();
                }
            }
            this.f6462l = false;
        }
        fx m2037g = m2037g();
        if (m2037g != null) {
            m2031m(m2037g);
            this.f6461k = false;
            if (this.f6462l) {
                return;
            }
            m2029o();
            this.f6462l = false;
        }
    }

    /* renamed from: e */
    public void m2039e(fx fxVar) {
        this.f6461k = true;
        fx fxVar2 = this.f6456f;
        if (fxVar2 == fxVar) {
            return;
        }
        if (fxVar2 != null) {
            fxVar2.e();
            this.f6456f.j((rw) null);
        }
        this.f6456f = fxVar;
        AbstractC1384c abstractC1384c = this.f6463m;
        if (abstractC1384c != null) {
            abstractC1384c.m2028a(m2036h());
        }
        fx fxVar3 = this.f6456f;
        if (fxVar3 != null) {
            fxVar3.j(this.f6451a);
            this.f6456f.k();
        }
        AbstractC1385d abstractC1385d = this.f6464n;
        if (abstractC1385d == null) {
            return;
        }
        abstractC1385d.m2026a(fxVar);
    }

    /* renamed from: f */
    public void m2038f() {
        this.f6462l = true;
        fx fxVar = this.f6456f;
        if (fxVar != null) {
            fxVar.k();
        }
    }

    public void finalize() {
        this.f6457g.removeCaptioningChangeListener(this.f6460j);
        super.finalize();
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x011a A[SYNTHETIC] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public fx m2037g() {
        /*
            Method dump skipped, instructions count: 375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.C1381ex.m2037g():fx");
    }

    /* renamed from: h */
    public final fx.c m2036h() {
        fx fxVar = this.f6456f;
        if (fxVar == null) {
            return null;
        }
        return fxVar.c();
    }

    /* renamed from: i */
    public void m2035i() {
        m2034j(this.f6458h.obtainMessage(2));
    }

    /* renamed from: j */
    public final void m2034j(Message message) {
        if (Looper.myLooper() == this.f6458h.getLooper()) {
            this.f6458h.dispatchMessage(message);
        } else {
            this.f6458h.sendMessage(message);
        }
    }

    /* renamed from: k */
    public void m2033k(AbstractC1387f abstractC1387f) {
        synchronized (this.f6454d) {
            if (!this.f6452b.contains(abstractC1387f)) {
                this.f6452b.add(abstractC1387f);
            }
        }
    }

    /* renamed from: l */
    public void m2032l() {
        m2034j(this.f6458h.obtainMessage(4));
    }

    /* renamed from: m */
    public boolean m2031m(fx fxVar) {
        if (fxVar == null || this.f6453c.contains(fxVar)) {
            m2034j(this.f6458h.obtainMessage(3, fxVar));
            return true;
        }
        return false;
    }

    /* renamed from: n */
    public void m2030n(AbstractC1384c abstractC1384c) {
        AbstractC1384c abstractC1384c2 = this.f6463m;
        if (abstractC1384c2 == abstractC1384c) {
            return;
        }
        if (abstractC1384c2 != null) {
            m2042b();
            this.f6463m.m2028a(null);
        }
        this.f6463m = abstractC1384c;
        this.f6458h = null;
        if (abstractC1384c == null) {
            return;
        }
        this.f6458h = new Handler(this.f6463m.m2027b(), this.f6459i);
        m2042b();
        this.f6463m.m2028a(m2036h());
    }

    /* renamed from: o */
    public void m2029o() {
        m2034j(this.f6458h.obtainMessage(1));
    }
}
