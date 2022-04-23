package androidx.work.impl.utils;

import androidx.work.WorkerParameters;
import androidx.work.impl.j;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/h.class */
public final class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private j f6187a;

    /* renamed from: b  reason: collision with root package name */
    private String f6188b;

    /* renamed from: c  reason: collision with root package name */
    private WorkerParameters.a f6189c;

    public h(j jVar, String str, WorkerParameters.a aVar) {
        this.f6187a = jVar;
        this.f6188b = str;
        this.f6189c = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6187a.f.a(this.f6188b, this.f6189c);
    }
}
