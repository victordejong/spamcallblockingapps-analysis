package androidx.activity;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: androidx.activity.b */
/* loaded from: classes-dex2jar.jar:androidx/activity/b.class */
public abstract class AbstractC0068b {

    /* renamed from: a */
    private boolean f127a;

    /* renamed from: b */
    private CopyOnWriteArrayList<AbstractC0067a> f128b = new CopyOnWriteArrayList<>();

    public AbstractC0068b(boolean z) {
        this.f127a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m15008a(AbstractC0067a aVar) {
        this.f128b.add(aVar);
    }

    /* renamed from: b */
    public abstract void m15007b();

    /* renamed from: c */
    public final boolean m15006c() {
        return this.f127a;
    }

    /* renamed from: d */
    public final void m15005d() {
        Iterator<AbstractC0067a> it = this.f128b.iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
    }

    /* renamed from: e */
    void m15004e(AbstractC0067a aVar) {
        this.f128b.remove(aVar);
    }

    /* renamed from: f */
    public final void m15003f(boolean z) {
        this.f127a = z;
    }
}
