package p193e.p1577m.p1578a.p1642f.p1644b.p1646b.p1649c.p1650a;

import android.os.Bundle;
import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;
import com.google.android.gms.auth.api.signin.internal.zbc;
import com.google.android.gms.common.api.GoogleApiClient;
import p1727n3.p1869w.p1870a.AbstractC27043a;
import p1727n3.p1869w.p1871b.C27051b;
/* renamed from: e.m.a.f.b.b.c.a.f */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/b/b/c/a/f.class */
public final class C24888f implements AbstractC27043a.AbstractC27044a<Void> {

    /* renamed from: a */
    public final /* synthetic */ SignInHubActivity f69784a;

    /* JADX WARN: Type inference failed for: r2v1, types: [android.content.Context, com.google.android.gms.auth.api.signin.internal.SignInHubActivity] */
    @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
    public final C27051b<Void> onCreateLoader(int i, Bundle bundle) {
        return new zbc(this.f69784a, GoogleApiClient.m39052j());
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.auth.api.signin.internal.SignInHubActivity, android.app.Activity] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.google.android.gms.auth.api.signin.internal.SignInHubActivity, android.app.Activity] */
    @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
    public final /* synthetic */ void onLoadFinished(C27051b<Void> c27051b, Void r6) {
        ?? r0 = this.f69784a;
        r0.setResult(r0.f5558d, r0.f5559e);
        this.f69784a.finish();
    }

    @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
    public final void onLoaderReset(C27051b<Void> c27051b) {
    }
}
