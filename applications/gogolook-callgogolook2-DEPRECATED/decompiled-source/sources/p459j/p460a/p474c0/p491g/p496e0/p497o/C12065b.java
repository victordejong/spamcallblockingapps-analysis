package p459j.p460a.p474c0.p491g.p496e0.p497o;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.Camera;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.appcompat.widget.TooltipCompatHandler;
import java.util.ArrayList;
import java.util.List;
import kotlinx.coroutines.DebugKt;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
/* renamed from: j.a.c0.g.e0.o.b */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/o/b.class */
public class C12065b {

    /* renamed from: b */
    public boolean f27039b;

    /* renamed from: c */
    public boolean f27040c;

    /* renamed from: d */
    public boolean f27041d;

    /* renamed from: e */
    public boolean f27042e;

    /* renamed from: f */
    public boolean f27043f;

    /* renamed from: h */
    public C12071e f27045h;

    /* renamed from: i */
    public int f27046i;

    /* renamed from: j */
    public int f27047j;

    /* renamed from: k */
    public boolean f27048k;

    /* renamed from: l */
    public int f27049l;

    /* renamed from: m */
    public List<Object> f27050m;

    /* renamed from: n */
    public List<Object> f27051n;

    /* renamed from: o */
    public String f27052o;

    /* renamed from: p */
    public String f27053p;

    /* renamed from: q */
    public Camera.Parameters f27054q;

    /* renamed from: r */
    public Handler f27055r;

    /* renamed from: s */
    public AbstractC12066a f27056s;

    /* renamed from: a */
    public int f27038a = 0;

    /* renamed from: g */
    public Matrix f27044g = new Matrix();

    /* renamed from: j.a.c0.g.e0.o.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/o/b$a.class */
    public interface AbstractC12066a {
        /* renamed from: a */
        void mo7306a();

        /* renamed from: b */
        boolean mo7305b();

        /* renamed from: c */
        void mo7304c();

        /* renamed from: d */
        void mo7303d();
    }

