package com.flurry.sdk;

import android.content.Context;
import android.os.Build;
import com.flurry.sdk.C3249hu;
import com.flurry.sdk.C3363jx;
import com.flurry.sdk.C3368jz;
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
/* renamed from: com.flurry.sdk.ht */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ht.class */
public class C3246ht {

    /* renamed from: a */
    public static final String f5435a = "com.flurry.sdk.ht";

    /* renamed from: c */
    public static C3246ht f5436c;

    /* renamed from: b */
    public String f5437b;

    /* renamed from: d */
    public C3342jj<List<C3249hu>> f5438d;

    /* renamed from: e */
    public List<C3249hu> f5439e;

    /* renamed from: f */
    public boolean f5440f;

    /* renamed from: a */
    public static C3246ht m32807a() {
        C3246ht htVar;
        synchronized (C3246ht.class) {
            try {
                if (f5436c == null) {
                    C3246ht htVar2 = new C3246ht();
                    f5436c = htVar2;
                    Context context = C3331jb.m32681a().f5679a;
                    htVar2.f5438d = new C3342jj<>(context.getFileStreamPath(".yflurrypulselogging." + Long.toString(C3445la.m32449i(C3331jb.m32681a().f5682d), 16)), ".yflurrypulselogging.", 1, new AbstractC3422ko<List<C3249hu>>(htVar2) { // from class: com.flurry.sdk.ht.1
                        @Override // com.flurry.sdk.AbstractC3422ko
                        /* renamed from: a */
                        public final AbstractC3417kl<List<C3249hu>> mo32339a(int i) {
                            return new C3414kk(new C3249hu.C3250a());
                        }
                    });
                    htVar2.f5440f = ((Boolean) C3437ku.m32494a().m32493a("UseHttps")).booleanValue();
                    String str = f5435a;
                    C3356jq.m32615a(4, str, "initSettings, UseHttps = " + htVar2.f5440f);
                    htVar2.f5439e = htVar2.f5438d.m32641a();
                    if (htVar2.f5439e == null) {
                        htVar2.f5439e = new ArrayList();
                    }
                }
                htVar = f5436c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return htVar;
    }

    /* renamed from: a */
    public final void m32806a(C3242hs hsVar) {
        synchronized (this) {
            try {
                this.f5439e.add(new C3249hu(hsVar.m32815d()));
                C3356jq.m32615a(4, f5435a, "Saving persistent Pulse logging data.");
                this.f5438d.m32640a(this.f5439e);
            } catch (IOException e) {
                C3356jq.m32615a(6, f5435a, "Error when generating pulse log report in addReport part");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final void m32804a(byte[] bArr) {
        synchronized (this) {
            if (!C3310ir.m32715a().f5616b) {
                C3356jq.m32615a(5, f5435a, "Reports were not sent! No Internet connection!");
                return;
            }
            if (!(bArr == 0 || bArr.length == 0)) {
                String str = this.f5437b != null ? this.f5437b : "https://data.flurry.com/pcr.do";
                String str2 = f5435a;
                C3356jq.m32615a(4, str2, "PulseLoggingManager: start upload data " + Arrays.toString(bArr) + " to " + str);
                C3363jx jxVar = new C3363jx();
                jxVar.f5766g = str;
                jxVar.f5941u = 100000;
                jxVar.f5767h = C3368jz.EnumC3371a.kPost;
                jxVar.f5770k = true;
                jxVar.m32581a("Content-Type", "application/octet-stream");
                jxVar.f5753c = new C3411kh();
                jxVar.f5752b = bArr;
                jxVar.f5751a = new C3363jx.AbstractC3365a<byte[], Void>() { // from class: com.flurry.sdk.ht.2
                    @Override // com.flurry.sdk.C3363jx.AbstractC3365a
                    /* renamed from: a */
                    public final /* synthetic */ void mo32321a(C3363jx<byte[], Void> jxVar2, Void r6) {
                        int i = jxVar2.f5776q;
                        if (i <= 0) {
                            String str3 = C3246ht.f5435a;
                            C3356jq.m32602e(str3, "Server Error: " + i);
                        } else if (i < 200 || i >= 300) {
                            String str4 = C3246ht.f5435a;
                            C3356jq.m32615a(3, str4, "Pulse logging report sent unsuccessfully, HTTP response:" + i);
                        } else {
                            String str5 = C3246ht.f5435a;
                            C3356jq.m32615a(3, str5, "Pulse logging report sent successfully HTTP response:" + i);
                            C3246ht.this.f5439e.clear();
                            C3246ht.this.f5438d.m32640a(C3246ht.this.f5439e);
                        }
                    }
                };
                C3323iz.m32690a().m32623a((Object) this, (C3246ht) jxVar);
                return;
            }
            C3356jq.m32615a(3, f5435a, "No report need be sent");
        }
    }

    /* renamed from: b */
    public final void m32803b() {
        synchronized (this) {
            try {
                m32804a(m32800d());
            } catch (IOException e) {
                C3356jq.m32615a(6, f5435a, "Report not send due to exception in generate data");
            }
        }
    }

    /* JADX WARN: Not initialized variable reg: 8, insn: 0x02bf: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r8 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:150:0x02bf */
    /* renamed from: d */
    public final byte[] m32800d() throws IOException {
        Throwable th;
        DataOutputStream dataOutputStream;
        IOException e;
        try {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                try {
                    if (this.f5439e != null && !this.f5439e.isEmpty()) {
                        dataOutputStream.writeShort(1);
                        dataOutputStream.writeShort(1);
                        dataOutputStream.writeLong(System.currentTimeMillis());
                        dataOutputStream.writeUTF(C3331jb.m32681a().f5682d);
                        dataOutputStream.writeUTF(C3314iu.m32707a().m32700g());
                        dataOutputStream.writeShort(C3332jc.m32672b());
                        dataOutputStream.writeShort(3);
                        C3314iu.m32707a();
                        dataOutputStream.writeUTF(C3314iu.m32704c());
                        dataOutputStream.writeBoolean(C3296il.m32745a().m32740c());
                        ArrayList<C3191gz> arrayList = new ArrayList();
                        for (Map.Entry entry : Collections.unmodifiableMap(C3296il.m32745a().f5577a).entrySet()) {
                            C3191gz gzVar = new C3191gz();
                            gzVar.f5298a = ((EnumC3313it) entry.getKey()).f5627d;
                            if (((EnumC3313it) entry.getKey()).f5628e) {
                                gzVar.f5299b = new String((byte[]) entry.getValue());
                            } else {
                                gzVar.f5299b = C3445la.m32457b((byte[]) entry.getValue());
                            }
                            arrayList.add(gzVar);
                        }
                        dataOutputStream.writeShort(arrayList.size());
                        for (C3191gz gzVar2 : arrayList) {
                            dataOutputStream.writeShort(gzVar2.f5298a);
                            byte[] bytes = gzVar2.f5299b.getBytes();
                            dataOutputStream.writeShort(bytes.length);
                            dataOutputStream.write(bytes);
                        }
                        dataOutputStream.writeShort(6);
                        dataOutputStream.writeShort(C3220hm.f5366b - 1);
                        dataOutputStream.writeUTF(Build.MODEL);
                        dataOutputStream.writeShort(C3220hm.f5367c - 1);
                        dataOutputStream.writeUTF(Build.BOARD);
                        dataOutputStream.writeShort(C3220hm.f5368d - 1);
                        dataOutputStream.writeUTF(Build.ID);
                        dataOutputStream.writeShort(C3220hm.f5369e - 1);
                        dataOutputStream.writeUTF(Build.DEVICE);
                        dataOutputStream.writeShort(C3220hm.f5370f - 1);
                        dataOutputStream.writeUTF(Build.PRODUCT);
                        dataOutputStream.writeShort(C3220hm.f5371g - 1);
                        dataOutputStream.writeUTF(Build.VERSION.RELEASE);
                        dataOutputStream.writeShort(this.f5439e.size());
                        for (C3249hu huVar : this.f5439e) {
                            dataOutputStream.write(huVar.f5442a);
                        }
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        CRC32 crc32 = new CRC32();
                        crc32.update(byteArray);
                        dataOutputStream.writeInt((int) crc32.getValue());
                        byte[] byteArray2 = byteArrayOutputStream.toByteArray();
                        C3445la.m32465a(dataOutputStream);
                        return byteArray2;
                    }
                    byte[] byteArray3 = byteArrayOutputStream.toByteArray();
                    C3445la.m32465a(dataOutputStream);
                    return byteArray3;
                } catch (IOException e2) {
                    e = e2;
                    C3356jq.m32614a(6, f5435a, "Error when generating report", e);
                    throw e;
                }
            } catch (Throwable th2) {
                th = th2;
                C3445la.m32465a(r7);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            dataOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            Closeable closeable = null;
            C3445la.m32465a(closeable);
            throw th;
        }
    }
}
