package com.google.android.gms.internal.ads;

import android.app.DownloadManager;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Environment;
import com.google.android.gms.ads.internal.C5667s;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ma0.class */
public final class ma0 implements DialogInterface.OnClickListener {

    /* renamed from: d */
    final /* synthetic */ String f26493d;

    /* renamed from: e */
    final /* synthetic */ String f26494e;

    /* renamed from: f */
    final /* synthetic */ oa0 f26495f;

    public ma0(oa0 oa0Var, String str, String str2) {
        this.f26495f = oa0Var;
        this.f26493d = str;
        this.f26494e = str2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Context context;
        context = this.f26495f.f27479d;
        DownloadManager downloadManager = (DownloadManager) context.getSystemService("download");
        try {
            String str = this.f26493d;
            String str2 = this.f26494e;
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
            C5667s.m18160d();
            request.allowScanningByMediaScanner();
            request.setNotificationVisibility(1);
            downloadManager.enqueue(request);
        } catch (IllegalStateException e) {
            this.f26495f.m11621b("Could not store picture.");
        }
    }
}
