package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractBinderC15061by;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.internal.C15082r;
import com.google.android.play.core.tasks.C15192p;
import java.util.List;
/* renamed from: com.google.android.play.core.assetpacks.k */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/k.class */
class BinderC14983k<T> extends AbstractBinderC15061by {

    /* renamed from: a */
    final C15192p<T> f54678a;

    /* renamed from: b */
    final /* synthetic */ C14989p f54679b;

    public BinderC14983k(C14989p c14989p, C15192p<T> c15192p) {
        this.f54679b = c14989p;
        this.f54678a = c15192p;
    }

    public BinderC14983k(C14989p c14989p, C15192p c15192p, byte[] bArr) {
        this(c14989p, c15192p);
    }

    public BinderC14983k(C14989p c14989p, C15192p c15192p, char[] cArr) {
        this(c14989p, c15192p);
    }

    public BinderC14983k(C14989p c14989p, C15192p c15192p, int[] iArr) {
        this(c14989p, c15192p);
    }

    BinderC14983k(C14989p c14989p, C15192p c15192p, short[] sArr) {
        this(c14989p, c15192p);
    }

    @Override // com.google.android.play.core.internal.AbstractC15062bz
    /* renamed from: a */
    public final void mo9534a() {
        C15082r c15082r;
        C15072h c15072h;
        c15082r = this.f54679b.f54692e;
        c15082r.m9505a();
        c15072h = C14989p.f54688a;
        c15072h.m9508c("onRequestDownloadInfo()", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.AbstractC15062bz
    /* renamed from: a */
    public final void mo9533a(int i) {
        C15082r c15082r;
        C15072h c15072h;
        c15082r = this.f54679b.f54692e;
        c15082r.m9505a();
        c15072h = C14989p.f54688a;
        c15072h.m9508c("onStartDownload(%d)", Integer.valueOf(i));
    }

    @Override // com.google.android.play.core.internal.AbstractC15062bz
    /* renamed from: a */
    public void mo9532a(Bundle bundle) {
        C15082r c15082r;
        C15072h c15072h;
        c15082r = this.f54679b.f54692e;
        c15082r.m9505a();
        int i = bundle.getInt("error_code");
        c15072h = C14989p.f54688a;
        c15072h.m9509b("onError(%d)", Integer.valueOf(i));
        this.f54678a.m9322b(new AssetPackException(i));
    }

    @Override // com.google.android.play.core.internal.AbstractC15062bz
    /* renamed from: a */
    public void mo9531a(Bundle bundle, Bundle bundle2) {
        C15082r c15082r;
        C15072h c15072h;
        c15082r = this.f54679b.f54693f;
        c15082r.m9505a();
        c15072h = C14989p.f54688a;
        c15072h.m9508c("onKeepAlive(%b)", Boolean.valueOf(bundle.getBoolean("keep_alive")));
    }

    @Override // com.google.android.play.core.internal.AbstractC15062bz
    /* renamed from: a */
    public void mo9530a(List<Bundle> list) {
        C15082r c15082r;
        C15072h c15072h;
        c15082r = this.f54679b.f54692e;
        c15082r.m9505a();
        c15072h = C14989p.f54688a;
        c15072h.m9508c("onGetSessionStates", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.AbstractC15062bz
    /* renamed from: b */
    public final void mo9529b() {
        C15082r c15082r;
        C15072h c15072h;
        c15082r = this.f54679b.f54692e;
        c15082r.m9505a();
        c15072h = C14989p.f54688a;
        c15072h.m9508c("onCancelDownloads()", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.AbstractC15062bz
    /* renamed from: b */
    public final void mo9528b(int i) {
        C15082r c15082r;
        C15072h c15072h;
        c15082r = this.f54679b.f54692e;
        c15082r.m9505a();
        c15072h = C14989p.f54688a;
        c15072h.m9508c("onCancelDownload(%d)", Integer.valueOf(i));
    }

    @Override // com.google.android.play.core.internal.AbstractC15062bz
    /* renamed from: b */
    public final void mo9527b(Bundle bundle) {
        C15082r c15082r;
        C15072h c15072h;
        c15082r = this.f54679b.f54692e;
        c15082r.m9505a();
        c15072h = C14989p.f54688a;
        c15072h.m9508c("onNotifyChunkTransferred(%s, %s, %d, session=%d)", bundle.getString("module_name"), bundle.getString("slice_id"), Integer.valueOf(bundle.getInt("chunk_number")), Integer.valueOf(bundle.getInt("session_id")));
    }

    @Override // com.google.android.play.core.internal.AbstractC15062bz
    /* renamed from: b */
    public void mo9526b(Bundle bundle, Bundle bundle2) throws RemoteException {
        C15082r c15082r;
        C15072h c15072h;
        c15082r = this.f54679b.f54692e;
        c15082r.m9505a();
        c15072h = C14989p.f54688a;
        c15072h.m9508c("onGetChunkFileDescriptor", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.AbstractC15062bz
    /* renamed from: c */
    public final void mo9525c() {
        C15082r c15082r;
        C15072h c15072h;
        c15082r = this.f54679b.f54692e;
        c15082r.m9505a();
        c15072h = C14989p.f54688a;
        c15072h.m9508c("onRemoveModule()", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.AbstractC15062bz
    /* renamed from: c */
    public final void mo9524c(int i) {
        C15082r c15082r;
        C15072h c15072h;
        c15082r = this.f54679b.f54692e;
        c15082r.m9505a();
        c15072h = C14989p.f54688a;
        c15072h.m9508c("onGetSession(%d)", Integer.valueOf(i));
    }

    @Override // com.google.android.play.core.internal.AbstractC15062bz
    /* renamed from: c */
    public final void mo9523c(Bundle bundle) {
        C15082r c15082r;
        C15072h c15072h;
        c15082r = this.f54679b.f54692e;
        c15082r.m9505a();
        c15072h = C14989p.f54688a;
        c15072h.m9508c("onNotifyModuleCompleted(%s, sessionId=%d)", bundle.getString("module_name"), Integer.valueOf(bundle.getInt("session_id")));
    }

    @Override // com.google.android.play.core.internal.AbstractC15062bz
    /* renamed from: d */
    public final void mo9522d(Bundle bundle) {
        C15082r c15082r;
        C15072h c15072h;
        c15082r = this.f54679b.f54692e;
        c15082r.m9505a();
        c15072h = C14989p.f54688a;
        c15072h.m9508c("onNotifySessionFailed(%d)", Integer.valueOf(bundle.getInt("session_id")));
    }
}
