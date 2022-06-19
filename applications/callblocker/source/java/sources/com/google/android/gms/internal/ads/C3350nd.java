package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.ads.p121d.C2284a;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.nd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nd.class */
public final class C3350nd extends C3366nt {

    /* renamed from: a */
    private final Map<String, String> f16979a;

    /* renamed from: b */
    private final Context f16980b;

    /* renamed from: c */
    private String f16981c = m7426d("description");

    /* renamed from: f */
    private String f16984f = m7426d("summary");

    /* renamed from: d */
    private long f16982d = m7425e("start_ticks");

    /* renamed from: e */
    private long f16983e = m7425e("end_ticks");

    /* renamed from: g */
    private String f16985g = m7426d("location");

    public C3350nd(act actVar, Map<String, String> map) {
        super(actVar, "createCalendarEvent");
        this.f16979a = map;
        this.f16980b = actVar.mo13444f();
    }

    /* renamed from: d */
    private final String m7426d(String str) {
        return TextUtils.isEmpty(this.f16979a.get(str)) ? "" : this.f16979a.get(str);
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: e */
    private final long m7425e(String str) {
        char c;
        String str2 = this.f16979a.get(str);
        if (str2 == null) {
            c = 65535;
        } else {
            try {
                c = Long.parseLong(str2);
            } catch (NumberFormatException e) {
                c = 65535;
            }
        }
        return c;
    }

    /* renamed from: a */
    public final void m7429a() {
        if (this.f16980b == null) {
            m7398a("Activity context is not available.");
            return;
        }
        C2341q.m14744c();
        if (!C3567ve.m6957e(this.f16980b).m7900d()) {
            m7398a("This feature is not available on the device.");
            return;
        }
        C2341q.m14744c();
        AlertDialog.Builder m6961d = C3567ve.m6961d(this.f16980b);
        Resources m7089d = C2341q.m14740g().m7089d();
        m6961d.setTitle(m7089d != null ? m7089d.getString(C2284a.C2285a.f6596s5) : "Create calendar event");
        m6961d.setMessage(m7089d != null ? m7089d.getString(C2284a.C2285a.f6597s6) : "Allow Ad to create a calendar event?");
        m6961d.setPositiveButton(m7089d != null ? m7089d.getString(C2284a.C2285a.f6594s3) : "Accept", new DialogInterface$OnClickListenerC3353ng(this));
        m6961d.setNegativeButton(m7089d != null ? m7089d.getString(C2284a.C2285a.f6595s4) : "Decline", new DialogInterface$OnClickListenerC3352nf(this));
        m6961d.create().show();
    }

    @TargetApi(14)
    /* renamed from: b */
    public final Intent m7427b() {
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", this.f16981c);
        data.putExtra("eventLocation", this.f16985g);
        data.putExtra("description", this.f16984f);
        if (this.f16982d > -1) {
            data.putExtra("beginTime", this.f16982d);
        }
        if (this.f16983e > -1) {
            data.putExtra("endTime", this.f16983e);
        }
        data.setFlags(268435456);
        return data;
    }
}
