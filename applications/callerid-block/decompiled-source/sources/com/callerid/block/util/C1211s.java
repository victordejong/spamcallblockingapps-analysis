package com.callerid.block.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
/* renamed from: com.callerid.block.util.s */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/s.class */
public class C1211s {

    /* renamed from: a */
    private Context f5059a;

    /* renamed from: b */
    private IntentFilter f5060b = new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS");

    /* renamed from: c */
    private AbstractC1213b f5061c;

    /* renamed from: d */
    private C1212a f5062d;

    /* renamed from: com.callerid.block.util.s$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/util/s$a.class */
    class C1212a extends BroadcastReceiver {
        C1212a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra;
            if (intent.getAction().equals("android.intent.action.CLOSE_SYSTEM_DIALOGS") && (stringExtra = intent.getStringExtra("reason")) != null && C1211s.this.f5061c != null) {
                if (stringExtra.equals("homekey")) {
                    C1211s.this.f5061c.m9619a();
                } else if (stringExtra.equals("recentapps")) {
                    C1211s.this.f5061c.m9618b();
                }
            }
        }
    }

    /* renamed from: com.callerid.block.util.s$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/util/s$b.class */
    public interface AbstractC1213b {
        /* renamed from: a */
        void m9619a();

        /* renamed from: b */
        void m9618b();
    }

    public C1211s(Context context) {
        this.f5059a = context;
    }

    /* renamed from: b */
    public void m9622b(AbstractC1213b bVar) {
        this.f5061c = bVar;
        this.f5062d = new C1212a();
    }

    /* renamed from: c */
    public void m9621c() {
        C1212a aVar = this.f5062d;
        if (aVar != null) {
            this.f5059a.registerReceiver(aVar, this.f5060b);
        }
    }

    /* renamed from: d */
    public void m9620d() {
        C1212a aVar = this.f5062d;
        if (aVar != null) {
            this.f5059a.unregisterReceiver(aVar);
        }
    }
}
