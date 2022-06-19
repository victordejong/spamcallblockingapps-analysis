package com.flurry.sdk;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.flurry.sdk.iz */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/iz.class */
public final class C0429iz {

    /* renamed from: e */
    private static final String f3300e = C0430ja.class.getName();

    /* renamed from: a */
    public long f3301a;

    /* renamed from: b */
    public int f3302b;

    /* renamed from: c */
    public String f3303c;

    /* renamed from: d */
    public Map<Long, iv> f3304d;

    /* renamed from: f */
    private long f3305f = System.currentTimeMillis();

    /* renamed from: g */
    private long f3306g;

    /* renamed from: h */
    private EnumC0433jd f3307h;

    /* renamed from: i */
    private boolean f3308i;

    /* renamed from: j */
    private int f3309j;

    /* renamed from: k */
    private AtomicInteger f3310k;

    public C0429iz(String str, boolean z, long j, long j2, EnumC0433jd enumC0433jd, Map<Long, iv> map) {
        this.f3303c = str;
        this.f3308i = z;
        this.f3301a = j;
        this.f3306g = j2;
        this.f3307h = enumC0433jd;
        this.f3304d = map;
        if (map != null) {
            for (Long l : map.keySet()) {
                map.get(l).g = this;
            }
            this.f3309j = map.size();
        } else {
            this.f3309j = 0;
        }
        this.f3310k = new AtomicInteger(0);
    }

    /* renamed from: a */
    public final List<iv> m4736a() {
        return this.f3304d != null ? new ArrayList(this.f3304d.values()) : Collections.emptyList();
    }

    /* renamed from: b */
    public final boolean m4730b() {
        boolean z;
        synchronized (this) {
            z = this.f3310k.intValue() >= this.f3309j;
        }
        return z;
    }

    /* renamed from: c */
    public final void m4727c() {
        synchronized (this) {
            this.f3310k.incrementAndGet();
        }
    }

    /* renamed from: d */
    public final byte[] m4725d() {
        Throwable th;
        DataOutputStream dataOutputStream;
        IOException e;
        String str;
        try {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                try {
                    dataOutputStream.writeShort(this.f3307h.f3333e);
                    dataOutputStream.writeLong(this.f3301a);
                    dataOutputStream.writeLong(this.f3306g);
                    dataOutputStream.writeBoolean(this.f3308i);
                    if (this.f3308i) {
                        dataOutputStream.writeShort(this.f3302b);
                        dataOutputStream.writeUTF(this.f3303c);
                    }
                    dataOutputStream.writeShort(this.f3304d.size());
                    Map<Long, iv> map = this.f3304d;
                    if (map != null) {
                        for (Map.Entry<Long, iv> entry : map.entrySet()) {
                            iv value = entry.getValue();
                            dataOutputStream.writeLong(entry.getKey().longValue());
                            dataOutputStream.writeUTF(value.f3533r);
                            dataOutputStream.writeShort(value.f.size());
                            Iterator it = value.f.iterator();
                            while (it.hasNext()) {
                                C0422iw c0422iw = (C0422iw) it.next();
                                dataOutputStream.writeShort(c0422iw.f3264a);
                                dataOutputStream.writeLong(c0422iw.f3265b);
                                dataOutputStream.writeLong(c0422iw.f3266c);
                                dataOutputStream.writeBoolean(c0422iw.f3267d);
                                dataOutputStream.writeShort(c0422iw.f3268e);
                                dataOutputStream.writeShort(c0422iw.f3269f.f3283e);
                                int i = c0422iw.f3268e;
                                if ((i < 200 || i >= 400) && (str = c0422iw.f3270g) != null) {
                                    byte[] bytes = str.getBytes();
                                    dataOutputStream.writeShort(bytes.length);
                                    dataOutputStream.write(bytes);
                                }
                                dataOutputStream.writeShort(c0422iw.f3271h);
                                dataOutputStream.writeInt((int) c0422iw.f3274k);
                            }
                        }
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    C0505md.m4487a(dataOutputStream);
                    return byteArray;
                } catch (IOException e2) {
                    e = e2;
                    C0478ku.m4595a(6, f3300e, "Error when generating report", e);
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
}
