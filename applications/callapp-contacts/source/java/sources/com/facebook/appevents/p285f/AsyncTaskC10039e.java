package com.facebook.appevents.p285f;

import android.os.AsyncTask;
import com.facebook.internal.p299b.p301b.C10249a;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.URL;
/* renamed from: com.facebook.appevents.f.e */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/e.class */
public final class AsyncTaskC10039e extends AsyncTask<String, Void, Boolean> {

    /* renamed from: a */
    private AbstractC10040a f33324a;

    /* renamed from: b */
    private File f33325b;

    /* renamed from: c */
    private String f33326c;

    /* renamed from: com.facebook.appevents.f.e$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/e$a.class */
    public interface AbstractC10040a {
        /* renamed from: a */
        void mo23506a(File file);
    }

    public AsyncTaskC10039e(String str, File file, AbstractC10040a abstractC10040a) {
        this.f33326c = str;
        this.f33325b = file;
        this.f33324a = abstractC10040a;
    }

    /* renamed from: a */
    private Boolean m23548a() {
        try {
            if (C10249a.m23108a(this)) {
                return null;
            }
            try {
                URL url = new URL(this.f33326c);
                int contentLength = url.openConnection().getContentLength();
                DataInputStream dataInputStream = new DataInputStream(url.openStream());
                byte[] bArr = new byte[contentLength];
                dataInputStream.readFully(bArr);
                dataInputStream.close();
                DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(this.f33325b));
                dataOutputStream.write(bArr);
                dataOutputStream.flush();
                dataOutputStream.close();
                return Boolean.TRUE;
            } catch (Exception e) {
                return Boolean.FALSE;
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Boolean doInBackground(String[] strArr) {
        if (C10249a.m23108a(this)) {
            return null;
        }
        try {
            return m23548a();
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Boolean bool) {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            Boolean bool2 = bool;
            if (C10249a.m23108a(this) || !bool2.booleanValue()) {
                return;
            }
            this.f33324a.mo23506a(this.f33325b);
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }
}
