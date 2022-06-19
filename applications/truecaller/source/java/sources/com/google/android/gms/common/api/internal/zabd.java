package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zae;
import com.tenor.android.core.constant.StringConstant;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.HandlerC24941r;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zabd.class */
public final class zabd implements zabu, zat {

    /* renamed from: a */
    public final Lock f5833a;

    /* renamed from: b */
    public final Condition f5834b;

    /* renamed from: c */
    public final Context f5835c;

    /* renamed from: d */
    public final GoogleApiAvailabilityLight f5836d;

    /* renamed from: e */
    public final HandlerC24941r f5837e;

    /* renamed from: f */
    public final Map<Api.AnyClientKey<?>, Api.Client> f5838f;

    /* renamed from: h */
    public final ClientSettings f5840h;

    /* renamed from: i */
    public final Map<Api<?>, Boolean> f5841i;

    /* renamed from: j */
    public final Api.AbstractClientBuilder<? extends zae, SignInOptions> f5842j;
    @NotOnlyInitialized

    /* renamed from: k */
    public volatile zaba f5843k;

    /* renamed from: m */
    public int f5845m;

    /* renamed from: n */
    public final zaaz f5846n;

    /* renamed from: o */
    public final zabt f5847o;

    /* renamed from: g */
    public final Map<Api.AnyClientKey<?>, ConnectionResult> f5839g = new HashMap();

    /* renamed from: l */
    public ConnectionResult f5844l = null;

    public zabd(Context context, zaaz zaazVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, ClientSettings clientSettings, Map<Api<?>, Boolean> map2, Api.AbstractClientBuilder<? extends zae, SignInOptions> abstractClientBuilder, ArrayList<zas> arrayList, zabt zabtVar) {
        this.f5835c = context;
        this.f5833a = lock;
        this.f5836d = googleApiAvailabilityLight;
        this.f5838f = map;
        this.f5840h = clientSettings;
        this.f5841i = map2;
        this.f5842j = abstractClientBuilder;
        this.f5846n = zaazVar;
        this.f5847o = zabtVar;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).f5905c = this;
        }
        this.f5837e = new HandlerC24941r(this, looper);
        this.f5834b = lock.newCondition();
        this.f5843k = new zaas(this);
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    /* renamed from: a */
    public final void mo4275a() {
        if (this.f5843k.mo38985a()) {
            this.f5839g.clear();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    /* renamed from: b */
    public final boolean mo4274b(SignInConnectionListener signInConnectionListener) {
        return false;
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    /* renamed from: c */
    public final void mo4273c() {
        this.f5843k.mo38983c();
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    /* renamed from: d */
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo4272d(T t) {
        t.zak();
        return (T) this.f5843k.mo38982d(t);
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    /* renamed from: e */
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T mo4271e(T t) {
        t.zak();
        this.f5843k.mo38981e(t);
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    /* renamed from: f */
    public final void mo4270f() {
        if (this.f5843k instanceof zaag) {
            zaag zaagVar = (zaag) this.f5843k;
            if (!zaagVar.f5786b) {
                return;
            }
            zaagVar.f5786b = false;
            zaagVar.f5785a.f5846n.f5831x.m38942a();
            zaagVar.mo38985a();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    /* renamed from: g */
    public final void mo4269g() {
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    /* renamed from: h */
    public final boolean mo4268h() {
        return this.f5843k instanceof zaag;
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    /* renamed from: i */
    public final boolean mo4267i() {
        return this.f5843k instanceof zaar;
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    /* renamed from: j */
    public final void mo4266j(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String concat = String.valueOf(str).concat("  ");
        printWriter.append((CharSequence) str).append("mState=").println(this.f5843k);
        for (Api<?> api : this.f5841i.keySet()) {
            printWriter.append((CharSequence) str).append((CharSequence) api.f5691c).println(StringConstant.COLON);
            Api.Client client = this.f5838f.get(api.f5690b);
            Objects.requireNonNull(client, "null reference");
            client.dump(concat, fileDescriptor, printWriter, strArr);
        }
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    @Override // com.google.android.gms.common.api.internal.zabu
    /* renamed from: k */
    public final ConnectionResult mo4265k(long j, TimeUnit timeUnit) {
        this.f5843k.mo38983c();
        char nanos = timeUnit.toNanos(j);
        while (this.f5843k instanceof zaar) {
            if (nanos <= 0) {
                mo4275a();
                return new ConnectionResult(14, null);
            }
            try {
                nanos = this.f5834b.awaitNanos(nanos);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
            Thread.currentThread().interrupt();
            return new ConnectionResult(15, null);
        }
        if (this.f5843k instanceof zaag) {
            return ConnectionResult.f5661e;
        }
        ConnectionResult connectionResult = this.f5844l;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, null);
    }

    /* renamed from: l */
    public final void m38977l(ConnectionResult connectionResult) {
        this.f5833a.lock();
        try {
            this.f5844l = connectionResult;
            this.f5843k = new zaas(this);
            this.f5843k.mo38984b();
            this.f5834b.signalAll();
        } finally {
            this.f5833a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zat
    /* renamed from: m1 */
    public final void mo38924m1(ConnectionResult connectionResult, Api<?> api, boolean z) {
        this.f5833a.lock();
        try {
            this.f5843k.mo38978h(connectionResult, api, z);
        } finally {
            this.f5833a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        this.f5833a.lock();
        try {
            this.f5843k.mo38979g(bundle);
        } finally {
            this.f5833a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        this.f5833a.lock();
        try {
            this.f5843k.mo38980f(i);
        } finally {
            this.f5833a.unlock();
        }
    }
}
