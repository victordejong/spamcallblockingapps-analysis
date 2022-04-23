package com.facebook.appevents.f;

import android.os.AsyncTask;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.URL;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/e.class */
public final class e extends AsyncTask<String, Void, Boolean> {

    /* renamed from: a  reason: collision with root package name */
    private a f19560a;

    /* renamed from: b  reason: collision with root package name */
    private File f19561b;

    /* renamed from: c  reason: collision with root package name */
    private String f19562c;

    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/e$a.class */
    public interface a {
        void a(File file);
    }

    public e(String str, File file, a aVar) {
        this.f19562c = str;
        this.f19561b = file;
        this.f19560a = aVar;
    }

    private Boolean a() {
        try {
            if (com.facebook.internal.b.b.a.a(this)) {
                return null;
            }
            try {
                URL url = new URL(this.f19562c);
                int contentLength = url.openConnection().getContentLength();
                DataInputStream dataInputStream = new DataInputStream(url.openStream());
                byte[] bArr = new byte[contentLength];
                dataInputStream.readFully(bArr);
                dataInputStream.close();
                DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(this.f19561b));
                dataOutputStream.write(bArr);
                dataOutputStream.flush();
                dataOutputStream.close();
                return Boolean.TRUE;
            } catch (Exception e) {
                return Boolean.FALSE;
            }
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Boolean doInBackground(String[] strArr) {
        if (com.facebook.internal.b.b.a.a(this)) {
            return null;
        }
        try {
            return a();
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Boolean bool) {
        if (!com.facebook.internal.b.b.a.a(this)) {
            try {
                Boolean bool2 = bool;
                if (!com.facebook.internal.b.b.a.a(this) && bool2.booleanValue()) {
                    this.f19560a.a(this.f19561b);
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, this);
            }
        }
    }
}
