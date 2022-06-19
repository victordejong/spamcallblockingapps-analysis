package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.google.android.gms.ads.impl.C1666R;
import com.google.android.gms.ads.internal.zzt;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcai.class */
public final class zzcai extends zzcaq {
    private final Map<String, String> zza;
    private final Context zzb;
    private final String zzc = zze("description");
    private final String zzf = zze("summary");
    private final long zzd = zzd("start_ticks");
    private final long zze = zzd("end_ticks");
    private final String zzg = zze("location");

    public zzcai(zzcop zzcopVar, Map<String, String> map) {
        super(zzcopVar, "createCalendarEvent");
        this.zza = map;
        this.zzb = zzcopVar.zzk();
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    private final long zzd(String str) {
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

    private final String zze(String str) {
        return TextUtils.isEmpty(this.zza.get(str)) ? "" : this.zza.get(str);
    }

    @TargetApi(14)
    public final Intent zzb() {
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

    public final void zzc() {
        if (this.zzb == null) {
            zzg("Activity context is not available.");
            return;
        }
        zzt.zzp();
        if (!new zzbkt(this.zzb).zzb()) {
            zzg("This feature is not available on the device.");
            return;
        }
        zzt.zzp();
        AlertDialog.Builder builder = new AlertDialog.Builder(this.zzb);
        Resources zzd = zzt.zzo().zzd();
        builder.setTitle(zzd != null ? zzd.getString(C1666R.string.f6221s5) : "Create calendar event");
        builder.setMessage(zzd != null ? zzd.getString(C1666R.string.f6222s6) : "Allow Ad to create a calendar event?");
        builder.setPositiveButton(zzd != null ? zzd.getString(C1666R.string.f6219s3) : "Accept", new zzcag(this));
        builder.setNegativeButton(zzd != null ? zzd.getString(C1666R.string.f6220s4) : "Decline", new zzcah(this));
        builder.create().show();
    }
}
