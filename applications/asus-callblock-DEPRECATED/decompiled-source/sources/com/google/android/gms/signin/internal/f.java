package com.google.android.gms.signin.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.internal.bn;
import com.google.android.gms.signin.internal.d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/f.class */
public final class f extends r<d> implements bn {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f4262a;
    private final n h;
    private final Bundle i;
    private Integer j;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public f(android.content.Context r10, android.os.Looper r11, com.google.android.gms.common.internal.n r12, com.google.android.gms.common.api.b.AbstractC0112b r13, com.google.android.gms.common.api.b.c r14) {
        /*
            r9 = this;
            r0 = r12
            com.google.android.gms.internal.bo r0 = r0.e
            r15 = r0
            r0 = r12
            java.lang.Integer r0 = r0.f
            r16 = r0
            android.os.Bundle r0 = new android.os.Bundle
            r1 = r0
            r1.<init>()
            r17 = r0
            r0 = r17
            java.lang.String r1 = "com.google.android.gms.signin.internal.clientRequestedAccount"
            r2 = r12
            android.accounts.Account r2 = r2.f4022a
            r0.putParcelable(r1, r2)
            r0 = r16
            if (r0 == 0) goto L_0x0031
            r0 = r17
            java.lang.String r1 = "com.google.android.gms.common.internal.ClientSettings.sessionId"
            r2 = r16
            int r2 = r2.intValue()
            r0.putInt(r1, r2)
        L_0x0031:
            r0 = r15
            if (r0 == 0) goto L_0x0086
            r0 = r17
            java.lang.String r1 = "com.google.android.gms.signin.internal.offlineAccessRequested"
            r2 = r15
            boolean r2 = r2.f4168b
            r0.putBoolean(r1, r2)
            r0 = r17
            java.lang.String r1 = "com.google.android.gms.signin.internal.idTokenRequested"
            r2 = r15
            boolean r2 = r2.c
            r0.putBoolean(r1, r2)
            r0 = r17
            java.lang.String r1 = "com.google.android.gms.signin.internal.serverClientId"
            r2 = r15
            java.lang.String r2 = r2.d
            r0.putString(r1, r2)
            r0 = r17
            java.lang.String r1 = "com.google.android.gms.signin.internal.usePromptModeForAuthCode"
            r2 = 1
            r0.putBoolean(r1, r2)
            r0 = r17
            java.lang.String r1 = "com.google.android.gms.signin.internal.forceCodeForRefreshToken"
            r2 = r15
            boolean r2 = r2.e
            r0.putBoolean(r1, r2)
            r0 = r17
            java.lang.String r1 = "com.google.android.gms.signin.internal.hostedDomain"
            r2 = r15
            java.lang.String r2 = r2.f
            r0.putString(r1, r2)
            r0 = r17
            java.lang.String r1 = "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"
            r2 = r15
            boolean r2 = r2.g
            r0.putBoolean(r1, r2)
        L_0x0086:
            r0 = r9
            r1 = r10
            r2 = r11
            r3 = 1
            r4 = r12
            r5 = r17
            r6 = r13
            r7 = r14
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.signin.internal.f.<init>(android.content.Context, android.os.Looper, com.google.android.gms.common.internal.n, com.google.android.gms.common.api.b$b, com.google.android.gms.common.api.b$c):void");
    }

    public f(Context context, Looper looper, boolean z, n nVar, Bundle bundle, b.AbstractC0112b bVar, b.c cVar) {
        super(context, looper, 44, nVar, bVar, cVar);
        this.f4262a = z;
        this.h = nVar;
        this.i = bundle;
        this.j = nVar.f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.k
    public final /* synthetic */ IInterface a(IBinder iBinder) {
        return d.a.a(iBinder);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.k
    public final String d() {
        return "com.google.android.gms.signin.service.START";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.k
    public final String e() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.k
    public final Bundle g() {
        if (!this.d.getPackageName().equals(this.h.c)) {
            this.i.putString("com.google.android.gms.signin.internal.realClientPackageName", this.h.c);
        }
        return this.i;
    }

    @Override // com.google.android.gms.common.internal.k
    public final boolean i() {
        return this.f4262a;
    }
}
