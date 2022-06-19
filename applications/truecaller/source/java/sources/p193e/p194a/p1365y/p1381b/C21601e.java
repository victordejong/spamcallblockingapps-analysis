package p193e.p194a.p1365y.p1381b;

import android.content.Context;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import java.io.InputStream;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
import u3.c0;
import u3.j0;
import v3.g;
/* renamed from: e.a.y.b.e */
/* loaded from: classes9-dex2jar.jar:e/a/y/b/e.class */
public final class C21601e extends j0 {

    /* renamed from: b */
    public final Context f60257b;

    /* renamed from: c */
    public final Uri f60258c;

    public C21601e(Context context, Uri uri) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(uri, "imageUri");
        this.f60257b = context;
        this.f60258c = uri;
    }

    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* renamed from: a */
    public long m9387a() {
        char c;
        char c2;
        InputStream openInputStream;
        InputStream inputStream = null;
        InputStream inputStream2 = null;
        try {
            openInputStream = this.f60257b.getContentResolver().openInputStream(this.f60258c);
            c = 65535;
            if (openInputStream != null) {
                inputStream2 = openInputStream;
                inputStream = openInputStream;
                c = openInputStream.available();
            }
            c2 = c;
        } catch (IOException e) {
            c2 = 65535;
            if (inputStream != null) {
                c = 65535;
            }
        } catch (Throwable th) {
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (IOException e2) {
                }
            }
            throw th;
        }
        if (openInputStream != null) {
            inputStream = openInputStream;
            try {
                inputStream.close();
                c2 = c;
            } catch (IOException e3) {
                c2 = c;
            }
        }
        return c2;
    }

    /* renamed from: b */
    public c0 m9386b() {
        c0.a aVar = c0.f;
        return c0.a.b("image/jpg");
    }

    /* renamed from: c */
    public void m9385c(g gVar) {
        Throwable th;
        l.e(gVar, "sink");
        InputStream inputStream = null;
        try {
            InputStream openInputStream = this.f60257b.getContentResolver().openInputStream(this.f60258c);
            if (openInputStream == null) {
                throw new IOException();
            }
            try {
                C19291g.m13574X1(openInputStream, gVar.j2());
                try {
                    openInputStream.close();
                } catch (IOException e) {
                }
            } catch (Throwable th2) {
                th = th2;
                inputStream = openInputStream;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
