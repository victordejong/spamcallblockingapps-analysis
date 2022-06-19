package com.android.billingclient.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.android.billingclient.p060a.C1158a;
/* renamed from: com.android.billingclient.api.a */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/a.class */
public class C1159a {

    /* renamed from: a */
    private final Context f3706a;

    /* renamed from: b */
    private final C1161a f3707b;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.android.billingclient.api.a$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/a$a.class */
    public class C1161a extends BroadcastReceiver {

        /* renamed from: b */
        private final AbstractC1175g f3709b;

        /* renamed from: c */
        private boolean f3710c;

        private C1161a(AbstractC1175g abstractC1175g) {
            C1159a.this = r4;
            this.f3709b = abstractC1175g;
        }

        /* renamed from: a */
        public void m3920a(Context context, IntentFilter intentFilter) {
            if (!this.f3710c) {
                context.registerReceiver(C1159a.this.f3707b, intentFilter);
                this.f3710c = true;
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            this.f3709b.mo520a(C1158a.m3929a(intent, "BillingBroadcastManager"), C1158a.m3928a(intent.getExtras()));
        }
    }

    public C1159a(Context context, AbstractC1175g abstractC1175g) {
        this.f3706a = context;
        this.f3707b = new C1161a(abstractC1175g);
    }

    /* renamed from: a */
    public void m3923a() {
        this.f3707b.m3920a(this.f3706a, new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED"));
    }

    /* renamed from: b */
    public AbstractC1175g m3921b() {
        return this.f3707b.f3709b;
    }
}
