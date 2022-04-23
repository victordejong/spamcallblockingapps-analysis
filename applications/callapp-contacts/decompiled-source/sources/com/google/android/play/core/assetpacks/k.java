package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.by;
import com.google.android.play.core.tasks.p;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/k.class */
class k<T> extends by {

    /* renamed from: a  reason: collision with root package name */
    final p<T> f31288a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ p f31289b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(p pVar, p<T> pVar2) {
        this.f31289b = pVar;
        this.f31288a = pVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(p pVar, p pVar2, byte[] bArr) {
        this(pVar, pVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(p pVar, p pVar2, char[] cArr) {
        this(pVar, pVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(p pVar, p pVar2, int[] iArr) {
        this(pVar, pVar2);
    }

    k(p pVar, p pVar2, short[] sArr) {
        this(pVar, pVar2);
    }

    @Override // com.google.android.play.core.internal.bz
    public final void a() {
        this.f31289b.e.a();
        p.f31296a.c("onRequestDownloadInfo()", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.bz
    public final void a(int i) {
        this.f31289b.e.a();
        p.f31296a.c("onStartDownload(%d)", Integer.valueOf(i));
    }

    @Override // com.google.android.play.core.internal.bz
    public void a(Bundle bundle) {
        this.f31289b.e.a();
        int i = bundle.getInt("error_code");
        p.f31296a.b("onError(%d)", Integer.valueOf(i));
        this.f31288a.b(new AssetPackException(i));
    }

    @Override // com.google.android.play.core.internal.bz
    public void a(Bundle bundle, Bundle bundle2) {
        this.f31289b.f.a();
        p.f31296a.c("onKeepAlive(%b)", Boolean.valueOf(bundle.getBoolean("keep_alive")));
    }

    @Override // com.google.android.play.core.internal.bz
    public void a(List<Bundle> list) {
        this.f31289b.e.a();
        p.f31296a.c("onGetSessionStates", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.bz
    public final void b() {
        this.f31289b.e.a();
        p.f31296a.c("onCancelDownloads()", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.bz
    public final void b(int i) {
        this.f31289b.e.a();
        p.f31296a.c("onCancelDownload(%d)", Integer.valueOf(i));
    }

    @Override // com.google.android.play.core.internal.bz
    public final void b(Bundle bundle) {
        this.f31289b.e.a();
        p.f31296a.c("onNotifyChunkTransferred(%s, %s, %d, session=%d)", bundle.getString("module_name"), bundle.getString("slice_id"), Integer.valueOf(bundle.getInt("chunk_number")), Integer.valueOf(bundle.getInt("session_id")));
    }

    @Override // com.google.android.play.core.internal.bz
    public void b(Bundle bundle, Bundle bundle2) throws RemoteException {
        this.f31289b.e.a();
        p.f31296a.c("onGetChunkFileDescriptor", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.bz
    public final void c() {
        this.f31289b.e.a();
        p.f31296a.c("onRemoveModule()", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.bz
    public final void c(int i) {
        this.f31289b.e.a();
        p.f31296a.c("onGetSession(%d)", Integer.valueOf(i));
    }

    @Override // com.google.android.play.core.internal.bz
    public final void c(Bundle bundle) {
        this.f31289b.e.a();
        p.f31296a.c("onNotifyModuleCompleted(%s, sessionId=%d)", bundle.getString("module_name"), Integer.valueOf(bundle.getInt("session_id")));
    }

    @Override // com.google.android.play.core.internal.bz
    public final void d(Bundle bundle) {
        this.f31289b.e.a();
        p.f31296a.c("onNotifySessionFailed(%d)", Integer.valueOf(bundle.getInt("session_id")));
    }
}
