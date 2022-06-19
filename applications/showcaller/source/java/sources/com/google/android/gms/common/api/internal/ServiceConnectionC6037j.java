package com.google.android.gms.common.api.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.C5984a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.AbstractC6113d;
import com.google.android.gms.common.internal.AbstractC6128g;
import com.google.android.gms.common.internal.AbstractC6134i;
import com.google.android.gms.common.internal.C6155o;
import java.util.Collections;
import java.util.Set;
/* renamed from: com.google.android.gms.common.api.internal.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/j.class */
public final class ServiceConnectionC6037j implements C5984a.AbstractC5993f, ServiceConnection {

    /* renamed from: a */
    private static final String f19300a = ServiceConnectionC6037j.class.getSimpleName();

    /* renamed from: b */
    private final String f19301b;

    /* renamed from: c */
    private final String f19302c;

    /* renamed from: d */
    private final ComponentName f19303d;

    /* renamed from: e */
    private final Context f19304e;

    /* renamed from: f */
    private final AbstractC6022e f19305f;

    /* renamed from: g */
    private final Handler f19306g;

    /* renamed from: h */
    private final AbstractC6040k f19307h;

    /* renamed from: i */
    private IBinder f19308i;

    /* renamed from: j */
    private boolean f19309j;

    /* renamed from: k */
    private String f19310k;

    /* renamed from: l */
    private String f19311l;

    /* renamed from: k */
    private final void m17311k() {
        if (Thread.currentThread() == this.f19306g.getLooper().getThread()) {
            return;
        }
        throw new IllegalStateException("This method should only run on the NonGmsServiceBrokerClient's handler thread.");
    }

    /* renamed from: t */
    private final void m17305t(String str) {
        String valueOf = String.valueOf(this.f19308i);
        str.length();
        valueOf.length();
    }

    @Override // com.google.android.gms.common.api.C5984a.AbstractC5993f
    /* renamed from: a */
    public final void mo17320a() {
        m17311k();
        m17305t("Disconnect called.");
        try {
            this.f19304e.unbindService(this);
        } catch (IllegalArgumentException e) {
        }
        this.f19309j = false;
        this.f19308i = null;
    }

    @Override // com.google.android.gms.common.api.C5984a.AbstractC5993f
    /* renamed from: b */
    public final boolean mo17319b() {
        m17311k();
        return this.f19308i != null;
    }

    @Override // com.google.android.gms.common.api.C5984a.AbstractC5993f
    /* renamed from: c */
    public final Set<Scope> mo17068c() {
        return Collections.emptySet();
    }

    @Override // com.google.android.gms.common.api.C5984a.AbstractC5993f
    /* renamed from: d */
    public final void mo17318d(AbstractC6134i abstractC6134i, Set<Scope> set) {
    }

    @Override // com.google.android.gms.common.api.C5984a.AbstractC5993f
    /* renamed from: e */
    public final void mo17317e(@RecentlyNonNull String str) {
        m17311k();
        this.f19310k = str;
        mo17320a();
    }

    @Override // com.google.android.gms.common.api.C5984a.AbstractC5993f
    /* renamed from: f */
    public final boolean mo17316f() {
        m17311k();
        return this.f19309j;
    }

    @Override // com.google.android.gms.common.api.C5984a.AbstractC5993f
    @RecentlyNonNull
    /* renamed from: g */
    public final String mo17315g() {
        String str = this.f19301b;
        if (str != null) {
            return str;
        }
        C6155o.m17018j(this.f19303d);
        return this.f19303d.getPackageName();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0082 -> B:20:0x0017). Please submit an issue!!! */
    @Override // com.google.android.gms.common.api.C5984a.AbstractC5993f
    /* renamed from: h */
    public final void mo17314h(@RecentlyNonNull AbstractC6113d.AbstractC6116c abstractC6116c) {
        m17311k();
        m17305t("Connect started.");
        if (mo17319b()) {
            try {
                mo17317e("connect() called when already connected");
            } catch (Exception e) {
            }
        }
        try {
            Intent intent = new Intent();
            ComponentName componentName = this.f19303d;
            if (componentName != null) {
                intent.setComponent(componentName);
            } else {
                intent.setPackage(this.f19301b).setAction(this.f19302c);
            }
            boolean bindService = this.f19304e.bindService(intent, this, AbstractC6128g.m17059b());
            this.f19309j = bindService;
            if (!bindService) {
                this.f19308i = null;
                this.f19307h.mo17274D0(new ConnectionResult(16));
            }
            m17305t("Finished connect.");
        } catch (SecurityException e2) {
            this.f19309j = false;
            this.f19308i = null;
            throw e2;
        }
    }

    @Override // com.google.android.gms.common.api.C5984a.AbstractC5993f
    /* renamed from: i */
    public final void mo17313i(@RecentlyNonNull AbstractC6113d.AbstractC6118e abstractC6118e) {
    }

    @Override // com.google.android.gms.common.api.C5984a.AbstractC5993f
    /* renamed from: j */
    public final boolean mo17312j() {
        return false;
    }

    @Override // com.google.android.gms.common.api.C5984a.AbstractC5993f
    /* renamed from: l */
    public final int mo5858l() {
        return 0;
    }

    @Override // com.google.android.gms.common.api.C5984a.AbstractC5993f
    @RecentlyNonNull
    /* renamed from: m */
    public final Feature[] mo17310m() {
        return new Feature[0];
    }

    @Override // com.google.android.gms.common.api.C5984a.AbstractC5993f
    @RecentlyNullable
    /* renamed from: n */
    public final String mo17309n() {
        return this.f19310k;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(@RecentlyNonNull ComponentName componentName, @RecentlyNonNull IBinder iBinder) {
        this.f19306g.post(new Runnable(this, iBinder) { // from class: com.google.android.gms.common.api.internal.k0

            /* renamed from: d */
            private final ServiceConnectionC6037j f19318d;

            /* renamed from: e */
            private final IBinder f19319e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19318d = this;
                this.f19319e = iBinder;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f19318d.m17306s(this.f19319e);
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(@RecentlyNonNull ComponentName componentName) {
        this.f19306g.post(new Runnable(this) { // from class: com.google.android.gms.common.api.internal.m0

            /* renamed from: d */
            private final ServiceConnectionC6037j f19325d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19325d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f19325d.m17307r();
            }
        });
    }

    @Override // com.google.android.gms.common.api.C5984a.AbstractC5993f
    /* renamed from: p */
    public final boolean mo5855p() {
        return false;
    }

    /* renamed from: q */
    public final void m17308q(String str) {
        this.f19311l = str;
    }

    /* renamed from: r */
    public final /* synthetic */ void m17307r() {
        this.f19309j = false;
        this.f19308i = null;
        m17305t("Disconnected.");
        this.f19305f.mo17270c0(1);
    }

    /* renamed from: s */
    public final /* synthetic */ void m17306s(IBinder iBinder) {
        this.f19309j = false;
        this.f19308i = iBinder;
        m17305t("Connected.");
        this.f19305f.mo17273J0(new Bundle());
    }
}
