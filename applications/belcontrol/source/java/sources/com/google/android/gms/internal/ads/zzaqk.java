package com.google.android.gms.internal.ads;

import android.app.DownloadManager;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Environment;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqk.class */
public final class zzaqk implements DialogInterface.OnClickListener {
    private final /* synthetic */ String zzdpy;
    private final /* synthetic */ String zzdpz;
    private final /* synthetic */ zzaql zzdqa;

    public zzaqk(zzaql zzaqlVar, String str, String str2) {
        this.zzdqa = zzaqlVar;
        this.zzdpy = str;
        this.zzdpz = str2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        DownloadManager downloadManager = (DownloadManager) zzaql.zza(this.zzdqa).getSystemService("download");
        try {
            String str = this.zzdpy;
            String str2 = this.zzdpz;
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
            zzr.zzkr();
            zzj.zza(request);
            downloadManager.enqueue(request);
        } catch (IllegalStateException e) {
            this.zzdqa.zzds("Could not store picture.");
        }
    }
}
