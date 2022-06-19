package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.os.Handler;
import android.support.p012v4.media.C0082b;
import androidx.appcompat.widget.RunnableC0198a1;
import androidx.emoji2.text.C0354d;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;
import p007a6.C0033h;
import p124i4.C3102d;
import p130j0.C3148d;
import p130j0.C3150e;
import p130j0.C3157k;
import p130j0.C3158l;
/* renamed from: androidx.emoji2.text.j */
/* loaded from: classes-dex2jar.jar:androidx/emoji2/text/j.class */
public class C0372j extends C0354d.AbstractC0358c {

    /* renamed from: d */
    public static final C0373a f1624d = new C0373a();

    /* renamed from: androidx.emoji2.text.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/j$a.class */
    public static class C0373a {
    }

    /* renamed from: androidx.emoji2.text.j$b */
    /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/j$b.class */
    public static class C0374b implements C0354d.AbstractC0362g {

        /* renamed from: a */
        public final Context f1625a;

        /* renamed from: b */
        public final C3150e f1626b;

        /* renamed from: c */
        public final C0373a f1627c;

        /* renamed from: d */
        public final Object f1628d = new Object();

        /* renamed from: e */
        public Handler f1629e;

        /* renamed from: f */
        public Executor f1630f;

        /* renamed from: g */
        public ThreadPoolExecutor f1631g;

        /* renamed from: h */
        public C0354d.AbstractC0363h f1632h;

        /* renamed from: i */
        public ContentObserver f1633i;

        /* renamed from: j */
        public Runnable f1634j;

        public C0374b(Context context, C3150e c3150e, C0373a c0373a) {
            C3102d.m2628k(context, "Context cannot be null");
            C3102d.m2628k(c3150e, "FontRequest cannot be null");
            this.f1625a = context.getApplicationContext();
            this.f1626b = c3150e;
            this.f1627c = c0373a;
        }

        @Override // androidx.emoji2.text.C0354d.AbstractC0362g
        /* renamed from: a */
        public void mo8229a(C0354d.AbstractC0363h abstractC0363h) {
            synchronized (this.f1628d) {
                this.f1632h = abstractC0363h;
            }
            m8227c();
        }

        /* renamed from: b */
        public final void m8228b() {
            synchronized (this.f1628d) {
                this.f1632h = null;
                ContentObserver contentObserver = this.f1633i;
                if (contentObserver != null) {
                    C0373a c0373a = this.f1627c;
                    Context context = this.f1625a;
                    Objects.requireNonNull(c0373a);
                    context.getContentResolver().unregisterContentObserver(contentObserver);
                    this.f1633i = null;
                }
                Handler handler = this.f1629e;
                if (handler != null) {
                    handler.removeCallbacks(this.f1634j);
                }
                this.f1629e = null;
                ThreadPoolExecutor threadPoolExecutor = this.f1631g;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.f1630f = null;
                this.f1631g = null;
            }
        }

        /* renamed from: c */
        public void m8227c() {
            synchronized (this.f1628d) {
                if (this.f1632h == null) {
                    return;
                }
                if (this.f1630f == null) {
                    ThreadPoolExecutor m8262a = C0348b.m8262a("emojiCompat");
                    this.f1631g = m8262a;
                    this.f1630f = m8262a;
                }
                this.f1630f.execute(new RunnableC0198a1(this, 1));
            }
        }

        /* renamed from: d */
        public final C3158l m8226d() {
            try {
                C0373a c0373a = this.f1627c;
                Context context = this.f1625a;
                C3150e c3150e = this.f1626b;
                Objects.requireNonNull(c0373a);
                C3157k m2587a = C3148d.m2587a(context, c3150e, null);
                if (m2587a.f10619a != 0) {
                    throw new RuntimeException(C0033h.m8885l(C0082b.m8752j("fetchFonts failed ("), m2587a.f10619a, ")"));
                }
                C3158l[] c3158lArr = m2587a.f10620b;
                if (c3158lArr != null && c3158lArr.length != 0) {
                    return c3158lArr[0];
                }
                throw new RuntimeException("fetchFonts failed (empty result)");
            } catch (PackageManager.NameNotFoundException e) {
                throw new RuntimeException("provider not found", e);
            }
        }
    }

    public C0372j(Context context, C3150e c3150e) {
        super(new C0374b(context, c3150e, f1624d));
    }
}
