package com.flurry.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
/* renamed from: com.flurry.sdk.jz */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/jz.class */
public final class C0454jz extends BroadcastReceiver {

    /* renamed from: c */
    private static C0454jz f3427c;

    /* renamed from: a */
    public boolean f3428a;

    /* renamed from: b */
    public boolean f3429b;

    /* renamed from: d */
    private boolean f3430d;

    /* renamed from: com.flurry.sdk.jz$a */
    /* loaded from: classes-dex2jar.jar:com/flurry/sdk/jz$a.class */
    public static final class EnumC0455a extends Enum<EnumC0455a> {

        /* renamed from: a */
        public static final int f3431a = 1;

        /* renamed from: b */
        public static final int f3432b = 2;

        /* renamed from: c */
        public static final int f3433c = 3;

        /* renamed from: d */
        public static final int f3434d = 4;

        /* renamed from: e */
        private static final /* synthetic */ int[] f3435e = {1, 2, 3, 4};
    }

    private C0454jz() {
        boolean z = false;
        this.f3430d = false;
        Context context = C0462kg.m4652a().f3460a;
        this.f3430d = context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0 ? true : z;
        this.f3429b = m4670a(context);
        if (this.f3430d) {
            m4668c();
        }
    }

    /* renamed from: a */
    public static C0454jz m4671a() {
        C0454jz c0454jz;
        synchronized (C0454jz.class) {
            try {
                if (f3427c == null) {
                    f3427c = new C0454jz();
                }
                c0454jz = f3427c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0454jz;
    }

    /* renamed from: a */
    private boolean m4670a(Context context) {
        if (!this.f3430d || context == null) {
            return true;
        }
        NetworkInfo activeNetworkInfo = m4667d().getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* renamed from: c */
    private void m4668c() {
        synchronized (this) {
            if (this.f3428a) {
                return;
            }
            Context context = C0462kg.m4652a().f3460a;
            this.f3429b = m4670a(context);
            context.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f3428a = true;
        }
    }

    /* renamed from: d */
    private static ConnectivityManager m4667d() {
        return (ConnectivityManager) C0462kg.m4652a().f3460a.getSystemService("connectivity");
    }

    /* renamed from: b */
    public final int m4669b() {
        if (!this.f3430d) {
            return EnumC0455a.f3431a;
        }
        NetworkInfo activeNetworkInfo = m4667d().getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return EnumC0455a.f3431a;
        }
        int type = activeNetworkInfo.getType();
        if (type != 0) {
            if (type == 1) {
                return EnumC0455a.f3433c;
            }
            if (type != 2 && type != 3 && type != 4 && type != 5) {
                if (type != 8 && activeNetworkInfo.isConnected()) {
                    return EnumC0455a.f3432b;
                }
                return EnumC0455a.f3431a;
            }
        }
        return EnumC0455a.f3434d;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        boolean m4670a = m4670a(context);
        if (this.f3429b != m4670a) {
            this.f3429b = m4670a;
            AbstractC0470ko jyVar = new jy();
            ((jy) jyVar).a = m4670a;
            ((jy) jyVar).b = m4669b();
            C0472kq.m4617a().m4616a(jyVar);
        }
    }
}
