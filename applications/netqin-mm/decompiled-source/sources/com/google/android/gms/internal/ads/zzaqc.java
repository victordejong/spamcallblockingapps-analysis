package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.google.android.gms.ads.impl.C7217R;
import com.google.android.gms.ads.internal.zzp;
import java.util.Map;
import p131c.p161d.p170b.p224d.p252g.p253a.DialogInterface$OnClickListenerC3605h3;
import p131c.p161d.p170b.p224d.p252g.p253a.DialogInterface$OnClickListenerC3642i3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqc.class */
public final class zzaqc extends zzaqn {

    /* renamed from: c */
    public final Map<String, String> f24255c;

    /* renamed from: d */
    public final Context f24256d;

    /* renamed from: e */
    public String f24257e = m16451d("description");

    /* renamed from: h */
    public String f24260h = m16451d("summary");

    /* renamed from: f */
    public long f24258f = m16450e("start_ticks");

    /* renamed from: g */
    public long f24259g = m16450e("end_ticks");

    /* renamed from: i */
    public String f24261i = m16451d("location");

    public zzaqc(zzbgj zzbgjVar, Map<String, String> map) {
        super(zzbgjVar, "createCalendarEvent");
        this.f24255c = map;
        this.f24256d = zzbgjVar.mo15528b();
    }

    /* renamed from: a */
    public final Intent m16454a() {
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", this.f24257e);
        data.putExtra("eventLocation", this.f24261i);
        data.putExtra("description", this.f24260h);
        long j = this.f24258f;
        if (j > -1) {
            data.putExtra("beginTime", j);
        }
        long j2 = this.f24259g;
        if (j2 > -1) {
            data.putExtra("endTime", j2);
        }
        data.setFlags(268435456);
        return data;
    }

    /* renamed from: b */
    public final void m16452b() {
        if (this.f24256d == null) {
            m16428a("Activity context is not available.");
            return;
        }
        zzp.m17969c();
        if (!zzayu.m16093e(this.f24256d).m16944d()) {
            m16428a("This feature is not available on the device.");
            return;
        }
        zzp.m17969c();
        AlertDialog.Builder d = zzayu.m16097d(this.f24256d);
        Resources b = zzp.m17965g().m16187b();
        d.setTitle(b != null ? b.getString(C7217R.string.f22726s5) : "Create calendar event");
        d.setMessage(b != null ? b.getString(C7217R.string.f22727s6) : "Allow Ad to create a calendar event?");
        d.setPositiveButton(b != null ? b.getString(C7217R.string.f22724s3) : "Accept", new DialogInterface$OnClickListenerC3605h3(this));
        d.setNegativeButton(b != null ? b.getString(C7217R.string.f22725s4) : "Decline", new DialogInterface$OnClickListenerC3642i3(this));
        d.create().show();
    }

    /* renamed from: d */
    public final String m16451d(String str) {
        return TextUtils.isEmpty(this.f24255c.get(str)) ? "" : this.f24255c.get(str);
    }

    /* renamed from: e */
    public final long m16450e(String str) {
        String str2 = this.f24255c.get(str);
        long j = -1;
        if (str2 == null) {
            return -1L;
        }
        try {
            j = Long.parseLong(str2);
        } catch (NumberFormatException e) {
        }
        return j;
    }
}
