package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.p264w.C5858a;
import com.yanzhenjie.nohttp.Headers;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ja0.class */
public final class ja0 extends ra0 {

    /* renamed from: c */
    private final Map<String, String> f24823c;

    /* renamed from: d */
    private final Context f24824d;

    /* renamed from: e */
    private final String f24825e = m14143k("description");

    /* renamed from: h */
    private final String f24828h = m14143k("summary");

    /* renamed from: f */
    private final long f24826f = m14142l("start_ticks");

    /* renamed from: g */
    private final long f24827g = m14142l("end_ticks");

    /* renamed from: i */
    private final String f24829i = m14143k("location");

    public ja0(wn0 wn0Var, Map<String, String> map) {
        super(wn0Var, "createCalendarEvent");
        this.f24823c = map;
        this.f24824d = wn0Var.mo7908g();
    }

    /* renamed from: k */
    private final String m14143k(String str) {
        return TextUtils.isEmpty(this.f24823c.get(str)) ? "" : this.f24823c.get(str);
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: l */
    private final long m14142l(String str) {
        String str2 = this.f24823c.get(str);
        char c = 65535;
        if (str2 == null) {
            return -1L;
        }
        try {
            c = Long.parseLong(str2);
        } catch (NumberFormatException e) {
        }
        return c;
    }

    /* renamed from: i */
    public final void m14145i() {
        if (this.f24824d == null) {
            m11621b("Activity context is not available.");
            return;
        }
        C5667s.m18160d();
        if (!new C7011tv(this.f24824d).m10494b()) {
            m11621b("This feature is not available on the device.");
            return;
        }
        C5667s.m18160d();
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f24824d);
        Resources m12236j = C5667s.m18156h().m12236j();
        builder.setTitle(m12236j != null ? m12236j.getString(C5858a.f18821s5) : "Create calendar event");
        builder.setMessage(m12236j != null ? m12236j.getString(C5858a.f18822s6) : "Allow Ad to create a calendar event?");
        builder.setPositiveButton(m12236j != null ? m12236j.getString(C5858a.f18819s3) : Headers.HEAD_KEY_ACCEPT, new ha0(this));
        builder.setNegativeButton(m12236j != null ? m12236j.getString(C5858a.f18820s4) : "Decline", new ia0(this));
        builder.create().show();
    }

    @TargetApi(14)
    /* renamed from: j */
    public final Intent m14144j() {
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", this.f24825e);
        data.putExtra("eventLocation", this.f24829i);
        data.putExtra("description", this.f24828h);
        long j = this.f24826f;
        if (j > -1) {
            data.putExtra("beginTime", j);
        }
        long j2 = this.f24827g;
        if (j2 > -1) {
            data.putExtra("endTime", j2);
        }
        data.setFlags(268435456);
        return data;
    }
}
