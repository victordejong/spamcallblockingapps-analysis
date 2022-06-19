package com.flurry.sdk;

import android.content.Context;
import android.os.Build;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.zip.CRC32;
/* renamed from: com.flurry.sdk.ja */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/ja.class */
public class C0430ja {

    /* renamed from: a */
    public static final String f3313a = "com.flurry.sdk.ja";

    /* renamed from: c */
    private static C0430ja f3314c;

    /* renamed from: b */
    public String f3315b;

    /* renamed from: d */
    private C0469kn<List<C0431jb>> f3316d;

    /* renamed from: e */
    private List<C0431jb> f3317e;

    /* renamed from: f */
    private boolean f3318f;

    private C0430ja() {
    }

    /* renamed from: a */
    public static C0430ja m4717a() {
        C0430ja c0430ja;
        synchronized (C0430ja.class) {
            try {
                if (f3314c == null) {
                    C0430ja c0430ja2 = new C0430ja();
                    f3314c = c0430ja2;
                    Context context = C0462kg.m4652a().f3460a;
                    c0430ja2.f3316d = new C0469kn<>(context.getFileStreamPath(".yflurrypulselogging." + Long.toString(C0505md.m4473i(C0462kg.m4652a().f3463d), 16)), ".yflurrypulselogging.", 1, new 1(c0430ja2));
                    c0430ja2.f3318f = ((Boolean) lx.a().m4515a("UseHttps")).booleanValue();
                    String str = f3313a;
                    C0478ku.m4596a(4, str, "initSettings, UseHttps = " + c0430ja2.f3318f);
                    List<C0431jb> m4623a = c0430ja2.f3316d.m4623a();
                    c0430ja2.f3317e = m4623a;
                    if (m4623a == null) {
                        c0430ja2.f3317e = new ArrayList();
                    }
                }
                c0430ja = f3314c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0430ja;
    }

    /* renamed from: a */
    private void m4714a(byte[] bArr) {
        synchronized (this) {
            if (!C0454jz.m4671a().f3429b) {
                C0478ku.m4596a(5, f3313a, "Reports were not sent! No Internet connection!");
                return;
            }
            if (bArr != null && bArr.length != 0) {
                String str = this.f3315b;
                if (str == null) {
                    str = "https://data.flurry.com/pcr.do";
                }
                String str2 = f3313a;
                C0478ku.m4596a(4, str2, "PulseLoggingManager: start upload data " + Arrays.toString(bArr) + " to " + str);
                la laVar = new la();
                ((lc) laVar).g = str;
                ((mg) laVar).u = 100000;
                ((lc) laVar).h = lc$a.kPost;
                ((lc) laVar).k = true;
                laVar.a("Content-Type", "application/octet-stream");
                laVar.c = new lk();
                laVar.b = bArr;
                laVar.a = new 2(this);
                ke.a().m4604a(this, laVar);
                return;
            }
            C0478ku.m4596a(3, f3313a, "No report need be sent");
        }
    }

    /* renamed from: d */
    private byte[] m4710d() {
        Throwable th;
        DataOutputStream dataOutputStream;
        IOException e;
        try {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                try {
                    List<C0431jb> list = this.f3317e;
                    if (list != null && !list.isEmpty()) {
                        dataOutputStream.writeShort(1);
                        dataOutputStream.writeShort(1);
                        dataOutputStream.writeLong(System.currentTimeMillis());
                        dataOutputStream.writeUTF(C0462kg.m4652a().f3463d);
                        dataOutputStream.writeUTF(kc.a().g());
                        dataOutputStream.writeShort(C0463kh.m4645b());
                        dataOutputStream.writeShort(3);
                        kc.a();
                        dataOutputStream.writeUTF(kc.c());
                        dataOutputStream.writeBoolean(C0449jt.m4684a().m4679c());
                        ArrayList<C0411ig> arrayList = new ArrayList();
                        for (Map.Entry entry : Collections.unmodifiableMap(C0449jt.m4684a().f3409a).entrySet()) {
                            C0411ig c0411ig = new C0411ig();
                            c0411ig.f3226a = ((EnumC0457kb) entry.getKey()).f3441c;
                            if (((EnumC0457kb) entry.getKey()).f3442d) {
                                c0411ig.f3227b = new String((byte[]) entry.getValue());
                            } else {
                                c0411ig.f3227b = C0505md.m4480b((byte[]) entry.getValue());
                            }
                            arrayList.add(c0411ig);
                        }
                        dataOutputStream.writeShort(arrayList.size());
                        for (C0411ig c0411ig2 : arrayList) {
                            dataOutputStream.writeShort(c0411ig2.f3226a);
                            byte[] bytes = c0411ig2.f3227b.getBytes();
                            dataOutputStream.writeShort(bytes.length);
                            dataOutputStream.write(bytes);
                        }
                        dataOutputStream.writeShort(6);
                        dataOutputStream.writeShort(C0421it.f3254b - 1);
                        dataOutputStream.writeUTF(Build.MODEL);
                        dataOutputStream.writeShort(C0421it.f3255c - 1);
                        dataOutputStream.writeUTF(Build.BOARD);
                        dataOutputStream.writeShort(C0421it.f3256d - 1);
                        dataOutputStream.writeUTF(Build.ID);
                        dataOutputStream.writeShort(C0421it.f3257e - 1);
                        dataOutputStream.writeUTF(Build.DEVICE);
                        dataOutputStream.writeShort(C0421it.f3258f - 1);
                        dataOutputStream.writeUTF(Build.PRODUCT);
                        dataOutputStream.writeShort(C0421it.f3259g - 1);
                        dataOutputStream.writeUTF(Build.VERSION.RELEASE);
                        dataOutputStream.writeShort(this.f3317e.size());
                        for (C0431jb c0431jb : this.f3317e) {
                            dataOutputStream.write(c0431jb.f3319a);
                        }
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        CRC32 crc32 = new CRC32();
                        crc32.update(byteArray);
                        dataOutputStream.writeInt((int) crc32.getValue());
                        byte[] byteArray2 = byteArrayOutputStream.toByteArray();
                        C0505md.m4487a(dataOutputStream);
                        return byteArray2;
                    }
                    byte[] byteArray3 = byteArrayOutputStream.toByteArray();
                    C0505md.m4487a(dataOutputStream);
                    return byteArray3;
                } catch (IOException e2) {
                    e = e2;
                    C0478ku.m4595a(6, f3313a, "Error when generating report", e);
                    DataOutputStream dataOutputStream2 = dataOutputStream;
                    throw e;
                }
            } catch (Throwable th2) {
                th = th2;
                C0505md.m4487a((Closeable) null);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            dataOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            C0505md.m4487a((Closeable) null);
            throw th;
        }
    }

    /* renamed from: a */
    public final void m4716a(C0429iz c0429iz) {
        synchronized (this) {
            try {
                this.f3317e.add(new C0431jb(c0429iz.m4725d()));
                C0478ku.m4596a(4, f3313a, "Saving persistent Pulse logging data.");
                this.f3316d.m4622a(this.f3317e);
            } catch (IOException e) {
                C0478ku.m4596a(6, f3313a, "Error when generating pulse log report in addReport part");
            }
        }
    }

    /* renamed from: b */
    public final void m4713b() {
        synchronized (this) {
            try {
                m4714a(m4710d());
            } catch (IOException e) {
                C0478ku.m4596a(6, f3313a, "Report not send due to exception in generate data");
            }
        }
    }
}
