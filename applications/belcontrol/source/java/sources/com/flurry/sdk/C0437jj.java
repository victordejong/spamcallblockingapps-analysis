package com.flurry.sdk;

import android.content.Context;
import android.os.Build;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.security.DigestOutputStream;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.jj */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/jj.class */
public class C0437jj {

    /* renamed from: b */
    private static final String f3349b = "jj";

    /* renamed from: a */
    public byte[] f3350a;

    public C0437jj(String str, String str2, boolean z, boolean z2, long j, long j2, List<C0438jl> list, Map<EnumC0457kb, byte[]> map, Map<String, List<String>> map2, Map<String, List<String>> map3, Map<String, Map<String, String>> map4, long j3) {
        Throwable th;
        DataOutputStream dataOutputStream;
        byte[] bArr;
        C0468km c0468km;
        ByteArrayOutputStream byteArrayOutputStream;
        DigestOutputStream digestOutputStream;
        DataOutputStream dataOutputStream2;
        int identifier;
        this.f3350a = null;
        try {
            c0468km = new C0468km();
            byteArrayOutputStream = new ByteArrayOutputStream();
            digestOutputStream = new DigestOutputStream(byteArrayOutputStream, c0468km);
            dataOutputStream2 = new DataOutputStream(digestOutputStream);
        } catch (Throwable th2) {
            th = th2;
            dataOutputStream = null;
        }
        try {
            dataOutputStream2.writeShort(30);
            dataOutputStream2.writeShort(0);
            dataOutputStream2.writeLong(0L);
            dataOutputStream2.writeShort(0);
            dataOutputStream2.writeShort(3);
            dataOutputStream2.writeShort(C0463kh.m4645b());
            dataOutputStream2.writeLong(j3);
            dataOutputStream2.writeUTF(str);
            dataOutputStream2.writeUTF(str2);
            dataOutputStream2.writeShort(map.size());
            for (Map.Entry<EnumC0457kb, byte[]> entry : map.entrySet()) {
                dataOutputStream2.writeShort(entry.getKey().f3441c);
                byte[] value = entry.getValue();
                dataOutputStream2.writeShort(value.length);
                dataOutputStream2.write(value);
            }
            dataOutputStream2.writeByte(0);
            dataOutputStream2.writeBoolean(z);
            dataOutputStream2.writeBoolean(z2);
            dataOutputStream2.writeLong(j);
            dataOutputStream2.writeLong(j2);
            dataOutputStream2.writeShort(7);
            dataOutputStream2.writeUTF("device.model");
            dataOutputStream2.writeUTF(Build.MODEL);
            dataOutputStream2.writeByte(0);
            dataOutputStream2.writeUTF("build.brand");
            dataOutputStream2.writeUTF(Build.BRAND);
            dataOutputStream2.writeByte(0);
            dataOutputStream2.writeUTF("build.id");
            dataOutputStream2.writeUTF(Build.ID);
            dataOutputStream2.writeByte(0);
            dataOutputStream2.writeUTF("version.release");
            dataOutputStream2.writeUTF(Build.VERSION.RELEASE);
            dataOutputStream2.writeByte(0);
            dataOutputStream2.writeUTF("build.device");
            dataOutputStream2.writeUTF(Build.DEVICE);
            dataOutputStream2.writeByte(0);
            dataOutputStream2.writeUTF("build.product");
            dataOutputStream2.writeUTF(Build.PRODUCT);
            dataOutputStream2.writeByte(0);
            dataOutputStream2.writeUTF("proguard.build.uuid");
            C0448js.m4685a();
            Context context = C0462kg.m4652a().f3460a;
            dataOutputStream2.writeUTF((context == null || (identifier = context.getResources().getIdentifier("com.flurry.crash.map_id", "string", context.getPackageName())) == 0) ? "" : context.getResources().getString(identifier));
            dataOutputStream2.writeByte(0);
            dataOutputStream2.writeShort(map2 != null ? map2.keySet().size() : 0);
            if (map2 != null) {
                C0478ku.m4596a(3, f3349b, "sending referrer values because it exists");
                for (Map.Entry<String, List<String>> entry2 : map2.entrySet()) {
                    String str3 = f3349b;
                    C0478ku.m4596a(3, str3, "Referrer Entry:  " + entry2.getKey() + "=" + entry2.getValue());
                    dataOutputStream2.writeUTF(entry2.getKey());
                    StringBuilder sb = new StringBuilder("referrer key is :");
                    sb.append(entry2.getKey());
                    C0478ku.m4596a(3, str3, sb.toString());
                    dataOutputStream2.writeShort(entry2.getValue().size());
                    for (String str4 : entry2.getValue()) {
                        dataOutputStream2.writeUTF(str4);
                        C0478ku.m4596a(3, f3349b, "referrer value is :" + str4);
                    }
                }
            }
            dataOutputStream2.writeBoolean(false);
            int size = map3 != null ? map3.keySet().size() : 0;
            String str5 = f3349b;
            C0478ku.m4596a(3, str5, "optionsMapSize is:  " + size);
            dataOutputStream2.writeShort(size);
            if (map3 != null) {
                C0478ku.m4596a(3, str5, "sending launch options");
                for (Map.Entry<String, List<String>> entry3 : map3.entrySet()) {
                    C0478ku.m4596a(3, f3349b, "Launch Options Key:  " + entry3.getKey());
                    dataOutputStream2.writeUTF(entry3.getKey());
                    dataOutputStream2.writeShort(entry3.getValue().size());
                    for (String str6 : entry3.getValue()) {
                        dataOutputStream2.writeUTF(str6);
                        C0478ku.m4596a(3, f3349b, "Launch Options value is :" + str6);
                    }
                }
            }
            int size2 = map4 != null ? map4.keySet().size() : 0;
            C0478ku.m4596a(3, f3349b, "numOriginAttributions is:  " + size);
            dataOutputStream2.writeShort(size2);
            if (map4 != null) {
                for (Map.Entry<String, Map<String, String>> entry4 : map4.entrySet()) {
                    String str7 = f3349b;
                    C0478ku.m4596a(3, str7, "Origin Atttribute Key:  " + entry4.getKey());
                    dataOutputStream2.writeUTF(entry4.getKey());
                    dataOutputStream2.writeShort(entry4.getValue().size());
                    C0478ku.m4596a(3, str7, "Origin Attribute Map Size for " + entry4.getKey() + ":  " + entry4.getValue().size());
                    for (Map.Entry<String, String> entry5 : entry4.getValue().entrySet()) {
                        C0478ku.m4596a(3, f3349b, "Origin Atttribute for " + entry4.getKey() + ":  " + entry5.getKey() + ":" + entry5.getValue());
                        dataOutputStream2.writeUTF(entry5.getKey() != null ? entry5.getKey() : "");
                        dataOutputStream2.writeUTF(entry5.getValue() != null ? entry5.getValue() : "");
                    }
                }
            }
            dataOutputStream2.writeUTF(C0502ma.m4510a(C0462kg.m4652a().f3460a));
            dataOutputStream2.writeShort(list.size());
            for (C0438jl c0438jl : list) {
                dataOutputStream2.write(c0438jl.f3354a);
            }
            dataOutputStream2.writeShort(0);
            digestOutputStream.on(false);
            dataOutputStream2.write(c0468km.m4625a());
            dataOutputStream2.close();
            bArr = byteArrayOutputStream.toByteArray();
            C0505md.m4487a(dataOutputStream2);
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream = dataOutputStream2;
            try {
                C0478ku.m4595a(6, f3349b, "Error when generating report", th);
                C0505md.m4487a(dataOutputStream);
                bArr = null;
                this.f3350a = bArr;
            } catch (Throwable th4) {
                C0505md.m4487a(dataOutputStream);
                throw th4;
            }
        }
        this.f3350a = bArr;
    }
}
