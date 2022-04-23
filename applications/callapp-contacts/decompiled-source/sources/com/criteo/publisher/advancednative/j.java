package com.criteo.publisher.advancednative;

import com.criteo.publisher.advancednative.i;
import java.lang.ref.Reference;
import java.net.URL;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/j.class */
public final class j implements p {

    /* renamed from: a  reason: collision with root package name */
    private final Iterable<URL> f17181a;

    /* renamed from: b  reason: collision with root package name */
    private final Reference<CriteoNativeAdListener> f17182b;

    /* renamed from: c  reason: collision with root package name */
    private final i f17183c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f17184d = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Iterable<URL> iterable, Reference<CriteoNativeAdListener> reference, i iVar) {
        this.f17181a = iterable;
        this.f17182b = reference;
        this.f17183c = iVar;
    }

    @Override // com.criteo.publisher.advancednative.p
    public final void a() {
        if (this.f17184d.compareAndSet(false, true)) {
            i iVar = this.f17183c;
            for (URL url : this.f17181a) {
                iVar.f17176b.execute(new i.b(url, iVar.f17175a, null));
            }
            CriteoNativeAdListener criteoNativeAdListener = this.f17182b.get();
            if (criteoNativeAdListener != null) {
                i iVar2 = this.f17183c;
                iVar2.f17177c.a(new i.a(iVar2, criteoNativeAdListener));
            }
        }
    }
}
