package p078c.p122d.p123a;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.liulishuo.filedownloader.event.DownloadServiceConnectChangedEvent;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import com.liulishuo.filedownloader.services.BinderC9386e;
import com.liulishuo.filedownloader.services.FileDownloadService;
import java.util.ArrayList;
import java.util.List;
import p078c.p122d.p123a.p128i0.C2028a;
import p078c.p122d.p123a.p128i0.C2036d;
import p078c.p122d.p123a.p128i0.C2040f;
/* renamed from: c.d.a.n */
/* loaded from: classes2-dex2jar.jar:c/d/a/n.class */
public class C2051n implements AbstractC2063u, BinderC9386e.AbstractC9387a {

    /* renamed from: a */
    private static final Class<?> f7183a = FileDownloadService.SharedMainProcessService.class;

    /* renamed from: b */
    private boolean f7184b = false;

    /* renamed from: c */
    private final ArrayList<Runnable> f7185c = new ArrayList<>();

    /* renamed from: d */
    private BinderC9386e f7186d;

    @Override // p078c.p122d.p123a.AbstractC2063u
    /* renamed from: A0 */
    public void mo28131A0(boolean z) {
        if (!mo815b()) {
            C2028a.m28266e(z);
            return;
        }
        this.f7186d.mo790A0(z);
        this.f7184b = false;
    }

    @Override // p078c.p122d.p123a.AbstractC2063u
    /* renamed from: B0 */
    public void mo818B0(Context context) {
        m28169c(context, null);
    }

    @Override // p078c.p122d.p123a.AbstractC2063u
    /* renamed from: C0 */
    public boolean mo817C0() {
        return this.f7184b;
    }

    @Override // com.liulishuo.filedownloader.services.BinderC9386e.AbstractC9387a
    /* renamed from: a */
    public void mo775a(BinderC9386e binderC9386e) {
        this.f7186d = binderC9386e;
        List<Runnable> list = (List) this.f7185c.clone();
        this.f7185c.clear();
        for (Runnable runnable : list) {
            runnable.run();
        }
        C2000f.m28336e().m909b(new DownloadServiceConnectChangedEvent(DownloadServiceConnectChangedEvent.ConnectStatus.connected, f7183a));
    }

    @Override // p078c.p122d.p123a.AbstractC2063u
    /* renamed from: b */
    public boolean mo815b() {
        return this.f7186d != null;
    }

    /* renamed from: c */
    public void m28169c(Context context, Runnable runnable) {
        if (runnable != null && !this.f7185c.contains(runnable)) {
            this.f7185c.add(runnable);
        }
        Intent intent = new Intent(context, f7183a);
        boolean m28226P = C2040f.m28226P(context);
        this.f7184b = m28226P;
        intent.putExtra("is_foreground", m28226P);
        if (!this.f7184b) {
            context.startService(intent);
            return;
        }
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "start foreground service", new Object[0]);
        }
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        context.startForegroundService(intent);
    }

    @Override // p078c.p122d.p123a.AbstractC2063u
    /* renamed from: e0 */
    public byte mo28130e0(int i) {
        return !mo815b() ? C2028a.m28270a(i) : this.f7186d.mo784e0(i);
    }

    @Override // p078c.p122d.p123a.AbstractC2063u
    /* renamed from: f0 */
    public boolean mo28129f0(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
        if (!mo815b()) {
            return C2028a.m28267d(str, str2, z);
        }
        this.f7186d.mo783f0(str, str2, z, i, i2, i3, z2, fileDownloadHeader, z3);
        return true;
    }

    @Override // p078c.p122d.p123a.AbstractC2063u
    /* renamed from: l0 */
    public boolean mo28128l0(int i) {
        return !mo815b() ? C2028a.m28268c(i) : this.f7186d.mo782l0(i);
    }
}