    /* renamed from: j.a.c0.g.e0.o.b$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/o/b$b.class */
    public class HandlerC12067b extends Handler {
        public HandlerC12067b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 0) {
                C12065b.this.m7325b();
            }
        }
    }

    public C12065b(AbstractC12066a aVar, Looper looper) {
        this.f27055r = new HandlerC12067b(looper);
        this.f27056s = aVar;
    }

    /* renamed from: a */
    public static int m7335a(int i, int i2, int i3) {
        C12151d.m6999b(i3 >= i2);
        return i > i3 ? i3 : i < i2 ? i2 : i;
    }

    /* renamed from: a */
    public static void m7333a(Matrix matrix, boolean z, int i, int i2, int i3) {
        matrix.setScale(z ? -1.0f : 1.0f, 1.0f);
        matrix.postRotate(i);
        float f = i2;
        float f2 = f / 2000.0f;
        float f3 = i3;
        matrix.postScale(f2, f3 / 2000.0f);
        matrix.postTranslate(f / 2.0f, f3 / 2.0f);
    }

    /* renamed from: a */
    public static void m7332a(RectF rectF, Rect rect) {
        rect.left = Math.round(rectF.left);
        rect.top = Math.round(rectF.top);
        rect.right = Math.round(rectF.right);
        rect.bottom = Math.round(rectF.bottom);
    }

    /* renamed from: a */
    public static boolean m7328a(String str, List<String> list) {
        return list != null && list.indexOf(str) >= 0;
    }

    /* renamed from: b */
    public static boolean m7322b(Camera.Parameters parameters) {
        return "true".equals(parameters.get("auto-exposure-lock-supported"));
    }

    /* renamed from: c */
    public static boolean m7319c(Camera.Parameters parameters) {
        return "true".equals(parameters.get("auto-whitebalance-lock-supported"));
    }

    /* renamed from: d */
    public static boolean m7317d(Camera.Parameters parameters) {
        return parameters.getMaxNumFocusAreas() > 0 && m7328a(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, parameters.getSupportedFocusModes());
    }

    /* renamed from: e */
    public static boolean m7315e(Camera.Parameters parameters) {
        return parameters.getMaxNumMeteringAreas() > 0;
    }

    /* renamed from: a */
    public final void m7338a() {
        C12153d0.m6983d("MessagingApp", "Start autofocus.");
        this.f27056s.mo7303d();
        this.f27038a = 1;
        m7307m();
        this.f27055r.removeMessages(0);
    }

    /* renamed from: a */
    public void m7337a(int i, int i2) {
        int i3;
        if (this.f27039b && (i3 = this.f27038a) != 2) {
            if (this.f27050m != null && (i3 == 1 || i3 == 3 || i3 == 4)) {
                m7325b();
            }
            int k = this.f27045h.m7227k();
            int k2 = this.f27045h.m7227k();
            if (k != 0 && this.f27045h.m7299d() != 0 && this.f27045h.m7301c() != 0) {
                int i4 = this.f27046i;
                int i5 = this.f27047j;
                if (this.f27040c) {
                    m7334a(k, k2, i, i2, i4, i5);
                }
                if (this.f27041d) {
                    m7323b(k, k2, i, i2, i4, i5);
                }
                this.f27045h.m7241d(i, i2);
                this.f27056s.mo7306a();
                if (this.f27040c) {
                    m7338a();
                    return;
                }
                m7307m();
                this.f27055r.removeMessages(0);
                this.f27055r.sendEmptyMessageDelayed(0, TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS);
            }
        }
    }

    /* renamed from: a */
    public final void m7336a(int i, int i2, float f, int i3, int i4, int i5, int i6, Rect rect) {
        int i7 = (int) (i * f);
        int i8 = (int) (i2 * f);
        int a = m7335a(i3 - (i7 / 2), 0, Math.max(0, i5 - i7));
        int a2 = m7335a(i4 - (i8 / 2), 0, Math.max(0, i6 - i8));
        RectF rectF = new RectF(a, a2, a + i7, a2 + i8);
        this.f27044g.mapRect(rectF);
        m7332a(rectF, rect);
    }

    /* renamed from: a */
    public final void m7334a(int i, int i2, int i3, int i4, int i5, int i6) {
        if (this.f27050m == null) {
            this.f27050m = new ArrayList();
            this.f27050m.add(new Camera.Area(new Rect(), 1));
        }
        m7336a(i, i2, 1.0f, i3, i4, i5, i6, ((Camera.Area) this.f27050m.get(0)).rect);
    }

    /* renamed from: a */
    public void m7331a(Camera.Parameters parameters) {
        if (parameters != null) {
            this.f27054q = parameters;
            this.f27040c = m7317d(parameters);
            this.f27041d = m7315e(parameters);
            this.f27042e = m7322b(this.f27054q) || m7319c(this.f27054q);
        }
    }

    /* renamed from: a */
    public void m7329a(C12071e eVar) {
        this.f27045h = eVar;
        this.f27039b = this.f27044g != null;
    }

    /* renamed from: a */
    public void m7327a(boolean z) {
        if (!this.f27039b || this.f27038a != 0) {
            return;
        }
        if (z) {
            this.f27045h.mo7252b();
        } else {
            this.f27045h.mo7245b(true);
        }
    }

    /* renamed from: a */
    public void m7326a(boolean z, boolean z2) {
        int i = this.f27038a;
        if (i == 2) {
            if (z) {
                this.f27038a = 3;
            } else {
                this.f27038a = 4;
            }
            m7307m();
            m7320c();
        } else if (i == 1) {
            if (z) {
                this.f27038a = 3;
            } else {
                this.f27038a = 4;
            }
            m7307m();
            if (this.f27050m != null) {
                this.f27055r.sendEmptyMessageDelayed(0, TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS);
            }
            if (z2) {
                m7313g();
            }
        }
    }

    /* renamed from: b */
    public final void m7325b() {
        C12153d0.m6983d("MessagingApp", "Cancel autofocus.");
        m7309k();
        this.f27056s.mo7304c();
        this.f27038a = 0;
        m7307m();
        this.f27055r.removeMessages(0);
    }

    /* renamed from: b */
    public void m7324b(int i, int i2) {
        if (this.f27046i != i || this.f27047j != i2) {
            this.f27046i = i;
            this.f27047j = i2;
            m7308l();
        }
    }

    /* renamed from: b */
    public final void m7323b(int i, int i2, int i3, int i4, int i5, int i6) {
        if (this.f27051n == null) {
            this.f27051n = new ArrayList();
            this.f27051n.add(new Camera.Area(new Rect(), 1));
        }
        m7336a(i, i2, 1.5f, i3, i4, i5, i6, ((Camera.Area) this.f27051n.get(0)).rect);
    }

    /* renamed from: b */
    public void m7321b(boolean z) {
        this.f27048k = z;
        m7308l();
    }

    /* renamed from: c */
    public final void m7320c() {
        if (this.f27056s.mo7305b()) {
            this.f27038a = 0;
            this.f27055r.removeMessages(0);
        }
    }

    /* renamed from: d */
    public List m7318d() {
        return this.f27050m;
    }

    /* renamed from: e */
    public String m7316e() {
        String str = this.f27053p;
        if (str != null) {
            return str;
        }
        List<String> supportedFocusModes = this.f27054q.getSupportedFocusModes();
        if (!this.f27040c || this.f27050m == null) {
            this.f27052o = "continuous-picture";
        } else {
            this.f27052o = DebugKt.DEBUG_PROPERTY_VALUE_AUTO;
        }
        if (!m7328a(this.f27052o, supportedFocusModes)) {
            if (m7328a(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, this.f27054q.getSupportedFocusModes())) {
                this.f27052o = DebugKt.DEBUG_PROPERTY_VALUE_AUTO;
            } else {
                this.f27052o = this.f27054q.getFocusMode();
            }
        }
        return this.f27052o;
    }

    /* renamed from: f */
    public List m7314f() {
        return this.f27051n;
    }

    /* renamed from: g */
    public final void m7313g() {
        if (this.f27042e && !this.f27043f) {
            this.f27043f = true;
            this.f27056s.mo7306a();
        }
    }

    /* renamed from: h */
    public void m7312h() {
        m7310j();
    }

    /* renamed from: i */
    public void m7311i() {
        this.f27038a = 0;
    }

    /* renamed from: j */
    public void m7310j() {
        this.f27038a = 0;
        m7309k();
        m7307m();
    }

    /* renamed from: k */
    public void m7309k() {
        if (this.f27039b) {
            this.f27045h.clear();
            this.f27050m = null;
            this.f27051n = null;
        }
    }

    /* renamed from: l */
    public final void m7308l() {
        if (this.f27046i != 0 && this.f27047j != 0) {
            Matrix matrix = new Matrix();
            m7333a(matrix, this.f27048k, this.f27049l, this.f27046i, this.f27047j);
            matrix.invert(this.f27044g);
            this.f27039b = this.f27045h != null;
        }
    }

    /* renamed from: m */
    public void m7307m() {
        if (this.f27039b) {
            C12071e eVar = this.f27045h;
            int i = this.f27038a;
            if (i == 0) {
                if (this.f27050m == null) {
                    eVar.clear();
                } else {
                    eVar.mo7252b();
                }
            } else if (i == 1 || i == 2) {
                eVar.mo7252b();
            } else if ("continuous-picture".equals(this.f27052o)) {
                eVar.mo7245b(false);
            } else {
                int i2 = this.f27038a;
                if (i2 == 3) {
                    eVar.mo7245b(false);
                } else if (i2 == 4) {
                    eVar.mo7253a(false);
                }
            }
        }
    }
}
