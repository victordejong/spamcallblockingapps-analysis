package p131c.p431l.p432a.p442b.p445c;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import p131c.p431l.p432a.p442b.p448f.p450b.C6766a;
/* renamed from: c.l.a.b.c.d */
/* loaded from: classes2-dex2jar.jar:c/l/a/b/c/d.class */
public class C6742d {

    /* renamed from: a */
    public HashMap<String, SoftReference<Bitmap>> f20769a = new HashMap<>();

    /* renamed from: b */
    public Context f20770b;

    /* renamed from: c.l.a.b.c.d$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/d$a.class */
    public class HandlerC6743a extends Handler {

        /* renamed from: a */
        public final /* synthetic */ AbstractC6745c f20771a;

        /* renamed from: b */
        public final /* synthetic */ String f20772b;

        public HandlerC6743a(C6742d dVar, AbstractC6745c cVar, String str) {
            this.f20771a = cVar;
            this.f20772b = str;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            this.f20771a.mo19843a((Bitmap) message.obj, this.f20772b);
        }
    }

    /* renamed from: c.l.a.b.c.d$b */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/d$b.class */
    public class C6744b extends Thread {

        /* renamed from: a */
        public final /* synthetic */ String f20773a;

        /* renamed from: b */
        public final /* synthetic */ Handler f20774b;

        public C6744b(String str, Handler handler) {
            this.f20773a = str;
            this.f20774b = handler;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Bitmap a = C6742d.this.m19909a(this.f20773a);
            C6742d.this.f20769a.put(this.f20773a, new SoftReference(a));
            this.f20774b.sendMessage(this.f20774b.obtainMessage(0, a));
        }
    }

    /* renamed from: c.l.a.b.c.d$c */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/d$c.class */
    public interface AbstractC6745c {
        /* renamed from: a */
        void mo19843a(Bitmap bitmap, String str);
    }

    public C6742d(Context context) {
        this.f20770b = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0096, code lost:
        if (r12 != null) goto L_0x0099;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap m19909a(java.lang.String r8) {
        /*
            r7 = this;
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x00a5, Exception -> 0x00b7
            r12 = r0
            r0 = r12
            r0.<init>()     // Catch: all -> 0x00a5, Exception -> 0x00b7
            r0 = r12
            java.lang.String r1 = "content://com.android.contacts/data/phones/filter/"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x00a5, Exception -> 0x00b7
            r0 = r12
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x00a5, Exception -> 0x00b7
            r0 = r12
            java.lang.String r0 = r0.toString()     // Catch: all -> 0x00a5, Exception -> 0x00b7
            android.net.Uri r0 = android.net.Uri.parse(r0)     // Catch: all -> 0x00a5, Exception -> 0x00b7
            r8 = r0
            r0 = r7
            android.content.Context r0 = r0.f20770b     // Catch: all -> 0x00a5, Exception -> 0x00b7
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: all -> 0x00a5, Exception -> 0x00b7
            r1 = r8
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: all -> 0x00a5, Exception -> 0x00b7
            r12 = r0
            r0 = r11
            r8 = r0
            r0 = r12
            if (r0 == 0) goto L_0x0092
            r0 = r11
            r8 = r0
            r0 = r12
            int r0 = r0.getCount()     // Catch: all -> 0x008a, Exception -> 0x008e
            if (r0 <= 0) goto L_0x0092
            r0 = r12
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x008a, Exception -> 0x008e
            r0 = r12
            r1 = r12
            java.lang.String r2 = "contact_id"
            int r1 = r1.getColumnIndex(r2)     // Catch: all -> 0x008a, Exception -> 0x008e
            long r0 = r0.getLong(r1)     // Catch: all -> 0x008a, Exception -> 0x008e
            r13 = r0
            android.net.Uri r0 = android.provider.ContactsContract.Contacts.CONTENT_URI     // Catch: all -> 0x008a, Exception -> 0x008e
            r1 = r13
            java.lang.Long r1 = java.lang.Long.valueOf(r1)     // Catch: all -> 0x008a, Exception -> 0x008e
            long r1 = r1.longValue()     // Catch: all -> 0x008a, Exception -> 0x008e
            android.net.Uri r0 = android.content.ContentUris.withAppendedId(r0, r1)     // Catch: all -> 0x008a, Exception -> 0x008e
            r8 = r0
            r0 = r7
            android.content.Context r0 = r0.f20770b     // Catch: all -> 0x008a, Exception -> 0x008e
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: all -> 0x008a, Exception -> 0x008e
            r1 = r8
            java.io.InputStream r0 = android.provider.ContactsContract.Contacts.openContactPhotoInputStream(r0, r1)     // Catch: all -> 0x008a, Exception -> 0x008e
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeStream(r0)     // Catch: all -> 0x008a, Exception -> 0x008e
            r8 = r0
            goto L_0x0092
        L_0x008a:
            r8 = move-exception
            goto L_0x00a9
        L_0x008e:
            r8 = move-exception
            goto L_0x00bb
        L_0x0092:
            r0 = r8
            r10 = r0
            r0 = r12
            if (r0 == 0) goto L_0x00c5
        L_0x0099:
            r0 = r12
            r0.close()
            r0 = r8
            r10 = r0
            goto L_0x00c5
        L_0x00a5:
            r8 = move-exception
            r0 = 0
            r12 = r0
        L_0x00a9:
            r0 = r12
            if (r0 == 0) goto L_0x00b5
            r0 = r12
            r0.close()
        L_0x00b5:
            r0 = r8
            throw r0
        L_0x00b7:
            r8 = move-exception
            r0 = 0
            r12 = r0
        L_0x00bb:
            r0 = r12
            if (r0 == 0) goto L_0x00c5
            r0 = r9
            r8 = r0
            goto L_0x0099
        L_0x00c5:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p431l.p432a.p442b.p445c.C6742d.m19909a(java.lang.String):android.graphics.Bitmap");
    }

    /* renamed from: a */
    public Bitmap m19908a(String str, AbstractC6745c cVar) {
        Bitmap bitmap;
        if (this.f20769a.containsKey(str) && (bitmap = this.f20769a.get(str).get()) != null) {
            return bitmap;
        }
        HandlerC6743a aVar = new HandlerC6743a(this, cVar, str);
        if (C6766a.f20867d) {
            return null;
        }
        new C6744b(str, aVar).start();
        return null;
    }
}
