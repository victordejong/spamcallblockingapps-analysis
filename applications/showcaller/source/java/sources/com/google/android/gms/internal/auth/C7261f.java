package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.auth.p268b.C5941b;
import com.google.android.gms.auth.p268b.C5942c;
import com.google.android.gms.common.C6094e;
import com.google.android.gms.common.api.AbstractC5999d;
import com.google.android.gms.common.internal.AbstractC6125f;
import com.google.android.gms.common.internal.C6121e;
/* renamed from: com.google.android.gms.internal.auth.f */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/f.class */
public final class C7261f extends AbstractC6125f<AbstractC7262g> {

    /* renamed from: I */
    private final Bundle f34244I;

    public C7261f(Context context, Looper looper, C6121e c6121e, C5942c c5942c, AbstractC5999d.AbstractC6000a abstractC6000a, AbstractC5999d.AbstractC6001b abstractC6001b) {
        super(context, looper, 16, c6121e, abstractC6000a, abstractC6001b);
        if (c5942c == null) {
            this.f34244I = new Bundle();
            return;
        }
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: D */
    public final String mo5861D() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: E */
    protected final String mo5860E() {
        return "com.google.android.gms.auth.service.START";
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d, com.google.android.gms.common.api.C5984a.AbstractC5993f
    /* renamed from: l */
    public final int mo5858l() {
        return C6094e.f19409a;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d, com.google.android.gms.common.api.C5984a.AbstractC5993f
    /* renamed from: p */
    public final boolean mo5855p() {
        C6121e m17067i0 = m17067i0();
        return !TextUtils.isEmpty(m17067i0.m17084b()) && !m17067i0.m17081e(C5941b.f19077c).isEmpty();
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: s */
    public final /* synthetic */ IInterface mo5854s(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthService");
        return queryLocalInterface instanceof AbstractC7262g ? (AbstractC7262g) queryLocalInterface : new C7263h(iBinder);
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: z */
    protected final Bundle mo5853z() {
        return this.f34244I;
    }
}
