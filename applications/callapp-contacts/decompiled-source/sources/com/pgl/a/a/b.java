package com.pgl.a.a;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
/* loaded from: classes4-dex2jar.jar:com/pgl/a/a/b.class */
public abstract class b {
    HandlerThread f;
    Handler g;
    private Context h;
    private String i;
    private int j;
    private int k;
    private byte[] l;

    /* renamed from: a  reason: collision with root package name */
    public String f34935a = "";
    private int m = -1;
    private byte[] n = null;

    /* renamed from: b  reason: collision with root package name */
    int f34936b = 10000;

    /* renamed from: c  reason: collision with root package name */
    int f34937c = 1;

    /* renamed from: d  reason: collision with root package name */
    int f34938d = 0;
    boolean e = false;
    private boolean o = false;
    private HttpURLConnection p = null;

    /* JADX WARN: Code restructure failed: missing block: B:5:0x003e, code lost:
        if (r5.length() <= 0) goto L_0x0041;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public b(android.content.Context r4, java.lang.String r5) {
        /*
            r3 = this;
            r0 = r3
            r0.<init>()
            r0 = r3
            java.lang.String r1 = ""
            r0.f34935a = r1
            r0 = r3
            r1 = -1
            r0.m = r1
            r0 = r3
            r1 = 0
            r0.n = r1
            r0 = r3
            r1 = 10000(0x2710, float:1.4013E-41)
            r0.f34936b = r1
            r0 = r3
            r1 = 1
            r0.f34937c = r1
            r0 = r3
            r1 = 0
            r0.f34938d = r1
            r0 = r3
            r1 = 0
            r0.e = r1
            r0 = r3
            r1 = 0
            r0.o = r1
            r0 = r3
            r1 = 0
            r0.p = r1
            r0 = r5
            if (r0 == 0) goto L_0x0041
            r0 = r5
            r6 = r0
            r0 = r5
            int r0 = r0.length()
            if (r0 > 0) goto L_0x0044
        L_0x0041:
            java.lang.String r0 = ""
            r6 = r0
        L_0x0044:
            r0 = r3
            r1 = r4
            r0.h = r1
            r0 = r3
            r1 = r6
            r0.i = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.a.a.b.<init>(android.content.Context, java.lang.String):void");
    }

    private static byte[] a(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr, 0, 1024);
            if (read <= 0) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    public final void a(int i, byte[] bArr) {
        synchronized (this) {
            if (!this.e) {
                this.f34937c = 2;
                this.j = i;
                this.k = 2;
                this.l = bArr;
                this.e = true;
                this.f34938d = 0;
                HandlerThread handlerThread = new HandlerThread("request");
                this.f = handlerThread;
                handlerThread.start();
                Handler handler = new Handler(this.f.getLooper(), new Handler.Callback() { // from class: com.pgl.a.a.b.1
                    @Override // android.os.Handler.Callback
                    public final boolean handleMessage(Message message) {
                        if (b.this.f34938d >= b.this.f34937c) {
                            b.this.e = false;
                            b.this.f34938d = 0;
                            b.this.f.quit();
                            return false;
                        } else if (b.this.a()) {
                            b.this.e = false;
                            b.this.f34938d = 0;
                            b.this.f.quit();
                            return true;
                        } else {
                            b.this.g.sendEmptyMessageDelayed(1, b.this.f34936b * 1);
                            b.this.f34938d++;
                            return false;
                        }
                    }
                });
                this.g = handler;
                handler.sendEmptyMessage(1);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x01df, code lost:
        if (r7 != null) goto L_0x01e2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x01e2, code lost:
        r7.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01f2, code lost:
        if (r7 == null) goto L_0x01f8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01f8, code lost:
        r7 = r4.p;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01fe, code lost:
        if (r7 == null) goto L_0x0226;
     */
    /* JADX WARN: Finally extract failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final boolean a() {
        /*
            Method dump skipped, instructions count: 595
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.a.a.b.a():boolean");
    }

    public abstract boolean b(int i, byte[] bArr);
}
