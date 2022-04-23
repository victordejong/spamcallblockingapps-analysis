package com.google.android.gms.internal.ads;

import android.app.DownloadManager;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Environment;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pu.class */
final class pu implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f28301a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f28302b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ pr f28303c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pu(pr prVar, String str, String str2) {
        this.f28303c = prVar;
        this.f28301a = str;
        this.f28302b = str2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        DownloadManager downloadManager = (DownloadManager) this.f28303c.f28296b.getSystemService("download");
        try {
            String str = this.f28301a;
            String str2 = this.f28302b;
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
            zzr.zzkv();
            zzj.zza(request);
            downloadManager.enqueue(request);
        } catch (IllegalStateException e) {
            this.f28303c.a("Could not store picture.");
        }
    }
}
