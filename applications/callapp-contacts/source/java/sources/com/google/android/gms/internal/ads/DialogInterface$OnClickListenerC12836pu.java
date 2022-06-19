package com.google.android.gms.internal.ads;

import android.app.DownloadManager;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Environment;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
/* renamed from: com.google.android.gms.internal.ads.pu */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pu.class */
final class DialogInterface$OnClickListenerC12836pu implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ String f49691a;

    /* renamed from: b */
    private final /* synthetic */ String f49692b;

    /* renamed from: c */
    private final /* synthetic */ C12833pr f49693c;

    public DialogInterface$OnClickListenerC12836pu(C12833pr c12833pr, String str, String str2) {
        this.f49693c = c12833pr;
        this.f49691a = str;
        this.f49692b = str2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        DownloadManager downloadManager = (DownloadManager) this.f49693c.f49686b.getSystemService("download");
        try {
            String str = this.f49691a;
            String str2 = this.f49692b;
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
            zzr.zzkv();
            zzj.zza(request);
            downloadManager.enqueue(request);
        } catch (IllegalStateException e) {
            this.f49693c.m14244a("Could not store picture.");
        }
    }
}
