package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.Intent;
import com.google.android.play.core.internal.h;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/af.class */
final class af implements s {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ c f31489a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Intent f31490b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Context f31491c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ ah f31492d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(ah ahVar, c cVar, Intent intent, Context context) {
        this.f31492d = ahVar;
        this.f31489a = cVar;
        this.f31490b = intent;
        this.f31491c = context;
    }

    @Override // com.google.android.play.core.splitinstall.s
    public final void a() {
        r0.f31498b.post(new ag(this.f31492d, this.f31489a, 5, 0));
    }

    @Override // com.google.android.play.core.splitinstall.s
    public final void a(int i) {
        r0.f31498b.post(new ag(this.f31492d, this.f31489a, 6, i));
    }

    @Override // com.google.android.play.core.splitinstall.s
    public final void b() {
        h hVar;
        if (!this.f31490b.getBooleanExtra("triggered_from_app_after_verification", false)) {
            this.f31490b.putExtra("triggered_from_app_after_verification", true);
            this.f31491c.sendBroadcast(this.f31490b);
            return;
        }
        hVar = this.f31492d.f31030d;
        hVar.b("Splits copied and verified more than once.", new Object[0]);
    }
}
