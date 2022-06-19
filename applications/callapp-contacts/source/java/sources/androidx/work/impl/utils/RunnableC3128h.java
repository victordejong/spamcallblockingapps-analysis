package androidx.work.impl.utils;

import androidx.work.WorkerParameters;
import androidx.work.impl.C3068j;
/* renamed from: androidx.work.impl.utils.h */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/h.class */
public final class RunnableC3128h implements Runnable {

    /* renamed from: a */
    private C3068j f11460a;

    /* renamed from: b */
    private String f11461b;

    /* renamed from: c */
    private WorkerParameters.C2985a f11462c;

    public RunnableC3128h(C3068j c3068j, String str, WorkerParameters.C2985a c2985a) {
        this.f11460a = c3068j;
        this.f11461b = str;
        this.f11462c = c2985a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11460a.f11358f.m39396a(this.f11461b, this.f11462c);
    }
}
