package com.truecaller.notifications.internal;

import android.content.Intent;
import android.os.Process;
import e.m.e.g0.a;
import e.m.e.g0.b;
import e.m.e.g0.d;
import e.m.e.q;
import e.m.e.r;
import e.m.e.s;
import e.m.e.v;
import e.m.e.z;
import java.io.IOException;
import java.io.StringReader;
import java.util.Objects;
import p1727n3.p1807k.p1808a.AbstractServiceC26412a0;
import p193e.p194a.p1114o5.C19030g1;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p437c.p578p.C10480a;
/* loaded from: classes11-dex2jar.jar:com/truecaller/notifications/internal/InternalTruecallerNotificationsService.class */
public class InternalTruecallerNotificationsService extends AbstractServiceC26412a0 {

    /* renamed from: a */
    public static final /* synthetic */ int f14118a = 0;

    @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i
    public void onHandleWork(Intent intent) {
        Process.setThreadPriority(10);
        if (!((AbstractApplicationC8442a) getApplication()).mo28540W()) {
            return;
        }
        try {
            int intExtra = intent.getIntExtra("EXTRA_TYPE", -1);
            if (intExtra != 0) {
                if (intExtra != 1) {
                    return;
                }
                C19030g1.m14230b(getApplicationContext(), intent.getStringExtra("EXTRA_TITLE"), intent.getStringExtra("EXTRA_TEXT"), (Intent) intent.getParcelableExtra("EXTRA_INTENT"), false, intent.getStringExtra("EXTRA_ANALYTICS_SUBTYPE"));
                return;
            }
            try {
                try {
                    try {
                        a aVar = new a(new StringReader(intent.getStringExtra("EXTRA_NOTIFICATION")));
                        q a = v.a(aVar);
                        Objects.requireNonNull(a);
                        if (!(a instanceof s) && aVar.D0() != b.j) {
                            throw new z("Did not consume the entire document.");
                        }
                        C19030g1.m14229c(getApplicationContext(), new InternalTruecallerNotification(a.d()));
                    } catch (NumberFormatException e) {
                        throw new z(e);
                    }
                } catch (IOException e2) {
                    throw new r(e2);
                }
            } catch (d e3) {
                throw new z(e3);
            }
        } catch (Exception e4) {
            C10480a.m26057J1(e4, "BGServ - Exception");
        }
    }
}
