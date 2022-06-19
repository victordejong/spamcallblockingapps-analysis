package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Trace;
import androidx.emoji2.text.C0354d;
import androidx.emoji2.text.C0372j;
import androidx.emoji2.text.C0376l;
import androidx.emoji2.text.C0377m;
import com.mglab.scm.MainActivity;
import com.mglab.scm.visual.C2107c;
import java.nio.ByteBuffer;
import java.util.Objects;
import p087f0.C2699e;
import p087f0.C2707l;
import p120i0.C3062g;
import p130j0.C3158l;
import p169m6.C3649c;
import p169m6.C3652e;
/* renamed from: androidx.appcompat.widget.a1 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/a1.class */
public final /* synthetic */ class RunnableC0198a1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f835a;

    /* renamed from: b */
    public final /* synthetic */ Object f836b;

    public /* synthetic */ RunnableC0198a1(Object obj, int i) {
        this.f835a = i;
        this.f836b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f835a) {
            case 0:
                ((Toolbar) this.f836b).m8603o();
                return;
            case 1:
                C0372j.C0374b c0374b = (C0372j.C0374b) this.f836b;
                synchronized (c0374b.f1628d) {
                    if (c0374b.f1632h == null) {
                        return;
                    }
                    try {
                        C3158l m8226d = c0374b.m8226d();
                        int i = m8226d.f10625e;
                        if (i == 2) {
                            synchronized (c0374b.f1628d) {
                            }
                        }
                        if (i != 0) {
                            throw new RuntimeException("fetchFonts result is not OK. (" + i + ")");
                        }
                        int i2 = C3062g.f10396a;
                        Trace.beginSection("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                        C0372j.C0373a c0373a = c0374b.f1627c;
                        Context context = c0374b.f1625a;
                        Objects.requireNonNull(c0373a);
                        Typeface mo3226b = C2699e.f9279a.mo3226b(context, null, new C3158l[]{m8226d}, 0);
                        ByteBuffer m3219d = C2707l.m3219d(c0374b.f1625a, null, m8226d.f10621a);
                        if (m3219d == null || mo3226b == null) {
                            throw new RuntimeException("Unable to open file.");
                        }
                        Trace.beginSection("EmojiCompat.MetadataRepo.create");
                        C0377m c0377m = new C0377m(mo3226b, C0376l.m8225a(m3219d));
                        Trace.endSection();
                        Trace.endSection();
                        synchronized (c0374b.f1628d) {
                            C0354d.AbstractC0363h abstractC0363h = c0374b.f1632h;
                            if (abstractC0363h != null) {
                                abstractC0363h.mo8240b(c0377m);
                            }
                        }
                        c0374b.m8228b();
                        return;
                    } catch (Throwable th) {
                        synchronized (c0374b.f1628d) {
                            C0354d.AbstractC0363h abstractC0363h2 = c0374b.f1632h;
                            if (abstractC0363h2 != null) {
                                abstractC0363h2.mo8241a(th);
                            }
                            c0374b.m8228b();
                            return;
                        }
                    }
                }
            case 2:
                C3652e c3652e = (C3652e) this.f836b;
                C3649c c3649c = c3652e.f11979l;
                boolean z = c3652e.f11984q;
                c3649c.f11948c.m1935a(z);
                c3649c.f11949d.m1935a(z);
                return;
            case 3:
                MainActivity mainActivity = (MainActivity) this.f836b;
                int i3 = MainActivity.f7270v;
                mainActivity.m3981v();
                return;
            default:
                C2107c.m3931a((C2107c) this.f836b);
                return;
        }
    }
}
