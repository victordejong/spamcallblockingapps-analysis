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
/* renamed from: com.google.android.gms.wearable.internal.dd */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/dd.class */
final class RunnableC14316dd implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Uri f52265a;

    /* renamed from: b */
    private final /* synthetic */ C11892d.AbstractC11894b f52266b;

    /* renamed from: c */
    private final /* synthetic */ String f52267c;

    /* renamed from: d */
    private final /* synthetic */ long f52268d;

    /* renamed from: e */
    private final /* synthetic */ long f52269e;

    /* renamed from: f */
    private final /* synthetic */ C14314db f52270f;

    public RunnableC14316dd(C14314db c14314db, Uri uri, C11892d.AbstractC11894b abstractC11894b, String str, long j, long j2) {
        this.f52270f = c14314db;
        this.f52265a = uri;
        this.f52266b = abstractC11894b;
        this.f52267c = str;
        this.f52268d = j;
        this.f52269e = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ParcelFileDescriptor open;
        Log.isLoggable("WearableClient", 2);
        if (!"file".equals(this.f52265a.getScheme())) {
            Log.w("WearableClient", "Channel.sendFile used with non-file URI");
            this.f52266b.mo11400b(new Status(10, "Channel.sendFile used with non-file URI"));
            return;
        }
        File file = new File(this.f52265a.getPath());
        try {
            try {
                open = ParcelFileDescriptor.open(file, 268435456);
                try {
                    ((AbstractC14271bm) this.f52270f.getService()).mo11410a(new BinderC14310cy(this.f52266b), this.f52267c, open, this.f52268d, this.f52269e);
                    try {
                        open.close();
                    } catch (IOException e) {
                        Log.w("WearableClient", "Failed to close sourceFd", e);
                    }
                } catch (RemoteException e2) {
                    Log.w("WearableClient", "Channel.sendFile failed.", e2);
                    this.f52266b.mo11400b(new Status(8));
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
            this.f52266b.mo11400b(new Status(13));
        }
    }
}
