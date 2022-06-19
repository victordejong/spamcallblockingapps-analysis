package p1727n3.p1758e.p1767b.p1768j1;

import android.view.Surface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ScheduledFuture;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d;
import p1727n3.p1790h.p1791a.C26247b;
/* renamed from: n3.e.b.j1.l0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/l0.class */
public class C25985l0 implements AbstractC26030d<List<Surface>> {

    /* renamed from: a */
    public final /* synthetic */ boolean f72624a;

    /* renamed from: b */
    public final /* synthetic */ C26247b f72625b;

    /* renamed from: c */
    public final /* synthetic */ ScheduledFuture f72626c;

    public C25985l0(boolean z, C26247b c26247b, ScheduledFuture scheduledFuture) {
        this.f72624a = z;
        this.f72625b = c26247b;
        this.f72626c = scheduledFuture;
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
    /* renamed from: a */
    public void mo2689a(Throwable th) {
        this.f72625b.m2258a(Collections.unmodifiableList(Collections.emptyList()));
        this.f72626c.cancel(true);
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
    public void onSuccess(List<Surface> list) {
        ArrayList arrayList = new ArrayList(list);
        if (this.f72624a) {
            arrayList.removeAll(Collections.singleton(null));
        }
        this.f72625b.m2258a(arrayList);
        this.f72626c.cancel(true);
    }
}
