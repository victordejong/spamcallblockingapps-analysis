package p092e.p096e.p097a;

import android.content.Context;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import com.liulishuo.filedownloader.services.BinderC2781e;
import p092e.p096e.p097a.p102h0.C3063e;
/* renamed from: e.e.a.m */
/* loaded from: classes2-dex2jar.jar:e/e/a/m.class */
public class C3075m implements AbstractC3089t {

    /* renamed from: a */
    private final AbstractC3089t f12712a;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e.e.a.m$b */
    /* loaded from: classes2-dex2jar.jar:e/e/a/m$b.class */
    public static final class C3077b {

        /* renamed from: a */
        private static final C3075m f12713a = new C3075m();
    }

    private C3075m() {
        this.f12712a = C3063e.m405a().f12686d ? new C3078n() : new C3079o();
    }

    /* renamed from: a */
    public static BinderC2781e.AbstractC2782a m322a() {
        if (m321b().f12712a instanceof C3078n) {
            return (BinderC2781e.AbstractC2782a) m321b().f12712a;
        }
        return null;
    }

    /* renamed from: b */
    public static C3075m m321b() {
        return C3077b.f12713a;
    }

    @Override // p092e.p096e.p097a.AbstractC3089t
    /* renamed from: f0 */
    public byte mo276f0(int i) {
        return this.f12712a.mo276f0(i);
    }

    @Override // p092e.p096e.p097a.AbstractC3089t
    /* renamed from: i0 */
    public boolean mo275i0(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
        return this.f12712a.mo275i0(str, str2, z, i, i2, i3, z2, fileDownloadHeader, z3);
    }

    @Override // p092e.p096e.p097a.AbstractC3089t
    /* renamed from: n0 */
    public void mo274n0(boolean z) {
        this.f12712a.mo274n0(z);
    }

    @Override // p092e.p096e.p097a.AbstractC3089t
    /* renamed from: v0 */
    public boolean mo273v0(int i) {
        return this.f12712a.mo273v0(i);
    }

    @Override // p092e.p096e.p097a.AbstractC3089t
    /* renamed from: w0 */
    public boolean mo272w0() {
        return this.f12712a.mo272w0();
    }

    @Override // p092e.p096e.p097a.AbstractC3089t
    /* renamed from: x0 */
    public boolean mo271x0() {
        return this.f12712a.mo271x0();
    }

    @Override // p092e.p096e.p097a.AbstractC3089t
    /* renamed from: y0 */
    public void mo270y0(Context context) {
        this.f12712a.mo270y0(context);
    }
}
