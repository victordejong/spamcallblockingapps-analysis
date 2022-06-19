package com.allinone.callerid.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
/* renamed from: com.allinone.callerid.util.w */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/w.class */
public class C3868w {

    /* renamed from: a */
    private Context f12209a;

    /* renamed from: b */
    private IntentFilter f12210b = new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS");

    /* renamed from: c */
    private AbstractC3870b f12211c;

    /* renamed from: d */
    private C3869a f12212d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.w$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/w$a.class */
    public class C3869a extends BroadcastReceiver {

        /* renamed from: a */
        final String f12213a = "reason";

        /* renamed from: b */
        final String f12214b = "globalactions";

        /* renamed from: c */
        final String f12215c = "recentapps";

        /* renamed from: d */
        final String f12216d = "homekey";

        C3869a() {
            C3868w.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra;
            if (!intent.getAction().equals("android.intent.action.CLOSE_SYSTEM_DIALOGS") || (stringExtra = intent.getStringExtra("reason")) == null || C3868w.this.f12211c == null) {
                return;
            }
            if (stringExtra.equals("homekey")) {
                C3868w.this.f12211c.mo23904b();
            } else if (!stringExtra.equals("recentapps")) {
            } else {
                C3868w.this.f12211c.mo23905a();
            }
        }
    }

    /* renamed from: com.allinone.callerid.util.w$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/w$b.class */
    public interface AbstractC3870b {
        /* renamed from: a */
        void mo23905a();

        /* renamed from: b */
        void mo23904b();
    }

    public C3868w(Context context) {
        this.f12209a = context;
    }

    /* renamed from: b */
    public void m23908b(AbstractC3870b abstractC3870b) {
        this.f12211c = abstractC3870b;
        this.f12212d = new C3869a();
    }

    /* renamed from: c */
    public void m23907c() {
        C3869a c3869a = this.f12212d;
        if (c3869a != null) {
            this.f12209a.registerReceiver(c3869a, this.f12210b);
        }
    }

    /* renamed from: d */
    public void m23906d() {
        C3869a c3869a = this.f12212d;
        if (c3869a != null) {
            this.f12209a.unregisterReceiver(c3869a);
        }
    }
}
