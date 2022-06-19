package p193e.p194a.p1114o5;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import com.truecaller.utils.extensions.Scheme;
import java.io.IOException;
import java.io.InputStream;
import p193e.p1432d.p1441d.AbstractC22153f;
import p193e.p1432d.p1441d.C22150c;
import p193e.p1432d.p1441d.C22157j;
import p193e.p1432d.p1441d.C22161n;
import p193e.p1432d.p1441d.C22162o;
import p193e.p1432d.p1441d.p1442p.C22166b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.z.c.l;
/* renamed from: e.a.o5.t0 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/t0.class */
public final class C19105t0 implements AbstractC19101s0 {

    /* renamed from: a */
    public final Context f53321a;

    public C19105t0(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f53321a = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a2, code lost:
        if (r8 == null) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a5, code lost:
        r8.release();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ab, code lost:
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00be, code lost:
        if (r8 == null) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00d8, code lost:
        if (r8 == null) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00ee, code lost:
        r5 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00c9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // p193e.p194a.p1114o5.AbstractC19101s0
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p1114o5.C19054l mo14101a(android.net.Uri r5) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1114o5.C19105t0.mo14101a(android.net.Uri):e.a.o5.l");
    }

    @Override // p193e.p194a.p1114o5.AbstractC19101s0
    /* renamed from: b */
    public C19107u mo14100b(Uri uri) {
        l.e(uri, "uri");
        C19131y1 c19131y1 = new C19131y1();
        C22150c c22150c = new C22150c();
        c22150c.f61558d.add(c19131y1);
        C22161n c22161n = new C22161n();
        C22157j c22157j = new C22157j();
        c22157j.f61574a.f61560b.add(c22161n);
        m14096f(uri, c22157j);
        try {
            AbstractC22153f m8494e = C22162o.m8494e(c22161n.m8499f());
            m8494e.mo8508a(c22150c);
            l.d(m8494e, "dataParser");
            m14096f(uri, m8494e);
            C19107u c19107u = c19131y1.f53354a;
            if (c19107u == null) {
                return null;
            }
            c19107u.f53325a = uri;
            if (!(c19107u.f53329e > 0)) {
                return null;
            }
            return c19107u;
        } catch (C22166b e) {
            String str = "Unable to read vcard from " + uri + " (" + e + ')';
            return null;
        }
    }

    @Override // p193e.p194a.p1114o5.AbstractC19101s0
    /* renamed from: c */
    public C19052k0 mo14099c(Uri uri) {
        l.e(uri, "uri");
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            Scheme m13692L = C19286f.m13692L(uri);
            if (m13692L != null) {
                int ordinal = m13692L.ordinal();
                if (ordinal == 0) {
                    BitmapFactory.decodeFile(uri.getPath(), options);
                } else if (ordinal == 1) {
                    InputStream openInputStream = this.f53321a.getContentResolver().openInputStream(uri);
                    BitmapFactory.decodeStream(openInputStream, null, options);
                    C25225a.m4016G(openInputStream, null);
                }
                return new C19052k0(options.outWidth, options.outHeight, options.outMimeType);
            }
            throw new IllegalArgumentException("Uri scheme: " + uri + ".scheme is not supported");
        } catch (RuntimeException e) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x0159, code lost:
        if (r10 == null) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x015c, code lost:
        r10.release();
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0162, code lost:
        r7 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0175, code lost:
        if (r10 == null) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x018f, code lost:
        if (r10 == null) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01a5, code lost:
        r7 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0180 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // p193e.p194a.p1114o5.AbstractC19101s0
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p1114o5.C19134z1 mo14098d(android.net.Uri r7) {
        /*
            Method dump skipped, instructions count: 431
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1114o5.C19105t0.mo14098d(android.net.Uri):e.a.o5.z1");
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0113, code lost:
        continue;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m14097e(android.net.Uri r6, java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1114o5.C19105t0.m14097e(android.net.Uri, java.lang.String):java.lang.String");
    }

    /* renamed from: f */
    public final void m14096f(Uri uri, AbstractC22153f abstractC22153f) {
        InputStream openInputStream;
        InputStream inputStream = null;
        InputStream inputStream2 = null;
        InputStream inputStream3 = null;
        try {
            try {
                try {
                    openInputStream = this.f53321a.getContentResolver().openInputStream(uri);
                } catch (Throwable th) {
                    if (inputStream3 != null) {
                        try {
                            inputStream3.close();
                        } catch (IOException e) {
                        }
                    }
                    throw th;
                }
            } catch (IOException e2) {
                InputStream inputStream4 = inputStream;
                StringBuilder sb = new StringBuilder();
                InputStream inputStream5 = inputStream;
                sb.append("Unable to read vcard from ");
                InputStream inputStream6 = inputStream;
                sb.append(uri);
                InputStream inputStream7 = inputStream;
                sb.append(" (");
                InputStream inputStream8 = inputStream;
                sb.append(e2);
                InputStream inputStream9 = inputStream;
                sb.append(')');
                inputStream3 = inputStream;
                sb.toString();
                if (inputStream == null) {
                    return;
                }
            }
        } catch (C22166b e3) {
            InputStream inputStream10 = inputStream2;
            StringBuilder sb2 = new StringBuilder();
            InputStream inputStream11 = inputStream2;
            sb2.append("Unable to read vcard from ");
            InputStream inputStream12 = inputStream2;
            sb2.append(uri);
            InputStream inputStream13 = inputStream2;
            sb2.append(" (");
            InputStream inputStream14 = inputStream2;
            sb2.append(e3);
            InputStream inputStream15 = inputStream2;
            sb2.append(')');
            inputStream3 = inputStream2;
            sb2.toString();
            if (inputStream2 == null) {
                return;
            }
            inputStream = inputStream2;
        }
        if (openInputStream != null) {
            inputStream3 = openInputStream;
            inputStream = openInputStream;
            inputStream2 = openInputStream;
            abstractC22153f.mo8507b(openInputStream);
            inputStream = openInputStream;
            try {
                inputStream.close();
            } catch (IOException e4) {
            }
        }
    }
}
