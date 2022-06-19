package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.google.android.gms.ads.impl.C1211R;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqf.class */
public final class zzaqf extends zzaqq {
    private final Context context;
    private final Map<String, String> zzdbf;
    private String zzdpd = zzdq("description");
    private String zzdpg = zzdq("summary");
    private long zzdpe = zzdr("start_ticks");
    private long zzdpf = zzdr("end_ticks");
    private String zzdph = zzdq(FirebaseAnalytics.Param.LOCATION);

    public zzaqf(zzbeb zzbebVar, Map<String, String> map) {
        super(zzbebVar, "createCalendarEvent");
        this.zzdbf = map;
        this.context = zzbebVar.zzabe();
    }

    private final String zzdq(String str) {
        return TextUtils.isEmpty(this.zzdbf.get(str)) ? "" : this.zzdbf.get(str);
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    private final long zzdr(String str) {
        char c;
        String str2 = this.zzdbf.get(str);
        if (str2 == null) {
            return -1L;
        }
        try {
            c = Long.parseLong(str2);
        } catch (NumberFormatException e) {
            c = 65535;
        }
        return c;
    }

    public final Intent createIntent() {
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", this.zzdpd);
        data.putExtra("eventLocation", this.zzdph);
        data.putExtra("description", this.zzdpg);
        long j = this.zzdpe;
        if (j > -1) {
            data.putExtra("beginTime", j);
        }
        long j2 = this.zzdpf;
        if (j2 > -1) {
            data.putExtra("endTime", j2);
        }
        data.setFlags(268435456);
        return data;
    }

    public final void execute() {
        if (this.context == null) {
            zzds("Activity context is not available.");
            return;
        }
        zzr.zzkr();
        if (!zzj.zzao(this.context).zzsa()) {
            zzds("This feature is not available on the device.");
            return;
        }
        zzr.zzkr();
        AlertDialog.Builder zzan = zzj.zzan(this.context);
        Resources resources = zzr.zzkv().getResources();
        zzan.setTitle(resources != null ? resources.getString(C1211R.string.f116s5) : "Create calendar event");
        zzan.setMessage(resources != null ? resources.getString(C1211R.string.f117s6) : "Allow Ad to create a calendar event?");
        zzan.setPositiveButton(resources != null ? resources.getString(C1211R.string.f114s3) : "Accept", new zzaqe(this));
        zzan.setNegativeButton(resources != null ? resources.getString(C1211R.string.f115s4) : "Decline", new zzaqh(this));
        zzan.create().show();
    }
}
