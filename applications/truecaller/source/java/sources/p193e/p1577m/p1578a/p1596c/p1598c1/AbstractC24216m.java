package p193e.p1577m.p1578a.p1596c.p1598c1;

import android.os.Handler;
import com.google.android.exoplayer2.Format;
import java.util.Objects;
import p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24216m;
import p193e.p1577m.p1578a.p1596c.p1600e1.C24264d;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.c1.m */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/m.class */
public interface AbstractC24216m {

    /* renamed from: e.m.a.c.c1.m$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/m$a.class */
    public static final class C24217a {

        /* renamed from: a */
        public final Handler f67027a;

        /* renamed from: b */
        public final AbstractC24216m f67028b;

        public C24217a(Handler handler, AbstractC24216m abstractC24216m) {
            if (abstractC24216m != null) {
                Objects.requireNonNull(handler);
            } else {
                handler = null;
            }
            this.f67027a = handler;
            this.f67028b = abstractC24216m;
        }

        /* renamed from: a */
        public void m5442a(final C24264d c24264d) {
            synchronized (c24264d) {
            }
            Handler handler = this.f67027a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: e.m.a.c.c1.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC24216m.C24217a c24217a = AbstractC24216m.C24217a.this;
                        C24264d c24264d2 = c24264d;
                        Objects.requireNonNull(c24217a);
                        synchronized (c24264d2) {
                        }
                        AbstractC24216m abstractC24216m = c24217a.f67028b;
                        int i = C24773d0.f69427a;
                        abstractC24216m.mo5444p(c24264d2);
                    }
                });
            }
        }
    }

    /* renamed from: b */
    void mo5448b(int i);

    /* renamed from: d */
    void mo5447d(String str, long j, long j2);

    /* renamed from: h */
    void mo5446h(int i, long j, long j2);

    /* renamed from: l */
    void mo5445l(C24264d c24264d);

    /* renamed from: p */
    void mo5444p(C24264d c24264d);

    /* renamed from: r */
    void mo5443r(Format format);
}
