package p193e.p194a.p195a.p200c.p214m8;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.data.types.Message;
import e.m.d.y.n;
import e.m.e.k;
import java.util.concurrent.FutureTask;
import javax.inject.Inject;
import p193e.p194a.p1221t.p1222a.p1224u.C20308c;
import p193e.p194a.p1221t.p1222a.p1224u.C20309d;
import p193e.p194a.p1221t.p1222a.p1224u.C20311f;
import p193e.p194a.p1221t.p1222a.p1224u.C20314i;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import s1.f0.r;
import s1.z.c.l;
/* renamed from: e.a.a.c.m8.b */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/m8/b.class */
public final class C5528b implements AbstractC5527a {

    /* renamed from: a */
    public long f18701a = -1;

    /* renamed from: b */
    public final C5532f f18702b = new C5532f("��", 2131233762, "ThumbsUp");

    /* renamed from: c */
    public final Context f18703c;

    /* renamed from: d */
    public final C20592g f18704d;

    /* renamed from: e */
    public final k f18705e;

    @Inject
    public C5528b(Context context, C20592g c20592g, k kVar) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c20592g, "featuresRegistry");
        l.e(kVar, "gson");
        this.f18703c = context;
        this.f18704d = c20592g;
        this.f18705e = kVar;
    }

    @Override // p193e.p194a.p195a.p200c.p214m8.AbstractC5527a
    /* renamed from: a */
    public C5532f mo32990a(Message message) {
        C5532f c5532f;
        C20309d c20309d;
        C20311f c20311f;
        l.e(message, "message");
        long j = message.f13380a;
        if (j == this.f18701a || message.f13388i || message.f13390k != 2) {
            return null;
        }
        boolean z = true;
        if ((message.f13386g & 1) != 0) {
            return null;
        }
        this.f18701a = j;
        String m35025a = message.m35025a();
        l.d(m35025a, "message.buildMessageText()");
        if (l.a(this.f18702b.f18711a, m35025a)) {
            c5532f = this.f18702b;
        } else {
            l.e(m35025a, "value");
            if (m35025a.length() != 0) {
                z = false;
            }
            if (!z) {
                FutureTask<C20311f> futureTask = C20314i.f57127a;
                if (futureTask == null || (c20311f = futureTask.get()) == null) {
                    throw new IllegalStateException("Emoji data loader has not been set");
                }
                C20308c c20308c = c20311f.f57124a;
                int i = 0;
                do {
                    int codePointAt = m35025a.codePointAt(i);
                    i += Character.charCount(codePointAt);
                    if (i >= m35025a.length()) {
                        c20309d = c20308c.f57117a.get(Integer.valueOf(codePointAt));
                        break;
                    }
                    c20308c = c20308c.f57118b.get(Integer.valueOf(codePointAt));
                } while (c20308c != null);
                c20309d = null;
            } else {
                c20309d = null;
            }
            int i2 = 0;
            if (c20309d != null) {
                i2 = n.D(c20309d, this.f18703c);
            }
            c5532f = null;
            if (i2 != 0) {
                c5532f = new C5532f(m35025a, i2, "Other");
            }
        }
        return c5532f;
    }

    @Override // p193e.p194a.p195a.p200c.p214m8.AbstractC5527a
    /* renamed from: b */
    public C5532f mo32989b() {
        C20309d c20309d;
        C20311f c20311f;
        C20592g c20592g = this.f18704d;
        String mo10938g = ((AbstractC20597i) c20592g.f57946i3.m10941a(c20592g, C20592g.f57695p6[217])).mo10938g();
        if (r.p(mo10938g)) {
            mo10938g = null;
        }
        if (mo10938g != null) {
            C5531e c5531e = (C5531e) n.B1(C5531e.class).cast(this.f18705e.g(mo10938g, C5531e.class));
            if (c5531e != null) {
                String m32987b = c5531e.m32987b();
                l.e(m32987b, "value");
                if (!(m32987b.length() == 0)) {
                    FutureTask<C20311f> futureTask = C20314i.f57127a;
                    if (futureTask != null && (c20311f = futureTask.get()) != null) {
                        C20308c c20308c = c20311f.f57124a;
                        int i = 0;
                        while (true) {
                            int codePointAt = m32987b.codePointAt(i);
                            i += Character.charCount(codePointAt);
                            if (i < m32987b.length()) {
                                C20308c c20308c2 = c20308c.f57118b.get(Integer.valueOf(codePointAt));
                                c20309d = null;
                                if (c20308c2 == null) {
                                    break;
                                }
                                c20308c = c20308c2;
                            } else {
                                c20309d = c20308c.f57117a.get(Integer.valueOf(codePointAt));
                                break;
                            }
                        }
                    } else {
                        throw new IllegalStateException("Emoji data loader has not been set");
                    }
                } else {
                    c20309d = null;
                }
                int i2 = 0;
                if (c20309d != null) {
                    i2 = n.D(c20309d, this.f18703c);
                }
                return i2 != 0 ? new C5532f(c5531e.m32987b(), i2, c5531e.m32988a()) : this.f18702b;
            }
        }
        return this.f18702b;
    }
}
