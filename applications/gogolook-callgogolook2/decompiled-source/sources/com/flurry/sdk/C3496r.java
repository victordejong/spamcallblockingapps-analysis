package com.flurry.sdk;

import com.flurry.sdk.C2857bb;
import com.flurry.sdk.C2862bd;
import com.flurry.sdk.C2877bl;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.flurry.sdk.r */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/r.class */
public final class C3496r {

    /* renamed from: a */
    public static final String f6031a = "r";

    /* renamed from: a */
    public static List<C2877bl> m32330a(File file) {
        FileInputStream fileInputStream;
        Throwable th;
        Exception e;
        if (file == null || !file.exists()) {
            return Collections.emptyList();
        }
        C2877bl.C2881b bVar = new C2877bl.C2881b();
        ArrayList arrayList = new ArrayList();
        r5 = null;
        DataInputStream dataInputStream = null;
        DataInputStream dataInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(file);
            fileInputStream = fileInputStream;
            try {
                try {
                    DataInputStream dataInputStream3 = new DataInputStream(fileInputStream);
                    while (1 == dataInputStream3.readShort()) {
                        try {
                            arrayList.add(bVar.mo32526a(dataInputStream3));
                        } catch (Exception e2) {
                            e = e2;
                            dataInputStream2 = dataInputStream3;
                            dataInputStream = dataInputStream2;
                            fileInputStream = fileInputStream;
                            C3356jq.m32614a(3, f6031a, "Error loading legacy FreqCap data.", e);
                            C3445la.m32465a((Closeable) dataInputStream2);
                            C3445la.m32465a((Closeable) fileInputStream);
                            return arrayList;
                        } catch (Throwable th2) {
                            th = th2;
                            dataInputStream = dataInputStream3;
                            C3445la.m32465a((Closeable) dataInputStream);
                            C3445la.m32465a((Closeable) fileInputStream);
                            throw th;
                        }
                    }
                    C3445la.m32465a((Closeable) dataInputStream3);
                } catch (Exception e3) {
                    e = e3;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e4) {
            e = e4;
            fileInputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileInputStream = null;
        }
        C3445la.m32465a((Closeable) fileInputStream);
        return arrayList;
    }

    /* renamed from: b */
    public static List<C2862bd> m32329b(File file) {
        FileInputStream fileInputStream;
        Throwable th;
        Exception e;
        DataInputStream dataInputStream;
        if (file == null || !file.exists()) {
            return Collections.emptyList();
        }
        C2862bd.C2863a aVar = new C2862bd.C2863a(new C2857bb.C2858a());
        ArrayList arrayList = new ArrayList();
        DataInputStream dataInputStream2 = null;
        DataInputStream dataInputStream3 = null;
        try {
            fileInputStream = new FileInputStream(file);
            fileInputStream = fileInputStream;
            try {
                try {
                    dataInputStream = new DataInputStream(fileInputStream);
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
            } catch (Exception e3) {
                e = e3;
                dataInputStream3 = dataInputStream;
                dataInputStream2 = dataInputStream3;
                fileInputStream = fileInputStream;
                C3356jq.m32614a(3, f6031a, "Error loading legacy AdLog data.", e);
                C3445la.m32465a((Closeable) dataInputStream3);
                C3445la.m32465a((Closeable) fileInputStream);
                return arrayList;
            } catch (Throwable th3) {
                th = th3;
                dataInputStream2 = dataInputStream;
                C3445la.m32465a((Closeable) dataInputStream2);
                C3445la.m32465a((Closeable) fileInputStream);
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
            fileInputStream = null;
        } catch (Throwable th4) {
            th = th4;
            dataInputStream2 = null;
            fileInputStream = null;
        }
        if (46586 == dataInputStream.readUnsignedShort()) {
            while (1 == dataInputStream.readShort()) {
                arrayList.add(aVar.mo32526a(dataInputStream));
            }
            C3445la.m32465a((Closeable) dataInputStream);
            C3445la.m32465a((Closeable) fileInputStream);
            return arrayList;
        }
        throw new IOException("Unexpected data format");
    }
}
