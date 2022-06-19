package com.kedlin.cca.core;

import android.annotation.TargetApi;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.telecom.Call;
import android.telecom.CallScreeningService;
import android.text.TextUtils;
import p000.fa1;
import p000.n91;
import p000.q71;
import p000.r71;
import p000.u81;
import p000.w91;
@TargetApi(24)
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/CallScreeningService.class */
public class CallScreeningService extends android.telecom.CallScreeningService {
    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.telecom.CallScreeningService
    public void onScreenCall(Call.Details details) {
        boolean z;
        boolean z2;
        boolean z3;
        CallScreeningService.CallResponse.Builder builder = new CallScreeningService.CallResponse.Builder();
        if (details == null) {
            return;
        }
        Uri handle = details.getHandle();
        i91 m1800o = fa1.C1420e.m1800o(handle != null ? handle.getSchemeSpecificPart() : "");
        String callerDisplayName = details.getCallerDisplayName();
        String str = callerDisplayName;
        if (!TextUtils.isEmpty(callerDisplayName)) {
            str = callerDisplayName.trim().replaceAll(" +", " ");
        }
        if (!TextUtils.isEmpty(str) && !m1800o.m1598p() && !m1800o.m1597q() && !m1800o.m1600n() && !m1800o.m1595s() && !m1800o.m1599o() && !str.equals(m1800o.toString()) && !str.equals(m1800o.m1602l())) {
            n81 n81Var = new n81();
            n81Var.m1218G(m1800o);
            n81Var.f7053f = m1800o;
            n81Var.f7054g = str;
            n81Var.mo148z();
            u81 u81Var = new u81();
            u81Var.m413F(m1800o, null);
            if (u81Var.f8288d == null) {
                u81Var.m412G(m1800o, str, u81.EnumC1675a.OVERRIDE_AUTO);
                u81Var.mo148z();
            }
            o71.m1150j(m1800o);
        }
        if (r71.EnumC1638a.f7942d.m695a() && r71.m709m().length != 0) {
            j91.m1521C("CACHING");
            n91.C1485b m1154e = o71.m1154e(m1800o);
            j91.m1518F("CACHING", "Time to check cache for " + m1800o);
            if (m1154e != null && m1154e.f7082a == n91.EnumC1484a.CARRIER_NAME) {
                o71.m1150j(m1800o);
                m1154e = null;
            }
            n91.C1485b c1485b = m1154e;
            if (m1154e == null) {
                j91.m1521C("FILTERING");
                n91.C1485b m1216a = n91.m1216a(m1800o, q71.EnumC1618e.CALL);
                j91.m1518F("FILTERING", "Time to filter $number");
                n91.EnumC1484a enumC1484a = m1216a.f7082a;
                c1485b = m1216a;
                if (enumC1484a != n91.EnumC1484a.DND) {
                    c1485b = m1216a;
                    if (enumC1484a != n91.EnumC1484a.ATTORNEY) {
                        j91.m1521C("CACHE_SAVE");
                        o71.m1151h(m1800o, m1216a, m1216a.f7082a == n91.EnumC1484a.COMMUNITY_BLACKLIST ? true : true ? 1L : 0L);
                        j91.m1518F("CACHE_SAVE", "Time to save " + m1800o + " to cache");
                        c1485b = m1216a;
                    }
                }
            }
            if (c1485b.f7082a == n91.EnumC1484a.DND) {
                if (u71.m445E(m1800o.toString())) {
                    n91.C1485b m1215b = n91.m1215b(m1800o, q71.EnumC1618e.CALL, Boolean.FALSE);
                    c1485b.f7083b = m1215b.f7083b;
                    c1485b.f7082a = m1215b.f7083b ? m1215b.f7082a : n91.EnumC1484a.REPEATED_CALL;
                }
                z = true;
            } else {
                z = false;
            }
            int m1809f = fa1.C1420e.m1809f();
            if (!c1485b.f7083b || (m1809f <= 0 && c1485b.f7084c.m912d() != q71.EnumC1614a.VOICE_MAIL && (c1485b.f7084c.m912d() != q71.EnumC1614a.PICKUP_HANGUP || r71.EnumC1638a.f7932Y.m695a() || ((!fa1.m1845e() || fa1.m1830t()) && r71.EnumC1638a.f7994v.m695a())))) {
                z2 = z;
                if (Build.VERSION.SDK_INT >= 29) {
                    z2 = z;
                    if (c1485b.f7083b) {
                        z2 = z;
                        if (c1485b.f7084c.m912d() == q71.EnumC1614a.IGNORE) {
                            builder.setSilenceCall(true);
                            z2 = z;
                        }
                    }
                }
            } else {
                if (m1809f > 0) {
                    q71.EnumC1614a m914b = q71.EnumC1614a.m914b();
                    c1485b.f7084c = m914b;
                    if (m914b.m912d() == q71.EnumC1614a.IGNORE) {
                        z3 = false;
                        q71.EnumC1618e enumC1618e = q71.EnumC1618e.CALL;
                        z91.m44o(m1800o, c1485b, enumC1618e);
                        builder.setSkipCallLog(true);
                        builder.setSkipNotification(true);
                        builder.setDisallowCall(true);
                        builder.setRejectCall(z3);
                        z91.m42q(m1800o, c1485b);
                        w91.m276b(this, w91.EnumC1708a.INCOMING_CALL);
                        w91.m274d(this, w91.EnumC1708a.BLOCKED_CALL, c1485b.f7082a);
                        fa1.m1862D(enumC1618e, m1800o, c1485b);
                        ca1.m5402a();
                        u71.m444F(m1800o.toString());
                        z2 = false;
                    }
                }
                z3 = true;
                q71.EnumC1618e enumC1618e2 = q71.EnumC1618e.CALL;
                z91.m44o(m1800o, c1485b, enumC1618e2);
                builder.setSkipCallLog(true);
                builder.setSkipNotification(true);
                builder.setDisallowCall(true);
                builder.setRejectCall(z3);
                z91.m42q(m1800o, c1485b);
                w91.m276b(this, w91.EnumC1708a.INCOMING_CALL);
                w91.m274d(this, w91.EnumC1708a.BLOCKED_CALL, c1485b.f7082a);
                fa1.m1862D(enumC1618e2, m1800o, c1485b);
                ca1.m5402a();
                u71.m444F(m1800o.toString());
                z2 = false;
            }
            if (z2) {
                u71.m423t(m1800o.toString());
            }
        }
        respondToCall(details, builder.build());
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        super.onTaskRemoved(intent);
    }
}
