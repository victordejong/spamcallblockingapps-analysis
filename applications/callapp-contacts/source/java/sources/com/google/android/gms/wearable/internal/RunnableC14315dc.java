package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C11892d;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
/* renamed from: com.google.android.gms.wearable.internal.dc */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/dc.class */
final class RunnableC14315dc implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Uri f52260a;

    /* renamed from: b */
    private final /* synthetic */ C11892d.AbstractC11894b f52261b;

    /* renamed from: c */
    private final /* synthetic */ boolean f52262c;

    /* renamed from: d */
    private final /* synthetic */ String f52263d;

    /* renamed from: e */
    private final /* synthetic */ C14314db f52264e;

    public RunnableC14315dc(C14314db c14314db, Uri uri, C11892d.AbstractC11894b abstractC11894b, boolean z, String str) {
        this.f52264e = c14314db;
        this.f52260a = uri;
        this.f52261b = abstractC11894b;
        this.f52262c = z;
        this.f52263d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ParcelFileDescriptor open;
        Log.isLoggable("WearableClient", 2);
        if (!"file".equals(this.f52260a.getScheme())) {
            Log.w("WearableClient", "Channel.receiveFile used with non-file URI");
            this.f52261b.mo11400b(new Status(10, "Channel.receiveFile used with non-file URI"));
            return;
        }
        File file = new File(this.f52260a.getPath());
        try {
            try {
                open = ParcelFileDescriptor.open(file, 671088640 | (this.f52262c ? 33554432 : 0));
                try {
                    ((AbstractC14271bm) this.f52264e.getService()).mo11411a(new BinderC14313da(this.f52261b), this.f52263d, open);
                    try {
                        open.close();
                    } catch (IOException e) {
                        Log.w("WearableClient", "Failed to close targetFd", e);
                    }
                } catch (RemoteException e2) {
                    Log.w("WearableClient", "Channel.receiveFile failed.", e2);
                    this.f52261b.mo11400b(new Status(8));
                    try {
                        open.close();
                    } catch (IOException e3) {
                        Log.w("WearableClient", "Failed to close targetFd", e3);
                    }
                }
            } catch (Throwable th) {
                try {
                    open.close();
                } catch (IOException e4) {
                    Log.w("WearableClient", "Failed to close targetFd", e4);
                }
                throw th;
            }
        } catch (FileNotFoundException e5) {
            String valueOf = String.valueOf(file);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 49);
            sb.append("File couldn't be opened for Channel.receiveFile: ");
            sb.append(valueOf);
            Log.w("WearableClient", sb.toString());
            this.f52261b.mo11400b(new Status(13));
        }
    }
}
