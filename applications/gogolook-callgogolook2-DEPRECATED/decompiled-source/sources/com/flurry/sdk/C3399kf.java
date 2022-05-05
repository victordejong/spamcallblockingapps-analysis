package com.flurry.sdk;

import android.content.Context;
import com.flurry.sdk.C3395ke;
import com.flurry.sdk.C3407kg;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
/* renamed from: com.flurry.sdk.kf */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/kf.class */
public class C3399kf {

    /* renamed from: a */
    public static final Integer f5839a = 50;

    /* renamed from: d */
    public static final String f5840d = C3399kf.class.getSimpleName();

    /* renamed from: b */
    public String f5841b;

    /* renamed from: c */
    public LinkedHashMap<String, List<String>> f5842c;

    public C3399kf(String str) {
        this.f5841b = str + "Main";
        m32538b(this.f5841b);
    }

    /* renamed from: f */
    public static void m32534f(String str) {
        C3445la.m32460b();
        String str2 = f5840d;
        StringBuilder sb = new StringBuilder("Deleting Index File for ");
        sb.append(str);
        sb.append(" file name:");
        Context context = C3331jb.m32681a().f5679a;
        sb.append(context.getFileStreamPath(".FlurrySenderIndex.info." + str));
        C3356jq.m32615a(5, str2, sb.toString());
        Context context2 = C3331jb.m32681a().f5679a;
        File fileStreamPath = context2.getFileStreamPath(".FlurrySenderIndex.info." + str);
        if (fileStreamPath.exists()) {
            boolean delete = fileStreamPath.delete();
            String str3 = f5840d;
            C3356jq.m32615a(5, str3, "Found file for " + str + ". Deleted - " + delete);
        }
    }

