package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.google.android.gms.ads.impl.C2037R;
import com.google.android.gms.ads.internal.zzt;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbyh.class */
public final class zzbyh extends zzbyp {
    private final Map<String, String> zza;
    private final Context zzb;
    private final String zzc = zzd("description");
    private final String zzf = zzd("summary");
    private final long zzd = zze("start_ticks");
    private final long zze = zze("end_ticks");
    private final String zzg = zzd("location");

    public zzbyh(zzcml zzcmlVar, Map<String, String> map) {
        super(zzcmlVar, "createCalendarEvent");
        this.zza = map;
        this.zzb = zzcmlVar.zzj();
    }

    private final String zzd(String str) {
        return TextUtils.isEmpty(this.zza.get(str)) ? "" : this.zza.get(str);
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    private final long zze(String str) {
        char c;
        String str2 = this.zza.get(str);
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

    public final void zzb() {
        if (this.zzb == null) {
            zzf("Activity context is not available.");
            return;
        }
        zzt.zzc();
        if (!new zzbiv(this.zzb).zzb()) {
            zzf("This feature is not available on the device.");
            return;
        }
        zzt.zzc();
        AlertDialog.Builder builder = new AlertDialog.Builder(this.zzb);
        Resources zzj = zzt.zzg().zzj();
        builder.setTitle(zzj != null ? zzj.getString(C2037R.string.f5309s5) : "Create calendar event");
        builder.setMessage(zzj != null ? zzj.getString(C2037R.string.f5310s6) : "Allow Ad to create a calendar event?");
        builder.setPositiveButton(zzj != null ? zzj.getString(C2037R.string.f5307s3) : "Accept", new zzbyf(this));
        builder.setNegativeButton(zzj != null ? zzj.getString(C2037R.string.f5308s4) : "Decline", new zzbyg(this));
        builder.create().show();
    }

    public final Intent zzc() {
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", this.zzc);
        data.putExtra("eventLocation", this.zzg);
        data.putExtra("description", this.zzf);
        long j = this.zzd;
        if (j > -1) {
            data.putExtra("beginTime", j);
        }
        long j2 = this.zze;
        if (j2 > -1) {
            data.putExtra("endTime", j2);
        }
        data.setFlags(268435456);
        return data;
    }
}
