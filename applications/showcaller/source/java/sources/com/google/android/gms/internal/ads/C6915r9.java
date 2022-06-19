package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: com.google.android.gms.internal.ads.r9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r9.class */
public final class C6915r9<T> {

    /* renamed from: a */
    private final AbstractC7210z8 f28820a;

    /* renamed from: b */
    private final AbstractC6693l9 f28821b;

    /* renamed from: c */
    private final AbstractC6841p9<T> f28822c;

    /* renamed from: d */
    private final CopyOnWriteArraySet<C6878q9<T>> f28823d;

    /* renamed from: e */
    private final ArrayDeque<Runnable> f28824e;

    /* renamed from: f */
    private final ArrayDeque<Runnable> f28825f;

    /* renamed from: g */
    private boolean f28826g;

    public C6915r9(Looper looper, AbstractC7210z8 abstractC7210z8, AbstractC6841p9<T> abstractC6841p9) {
        this(new CopyOnWriteArraySet(), looper, abstractC7210z8, abstractC6841p9);
    }

    private C6915r9(CopyOnWriteArraySet<C6878q9<T>> copyOnWriteArraySet, Looper looper, AbstractC7210z8 abstractC7210z8, AbstractC6841p9<T> abstractC6841p9) {
        this.f28820a = abstractC7210z8;
        this.f28823d = copyOnWriteArraySet;
        this.f28822c = abstractC6841p9;
        this.f28824e = new ArrayDeque<>();
        this.f28825f = new ArrayDeque<>();
        this.f28821b = abstractC7210z8.mo8486a(looper, new Handler.Callback(this) { // from class: com.google.android.gms.internal.ads.m9

            /* renamed from: d */
            private final C6915r9 f26485d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26485d = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                this.f26485d.m11651g(message);
                return true;
            }
        });
    }

    /* renamed from: a */
    public final C6915r9<T> m11657a(Looper looper, AbstractC6841p9<T> abstractC6841p9) {
        return new C6915r9<>(this.f28823d, looper, this.f28820a, abstractC6841p9);
    }

    /* renamed from: b */
    public final void m11656b(T t) {
        if (!this.f28826g) {
            Objects.requireNonNull(t);
            this.f28823d.add(new C6878q9<>(t));
        }
    }

    /* renamed from: c */
    public final void m11655c(T t) {
        Iterator<C6878q9<T>> it = this.f28823d.iterator();
        while (it.hasNext()) {
            C6878q9<T> next = it.next();
            if (next.f28343a.equals(t)) {
                next.m12012a(this.f28822c);
                this.f28823d.remove(next);
            }
        }
    }

    /* renamed from: d */
    public final void m11654d(int i, AbstractC6804o9<T> abstractC6804o9) {
        this.f28825f.add(new Runnable(new CopyOnWriteArraySet(this.f28823d), i, abstractC6804o9) { // from class: com.google.android.gms.internal.ads.n9

            /* renamed from: d */
            private final CopyOnWriteArraySet f27033d;

            /* renamed from: e */
            private final int f27034e;

            /* renamed from: f */
            private final AbstractC6804o9 f27035f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f27033d = copyOnWriteArraySet;
                this.f27034e = i;
                this.f27035f = abstractC6804o9;
            }

            @Override // java.lang.Runnable
            public final void run() {
                CopyOnWriteArraySet copyOnWriteArraySet2 = this.f27033d;
                int i2 = this.f27034e;
                AbstractC6804o9 abstractC6804o92 = this.f27035f;
                Iterator it = copyOnWriteArraySet2.iterator();
                while (it.hasNext()) {
                    ((C6878q9) it.next()).m12011b(i2, abstractC6804o92);
                }
            }
        });
    }

    /* renamed from: e */
    public final void m11653e() {
        if (this.f28825f.isEmpty()) {
            return;
        }
        if (!this.f28821b.mo11632B(0)) {
            AbstractC6693l9 abstractC6693l9 = this.f28821b;
            abstractC6693l9.mo11624h0(abstractC6693l9.mo11631a(0));
        }
        boolean isEmpty = this.f28824e.isEmpty();
        this.f28824e.addAll(this.f28825f);
        this.f28825f.clear();
        if (!isEmpty) {
            return;
        }
        while (!this.f28824e.isEmpty()) {
            this.f28824e.peekFirst().run();
            this.f28824e.removeFirst();
        }
    }

    /* renamed from: f */
    public final void m11652f() {
        Iterator<C6878q9<T>> it = this.f28823d.iterator();
        while (it.hasNext()) {
            it.next().m12012a(this.f28822c);
        }
        this.f28823d.clear();
        this.f28826g = true;
    }

    /* renamed from: g */
    public final /* bridge */ /* synthetic */ boolean m11651g(Message message) {
        Iterator<C6878q9<T>> it = this.f28823d.iterator();
        while (it.hasNext()) {
            it.next().m12010c(this.f28822c);
            if (this.f28821b.mo11632B(0)) {
                return true;
            }
        }
        return true;
    }
}
