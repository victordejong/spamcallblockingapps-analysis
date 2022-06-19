package com.flurry.sdk;

import com.flurry.sdk.C0446jp;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
/* renamed from: com.flurry.sdk.ia */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/ia.class */
public final class C0405ia {

    /* renamed from: a */
    private static final String f3187a = "ia";

    /* JADX WARN: Not initialized variable reg: 9, insn: 0x0100: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r9 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:51:0x0100 */
    /* renamed from: a */
    public static C0446jp m4762a(File file) {
        Closeable closeable;
        FileInputStream fileInputStream;
        Throwable th;
        FileInputStream fileInputStream2;
        C0446jp c0446jp;
        Exception e;
        DataInputStream dataInputStream;
        if (file == null || !file.exists()) {
            return null;
        }
        C0446jp.a aVar = new C0446jp.a();
        try {
            try {
                fileInputStream = new FileInputStream(file);
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = fileInputStream2;
            }
            try {
                dataInputStream = new DataInputStream(fileInputStream);
                try {
                } catch (Exception e2) {
                    e = e2;
                    C0478ku.m4595a(3, f3187a, "Error loading legacy agent data.", e);
                    C0505md.m4487a((Closeable) dataInputStream);
                    C0505md.m4487a((Closeable) fileInputStream);
                    c0446jp = null;
                    return c0446jp;
                }
            } catch (Exception e3) {
                e = e3;
                dataInputStream = null;
            } catch (Throwable th3) {
                th = th3;
                closeable = null;
                C0505md.m4487a(closeable);
                C0505md.m4487a((Closeable) fileInputStream);
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
            dataInputStream = null;
            fileInputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileInputStream = null;
            closeable = null;
        }
        if (dataInputStream.readUnsignedShort() != 46586) {
            C0478ku.m4596a(3, f3187a, "Unexpected file type");
        } else {
            int readUnsignedShort = dataInputStream.readUnsignedShort();
            if (readUnsignedShort == 2) {
                C0446jp c0446jp2 = (C0446jp) aVar.m4523a(dataInputStream);
                C0505md.m4487a((Closeable) dataInputStream);
                C0505md.m4487a((Closeable) fileInputStream);
                c0446jp = c0446jp2;
                return c0446jp;
            }
            String str = f3187a;
            StringBuilder sb = new StringBuilder("Unknown agent file version: ");
            sb.append(readUnsignedShort);
            C0478ku.m4596a(6, str, sb.toString());
        }
        C0505md.m4487a((Closeable) dataInputStream);
        C0505md.m4487a((Closeable) fileInputStream);
        return null;
    }
}
