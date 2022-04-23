package com.bytedance.sdk.openadsdk.video.a.c;

import android.content.Context;
import com.bytedance.sdk.a.b.aa;
import com.bytedance.sdk.a.b.ab;
import com.bytedance.sdk.a.b.v;
import com.bytedance.sdk.a.b.y;
import com.bytedance.sdk.openadsdk.l.e;
import com.bytedance.sdk.openadsdk.l.g;
import com.bytedance.sdk.openadsdk.video.d.c;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/a/c/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private Context f10339a;

    /* renamed from: b  reason: collision with root package name */
    private int f10340b;

    /* renamed from: c  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.video.b.a f10341c;
    private File e;

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f10342d = false;
    private AbstractC0188a f = null;

    /* renamed from: com.bytedance.sdk.openadsdk.video.a.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/a/c/a$a.class */
    public interface AbstractC0188a {
        void a(int i, com.bytedance.sdk.openadsdk.video.b.a aVar);

        void a(int i, String str);
    }

    public a(Context context, com.bytedance.sdk.openadsdk.video.b.a aVar, int i) {
        this.e = null;
        this.f10339a = context;
        this.f10340b = i;
        this.f10341c = aVar;
        this.e = c.a(context, aVar.b());
    }

    public boolean a() {
        return this.e.exists() && this.e.length() != 0;
    }

    public void b() {
        if (a()) {
            com.bytedance.sdk.openadsdk.video.d.a.b("VideoPreload", "Cache file is exist");
            AbstractC0188a aVar = this.f;
            if (aVar != null) {
                aVar.a(200, this.f10341c);
                return;
            }
            return;
        }
        e.a(new g("executePreLoadIfNotExist") { // from class: com.bytedance.sdk.openadsdk.video.a.c.a.1
            @Override // java.lang.Runnable
            public void run() {
                Throwable th;
                ab abVar;
                long j;
                InputStream inputStream = null;
                aa aaVar = null;
                InputStream inputStream2 = null;
                try {
                    aaVar = new v().a(new y.a().a("RANGE", "bytes=0-" + a.this.f10340b).a(a.this.f10341c.a()).a().d()).a();
                    try {
                        if (!aaVar.d()) {
                            if (a.this.f != null) {
                                a.this.f.a(aaVar.c(), aaVar.e());
                            }
                            if (aaVar != null) {
                                try {
                                    aaVar.close();
                                } catch (IOException e) {
                                    e.printStackTrace();
                                    return;
                                }
                            }
                            com.bytedance.sdk.openadsdk.video.d.a.b("VideoPreload", "Pre finally ", a.this.f10341c.a(), " Preload size=", Integer.valueOf(a.this.f10340b));
                            return;
                        }
                        abVar = aaVar.h();
                        try {
                            boolean d2 = aaVar.d();
                            ab h = aaVar.h();
                            if (!d2 || h == null) {
                                j = 0;
                            } else {
                                j = h.b();
                                inputStream2 = h.c();
                            }
                            if (inputStream2 == null) {
                                if (a.this.f != null) {
                                    a.this.f.a(aaVar.c(), aaVar.e());
                                }
                                if (inputStream2 != null) {
                                    try {
                                        inputStream2.close();
                                    } catch (IOException e2) {
                                        e2.printStackTrace();
                                        return;
                                    }
                                }
                                if (h != null) {
                                    h.close();
                                }
                                if (aaVar != null) {
                                    aaVar.close();
                                }
                                com.bytedance.sdk.openadsdk.video.d.a.b("VideoPreload", "Pre finally ", a.this.f10341c.a(), " Preload size=", Integer.valueOf(a.this.f10340b));
                                return;
                            }
                            RandomAccessFile randomAccessFile = new RandomAccessFile(a.this.e, "rw");
                            byte[] bArr = new byte[16384];
                            long j2 = 0;
                            int i = 0;
                            int i2 = 0;
                            while (true) {
                                int read = inputStream2.read(bArr, i, 16384 - i);
                                if (read == -1) {
                                    break;
                                } else if (!a.this.f10342d) {
                                    int i3 = i + read;
                                    j2 += read;
                                    if (j2 % 16384 != 0) {
                                        i = i3;
                                        i2 = i2;
                                        if (j2 != j) {
                                        }
                                    }
                                    c.a(randomAccessFile, bArr, Long.valueOf(i2).intValue(), i3, a.this.f10341c.b());
                                    i2 += i3;
                                    i = 0;
                                } else if (a.this.f != null) {
                                    a.this.f.a(aaVar.c(), a.this.f10341c);
                                }
                            }
                            if (a.this.f != null) {
                                a.this.f.a(aaVar.c(), a.this.f10341c);
                            }
                            if (inputStream2 != null) {
                                try {
                                    inputStream2.close();
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                    return;
                                }
                            }
                            if (h != null) {
                                h.close();
                            }
                            if (aaVar != null) {
                                aaVar.close();
                            }
                            com.bytedance.sdk.openadsdk.video.d.a.b("VideoPreload", "Pre finally ", a.this.f10341c.a(), " Preload size=", Integer.valueOf(a.this.f10340b));
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                th.printStackTrace();
                                if (a.this.f != null) {
                                    a.this.f.a(aaVar.c(), th.getMessage());
                                }
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (IOException e4) {
                                        e4.printStackTrace();
                                        return;
                                    }
                                }
                                if (abVar != null) {
                                    abVar.close();
                                }
                                if (aaVar != null) {
                                    aaVar.close();
                                }
                                com.bytedance.sdk.openadsdk.video.d.a.b("VideoPreload", "Pre finally ", a.this.f10341c.a(), " Preload size=", Integer.valueOf(a.this.f10340b));
                            } catch (Throwable th3) {
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (IOException e5) {
                                        e5.printStackTrace();
                                        throw th3;
                                    }
                                }
                                if (abVar != null) {
                                    abVar.close();
                                }
                                if (aaVar != null) {
                                    aaVar.close();
                                }
                                com.bytedance.sdk.openadsdk.video.d.a.b("VideoPreload", "Pre finally ", a.this.f10341c.a(), " Preload size=", Integer.valueOf(a.this.f10340b));
                                throw th3;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        abVar = null;
                        inputStream = null;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    inputStream = null;
                    abVar = null;
                }
            }
        });
    }
}