    /* renamed from: g */
    public static String m32533g(String str) {
        return ".YFlurrySenderIndex.info." + str;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: i */
    public static byte[] m32531i(String str) {
        Throwable th;
        DataInputStream dataInputStream;
        int readUnsignedShort;
        C3445la.m32460b();
        String str2 = f5840d;
        StringBuilder sb = new StringBuilder("Reading block File for ");
        sb.append(str);
        sb.append(" file name:");
        Context context = C3331jb.m32681a().f5679a;
        sb.append(context.getFileStreamPath(".flurrydatasenderblock." + str));
        C3356jq.m32615a(5, str2, sb.toString());
        Context context2 = C3331jb.m32681a().f5679a;
        File fileStreamPath = context2.getFileStreamPath(".flurrydatasenderblock." + str);
        r5 = null;
        byte[] bArr = null;
        bArr = null;
        if (fileStreamPath.exists()) {
            String str3 = f5840d;
            C3356jq.m32615a(5, str3, "Reading Index File for " + str + " Found file.");
            try {
                dataInputStream = new DataInputStream(new FileInputStream(fileStreamPath));
            } catch (Throwable th2) {
                th = th2;
                dataInputStream = null;
            }
            try {
                readUnsignedShort = dataInputStream.readUnsignedShort();
            } catch (Throwable th3) {
                th = th3;
                try {
                    C3356jq.m32614a(6, f5840d, "Error when loading persistent file", th);
                    C3445la.m32465a((Closeable) dataInputStream);
                    return bArr;
                } catch (Throwable th4) {
                    C3445la.m32465a((Closeable) dataInputStream);
                    throw th4;
                }
            }
            if (readUnsignedShort == 0) {
                C3445la.m32465a((Closeable) dataInputStream);
                return null;
            }
            byte[] bArr2 = new byte[readUnsignedShort];
            dataInputStream.readFully(bArr2);
            bArr = bArr2;
            dataInputStream.readUnsignedShort();
            bArr = bArr2;
            C3445la.m32465a((Closeable) dataInputStream);
        } else {
            C3356jq.m32615a(4, f5840d, "Agent cache file doesn't exist.");
        }
        return bArr;
    }

    /* renamed from: a */
    public final List<String> m32542a(String str) {
        return this.f5842c.get(str);
    }

    /* renamed from: a */
    public final void m32544a() {
        synchronized (this) {
            LinkedList linkedList = new LinkedList(this.f5842c.keySet());
            new C3342jj(C3331jb.m32681a().f5679a.getFileStreamPath(m32533g(this.f5841b)), ".YFlurrySenderIndex.info.", 1, new AbstractC3422ko<List<C3407kg>>(this) { // from class: com.flurry.sdk.kf.6
                @Override // com.flurry.sdk.AbstractC3422ko
                /* renamed from: a */
                public final AbstractC3417kl<List<C3407kg>> mo32339a(int i) {
                    return new C3414kk(new C3407kg.C3408a());
                }
            }).m32639b();
            if (!linkedList.isEmpty()) {
                m32540a(this.f5841b, linkedList, this.f5841b);
            }
        }
    }

    /* renamed from: a */
    public final void m32543a(C3395ke keVar, String str) {
        boolean z;
        synchronized (this) {
            String str2 = f5840d;
            C3356jq.m32615a(4, str2, "addBlockInfo" + str);
            String str3 = keVar.f5837a;
            List<String> list = this.f5842c.get(str);
            if (list == null) {
                C3356jq.m32615a(4, f5840d, "New Data Key");
                list = new LinkedList<>();
                z = true;
            } else {
                z = false;
            }
            list.add(str3);
            if (list.size() > f5839a.intValue()) {
                m32530j(list.get(0));
                list.remove(0);
            }
            this.f5842c.put(str, list);
            m32540a(str, list, ".YFlurrySenderIndex.info.");
            if (z) {
                m32544a();
            }
        }
    }

    /* renamed from: a */
    public final void m32540a(String str, List<String> list, String str2) {
        synchronized (this) {
            C3445la.m32460b();
            String str3 = f5840d;
            C3356jq.m32615a(5, str3, "Saving Index File for " + str + " file name:" + C3331jb.m32681a().f5679a.getFileStreamPath(m32533g(str)));
            C3342jj jjVar = new C3342jj(C3331jb.m32681a().f5679a.getFileStreamPath(m32533g(str)), str2, 1, new AbstractC3422ko<List<C3407kg>>(this) { // from class: com.flurry.sdk.kf.4
                @Override // com.flurry.sdk.AbstractC3422ko
                /* renamed from: a */
                public final AbstractC3417kl<List<C3407kg>> mo32339a(int i) {
                    return new C3414kk(new C3407kg.C3408a());
                }
            });
            ArrayList arrayList = new ArrayList();
            for (String str4 : list) {
                arrayList.add(new C3407kg(str4));
            }
            jjVar.m32640a(arrayList);
        }
    }

    /* renamed from: a */
    public final void m32539a(String str, byte[] bArr) {
        synchronized (this) {
            C3445la.m32460b();
            String str2 = f5840d;
            C3356jq.m32615a(5, str2, "Saving Block File for " + str + " file name:" + C3331jb.m32681a().f5679a.getFileStreamPath(C3395ke.m32545a(str)));
            new C3342jj(C3331jb.m32681a().f5679a.getFileStreamPath(C3395ke.m32545a(str)), ".yflurrydatasenderblock.", 1, new AbstractC3422ko<C3395ke>(this) { // from class: com.flurry.sdk.kf.3
                @Override // com.flurry.sdk.AbstractC3422ko
                /* renamed from: a */
                public final AbstractC3417kl<C3395ke> mo32339a(int i) {
                    return new C3395ke.C3396a();
                }
            }).m32640a(new C3395ke(bArr));
        }
    }

    /* renamed from: a */
    public final boolean m32541a(String str, String str2) {
        boolean z;
        List<String> list = this.f5842c.get(str2);
        if (list != null) {
            m32530j(str);
            z = list.remove(str);
        } else {
            z = false;
        }
        if (list == null || list.isEmpty()) {
            m32529k(str2);
        } else {
            this.f5842c.put(str2, list);
            m32540a(str2, list, ".YFlurrySenderIndex.info.");
        }
        return z;
    }

    /* renamed from: b */
    public final void m32538b(String str) {
        this.f5842c = new LinkedHashMap<>();
        ArrayList<String> arrayList = new ArrayList();
        if (m32537c(str)) {
            List<String> d = m32536d(str);
            if (d != null && d.size() > 0) {
                arrayList.addAll(d);
                for (String str2 : arrayList) {
                    m32535e(str2);
                }
            }
            m32534f(str);
        } else {
            List<C3407kg> list = (List) new C3342jj(C3331jb.m32681a().f5679a.getFileStreamPath(m32533g(this.f5841b)), str, 1, new AbstractC3422ko<List<C3407kg>>(this) { // from class: com.flurry.sdk.kf.1
                @Override // com.flurry.sdk.AbstractC3422ko
                /* renamed from: a */
                public final AbstractC3417kl<List<C3407kg>> mo32339a(int i) {
                    return new C3414kk(new C3407kg.C3408a());
                }
            }).m32641a();
            if (list == null) {
                C3356jq.m32606c(f5840d, "New main file also not found. returning..");
                return;
            }
            for (C3407kg kgVar : list) {
                arrayList.add(kgVar.f5843a);
            }
        }
        for (String str3 : arrayList) {
            this.f5842c.put(str3, m32532h(str3));
        }
    }

    /* renamed from: c */
    public final boolean m32537c(String str) {
        boolean exists;
        synchronized (this) {
            Context context = C3331jb.m32681a().f5679a;
            File fileStreamPath = context.getFileStreamPath(".FlurrySenderIndex.info." + str);
            String str2 = f5840d;
            C3356jq.m32615a(5, str2, "isOldIndexFilePresent: for " + str + fileStreamPath.exists());
            exists = fileStreamPath.exists();
        }
        return exists;
    }

    /* renamed from: d */
    public final List<String> m32536d(String str) {
        DataInputStream dataInputStream;
        Throwable th;
        synchronized (this) {
            C3445la.m32460b();
            String str2 = f5840d;
            StringBuilder sb = new StringBuilder("Reading Index File for ");
            sb.append(str);
            sb.append(" file name:");
            sb.append(C3331jb.m32681a().f5679a.getFileStreamPath(".FlurrySenderIndex.info." + str));
            C3356jq.m32615a(5, str2, sb.toString());
            File fileStreamPath = C3331jb.m32681a().f5679a.getFileStreamPath(".FlurrySenderIndex.info." + str);
            ArrayList arrayList = null;
            if (fileStreamPath.exists()) {
                C3356jq.m32615a(5, f5840d, "Reading Index File for " + str + " Found file.");
                try {
                    dataInputStream = new DataInputStream(new FileInputStream(fileStreamPath));
                    try {
                        int readUnsignedShort = dataInputStream.readUnsignedShort();
                        if (readUnsignedShort == 0) {
                            C3445la.m32465a((Closeable) dataInputStream);
                            return null;
                        }
                        arrayList = new ArrayList(readUnsignedShort);
                        for (int i = 0; i < readUnsignedShort; i++) {
                            try {
                                int readUnsignedShort2 = dataInputStream.readUnsignedShort();
                                C3356jq.m32615a(4, f5840d, "read iter " + i + " dataLength = " + readUnsignedShort2);
                                byte[] bArr = new byte[readUnsignedShort2];
                                dataInputStream.readFully(bArr);
                                arrayList.add(new String(bArr));
                            } catch (Throwable th2) {
                                th = th2;
                                C3356jq.m32614a(6, f5840d, "Error when loading persistent file", th);
                                C3445la.m32465a((Closeable) dataInputStream);
                                return arrayList;
                            }
                        }
                        dataInputStream.readUnsignedShort();
                        C3445la.m32465a((Closeable) dataInputStream);
                    } catch (Throwable th3) {
                        th = th3;
                        arrayList = null;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    dataInputStream = null;
                    arrayList = null;
                }
            } else {
                C3356jq.m32615a(5, f5840d, "Agent cache file doesn't exist.");
            }
            return arrayList;
        }
    }

    /* renamed from: e */
    public final void m32535e(String str) {
        List<String> d = m32536d(str);
        if (d == null) {
            C3356jq.m32606c(f5840d, "No old file to replace");
            return;
        }
        for (String str2 : d) {
            byte[] i = m32531i(str2);
            if (i == null) {
                C3356jq.m32615a(6, f5840d, "File does not exist");
            } else {
                m32539a(str2, i);
                C3445la.m32460b();
                String str3 = f5840d;
                StringBuilder sb = new StringBuilder("Deleting  block File for ");
                sb.append(str2);
                sb.append(" file name:");
                Context context = C3331jb.m32681a().f5679a;
                sb.append(context.getFileStreamPath(".flurrydatasenderblock." + str2));
                C3356jq.m32615a(5, str3, sb.toString());
                Context context2 = C3331jb.m32681a().f5679a;
                File fileStreamPath = context2.getFileStreamPath(".flurrydatasenderblock." + str2);
                if (fileStreamPath.exists()) {
                    boolean delete = fileStreamPath.delete();
                    String str4 = f5840d;
                    C3356jq.m32615a(5, str4, "Found file for " + str2 + ". Deleted - " + delete);
                }
            }
        }
        m32540a(str, d, ".YFlurrySenderIndex.info.");
        m32534f(str);
    }

    /* renamed from: h */
    public final List<String> m32532h(String str) {
        ArrayList arrayList;
        synchronized (this) {
            C3445la.m32460b();
            String str2 = f5840d;
            C3356jq.m32615a(5, str2, "Reading Index File for " + str + " file name:" + C3331jb.m32681a().f5679a.getFileStreamPath(m32533g(str)));
            List<C3407kg> list = (List) new C3342jj(C3331jb.m32681a().f5679a.getFileStreamPath(m32533g(str)), ".YFlurrySenderIndex.info.", 1, new AbstractC3422ko<List<C3407kg>>(this) { // from class: com.flurry.sdk.kf.2
                @Override // com.flurry.sdk.AbstractC3422ko
                /* renamed from: a */
                public final AbstractC3417kl<List<C3407kg>> mo32339a(int i) {
                    return new C3414kk(new C3407kg.C3408a());
                }
            }).m32641a();
            arrayList = new ArrayList();
            for (C3407kg kgVar : list) {
                arrayList.add(kgVar.f5843a);
            }
        }
        return arrayList;
    }

    /* renamed from: j */
    public final boolean m32530j(String str) {
        return new C3342jj(C3331jb.m32681a().f5679a.getFileStreamPath(C3395ke.m32545a(str)), ".yflurrydatasenderblock.", 1, new AbstractC3422ko<C3395ke>(this) { // from class: com.flurry.sdk.kf.5
            @Override // com.flurry.sdk.AbstractC3422ko
            /* renamed from: a */
            public final AbstractC3417kl<C3395ke> mo32339a(int i) {
                return new C3395ke.C3396a();
            }
        }).m32639b();
    }

    /* renamed from: k */
    public final boolean m32529k(String str) {
        boolean b;
        synchronized (this) {
            C3445la.m32460b();
            C3342jj jjVar = new C3342jj(C3331jb.m32681a().f5679a.getFileStreamPath(m32533g(str)), ".YFlurrySenderIndex.info.", 1, new AbstractC3422ko<List<C3407kg>>(this) { // from class: com.flurry.sdk.kf.7
                @Override // com.flurry.sdk.AbstractC3422ko
                /* renamed from: a */
                public final AbstractC3417kl<List<C3407kg>> mo32339a(int i) {
                    return new C3414kk(new C3407kg.C3408a());
                }
            });
            List<String> a = m32542a(str);
            if (a != null) {
                String str2 = f5840d;
                C3356jq.m32615a(4, str2, "discardOutdatedBlocksForDataKey: notSentBlocks = " + a.size());
                for (String str3 : a) {
                    m32530j(str3);
                    String str4 = f5840d;
                    C3356jq.m32615a(4, str4, "discardOutdatedBlocksForDataKey: removed block = " + str3);
                }
            }
            this.f5842c.remove(str);
            b = jjVar.m32639b();
            m32544a();
        }
        return b;
    }
}
