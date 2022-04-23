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
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/dd.class */
final class dd implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Uri f30116a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ d.b f30117b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ String f30118c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ long f30119d;
    private final /* synthetic */ long e;
    private final /* synthetic */ db f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dd(db dbVar, Uri uri, d.b bVar, String str, long j, long j2) {
        this.f = dbVar;
        this.f30116a = uri;
        this.f30117b = bVar;
        this.f30118c = str;
        this.f30119d = j;
        this.e = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ParcelFileDescriptor open;
        Log.isLoggable("WearableClient", 2);
        if (!"file".equals(this.f30116a.getScheme())) {
            Log.w("WearableClient", "Channel.sendFile used with non-file URI");
            this.f30117b.b(new Status(10, "Channel.sendFile used with non-file URI"));
            return;
        }
        File file = new File(this.f30116a.getPath());
        try {
            try {
                open = ParcelFileDescriptor.open(file, 268435456);
                try {
                    ((bm) this.f.getService()).a(new cy(this.f30117b), this.f30118c, open, this.f30119d, this.e);
                    try {
                        open.close();
                    } catch (IOException e) {
                        Log.w("WearableClient", "Failed to close sourceFd", e);
                    }
                } catch (RemoteException e2) {
                    Log.w("WearableClient", "Channel.sendFile failed.", e2);
                    this.f30117b.b(new Status(8));
                    try {
                        open.close();
                    } catch (IOException e3) {
                        Log.w("WearableClient", "Failed to close sourceFd", e3);
                    }
                }
            } catch (Throwable th) {
                try {
                    open.close();
                } catch (IOException e4) {
                    Log.w("WearableClient", "Failed to close sourceFd", e4);
                }
                throw th;
            }
        } catch (FileNotFoundException e5) {
            String valueOf = String.valueOf(file);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 46);
            sb.append("File couldn't be opened for Channel.sendFile: ");
            sb.append(valueOf);
            Log.w("WearableClient", sb.toString());
            this.f30117b.b(new Status(13));
        }
    }
}
