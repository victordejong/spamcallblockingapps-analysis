package p078c.p122d.p123a;

import android.content.Context;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import com.liulishuo.filedownloader.services.BinderC9386e;
import p078c.p122d.p123a.p128i0.C2037e;
/* renamed from: c.d.a.m */
/* loaded from: classes2-dex2jar.jar:c/d/a/m.class */
public class C2048m implements AbstractC2063u {

    /* renamed from: a */
    private final AbstractC2063u f7181a;

    /* renamed from: c.d.a.m$b */
    /* loaded from: classes2-dex2jar.jar:c/d/a/m$b.class */
    public static final class C2050b {

        /* renamed from: a */
        private static final C2048m f7182a = new C2048m();
    }

    private C2048m() {
        this.f7181a = C2037e.m28244a().f7155d ? new C2051n() : new C2052o();
    }

    /* renamed from: a */
    public static BinderC9386e.AbstractC9387a m28172a() {
        if (m28171c().f7181a instanceof C2051n) {
            return (BinderC9386e.AbstractC9387a) m28171c().f7181a;
        }
        return null;
    }

    /* renamed from: c */
    public static C2048m m28171c() {
        return C2050b.f7182a;
    }

    @Override // p078c.p122d.p123a.AbstractC2063u
    /* renamed from: A0 */
    public void mo28131A0(boolean z) {
        this.f7181a.mo28131A0(z);
    }

    @Override // p078c.p122d.p123a.AbstractC2063u
    /* renamed from: B0 */
    public void mo818B0(Context context) {
        this.f7181a.mo818B0(context);
    }

    @Override // p078c.p122d.p123a.AbstractC2063u
    /* renamed from: C0 */
    public boolean mo817C0() {
        return this.f7181a.mo817C0();
    }

    @Override // p078c.p122d.p123a.AbstractC2063u
    /* renamed from: b */
    public boolean mo815b() {
        return this.f7181a.mo815b();
    }

    @Override // p078c.p122d.p123a.AbstractC2063u
    /* renamed from: e0 */
    public byte mo28130e0(int i) {
        return this.f7181a.mo28130e0(i);
    }

    @Override // p078c.p122d.p123a.AbstractC2063u
    /* renamed from: f0 */
    public boolean mo28129f0(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
        return this.f7181a.mo28129f0(str, str2, z, i, i2, i3, z2, fileDownloadHeader, z3);
    }

    @Override // p078c.p122d.p123a.AbstractC2063u
    /* renamed from: l0 */
    public boolean mo28128l0(int i) {
        return this.f7181a.mo28128l0(i);
    }
}
