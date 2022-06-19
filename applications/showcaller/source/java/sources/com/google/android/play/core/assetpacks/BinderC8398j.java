package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import com.google.android.play.core.internal.AbstractBinderC8478c1;
import com.google.android.play.core.internal.C8466a;
import com.google.android.play.core.internal.C8504n;
import com.google.android.play.core.tasks.C8581m;
import java.util.List;
/* renamed from: com.google.android.play.core.assetpacks.j */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/j.class */
class BinderC8398j<T> extends AbstractBinderC8478c1 {

    /* renamed from: d */
    final C8581m<T> f37797d;

    /* renamed from: e */
    final /* synthetic */ C8418o f37798e;

    public BinderC8398j(C8418o c8418o, C8581m<T> c8581m) {
        this.f37798e = c8418o;
        this.f37797d = c8581m;
    }

    public BinderC8398j(C8418o c8418o, C8581m c8581m, byte[] bArr) {
        this(c8418o, c8581m);
    }

    public BinderC8398j(C8418o c8418o, C8581m c8581m, char[] cArr) {
        this(c8418o, c8581m);
    }

    public BinderC8398j(C8418o c8418o, C8581m c8581m, int[] iArr) {
        this(c8418o, c8581m);
    }

    @Override // com.google.android.play.core.internal.AbstractC8481d1
    /* renamed from: E3 */
    public void mo3534E3(Bundle bundle) {
        C8504n c8504n;
        C8466a c8466a;
        c8504n = this.f37798e.f37870e;
        c8504n.m3504b();
        c8466a = C8418o.f37866a;
        c8466a.m3564d("onNotifySessionFailed(%d)", Integer.valueOf(bundle.getInt("session_id")));
    }

    @Override // com.google.android.play.core.internal.AbstractC8481d1
    /* renamed from: E4 */
    public void mo3533E4(Bundle bundle, Bundle bundle2) {
        C8504n c8504n;
        C8466a c8466a;
        c8504n = this.f37798e.f37871f;
        c8504n.m3504b();
        c8466a = C8418o.f37866a;
        c8466a.m3564d("onKeepAlive(%b)", Boolean.valueOf(bundle.getBoolean("keep_alive")));
    }

    @Override // com.google.android.play.core.internal.AbstractC8481d1
    /* renamed from: I5 */
    public void mo3532I5(List<Bundle> list) {
        C8504n c8504n;
        C8466a c8466a;
        c8504n = this.f37798e.f37870e;
        c8504n.m3504b();
        c8466a = C8418o.f37866a;
        c8466a.m3564d("onGetSessionStates", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.AbstractC8481d1
    /* renamed from: J3 */
    public void mo3531J3(int i, Bundle bundle) {
        C8504n c8504n;
        C8466a c8466a;
        c8504n = this.f37798e.f37870e;
        c8504n.m3504b();
        c8466a = C8418o.f37866a;
        c8466a.m3564d("onStartDownload(%d)", Integer.valueOf(i));
    }

    @Override // com.google.android.play.core.internal.AbstractC8481d1
    /* renamed from: T3 */
    public void mo3530T3() {
        C8504n c8504n;
        C8466a c8466a;
        c8504n = this.f37798e.f37870e;
        c8504n.m3504b();
        c8466a = C8418o.f37866a;
        c8466a.m3564d("onRemoveModule()", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.AbstractC8481d1
    /* renamed from: Z1 */
    public void mo3529Z1(Bundle bundle) {
        C8504n c8504n;
        C8466a c8466a;
        c8504n = this.f37798e.f37870e;
        c8504n.m3504b();
        c8466a = C8418o.f37866a;
        c8466a.m3564d("onNotifyChunkTransferred(%s, %s, %d, session=%d)", bundle.getString("module_name"), bundle.getString("slice_id"), Integer.valueOf(bundle.getInt("chunk_number")), Integer.valueOf(bundle.getInt("session_id")));
    }

    @Override // com.google.android.play.core.internal.AbstractC8481d1
    /* renamed from: b2 */
    public final void mo3528b2(int i) {
        C8504n c8504n;
        C8466a c8466a;
        c8504n = this.f37798e.f37870e;
        c8504n.m3504b();
        c8466a = C8418o.f37866a;
        c8466a.m3564d("onCancelDownload(%d)", Integer.valueOf(i));
    }

    @Override // com.google.android.play.core.internal.AbstractC8481d1
    /* renamed from: c6 */
    public void mo3527c6(Bundle bundle, Bundle bundle2) {
        C8504n c8504n;
        C8466a c8466a;
        c8504n = this.f37798e.f37870e;
        c8504n.m3504b();
        c8466a = C8418o.f37866a;
        c8466a.m3564d("onRequestDownloadInfo()", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.AbstractC8481d1
    /* renamed from: p5 */
    public void mo3526p5(Bundle bundle) {
        C8504n c8504n;
        C8466a c8466a;
        c8504n = this.f37798e.f37870e;
        c8504n.m3504b();
        int i = bundle.getInt("error_code");
        c8466a = C8418o.f37866a;
        c8466a.m3566b("onError(%d)", Integer.valueOf(i));
        this.f37797d.m3312d(new AssetPackException(i));
    }

    @Override // com.google.android.play.core.internal.AbstractC8481d1
    /* renamed from: r5 */
    public void mo3525r5(Bundle bundle, Bundle bundle2) {
        C8504n c8504n;
        C8466a c8466a;
        c8504n = this.f37798e.f37870e;
        c8504n.m3504b();
        c8466a = C8418o.f37866a;
        c8466a.m3564d("onGetChunkFileDescriptor", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.AbstractC8481d1
    /* renamed from: t4 */
    public void mo3524t4(Bundle bundle) {
        C8504n c8504n;
        C8466a c8466a;
        c8504n = this.f37798e.f37870e;
        c8504n.m3504b();
        c8466a = C8418o.f37866a;
        c8466a.m3564d("onNotifyModuleCompleted(%s, sessionId=%d)", bundle.getString("module_name"), Integer.valueOf(bundle.getInt("session_id")));
    }

    @Override // com.google.android.play.core.internal.AbstractC8481d1
    /* renamed from: v3 */
    public final void mo3523v3(int i) {
        C8504n c8504n;
        C8466a c8466a;
        c8504n = this.f37798e.f37870e;
        c8504n.m3504b();
        c8466a = C8418o.f37866a;
        c8466a.m3564d("onGetSession(%d)", Integer.valueOf(i));
    }

    @Override // com.google.android.play.core.internal.AbstractC8481d1
    /* renamed from: v6 */
    public void mo3522v6() {
        C8504n c8504n;
        C8466a c8466a;
        c8504n = this.f37798e.f37870e;
        c8504n.m3504b();
        c8466a = C8418o.f37866a;
        c8466a.m3564d("onCancelDownloads()", new Object[0]);
    }
}
