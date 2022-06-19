package androidx.emoji2.text;

import android.content.Context;
import android.os.Trace;
import androidx.emoji2.text.C0354d;
import androidx.lifecycle.AbstractC0513d;
import androidx.lifecycle.AbstractC0516f;
import androidx.lifecycle.AbstractC0524j;
import androidx.lifecycle.C0525k;
import androidx.lifecycle.ProcessLifecycleInitializer;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ThreadPoolExecutor;
import p120i0.C3062g;
import p121i1.AbstractC3064b;
import p121i1.C3063a;
/* loaded from: classes-dex2jar.jar:androidx/emoji2/text/EmojiCompatInitializer.class */
public class EmojiCompatInitializer implements AbstractC3064b<Boolean> {

    /* renamed from: androidx.emoji2.text.EmojiCompatInitializer$a */
    /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/EmojiCompatInitializer$a.class */
    public static class C0344a extends C0354d.AbstractC0358c {
        public C0344a(Context context) {
            super(new C0345b(context));
            this.f1594b = 1;
        }
    }

    /* renamed from: androidx.emoji2.text.EmojiCompatInitializer$b */
    /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/EmojiCompatInitializer$b.class */
    public static class C0345b implements C0354d.AbstractC0362g {

        /* renamed from: a */
        public final Context f1576a;

        public C0345b(Context context) {
            this.f1576a = context.getApplicationContext();
        }

        @Override // androidx.emoji2.text.C0354d.AbstractC0362g
        /* renamed from: a */
        public void mo8229a(C0354d.AbstractC0363h abstractC0363h) {
            ThreadPoolExecutor m8262a = C0348b.m8262a("EmojiCompatInitializer");
            m8262a.execute(new RunnableC0365e(this, abstractC0363h, m8262a, 0));
        }
    }

    /* renamed from: androidx.emoji2.text.EmojiCompatInitializer$c */
    /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/EmojiCompatInitializer$c.class */
    public static class RunnableC0346c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            try {
                int i = C3062g.f10396a;
                Trace.beginSection("EmojiCompat.EmojiCompatInitializer.run");
                if (C0354d.m8253c()) {
                    C0354d.m8255a().m8251e();
                }
                Trace.endSection();
            } catch (Throwable th) {
                int i2 = C3062g.f10396a;
                Trace.endSection();
                throw th;
            }
        }
    }

    @Override // p121i1.AbstractC3064b
    /* renamed from: a */
    public List<Class<? extends AbstractC3064b<?>>> mo2660a() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    @Override // p121i1.AbstractC3064b
    /* renamed from: b */
    public /* bridge */ /* synthetic */ Boolean mo2659b(Context context) {
        m8263c(context);
        return Boolean.TRUE;
    }

    /* renamed from: c */
    public Boolean m8263c(Context context) {
        C0344a c0344a = new C0344a(context);
        if (C0354d.f1579k == null) {
            synchronized (C0354d.f1578j) {
                if (C0354d.f1579k == null) {
                    C0354d.f1579k = new C0354d(c0344a);
                }
            }
        }
        C3063a m2661b = C3063a.m2661b(context);
        Objects.requireNonNull(m2661b);
        final AbstractC0516f lifecycle = ((AbstractC0524j) m2661b.m2662a(ProcessLifecycleInitializer.class, new HashSet())).getLifecycle();
        lifecycle.mo7992a(new AbstractC0513d() { // from class: androidx.emoji2.text.EmojiCompatInitializer.1
            @Override // androidx.lifecycle.AbstractC0513d
            /* renamed from: a */
            public void mo8001a(AbstractC0524j abstractC0524j) {
                Objects.requireNonNull(EmojiCompatInitializer.this);
                C0348b.m8261b().postDelayed(new RunnableC0346c(), 500L);
                C0525k c0525k = (C0525k) lifecycle;
                c0525k.m7989d("removeObserver");
                c0525k.f2037a.mo1887e(this);
            }

            @Override // androidx.lifecycle.AbstractC0513d
            /* renamed from: b */
            public /* synthetic */ void mo8000b(AbstractC0524j abstractC0524j) {
            }

            @Override // androidx.lifecycle.AbstractC0513d
            /* renamed from: c */
            public /* synthetic */ void mo7999c(AbstractC0524j abstractC0524j) {
            }

            @Override // androidx.lifecycle.AbstractC0513d
            /* renamed from: e */
            public /* synthetic */ void mo7998e(AbstractC0524j abstractC0524j) {
            }

            @Override // androidx.lifecycle.AbstractC0513d
            /* renamed from: f */
            public /* synthetic */ void mo7997f(AbstractC0524j abstractC0524j) {
            }

            @Override // androidx.lifecycle.AbstractC0513d
            /* renamed from: g */
            public /* synthetic */ void mo7996g(AbstractC0524j abstractC0524j) {
            }
        });
        return Boolean.TRUE;
    }
}
