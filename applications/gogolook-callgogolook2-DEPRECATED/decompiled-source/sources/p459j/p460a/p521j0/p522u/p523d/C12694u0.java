package p459j.p460a.p521j0.p522u.p523d;

import android.content.Context;
import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;
import p081h.p119d.p120a.C5776l;
import p081h.p119d.p120a.p124s.p125h.AbstractC5813c;
import p081h.p119d.p120a.p124s.p125h.C5822i;
import p081h.p119d.p120a.p124s.p131j.AbstractC5918l;
import p081h.p119d.p120a.p124s.p131j.C5904d;
import p081h.p119d.p120a.p124s.p131j.p133t.C5945g;
/* renamed from: j.a.j0.u.d.u0 */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/u0.class */
public class C12694u0 extends C5945g {

    /* renamed from: j.a.j0.u.d.u0$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/u0$a.class */
    public static class C12695a extends C5822i {
        public C12695a(Context context, Uri uri) {
            super(context, uri);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Code restructure failed: missing block: B:10:0x0040, code lost:
            if (r8 != null) goto L_0x0048;
         */
        @Override // p081h.p119d.p120a.p124s.p125h.C5822i, p081h.p119d.p120a.p124s.p125h.AbstractC5820g
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.io.InputStream mo5520a(android.net.Uri r8, android.content.ContentResolver r9) throws java.io.FileNotFoundException {
            /*
                r7 = this;
                r0 = r9
                r1 = r8
                java.lang.String r2 = "display_photo"
                android.net.Uri r1 = android.net.Uri.withAppendedPath(r1, r2)     // Catch: IOException -> 0x0012
                java.lang.String r2 = "r"
                android.content.res.AssetFileDescriptor r0 = r0.openAssetFileDescriptor(r1, r2)     // Catch: IOException -> 0x0012
                java.io.FileInputStream r0 = r0.createInputStream()     // Catch: IOException -> 0x0012
                r10 = r0
                r0 = r10
                return r0
            L_0x0012:
                r10 = move-exception
                r0 = r9
                r1 = r8
                java.lang.String r2 = "photo"
                android.net.Uri r1 = android.net.Uri.withAppendedPath(r1, r2)
                r2 = 1
                java.lang.String[] r2 = new java.lang.String[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "data15"
                r3[r4] = r5
                r3 = 0
                r4 = 0
                r5 = 0
                android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)
                r9 = r0
                r0 = r9
                if (r0 == 0) goto L_0x005a
                r0 = r9
                boolean r0 = r0.moveToFirst()     // Catch: all -> 0x0051
                if (r0 == 0) goto L_0x0046
                r0 = r9
                r1 = 0
                byte[] r0 = r0.getBlob(r1)     // Catch: all -> 0x0051
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L_0x0046
                goto L_0x0048
            L_0x0046:
                r0 = 0
                r8 = r0
            L_0x0048:
                r0 = r9
                r0.close()
                goto L_0x005c
            L_0x0051:
                r8 = move-exception
                r0 = r9
                r0.close()
                r0 = r8
                throw r0
            L_0x005a:
                r0 = 0
                r8 = r0
            L_0x005c:
                r0 = r8
                if (r0 == 0) goto L_0x0069
                java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream
                r1 = r0
                r2 = r8
                r1.<init>(r2)
                return r0
            L_0x0069:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p521j0.p522u.p523d.C12694u0.C12695a.mo5520a(android.net.Uri, android.content.ContentResolver):java.io.InputStream");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p081h.p119d.p120a.p124s.p125h.C5822i
        /* renamed from: a */
        public void mo5518a(InputStream inputStream) throws IOException {
            inputStream.close();
        }
    }

    public C12694u0(Context context) {
        this(context, C5776l.m24473b(C5904d.class, context));
    }

    public C12694u0(Context context, AbstractC5918l<C5904d, InputStream> lVar) {
        super(context, lVar);
    }

    @Override // p081h.p119d.p120a.p124s.p131j.p133t.C5945g, p081h.p119d.p120a.p124s.p131j.AbstractC5923q
    /* renamed from: a */
    public AbstractC5813c<InputStream> mo5522a(Context context, Uri uri) {
        return new C12695a(context, uri);
    }

    @Override // p081h.p119d.p120a.p124s.p131j.p133t.C5945g, p081h.p119d.p120a.p124s.p131j.AbstractC5923q
    /* renamed from: a */
    public AbstractC5813c<InputStream> mo5521a(Context context, String str) {
        return super.mo5521a(context, str);
    }
}
