package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.bx;
import com.google.android.play.core.tasks.p;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/i.class */
final class i extends com.google.android.play.core.internal.i {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f31282a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f31283b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f31284c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ int f31285d;
    final /* synthetic */ p e;
    final /* synthetic */ p f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(p pVar, p pVar2, int i, String str, String str2, int i2, p pVar3) {
        super(pVar2);
        this.f = pVar;
        this.f31282a = i;
        this.f31283b = str;
        this.f31284c = str2;
        this.f31285d = i2;
        this.e = pVar3;
    }

    @Override // com.google.android.play.core.internal.i
    public final void a() {
        String str;
        Bundle e;
        try {
            bx bxVar = (bx) this.f.e.e;
            str = this.f.f31298c;
            Bundle c2 = p.c(this.f31282a, this.f31283b, this.f31284c, this.f31285d);
            e = p.e();
            bxVar.d(str, c2, e, new l(this.f, this.e));
        } catch (RemoteException e2) {
            p.f31296a.b("getChunkFileDescriptor(%s, %s, %d, session=%d)", this.f31283b, this.f31284c, Integer.valueOf(this.f31285d), Integer.valueOf(this.f31282a));
            this.e.b(new RuntimeException(e2));
        }
    }
}
