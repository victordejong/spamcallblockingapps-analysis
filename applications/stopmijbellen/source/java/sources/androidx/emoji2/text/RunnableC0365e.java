package androidx.emoji2.text;

import androidx.emoji2.text.C0354d;
import androidx.emoji2.text.C0372j;
import androidx.emoji2.text.EmojiCompatInitializer;
import java.util.Objects;
import java.util.concurrent.ThreadPoolExecutor;
import p104g6.C2905a;
import p169m6.C3652e;
import p191o6.C3909g;
import p191o6.C3920i;
import p191o6.EnumC3901d;
/* renamed from: androidx.emoji2.text.e */
/* loaded from: classes-dex2jar.jar:androidx/emoji2/text/e.class */
public final /* synthetic */ class RunnableC0365e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f1599a;

    /* renamed from: b */
    public final /* synthetic */ Object f1600b;

    /* renamed from: c */
    public final /* synthetic */ Object f1601c;

    /* renamed from: d */
    public final /* synthetic */ Object f1602d;

    public /* synthetic */ RunnableC0365e(Object obj, Object obj2, Object obj3, int i) {
        this.f1599a = i;
        this.f1600b = obj;
        this.f1601c = obj2;
        this.f1602d = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1599a) {
            case 0:
                EmojiCompatInitializer.C0345b c0345b = (EmojiCompatInitializer.C0345b) this.f1600b;
                C0354d.AbstractC0363h abstractC0363h = (C0354d.AbstractC0363h) this.f1601c;
                ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) this.f1602d;
                Objects.requireNonNull(c0345b);
                try {
                    C0372j m8259a = C0350c.m8259a(c0345b.f1576a);
                    if (m8259a == null) {
                        throw new RuntimeException("EmojiCompat font provider not available on this device.");
                    }
                    C0372j.C0374b c0374b = (C0372j.C0374b) m8259a.f1593a;
                    synchronized (c0374b.f1628d) {
                        c0374b.f1630f = threadPoolExecutor;
                    }
                    m8259a.f1593a.mo8229a(new C0366f(c0345b, abstractC0363h, threadPoolExecutor));
                    return;
                } catch (Throwable th) {
                    abstractC0363h.mo8241a(th);
                    threadPoolExecutor.shutdown();
                    return;
                }
            default:
                C3652e c3652e = (C3652e) this.f1600b;
                C3909g c3909g = (C3909g) this.f1601c;
                EnumC3901d enumC3901d = (EnumC3901d) this.f1602d;
                C2905a c2905a = C3652e.f11966r;
                Objects.requireNonNull(c3652e);
                C3920i.C3922b m1638F = C3920i.m1638F();
                m1638F.m4282n();
                C3920i.m1643A((C3920i) m1638F.f7078b, c3909g);
                c3652e.m1929e(m1638F, enumC3901d);
                return;
        }
    }
}
