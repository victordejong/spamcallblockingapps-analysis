package com.pgl.p474a.p475a;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
/* renamed from: com.pgl.a.a.b */
/* loaded from: classes4-dex2jar.jar:com/pgl/a/a/b.class */
public abstract class AbstractC17050b {

    /* renamed from: f */
    HandlerThread f60562f;

    /* renamed from: g */
    Handler f60563g;

    /* renamed from: h */
    private Context f60564h;

    /* renamed from: i */
    private String f60565i;

    /* renamed from: j */
    private int f60566j;

    /* renamed from: k */
    private int f60567k;

    /* renamed from: l */
    private byte[] f60568l;

    /* renamed from: a */
    public String f60557a = "";

    /* renamed from: m */
    private int f60569m = -1;

    /* renamed from: n */
    private byte[] f60570n = null;

    /* renamed from: b */
    int f60558b = 10000;

    /* renamed from: c */
    int f60559c = 1;

    /* renamed from: d */
    int f60560d = 0;

    /* renamed from: e */
    boolean f60561e = false;

    /* renamed from: o */
    private boolean f60571o = false;

    /* renamed from: p */
    private HttpURLConnection f60572p = null;

    /* JADX WARN: Code restructure failed: missing block: B:5:0x003e, code lost:
        if (r5.length() <= 0) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractC17050b(android.content.Context r4, java.lang.String r5) {
        /*
            r3 = this;
            r0 = r3
            r0.<init>()
            r0 = r3
            java.lang.String r1 = ""
            r0.f60557a = r1
            r0 = r3
            r1 = -1
            r0.f60569m = r1
            r0 = r3
            r1 = 0
            r0.f60570n = r1
            r0 = r3
            r1 = 10000(0x2710, float:1.4013E-41)
            r0.f60558b = r1
            r0 = r3
            r1 = 1
            r0.f60559c = r1
            r0 = r3
            r1 = 0
            r0.f60560d = r1
            r0 = r3
            r1 = 0
            r0.f60561e = r1
            r0 = r3
            r1 = 0
            r0.f60571o = r1
            r0 = r3
            r1 = 0
            r0.f60572p = r1
            r0 = r5
            if (r0 == 0) goto L41
            r0 = r5
            r6 = r0
            r0 = r5
            int r0 = r0.length()
            if (r0 > 0) goto L44
        L41:
            java.lang.String r0 = ""
            r6 = r0
        L44:
            r0 = r3
            r1 = r4
            r0.f60564h = r1
            r0 = r3
            r1 = r6
            r0.f60565i = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.p474a.p475a.AbstractC17050b.<init>(android.content.Context, java.lang.String):void");
    }

    /* renamed from: a */
    private static byte[] m5955a(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr, 0, 1024);
            if (read > 0) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    /* renamed from: a */
    public final void m5956a(int i, byte[] bArr) {
        synchronized (this) {
            if (this.f60561e) {
                return;
            }
            this.f60559c = 2;
            this.f60566j = i;
            this.f60567k = 2;
            this.f60568l = bArr;
            this.f60561e = true;
            this.f60560d = 0;
            HandlerThread handlerThread = new HandlerThread("request");
            this.f60562f = handlerThread;
            handlerThread.start();
            Handler handler = new Handler(this.f60562f.getLooper(), new Handler.Callback() { // from class: com.pgl.a.a.b.1
                @Override // android.os.Handler.Callback
                public final boolean handleMessage(Message message) {
                    if (AbstractC17050b.this.f60560d >= AbstractC17050b.this.f60559c) {
                        AbstractC17050b.this.f60561e = false;
                        AbstractC17050b.this.f60560d = 0;
                        AbstractC17050b.this.f60562f.quit();
                        return false;
                    } else if (AbstractC17050b.this.m5957a()) {
                        AbstractC17050b.this.f60561e = false;
                        AbstractC17050b.this.f60560d = 0;
                        AbstractC17050b.this.f60562f.quit();
                        return true;
                    } else {
                        AbstractC17050b.this.f60563g.sendEmptyMessageDelayed(1, AbstractC17050b.this.f60558b * 1);
                        AbstractC17050b.this.f60560d++;
                        return false;
                    }
                }
            });
            this.f60563g = handler;
            handler.sendEmptyMessage(1);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x01df, code lost:
        if (r7 != null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x01e2, code lost:
        r7.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01f2, code lost:
        if (r7 == null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01f8, code lost:
        r7 = r4.f60572p;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01fe, code lost:
        if (r7 == null) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0201, code lost:
        r5 = true;
     */
    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final boolean m5957a() {
        /*
            Method dump skipped, instructions count: 595
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.p474a.p475a.AbstractC17050b.m5957a():boolean");
    }

    /* renamed from: b */
    public abstract boolean mo5891b(int i, byte[] bArr);
}
