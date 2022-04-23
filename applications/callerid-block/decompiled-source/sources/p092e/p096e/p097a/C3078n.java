package p092e.p096e.p097a;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.liulishuo.filedownloader.event.DownloadServiceConnectChangedEvent;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import com.liulishuo.filedownloader.services.BinderC2781e;
import com.liulishuo.filedownloader.services.FileDownloadService;
import java.util.ArrayList;
import java.util.List;
import p092e.p096e.p097a.p102h0.C3053a;
import p092e.p096e.p097a.p102h0.C3062d;
import p092e.p096e.p097a.p102h0.C3066f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: e.e.a.n */
/* loaded from: classes2-dex2jar.jar:e/e/a/n.class */
public class C3078n implements AbstractC3089t, BinderC2781e.AbstractC2782a {

    /* renamed from: d */
    private static final Class<?> f12714d = FileDownloadService.SharedMainProcessService.class;

    /* renamed from: a */
    private boolean f12715a = false;

    /* renamed from: b */
    private final ArrayList<Runnable> f12716b = new ArrayList<>();

    /* renamed from: c */
    private BinderC2781e f12717c;

    @Override // com.liulishuo.filedownloader.services.BinderC2781e.AbstractC2782a
    /* renamed from: a */
    public void mo319a(BinderC2781e eVar) {
        this.f12717c = eVar;
        List<Runnable> list = (List) this.f12716b.clone();
        this.f12716b.clear();
        for (Runnable runnable : list) {
            runnable.run();
        }
        C3037f.m471e().m1863b(new DownloadServiceConnectChangedEvent(DownloadServiceConnectChangedEvent.ConnectStatus.connected, f12714d));
    }

    /* renamed from: b */
    public void m318b(Context context, Runnable runnable) {
        if (runnable != null && !this.f12716b.contains(runnable)) {
            this.f12716b.add(runnable);
        }
        Intent intent = new Intent(context, f12714d);
        boolean P = C3066f.m387P(context);
        this.f12715a = P;
        intent.putExtra("is_foreground", P);
        if (this.f12715a) {
            if (C3062d.f12682a) {
                C3062d.m414a(this, "start foreground service", new Object[0]);
            }
            if (Build.VERSION.SDK_INT >= 26) {
                context.startForegroundService(intent);
                return;
            }
            return;
        }
        context.startService(intent);
    }

    @Override // p092e.p096e.p097a.AbstractC3089t
    /* renamed from: f0 */
    public byte mo276f0(int i) {
        return !mo272w0() ? C3053a.m434a(i) : this.f12717c.mo458f0(i);
    }

    @Override // p092e.p096e.p097a.AbstractC3089t
    /* renamed from: i0 */
    public boolean mo275i0(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
        if (!mo272w0()) {
            return C3053a.m431d(str, str2, z);
        }
        this.f12717c.mo455i0(str, str2, z, i, i2, i3, z2, fileDownloadHeader, z3);
        return true;
    }

    @Override // p092e.p096e.p097a.AbstractC3089t
    /* renamed from: n0 */
    public void mo274n0(boolean z) {
        if (!mo272w0()) {
            C3053a.m430e(z);
            return;
        }
        this.f12717c.mo454n0(z);
        this.f12715a = false;
    }

    @Override // p092e.p096e.p097a.AbstractC3089t
    /* renamed from: v0 */
    public boolean mo273v0(int i) {
        return !mo272w0() ? C3053a.m432c(i) : this.f12717c.mo453v0(i);
    }

    @Override // p092e.p096e.p097a.AbstractC3089t
    /* renamed from: w0 */
    public boolean mo272w0() {
        return this.f12717c != null;
    }

    @Override // p092e.p096e.p097a.AbstractC3089t
    /* renamed from: x0 */
    public boolean mo271x0() {
        return this.f12715a;
    }

    @Override // p092e.p096e.p097a.AbstractC3089t
    /* renamed from: y0 */
    public void mo270y0(Context context) {
        m318b(context, null);
    }
}
