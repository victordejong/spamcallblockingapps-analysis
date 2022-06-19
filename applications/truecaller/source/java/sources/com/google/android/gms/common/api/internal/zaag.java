package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;
import java.util.Set;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24908b;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24911c;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zaag.class */
public final class zaag implements zaba {

    /* renamed from: a */
    public final zabd f5785a;

    /* renamed from: b */
    public boolean f5786b = false;

    public zaag(zabd zabdVar) {
        this.f5785a = zabdVar;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: a */
    public final boolean mo38985a() {
        if (this.f5786b) {
            return false;
        }
        Set<zacv> set = this.f5785a.f5846n.f5830w;
        if (set == null || set.isEmpty()) {
            this.f5785a.m38977l(null);
            return true;
        }
        this.f5786b = true;
        for (zacv zacvVar : set) {
            Objects.requireNonNull(zacvVar);
        }
        return false;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: b */
    public final void mo38984b() {
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: c */
    public final void mo38983c() {
        if (this.f5786b) {
            this.f5786b = false;
            zabd zabdVar = this.f5785a;
            zabdVar.f5837e.sendMessage(zabdVar.f5837e.obtainMessage(1, new C24911c(this, this)));
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: d */
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo38982d(T t) {
        try {
            zacx zacxVar = this.f5785a.f5846n.f5831x;
            zacxVar.f5889a.add(t);
            t.zan(zacxVar.f5890b);
            zaaz zaazVar = this.f5785a.f5846n;
            Api.Client client = zaazVar.f5822o.get(t.getClientKey());
            Preconditions.m38897k(client, "Appropriate Api was not requested.");
            if (client.isConnected() || !this.f5785a.f5839g.containsKey(t.getClientKey())) {
                t.run(client);
            } else {
                t.setFailedResult(new Status(17, null));
            }
        } catch (DeadObjectException e) {
            zabd zabdVar = this.f5785a;
            zabdVar.f5837e.sendMessage(zabdVar.f5837e.obtainMessage(1, new C24908b(this, this)));
        }
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: e */
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T mo38981e(T t) {
        mo38982d(t);
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: f */
    public final void mo38980f(int i) {
        this.f5785a.m38977l(null);
        this.f5785a.f5847o.mo4279a(i, this.f5786b);
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: g */
    public final void mo38979g(Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.internal.zaba
    /* renamed from: h */
    public final void mo38978h(ConnectionResult connectionResult, Api<?> api, boolean z) {
    }
}
