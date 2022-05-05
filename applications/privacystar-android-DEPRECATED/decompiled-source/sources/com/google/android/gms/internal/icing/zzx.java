package com.google.android.gms.internal.icing;

import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.appindexing.AppIndexApi;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Locale;
import java.util.zip.CRC32;
@SafeParcelable.Class(creator = "UsageInfoCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzx.class */
public final class zzx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzx> CREATOR = new zzz();
    @SafeParcelable.Field(m344id = 1)
    private final zzj zzaj;
    @SafeParcelable.Field(m344id = 2)
    private final long zzak;
    @SafeParcelable.Field(m344id = 3)
    private int zzal;
    @SafeParcelable.Field(m344id = 4)
    private final String zzam;
    @SafeParcelable.Field(m344id = 5)
    private final zzg zzan;
    @SafeParcelable.Field(defaultValue = "false", m344id = 6)
    private final boolean zzao;
    @SafeParcelable.Field(defaultValue = "-1", m344id = 7)
    private int zzap;
    @SafeParcelable.Field(m344id = 8)
    private int zzaq;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzx(@SafeParcelable.Param(m343id = 1) zzj zzjVar, @SafeParcelable.Param(m343id = 2) long j, @SafeParcelable.Param(m343id = 3) int i, @SafeParcelable.Param(m343id = 4) String str, @SafeParcelable.Param(m343id = 5) zzg zzgVar, @SafeParcelable.Param(m343id = 6) boolean z, @SafeParcelable.Param(m343id = 7) int i2, @SafeParcelable.Param(m343id = 8) int i3) {
        this.zzaj = zzjVar;
        this.zzak = j;
        this.zzal = i;
        this.zzam = str;
        this.zzan = zzgVar;
        this.zzao = z;
        this.zzap = i2;
        this.zzaq = i3;
    }

    @VisibleForTesting
    public zzx(String str, Intent intent, String str2, Uri uri, String str3, List<AppIndexApi.AppIndexingLink> list, int i) {
        this(zza(str, intent), System.currentTimeMillis(), 0, null, zza(intent, str2, uri, null, list).zza(), false, -1, 1);
    }

    @VisibleForTesting
    public static zzh zza(Intent intent, String str, Uri uri, String str2, List<AppIndexApi.AppIndexingLink> list) {
        String string;
        zzh zzhVar = new zzh();
        zzhVar.zza(new zzl(str, new zzt("title").zzc(true).zzd("name").zzb(), "text1"));
        if (uri != null) {
            zzhVar.zza(new zzl(uri.toString(), new zzt("web_url").zzb(true).zzd("url").zzb()));
        }
        if (list != null) {
            zzak zzakVar = new zzak();
            zzal[] zzalVarArr = new zzal[list.size()];
            for (int i = 0; i < zzalVarArr.length; i++) {
                zzalVarArr[i] = new zzal();
                AppIndexApi.AppIndexingLink appIndexingLink = list.get(i);
                zzalVarArr[i].zzba = appIndexingLink.appIndexingUrl.toString();
                zzalVarArr[i].viewId = appIndexingLink.viewId;
                if (appIndexingLink.webUrl != null) {
                    zzalVarArr[i].zzbb = appIndexingLink.webUrl.toString();
                }
            }
            zzakVar.zzay = zzalVarArr;
            zzhVar.zza(new zzl(zzfz.zza(zzakVar), new zzt("outlinks").zzb(true).zzd(".private:outLinks").zzc("blob").zzb()));
        }
        String action = intent.getAction();
        if (action != null) {
            zzhVar.zza(zza("intent_action", action));
        }
        String dataString = intent.getDataString();
        if (dataString != null) {
            zzhVar.zza(zza("intent_data", dataString));
        }
        ComponentName component = intent.getComponent();
        if (component != null) {
            zzhVar.zza(zza("intent_activity", component.getClassName()));
        }
        Bundle extras = intent.getExtras();
        if (!(extras == null || (string = extras.getString("intent_extra_data_key")) == null)) {
            zzhVar.zza(zza("intent_extra_data", string));
        }
        return zzhVar.zza(str2).zza(true);
    }

    public static zzj zza(String str, Intent intent) {
        return new zzj(str, "", zza(intent));
    }

    private static zzl zza(String str, String str2) {
        return new zzl(str2, new zzt(str).zzb(true).zzb(), str);
    }

    private static String zza(Intent intent) {
        String uri = intent.toUri(1);
        CRC32 crc32 = new CRC32();
        try {
            crc32.update(uri.getBytes("UTF-8"));
            return Long.toHexString(crc32.getValue());
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException(e);
        }
    }

    public final String toString() {
        return String.format(Locale.US, "UsageInfo[documentId=%s, timestamp=%d, usageType=%d, status=%d]", this.zzaj, Long.valueOf(this.zzak), Integer.valueOf(this.zzal), Integer.valueOf(this.zzaq));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.zzaj, i, false);
        SafeParcelWriter.writeLong(parcel, 2, this.zzak);
        SafeParcelWriter.writeInt(parcel, 3, this.zzal);
        SafeParcelWriter.writeString(parcel, 4, this.zzam, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zzan, i, false);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zzao);
        SafeParcelWriter.writeInt(parcel, 7, this.zzap);
        SafeParcelWriter.writeInt(parcel, 8, this.zzaq);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
