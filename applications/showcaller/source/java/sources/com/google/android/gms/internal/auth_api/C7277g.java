package com.google.android.gms.internal.auth_api;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.p268b.C5938a;
import com.google.android.gms.common.api.AbstractC5999d;
import com.google.android.gms.common.internal.AbstractC6125f;
import com.google.android.gms.common.internal.C6121e;
/* renamed from: com.google.android.gms.internal.auth_api.g */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/g.class */
public final class C7277g extends AbstractC6125f<AbstractC7280j> {

    /* renamed from: I */
    private final C5938a.C5939a f34317I;

    public C7277g(Context context, Looper looper, C6121e c6121e, C5938a.C5939a c5939a, AbstractC5999d.AbstractC6000a abstractC6000a, AbstractC5999d.AbstractC6001b abstractC6001b) {
        super(context, looper, 68, c6121e, abstractC6000a, abstractC6001b);
        this.f34317I = new C5938a.C5939a.C5940a(c5939a == null ? C5938a.C5939a.f19068d : c5939a).m17563a(C7272b.m7821a()).m17562b();
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: D */
    public final String mo5861D() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: E */
    protected final String mo5860E() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d, com.google.android.gms.common.api.C5984a.AbstractC5993f
    /* renamed from: l */
    public final int mo5858l() {
        return 12800000;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: s */
    public final /* synthetic */ IInterface mo5854s(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
        return queryLocalInterface instanceof AbstractC7280j ? (AbstractC7280j) queryLocalInterface : new C7279i(iBinder);
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: z */
    protected final Bundle mo5853z() {
        return this.f34317I.m17567a();
    }
}
