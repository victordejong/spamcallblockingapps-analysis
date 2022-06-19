package com.flurry.sdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.flurry.sdk.kq */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/kq.class */
public final class C0472kq {

    /* renamed from: a */
    private static C0472kq f3489a;

    /* renamed from: b */
    private final C0467kl<String, C0486ld<AbstractC0471kp<?>>> f3490b = new C0467kl<>();

    /* renamed from: c */
    private final C0467kl<C0486ld<AbstractC0471kp<?>>, String> f3491c = new C0467kl<>();

    private C0472kq() {
    }

    /* renamed from: a */
    public static C0472kq m4617a() {
        C0472kq c0472kq;
        synchronized (C0472kq.class) {
            try {
                if (f3489a == null) {
                    f3489a = new C0472kq();
                }
                c0472kq = f3489a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0472kq;
    }

    /* renamed from: b */
    private List<AbstractC0471kp<?>> m4612b(String str) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            Iterator<C0486ld<AbstractC0471kp<?>>> it = this.f3490b.m4634a((C0467kl<String, C0486ld<AbstractC0471kp<?>>>) str).iterator();
            while (it.hasNext()) {
                AbstractC0471kp<?> abstractC0471kp = it.next().get();
                if (abstractC0471kp == null) {
                    it.remove();
                } else {
                    arrayList.add(abstractC0471kp);
                }
            }
            return arrayList;
        }
    }

    /* renamed from: a */
    public final int m4614a(String str) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                return 0;
            }
            return this.f3490b.m4634a((C0467kl<String, C0486ld<AbstractC0471kp<?>>>) str).size();
        }
    }

    /* renamed from: a */
    public final void m4616a(AbstractC0470ko abstractC0470ko) {
        if (abstractC0470ko == null) {
            return;
        }
        for (AbstractC0471kp<?> abstractC0471kp : m4612b(abstractC0470ko.m4620a())) {
            C0462kg.m4652a().m4647b(new 1(this, abstractC0471kp, abstractC0470ko));
        }
    }

    /* renamed from: a */
    public final void m4615a(AbstractC0471kp<?> abstractC0471kp) {
        synchronized (this) {
            if (abstractC0471kp == null) {
                return;
            }
            C0486ld<AbstractC0471kp<?>> c0486ld = new C0486ld<>(abstractC0471kp);
            for (String str : this.f3491c.m4634a((C0467kl<C0486ld<AbstractC0471kp<?>>, String>) c0486ld)) {
                this.f3490b.m4629b(str, c0486ld);
            }
            this.f3491c.m4630b(c0486ld);
        }
    }

    /* renamed from: a */
    public final void m4613a(String str, AbstractC0471kp<?> abstractC0471kp) {
        synchronized (this) {
            if (TextUtils.isEmpty(str) || abstractC0471kp == null) {
                return;
            }
            C0486ld<AbstractC0471kp<?>> c0486ld = new C0486ld<>(abstractC0471kp);
            boolean z = false;
            List<C0486ld<AbstractC0471kp<?>>> m4632a = this.f3490b.m4632a((C0467kl<String, C0486ld<AbstractC0471kp<?>>>) str, false);
            if (m4632a != null) {
                z = m4632a.contains(c0486ld);
            }
            if (z) {
                return;
            }
            this.f3490b.m4633a((C0467kl<String, C0486ld<AbstractC0471kp<?>>>) str, (String) c0486ld);
            this.f3491c.m4633a((C0467kl<C0486ld<AbstractC0471kp<?>>, String>) c0486ld, (C0486ld<AbstractC0471kp<?>>) str);
        }
    }

    /* renamed from: b */
    public final void m4611b(String str, AbstractC0471kp<?> abstractC0471kp) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            C0486ld<AbstractC0471kp<?>> c0486ld = new C0486ld<>(abstractC0471kp);
            this.f3490b.m4629b(str, c0486ld);
            this.f3491c.m4629b(c0486ld, str);
        }
    }
}
