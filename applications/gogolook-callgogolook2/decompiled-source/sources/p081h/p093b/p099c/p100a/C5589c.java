package p081h.p093b.p099c.p100a;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import androidx.collection.LruCache;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import p081h.p093b.p099c.p100a.AbstractC5598e;
/* renamed from: h.b.c.a.c */
/* loaded from: classes-dex2jar.jar:h/b/c/a/c.class */
public class C5589c implements AbstractC5598e {

    /* renamed from: a */
    public final ContentResolver f13967a;

    /* renamed from: b */
    public final LruCache<Uri, byte[]> f13968b = new LruCache<>(20);

    /* renamed from: h.b.c.a.c$a */
    /* loaded from: classes-dex2jar.jar:h/b/c/a/c$a.class */
    public class AsyncTaskC5590a extends AsyncTask<Void, Void, byte[]> {

        /* renamed from: a */
        public final /* synthetic */ Uri f13969a;

        /* renamed from: b */
        public final /* synthetic */ C5607h f13970b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC5598e.AbstractC5599a f13971c;

        public AsyncTaskC5590a(Uri uri, C5607h hVar, AbstractC5598e.AbstractC5599a aVar) {
            this.f13969a = uri;
            this.f13970b = hVar;
            this.f13971c = aVar;
        }

        /* renamed from: a */
        public void onPostExecute(byte[] bArr) {
            this.f13970b.m25031a(bArr);
            if (bArr != null) {
                C5589c.this.f13968b.put(this.f13969a, bArr);
                AbstractC5598e.AbstractC5599a aVar = this.f13971c;
                if (aVar != null) {
                    aVar.mo25057c();
                    return;
                }
                return;
            }
            AbstractC5598e.AbstractC5599a aVar2 = this.f13971c;
            if (aVar2 != null) {
                aVar2.mo25059a();
            }
        }

        /* renamed from: a */
        public byte[] doInBackground(Void... voidArr) {
            Cursor query = C5589c.this.f13967a.query(this.f13969a, C5591b.f13973a, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        return query.getBlob(0);
                    }
                    return null;
                } finally {
                    query.close();
                }
            } else {
                try {
                    InputStream openInputStream = C5589c.this.f13967a.openInputStream(this.f13969a);
                    if (openInputStream == null) {
                        return null;
                    }
                    byte[] bArr = new byte[16384];
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    while (true) {
                        int read = openInputStream.read(bArr);
                        if (read != -1) {
                            byteArrayOutputStream.write(bArr, 0, read);
                        } else {
                            openInputStream.close();
                            return byteArrayOutputStream.toByteArray();
                        }
                    }
                } catch (IOException e) {
                    return null;
                }
            }
        }
    }

    /* renamed from: h.b.c.a.c$b */
    /* loaded from: classes-dex2jar.jar:h/b/c/a/c$b.class */
    public static class C5591b {

        /* renamed from: a */
        public static final String[] f13973a = {"data15"};
    }

    public C5589c(ContentResolver contentResolver) {
        this.f13967a = contentResolver;
    }

    /* renamed from: a */
    public final void m25081a(C5607h hVar, Uri uri, AbstractC5598e.AbstractC5599a aVar) {
        new AsyncTaskC5590a(uri, hVar, aVar).executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
    }

    @Override // p081h.p093b.p099c.p100a.AbstractC5598e
    /* renamed from: a */
    public void mo7928a(C5607h hVar, AbstractC5598e.AbstractC5599a aVar) {
        Uri k = hVar.m25019k();
        if (k != null) {
            byte[] bArr = this.f13968b.get(k);
            if (bArr != null) {
                hVar.m25031a(bArr);
                if (aVar != null) {
                    aVar.mo25058b();
                    return;
                }
                return;
            }
            m25081a(hVar, k, aVar);
        } else if (aVar != null) {
            aVar.mo25059a();
        }
    }
}
