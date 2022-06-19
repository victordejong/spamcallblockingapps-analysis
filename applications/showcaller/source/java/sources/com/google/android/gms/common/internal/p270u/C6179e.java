package com.google.android.gms.common.internal.p270u;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.AbstractC6022e;
import com.google.android.gms.common.api.internal.AbstractC6040k;
import com.google.android.gms.common.internal.AbstractC6125f;
import com.google.android.gms.common.internal.C6121e;
import com.google.android.gms.common.internal.C6171t;
import com.google.android.gms.internal.base.C7285d;
/* renamed from: com.google.android.gms.common.internal.u.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/u/e.class */
public final class C6179e extends AbstractC6125f<C6175a> {

    /* renamed from: I */
    private final C6171t f19611I;

    public C6179e(Context context, Looper looper, C6121e c6121e, C6171t c6171t, AbstractC6022e abstractC6022e, AbstractC6040k abstractC6040k) {
        super(context, looper, 270, c6121e, abstractC6022e, abstractC6040k);
        this.f19611I = c6171t;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: D */
    public final String mo5861D() {
        return "com.google.android.gms.common.internal.service.IClientTelemetryService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: E */
    protected final String mo5860E() {
        return "com.google.android.gms.common.telemetry.service.START";
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: H */
    protected final boolean mo7846H() {
        return true;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d, com.google.android.gms.common.api.C5984a.AbstractC5993f
    /* renamed from: l */
    public final int mo5858l() {
        return 203390000;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: s */
    public final /* bridge */ /* synthetic */ IInterface mo5854s(IBinder iBinder) {
        C6175a c6175a;
        if (iBinder == null) {
            c6175a = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.IClientTelemetryService");
            c6175a = queryLocalInterface instanceof C6175a ? (C6175a) queryLocalInterface : new C6175a(iBinder);
        }
        return c6175a;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: v */
    public final Feature[] mo7844v() {
        return C7285d.f34324b;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: z */
    protected final Bundle mo5853z() {
        return this.f19611I.m16920b();
    }
}
