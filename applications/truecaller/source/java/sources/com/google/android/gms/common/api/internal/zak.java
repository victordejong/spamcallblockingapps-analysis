package com.google.android.gms.common.api.internal;

import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiClient;
import com.tenor.android.core.constant.StringConstant;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24936o0;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zak.class */
public final class zak extends zap {

    /* renamed from: f */
    public final SparseArray<C24936o0> f5898f = new SparseArray<>();

    public zak(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment, GoogleApiAvailability.f5673d);
        this.f5762a.mo38922Gm("AutoManageHelper", this);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: a */
    public final void mo38937a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        for (int i = 0; i < this.f5898f.size(); i++) {
            C24936o0 m38936p = m38936p(i);
            if (m38936p != null) {
                printWriter.append((CharSequence) str).append("GoogleApiClient #").print(m38936p.f69857a);
                printWriter.println(StringConstant.COLON);
                m38936p.f69858b.mo38998g(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: i */
    public final void mo38932i() {
        this.f5899b = true;
        String.valueOf(this.f5898f).length();
        if (this.f5900c.get() == null) {
            for (int i = 0; i < this.f5898f.size(); i++) {
                C24936o0 m38936p = m38936p(i);
                if (m38936p != null) {
                    m38936p.f69858b.mo39000e();
                }
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: j */
    public final void mo38931j() {
        this.f5899b = false;
        for (int i = 0; i < this.f5898f.size(); i++) {
            C24936o0 m38936p = m38936p(i);
            if (m38936p != null) {
                m38936p.f69858b.mo38999f();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap
    /* renamed from: m */
    public final void mo38928m(ConnectionResult connectionResult, int i) {
        if (i < 0) {
            Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
            return;
        }
        C24936o0 c24936o0 = this.f5898f.get(i);
        if (c24936o0 == null) {
            return;
        }
        C24936o0 c24936o02 = this.f5898f.get(i);
        this.f5898f.remove(i);
        if (c24936o02 != null) {
            c24936o02.f69858b.mo38991s(c24936o02);
            c24936o02.f69858b.mo38999f();
        }
        GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = c24936o0.f69859c;
        if (onConnectionFailedListener == null) {
            return;
        }
        onConnectionFailedListener.onConnectionFailed(connectionResult);
    }

    @Override // com.google.android.gms.common.api.internal.zap
    /* renamed from: n */
    public final void mo38927n() {
        for (int i = 0; i < this.f5898f.size(); i++) {
            C24936o0 m38936p = m38936p(i);
            if (m38936p != null) {
                m38936p.f69858b.mo39000e();
            }
        }
    }

    /* renamed from: p */
    public final C24936o0 m38936p(int i) {
        if (this.f5898f.size() <= i) {
            return null;
        }
        SparseArray<C24936o0> sparseArray = this.f5898f;
        return sparseArray.get(sparseArray.keyAt(i));
    }
}
