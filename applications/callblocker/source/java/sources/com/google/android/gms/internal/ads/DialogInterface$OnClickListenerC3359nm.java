package com.google.android.gms.internal.ads;

import android.app.DownloadManager;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Environment;
import com.google.android.gms.ads.internal.C2341q;
/* renamed from: com.google.android.gms.internal.ads.nm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nm.class */
public final class DialogInterface$OnClickListenerC3359nm implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ String f17016a;

    /* renamed from: b */
    private final /* synthetic */ String f17017b;

    /* renamed from: c */
    private final /* synthetic */ C3356nj f17018c;

    public DialogInterface$OnClickListenerC3359nm(C3356nj c3356nj, String str, String str2) {
        this.f17018c = c3356nj;
        this.f17016a = str;
        this.f17017b = str2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Context context;
        context = this.f17018c.f17011b;
        DownloadManager downloadManager = (DownloadManager) context.getSystemService("download");
        try {
            String str = this.f17016a;
            String str2 = this.f17017b;
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
            C2341q.m14742e();
            request.allowScanningByMediaScanner();
            request.setNotificationVisibility(1);
            downloadManager.enqueue(request);
        } catch (IllegalStateException e) {
            this.f17018c.m7398a("Could not store picture.");
        }
    }
}
