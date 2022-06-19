package com.bytedance.sdk.openadsdk.video.p227a.p230c;

import android.content.Context;
import com.bytedance.sdk.openadsdk.p184l.AbstractRunnableC5055g;
import com.bytedance.sdk.openadsdk.p184l.C5052e;
import com.bytedance.sdk.openadsdk.video.p231b.C5500a;
import com.bytedance.sdk.openadsdk.video.p233d.C5503a;
import com.bytedance.sdk.openadsdk.video.p233d.C5505c;
import com.bytedance.sdk.p127a.p129b.AbstractC4100ab;
import com.bytedance.sdk.p127a.p129b.C4098aa;
import com.bytedance.sdk.p127a.p129b.C4140v;
import com.bytedance.sdk.p127a.p129b.C4146y;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
/* renamed from: com.bytedance.sdk.openadsdk.video.a.c.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/a/c/a.class */
public class C5497a {

    /* renamed from: a */
    private Context f19057a;

    /* renamed from: b */
    private int f19058b;

    /* renamed from: c */
    private C5500a f19059c;

    /* renamed from: e */
    private File f19061e;

    /* renamed from: d */
    private volatile boolean f19060d = false;

    /* renamed from: f */
    private AbstractC5499a f19062f = null;

    /* renamed from: com.bytedance.sdk.openadsdk.video.a.c.a$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/a/c/a$a.class */
    public interface AbstractC5499a {
        /* renamed from: a */
        void m31993a(int i, C5500a c5500a);

        /* renamed from: a */
        void m31992a(int i, String str);
    }

    public C5497a(Context context, C5500a c5500a, int i) {
        this.f19061e = null;
        this.f19057a = context;
        this.f19058b = i;
        this.f19059c = c5500a;
        this.f19061e = C5505c.m31962a(context, c5500a.m31988b());
    }

    /* renamed from: a */
    public boolean m32000a() {
        return this.f19061e.exists() && this.f19061e.length() != 0;
    }

