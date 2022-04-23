package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.internal.ah;
import com.google.android.play.core.internal.be;
import com.google.android.play.core.splitinstall.ae;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/j.class */
public final class j implements be<c> {

    /* renamed from: a  reason: collision with root package name */
    private final be f31041a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ int f31042b = 0;

    public j(be<g> beVar) {
        this.f31041a = beVar;
    }

    public j(be<Context> beVar, byte[] bArr) {
        this.f31041a = beVar;
    }

    public j(be<Context> beVar, char[] cArr) {
        this.f31041a = beVar;
    }

    public j(be<Context> beVar, short[] sArr) {
        this.f31041a = beVar;
    }

    public static j a(be<Context> beVar) {
        return new j(beVar, (short[]) null);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [com.google.android.play.core.appupdate.e, com.google.android.play.core.appupdate.c] */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.google.android.play.core.appupdate.t, com.google.android.play.core.appupdate.c] */
    /* JADX WARN: Type inference failed for: r0v13, types: [com.google.android.play.core.appupdate.c, com.google.android.play.core.splitinstall.ae] */
    @Override // com.google.android.play.core.internal.be
    public final /* synthetic */ c a() {
        int i = this.f31042b;
        if (i != 0) {
            return i != 1 ? i != 2 ? new ae((Context) this.f31041a.a()) : new t(((k) this.f31041a).a()) : new e(((k) this.f31041a).a());
        }
        g gVar = (g) this.f31041a.a();
        ah.a(gVar);
        return gVar;
    }
}
