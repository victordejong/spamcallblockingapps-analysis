package android.support.p003v7.mms;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.criteo.publisher.model.C2052w;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import p065f.p066a.p068b.p069a.AbstractC4242b;
import p065f.p066a.p068b.p069a.C4257j;
import p065f.p066a.p068b.p069a.C4260m;
/* renamed from: android.support.v7.mms.DownloadRequest */
/* loaded from: classes-dex2jar.jar:android/support/v7/mms/DownloadRequest.class */
public class DownloadRequest extends MmsRequest {
    public static final Parcelable.Creator<DownloadRequest> CREATOR = new C0037b();

    /* renamed from: android.support.v7.mms.DownloadRequest$a */
    /* loaded from: classes-dex2jar.jar:android/support/v7/mms/DownloadRequest$a.class */
    public class CallableC0036a implements Callable<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ Context f1a;

        /* renamed from: b */
        public final /* synthetic */ Uri f2b;

        /* renamed from: c */
        public final /* synthetic */ byte[] f3c;

        public CallableC0036a(DownloadRequest downloadRequest, Context context, Uri uri, byte[] bArr) {
            this.f1a = context;
            this.f2b = uri;
            this.f3c = bArr;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() {
            Throwable th;
            IOException e;
            ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = null;
            autoCloseOutputStream = null;
            try {
                try {
                    autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(this.f1a.getContentResolver().openFileDescriptor(this.f2b, C2052w.f2268l));
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e2) {
                e = e2;
            }
            try {
                autoCloseOutputStream.write(this.f3c);
                try {
                    autoCloseOutputStream.close();
                } catch (IOException e3) {
                }
                return true;
            } catch (IOException e4) {
                e = e4;
                Log.e("MmsLib", "Writing PDU to downloader: IO exception", e);
                if (autoCloseOutputStream != null) {
                    try {
                        autoCloseOutputStream.close();
                    } catch (IOException e5) {
                    }
                }
                return false;
            } catch (Throwable th3) {
                th = th3;
                if (autoCloseOutputStream != null) {
                    try {
                        autoCloseOutputStream.close();
                    } catch (IOException e6) {
                    }
                }
                throw th;
            }
        }
    }

    /* renamed from: android.support.v7.mms.DownloadRequest$b */
    /* loaded from: classes-dex2jar.jar:android/support/v7/mms/DownloadRequest$b.class */
    public static final class C0037b implements Parcelable.Creator<DownloadRequest> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DownloadRequest createFromParcel(Parcel parcel) {
            return new DownloadRequest(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DownloadRequest[] newArray(int i) {
            return new DownloadRequest[i];
        }
    }

    public DownloadRequest(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ DownloadRequest(Parcel parcel, CallableC0036a aVar) {
        this(parcel);
    }

    public DownloadRequest(String str, Uri uri, PendingIntent pendingIntent) {
        super(str, uri, pendingIntent);
    }

    @Override // android.support.p003v7.mms.MmsRequest
    /* renamed from: a */
    public String mo37521a(AbstractC4242b.AbstractC4243a aVar) {
        return this.f5a;
    }

    @Override // android.support.p003v7.mms.MmsRequest
    /* renamed from: a */
    public boolean mo37525a(Context context, Intent intent, byte[] bArr) {
        return m37559a(context, this.f6b, bArr);
    }

    /* renamed from: a */
    public boolean m37559a(Context context, Uri uri, byte[] bArr) {
        if (uri == null || bArr == null) {
            return false;
        }
        Future submit = this.f8d.submit(new CallableC0036a(this, context, uri, bArr));
        try {
            return ((Boolean) submit.get(30000L, TimeUnit.MILLISECONDS)).booleanValue();
        } catch (Exception e) {
            submit.cancel(true);
            return false;
        }
    }

    @Override // android.support.p003v7.mms.MmsRequest
    /* renamed from: a */
    public boolean mo37523a(Context context, Bundle bundle) {
        return true;
    }

    @Override // android.support.p003v7.mms.MmsRequest
    /* renamed from: a */
    public byte[] mo37522a(Context context, C4260m mVar, AbstractC4242b.AbstractC4243a aVar, Bundle bundle, String str, String str2) throws C4257j {
        return mVar.m29186f().m29220a(mo37521a(aVar), null, "GET", !TextUtils.isEmpty(aVar.mo8208d()), aVar.mo8208d(), aVar.mo8209c(), bundle, str, str2);
    }
}
