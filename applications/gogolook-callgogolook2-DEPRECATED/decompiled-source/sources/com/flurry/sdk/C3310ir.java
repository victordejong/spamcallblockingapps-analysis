package com.flurry.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
/* renamed from: com.flurry.sdk.ir */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ir.class */
public final class C3310ir extends BroadcastReceiver {

    /* renamed from: c */
    public static C3310ir f5614c;

    /* renamed from: a */
    public boolean f5615a;

    /* renamed from: b */
    public boolean f5616b;

    /* renamed from: d */
    public boolean f5617d;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: com.flurry.sdk.ir$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ir$a.class */
    public static final class EnumC3311a extends Enum<EnumC3311a> {

        /* renamed from: a */
        public static final int f5618a = 1;

        /* renamed from: b */
        public static final int f5619b = 2;

        /* renamed from: c */
        public static final int f5620c = 3;

        /* renamed from: d */
        public static final int f5621d = 4;

        static {
            int i = f5618a;
            int i2 = f5619b;
            int i3 = f5620c;
            int i4 = f5621d;
        }
    }

    public C3310ir() {
        boolean z = false;
        this.f5617d = false;
        Context context = C3331jb.m32681a().f5679a;
        this.f5617d = context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0 ? true : z;
        this.f5616b = m32714a(context);
        if (this.f5617d) {
            m32712c();
        }
    }

    /* renamed from: a */
    public static C3310ir m32715a() {
        C3310ir irVar;
        synchronized (C3310ir.class) {
            try {
                if (f5614c == null) {
                    f5614c = new C3310ir();
                }
                irVar = f5614c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return irVar;
    }

    /* renamed from: d */
    public static ConnectivityManager m32711d() {
        return (ConnectivityManager) C3331jb.m32681a().f5679a.getSystemService("connectivity");
    }

    /* renamed from: a */
    public final boolean m32714a(Context context) {
        if (!this.f5617d || context == null) {
            return true;
        }
        NetworkInfo activeNetworkInfo = m32711d().getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* renamed from: b */
    public final int m32713b() {
        if (!this.f5617d) {
            return EnumC3311a.f5618a;
        }
        NetworkInfo activeNetworkInfo = m32711d().getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return EnumC3311a.f5618a;
        }
        int type = activeNetworkInfo.getType();
        if (type != 0) {
            if (type == 1) {
                return EnumC3311a.f5620c;
            }
            if (!(type == 2 || type == 3 || type == 4 || type == 5)) {
                if (type != 8 && activeNetworkInfo.isConnected()) {
                    return EnumC3311a.f5619b;
                }
                return EnumC3311a.f5618a;
            }
        }
        return EnumC3311a.f5621d;
    }

    /* renamed from: c */
    public final void m32712c() {
        synchronized (this) {
            if (!this.f5615a) {
                Context context = C3331jb.m32681a().f5679a;
                this.f5616b = m32714a(context);
                context.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                this.f5615a = true;
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        boolean a = m32714a(context);
        if (this.f5616b != a) {
            this.f5616b = a;
            C3309iq iqVar = new C3309iq();
            iqVar.f5613a = a;
            m32713b();
            C3345jm.m32636a().m32635a(iqVar);
        }
    }
}
