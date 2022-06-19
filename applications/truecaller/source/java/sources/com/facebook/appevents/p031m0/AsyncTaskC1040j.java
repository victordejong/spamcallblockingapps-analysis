package com.facebook.appevents.p031m0;

import android.os.AsyncTask;
import com.facebook.internal.p037u0.p040m.C1220a;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.URL;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018��2\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00020\u00040\u0001:\u0001\u0012B\u001d\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ%\u0010\u000b\u001a\u00020\u00042\u0016\u0010\f\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00020\r\"\u0004\u0018\u00010\u0002H\u0017¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0014R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0013"}, d2 = {"Lcom/facebook/appevents/internal/FileDownloadTask;", "Landroid/os/AsyncTask;", "", "Ljava/lang/Void;", "", "uriStr", "destFile", "Ljava/io/File;", "onSuccess", "Lcom/facebook/appevents/internal/FileDownloadTask$Callback;", "(Ljava/lang/String;Ljava/io/File;Lcom/facebook/appevents/internal/FileDownloadTask$Callback;)V", "doInBackground", "args", "", "([Ljava/lang/String;)Ljava/lang/Boolean;", "onPostExecute", "", "isSuccess", "Callback", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.m0.j */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/m0/j.class */
public final class AsyncTaskC1040j extends AsyncTask<String, Void, Boolean> {

    /* renamed from: a */
    public final String f2868a;

    /* renamed from: b */
    public final File f2869b;

    /* renamed from: c */
    public final AbstractC1041a f2870c;

    @Metadata(d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\bæ\u0080\u0001\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/facebook/appevents/internal/FileDownloadTask$Callback;", "", "onComplete", "", "file", "Ljava/io/File;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.m0.j$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/m0/j$a.class */
    public interface AbstractC1041a {
        /* renamed from: a */
        void mo41854a(File file);
    }

    public AsyncTaskC1040j(String str, File file, AbstractC1041a abstractC1041a) {
        l.e(str, "uriStr");
        l.e(file, "destFile");
        l.e(abstractC1041a, "onSuccess");
        this.f2868a = str;
        this.f2869b = file;
        this.f2870c = abstractC1041a;
    }

    /* renamed from: a */
    public Boolean m41862a(String... strArr) {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            l.e(strArr, "args");
            try {
                URL url = new URL(this.f2868a);
                int contentLength = url.openConnection().getContentLength();
                DataInputStream dataInputStream = new DataInputStream(url.openStream());
                byte[] bArr = new byte[contentLength];
                dataInputStream.readFully(bArr);
                dataInputStream.close();
                DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(this.f2869b));
                dataOutputStream.write(bArr);
                dataOutputStream.flush();
                dataOutputStream.close();
                return Boolean.TRUE;
            } catch (Exception e) {
                return Boolean.FALSE;
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public /* bridge */ /* synthetic */ Boolean doInBackground(String[] strArr) {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            return m41862a(strArr);
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(Boolean bool) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            boolean booleanValue = bool.booleanValue();
            if (C1220a.m41623b(this) || !booleanValue) {
                return;
            }
            this.f2870c.mo41854a(this.f2869b);
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
