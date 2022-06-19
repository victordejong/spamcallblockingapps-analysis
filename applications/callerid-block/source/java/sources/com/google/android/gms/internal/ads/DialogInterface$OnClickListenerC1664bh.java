package com.google.android.gms.internal.ads;

import android.app.DownloadManager;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Environment;
import com.google.android.gms.ads.internal.C1407r;
/* renamed from: com.google.android.gms.internal.ads.bh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bh.class */
final class DialogInterface$OnClickListenerC1664bh implements DialogInterface.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ String f6147b;

    /* renamed from: c */
    final /* synthetic */ String f6148c;

    /* renamed from: d */
    final /* synthetic */ dh f6149d;

    DialogInterface$OnClickListenerC1664bh(dh dhVar, String str, String str2) {
        this.f6149d = dhVar;
        this.f6147b = str;
        this.f6148c = str2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        DownloadManager downloadManager = (DownloadManager) dh.i(this.f6149d).getSystemService("download");
        try {
            String str = this.f6147b;
            String str2 = this.f6148c;
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
            C1407r.m8920d();
            request.allowScanningByMediaScanner();
            request.setNotificationVisibility(1);
            downloadManager.enqueue(request);
        } catch (IllegalStateException e) {
            this.f6149d.m7376b("Could not store picture.");
        }
    }
}