    /* renamed from: b */
    public void m31998b() {
        if (!m32000a()) {
            C5052e.m33162a(new AbstractRunnableC5055g("executePreLoadIfNotExist") { // from class: com.bytedance.sdk.openadsdk.video.a.c.a.1
                /* JADX WARN: Finally extract failed */
                /* JADX WARN: Type inference failed for: r0v117, types: [long] */
                /* JADX WARN: Type inference failed for: r0v155, types: [long] */
                @Override // java.lang.Runnable
                public void run() {
                    C4098aa c4098aa;
                    InputStream inputStream;
                    Throwable th;
                    AbstractC4100ab abstractC4100ab;
                    char c;
                    int i;
                    InputStream inputStream2 = null;
                    try {
                        c4098aa = new C4140v().m36396a(new C4146y.C4147a().m36327a("RANGE", "bytes=0-" + C5497a.this.f19058b).m36329a(C5497a.this.f19059c.m31991a()).m36333a().m36319d()).mo36352a();
                        try {
                            if (!c4098aa.m36609d()) {
                                if (C5497a.this.f19062f != null) {
                                    C5497a.this.f19062f.m31992a(c4098aa.m36610c(), c4098aa.m36608e());
                                }
                                if (c4098aa != null) {
                                    try {
                                        c4098aa.close();
                                    } catch (IOException e) {
                                        e.printStackTrace();
                                        return;
                                    }
                                }
                                C5503a.m31968b("VideoPreload", "Pre finally ", C5497a.this.f19059c.m31991a(), " Preload size=", Integer.valueOf(C5497a.this.f19058b));
                                return;
                            }
                            abstractC4100ab = c4098aa.m36605h();
                            try {
                                boolean m36609d = c4098aa.m36609d();
                                AbstractC4100ab m36605h = c4098aa.m36605h();
                                if (!m36609d || m36605h == null) {
                                    c = 0;
                                } else {
                                    c = m36605h.mo36577b();
                                    inputStream2 = m36605h.m36581c();
                                }
                                if (inputStream2 == null) {
                                    if (C5497a.this.f19062f != null) {
                                        InputStream inputStream3 = inputStream2;
                                        C5497a.this.f19062f.m31992a(c4098aa.m36610c(), c4098aa.m36608e());
                                    }
                                    if (inputStream2 != null) {
                                        try {
                                            inputStream2.close();
                                        } catch (IOException e2) {
                                            e2.printStackTrace();
                                            return;
                                        }
                                    }
                                    if (m36605h != null) {
                                        m36605h.close();
                                    }
                                    if (c4098aa != null) {
                                        c4098aa.close();
                                    }
                                    C5503a.m31968b("VideoPreload", "Pre finally ", C5497a.this.f19059c.m31991a(), " Preload size=", Integer.valueOf(C5497a.this.f19058b));
                                    return;
                                }
                                InputStream inputStream4 = inputStream2;
                                RandomAccessFile randomAccessFile = new RandomAccessFile(C5497a.this.f19061e, "rw");
                                InputStream inputStream5 = inputStream2;
                                byte[] bArr = new byte[16384];
                                char c2 = 0;
                                int i2 = 0;
                                int i3 = 0;
                                while (true) {
                                    int i4 = i3;
                                    int read = inputStream2.read(bArr, i2, 16384 - i2);
                                    if (read == -1) {
                                        break;
                                    } else if (C5497a.this.f19060d) {
                                        InputStream inputStream6 = inputStream2;
                                        if (C5497a.this.f19062f != null) {
                                            InputStream inputStream7 = inputStream2;
                                            C5497a.this.f19062f.m31993a(c4098aa.m36610c(), C5497a.this.f19059c);
                                        }
                                    } else {
                                        int i5 = i2 + read;
                                        c2 += read;
                                        if (c2 % 16384 != 0) {
                                            i2 = i5;
                                            i = i4;
                                            if (c2 != c) {
                                                i3 = i;
                                            }
                                        }
                                        C5505c.m31960a(randomAccessFile, bArr, Long.valueOf(i4).intValue(), i5, C5497a.this.f19059c.m31988b());
                                        i = i4 + i5;
                                        i2 = 0;
                                        i3 = i;
                                    }
                                }
                                if (C5497a.this.f19062f != null) {
                                    InputStream inputStream8 = inputStream2;
                                    C5497a.this.f19062f.m31993a(c4098aa.m36610c(), C5497a.this.f19059c);
                                }
                                if (inputStream2 != null) {
                                    try {
                                        inputStream2.close();
                                    } catch (IOException e3) {
                                        e3.printStackTrace();
                                        return;
                                    }
                                }
                                if (m36605h != null) {
                                    m36605h.close();
                                }
                                if (c4098aa != null) {
                                    c4098aa.close();
                                }
                                C5503a.m31968b("VideoPreload", "Pre finally ", C5497a.this.f19059c.m31991a(), " Preload size=", Integer.valueOf(C5497a.this.f19058b));
                            } catch (Throwable th2) {
                                th = th2;
                                inputStream = null;
                                try {
                                    th.printStackTrace();
                                    if (C5497a.this.f19062f != null) {
                                        C5497a.this.f19062f.m31992a(c4098aa.m36610c(), th.getMessage());
                                    }
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (IOException e4) {
                                            e4.printStackTrace();
                                            return;
                                        }
                                    }
                                    if (abstractC4100ab != null) {
                                        abstractC4100ab.close();
                                    }
                                    if (c4098aa != null) {
                                        c4098aa.close();
                                    }
                                    C5503a.m31968b("VideoPreload", "Pre finally ", C5497a.this.f19059c.m31991a(), " Preload size=", Integer.valueOf(C5497a.this.f19058b));
                                } catch (Throwable th3) {
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (IOException e5) {
                                            e5.printStackTrace();
                                            throw th3;
                                        }
                                    }
                                    if (abstractC4100ab != null) {
                                        abstractC4100ab.close();
                                    }
                                    if (c4098aa != null) {
                                        c4098aa.close();
                                    }
                                    C5503a.m31968b("VideoPreload", "Pre finally ", C5497a.this.f19059c.m31991a(), " Preload size=", Integer.valueOf(C5497a.this.f19058b));
                                    throw th3;
                                }
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            abstractC4100ab = null;
                            inputStream = null;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        inputStream = null;
                        abstractC4100ab = null;
                        c4098aa = null;
                    }
                }
            });
            return;
        }
        C5503a.m31968b("VideoPreload", "Cache file is exist");
        AbstractC5499a abstractC5499a = this.f19062f;
        if (abstractC5499a == null) {
            return;
        }
        abstractC5499a.m31993a(200, this.f19059c);
    }
}
