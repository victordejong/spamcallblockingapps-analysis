package com.flurry.sdk;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.security.DigestOutputStream;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.ic */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ic.class */
public class C3262ic {

    /* renamed from: b */
    public static final String f5474b = "ic";

    /* renamed from: a */
    public byte[] f5475a;

    /* JADX WARN: Finally extract failed */
    public C3262ic(String str, String str2, boolean z, boolean z2, long j, long j2, List<C3267ie> list, Map<EnumC3313it, byte[]> map, Map<String, List<String>> map2, Map<String, List<String>> map3, Map<String, Map<String, String>> map4, long j3, C3437ku kuVar, boolean z3) throws IOException {
        Throwable th;
        DataOutputStream dataOutputStream;
        byte[] bArr;
        C3339jh jhVar;
        ByteArrayOutputStream byteArrayOutputStream;
        DigestOutputStream digestOutputStream;
        DataOutputStream dataOutputStream2;
        int identifier;
        this.f5475a = null;
        try {
            jhVar = new C3339jh();
            byteArrayOutputStream = new ByteArrayOutputStream();
            digestOutputStream = new DigestOutputStream(byteArrayOutputStream, jhVar);
            dataOutputStream2 = new DataOutputStream(digestOutputStream);
        } catch (Throwable th2) {
            th = th2;
            dataOutputStream = null;
        }
        try {
            dataOutputStream2.writeShort(33);
            dataOutputStream2.writeShort(0);
            dataOutputStream2.writeLong(0L);
            dataOutputStream2.writeShort(0);
            dataOutputStream2.writeShort(3);
            dataOutputStream2.writeShort(C3332jc.m32672b());
            dataOutputStream2.writeLong(j3);
            dataOutputStream2.writeUTF(str);
            dataOutputStream2.writeUTF(str2);
            String str3 = (String) kuVar.m32493a("VersionName");
            if (TextUtils.isEmpty(str3)) {
                dataOutputStream2.writeUTF("");
            } else {
                dataOutputStream2.writeUTF(str3);
            }
            Context context = C3331jb.m32681a().f5679a;
            dataOutputStream2.writeUTF(String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
            dataOutputStream2.writeByte(1);
            dataOutputStream2.writeShort(map.size());
            for (Map.Entry<EnumC3313it, byte[]> entry : map.entrySet()) {
                dataOutputStream2.writeShort(entry.getKey().f5627d);
                byte[] value = entry.getValue();
                dataOutputStream2.writeShort(value.length);
                dataOutputStream2.write(value);
            }
            dataOutputStream2.writeByte(0);
            dataOutputStream2.writeBoolean(z);
            dataOutputStream2.writeBoolean(z2);
            dataOutputStream2.writeLong(j);
            dataOutputStream2.writeLong(j2);
            if (z3) {
                dataOutputStream2.writeByte(2);
            } else {
                dataOutputStream2.writeByte(0);
            }
            dataOutputStream2.writeBoolean(((Boolean) kuVar.m32493a("IncludeBackgroundSessionsInMetrics")).booleanValue());
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
            C3295ik.m32746a();
            Context context2 = C3331jb.m32681a().f5679a;
            dataOutputStream2.writeUTF((context2 == null || (identifier = context2.getResources().getIdentifier("com.flurry.crash.map_id", "string", context2.getPackageName())) == 0) ? "" : context2.getResources().getString(identifier));
            dataOutputStream2.writeByte(0);
            dataOutputStream2.writeShort(map2 != null ? map2.keySet().size() : 0);
            if (map2 != null) {
                C3356jq.m32615a(3, f5474b, "sending referrer values because it exists");
                for (Map.Entry<String, List<String>> entry2 : map2.entrySet()) {
                    String str4 = f5474b;
                    C3356jq.m32615a(3, str4, "Referrer Entry:  " + entry2.getKey() + "=" + entry2.getValue());
                    dataOutputStream2.writeUTF(entry2.getKey());
                    String str5 = f5474b;
                    C3356jq.m32615a(3, str5, "referrer key is :" + entry2.getKey());
                    dataOutputStream2.writeShort(entry2.getValue().size());
                    for (String str6 : entry2.getValue()) {
                        dataOutputStream2.writeUTF(str6);
                        String str7 = f5474b;
                        C3356jq.m32615a(3, str7, "referrer value is :" + str6);
                    }
                }
            }
            String str8 = (String) kuVar.m32493a("notificationToken");
            if (!TextUtils.isEmpty(str8)) {
                dataOutputStream2.writeBoolean(true);
                dataOutputStream2.writeUTF(str8);
            } else {
                dataOutputStream2.writeBoolean(false);
            }
            dataOutputStream2.writeBoolean(((Boolean) kuVar.m32493a("notificationsEnabled")).booleanValue());
            int size = map3 != null ? map3.keySet().size() : 0;
            String str9 = f5474b;
            C3356jq.m32615a(3, str9, "optionsMapSize is:  " + size);
            dataOutputStream2.writeShort(size);
            if (map3 != null) {
                C3356jq.m32615a(3, f5474b, "sending launch options");
                for (Map.Entry<String, List<String>> entry3 : map3.entrySet()) {
                    String str10 = f5474b;
                    C3356jq.m32615a(3, str10, "Launch Options Key:  " + entry3.getKey());
                    dataOutputStream2.writeUTF(entry3.getKey());
                    dataOutputStream2.writeShort(entry3.getValue().size());
                    for (String str11 : entry3.getValue()) {
                        dataOutputStream2.writeUTF(str11);
                        String str12 = f5474b;
                        C3356jq.m32615a(3, str12, "Launch Options value is :" + str11);
                    }
                }
            }
            int size2 = map4 != null ? map4.keySet().size() : 0;
            String str13 = f5474b;
            C3356jq.m32615a(3, str13, "numOriginAttributions is:  " + size);
            dataOutputStream2.writeShort(size2);
            if (map4 != null) {
                for (Map.Entry<String, Map<String, String>> entry4 : map4.entrySet()) {
                    String str14 = f5474b;
                    C3356jq.m32615a(3, str14, "Origin Atttribute Key:  " + entry4.getKey());
                    dataOutputStream2.writeUTF(entry4.getKey());
                    dataOutputStream2.writeShort(entry4.getValue().size());
                    String str15 = f5474b;
                    C3356jq.m32615a(3, str15, "Origin Attribute Map Size for " + entry4.getKey() + ":  " + entry4.getValue().size());
                    for (Map.Entry<String, String> entry5 : entry4.getValue().entrySet()) {
                        String str16 = f5474b;
                        C3356jq.m32615a(3, str16, "Origin Atttribute for " + entry4.getKey() + ":  " + entry5.getKey() + ":" + entry5.getValue());
                        dataOutputStream2.writeUTF(entry5.getKey() != null ? entry5.getKey() : "");
                        dataOutputStream2.writeUTF(entry5.getValue() != null ? entry5.getValue() : "");
                    }
                }
            }
            dataOutputStream2.writeUTF(C3441kx.m32489a(C3331jb.m32681a().f5679a));
            dataOutputStream2.writeShort(list.size());
            for (C3267ie ieVar : list) {
                dataOutputStream2.write(ieVar.f5485a);
            }
            dataOutputStream2.writeShort(0);
            dataOutputStream2.writeShort(0);
            digestOutputStream.on(false);
            dataOutputStream2.write(jhVar.m32646a());
            dataOutputStream2.close();
            bArr = byteArrayOutputStream.toByteArray();
            C3445la.m32465a(dataOutputStream2);
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream = dataOutputStream2;
            try {
                C3356jq.m32614a(6, f5474b, "Error when generating report", th);
                C3445la.m32465a(dataOutputStream);
                bArr = null;
                this.f5475a = bArr;
            } catch (Throwable th4) {
                C3445la.m32465a(dataOutputStream);
                throw th4;
            }
        }
        this.f5475a = bArr;
    }
}
