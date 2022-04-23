package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.d;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/dc.class */
final class dc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Uri f30112a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ d.b f30113b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ boolean f30114c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ String f30115d;
    private final /* synthetic */ db e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dc(db dbVar, Uri uri, d.b bVar, boolean z, String str) {
        this.e = dbVar;
        this.f30112a = uri;
        this.f30113b = bVar;
        this.f30114c = z;
        this.f30115d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ParcelFileDescriptor open;
        Log.isLoggable("WearableClient", 2);
        if (!"file".equals(this.f30112a.getScheme())) {
            Log.w("WearableClient", "Channel.receiveFile used with non-file URI");
            this.f30113b.b(new Status(10, "Channel.receiveFile used with non-file URI"));
            return;
        }
        File file = new File(this.f30112a.getPath());
        try {
            try {
                open = ParcelFileDescriptor.open(file, 671088640 | (this.f30114c ? 33554432 : 0));
                try {
                    ((bm) this.e.getService()).a(new da(this.f30113b), this.f30115d, open);
                    try {
                        open.close();
                    } catch (IOException e) {
                        Log.w("WearableClient", "Failed to close targetFd", e);
                    }
                } catch (RemoteException e2) {
                    Log.w("WearableClient", "Channel.receiveFile failed.", e2);
                    this.f30113b.b(new Status(8));
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
            this.f30113b.b(new Status(13));
        }
    }
}
