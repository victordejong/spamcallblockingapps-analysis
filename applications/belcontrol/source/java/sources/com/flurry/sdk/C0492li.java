package com.flurry.sdk;

import android.content.Context;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
/* renamed from: com.flurry.sdk.li */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/li.class */
public class C0492li {

    /* renamed from: a */
    public static final Integer f3554a = 50;

    /* renamed from: d */
    private static final String f3555d = C0492li.class.getSimpleName();

    /* renamed from: b */
    public String f3556b;

    /* renamed from: c */
    public LinkedHashMap<String, List<String>> f3557c;

    public C0492li(String str) {
        String str2 = str + "Main";
        this.f3556b = str2;
        m4533b(str2);
    }

    /* renamed from: a */
    private void m4539a() {
        synchronized (this) {
            LinkedList linkedList = new LinkedList(this.f3557c.keySet());
            new C0469kn(C0462kg.m4652a().f3460a.getFileStreamPath(m4528g(this.f3556b)), ".YFlurrySenderIndex.info.", 1, new 6(this)).m4621b();
            if (!linkedList.isEmpty()) {
                String str = this.f3556b;
                m4535a(str, linkedList, str);
            }
        }
    }

    /* renamed from: a */
    private void m4535a(String str, List<String> list, String str2) {
        synchronized (this) {
            C0505md.m4482b();
            String str3 = f3555d;
            C0478ku.m4596a(5, str3, "Saving Index File for " + str + " file name:" + C0462kg.m4652a().f3460a.getFileStreamPath(m4528g(str)));
            C0469kn c0469kn = new C0469kn(C0462kg.m4652a().f3460a.getFileStreamPath(m4528g(str)), str2, 1, new 4(this));
            ArrayList arrayList = new ArrayList();
            for (String str4 : list) {
                arrayList.add(new C0493lj(str4));
            }
            c0469kn.m4622a(arrayList);
        }
    }

    /* renamed from: a */
    private void m4534a(String str, byte[] bArr) {
        synchronized (this) {
            C0505md.m4482b();
            String str2 = f3555d;
            C0478ku.m4596a(5, str2, "Saving Block File for " + str + " file name:" + C0462kg.m4652a().f3460a.getFileStreamPath(C0491lh.m4540a(str)));
            new C0469kn(C0462kg.m4652a().f3460a.getFileStreamPath(C0491lh.m4540a(str)), ".yflurrydatasenderblock.", 1, new 3(this)).m4622a(new C0491lh(bArr));
        }
    }

    /* renamed from: b */
    private void m4533b(String str) {
        this.f3557c = new LinkedHashMap<>();
        ArrayList<String> arrayList = new ArrayList();
        if (m4532c(str)) {
            List<String> m4531d = m4531d(str);
            if (m4531d != null && m4531d.size() > 0) {
                arrayList.addAll(m4531d);
                for (String str2 : arrayList) {
                    m4530e(str2);
                }
            }
            m4529f(str);
        } else {
            List<C0493lj> list = (List) new C0469kn(C0462kg.m4652a().f3460a.getFileStreamPath(m4528g(this.f3556b)), str, 1, new 1(this)).m4623a();
            if (list == null) {
                C0478ku.m4587c(f3555d, "New main file also not found. returning..");
                return;
            }
            for (C0493lj c0493lj : list) {
                arrayList.add(c0493lj.f3558a);
            }
        }
        for (String str3 : arrayList) {
            this.f3557c.put(str3, m4527h(str3));
        }
    }

    /* renamed from: c */
    private boolean m4532c(String str) {
        boolean exists;
        synchronized (this) {
            Context context = C0462kg.m4652a().f3460a;
            File fileStreamPath = context.getFileStreamPath(".FlurrySenderIndex.info." + str);
            String str2 = f3555d;
            C0478ku.m4596a(5, str2, "isOldIndexFilePresent: for " + str + fileStreamPath.exists());
            exists = fileStreamPath.exists();
        }
        return exists;
    }

    /* renamed from: d */
    private List<String> m4531d(String str) {
        ArrayList arrayList;
        ArrayList arrayList2;
        DataInputStream dataInputStream;
        Throwable th;
        int readUnsignedShort;
        synchronized (this) {
            C0505md.m4482b();
            String str2 = f3555d;
            StringBuilder sb = new StringBuilder("Reading Index File for ");
            sb.append(str);
            sb.append(" file name:");
            sb.append(C0462kg.m4652a().f3460a.getFileStreamPath(".FlurrySenderIndex.info." + str));
            C0478ku.m4596a(5, str2, sb.toString());
            File fileStreamPath = C0462kg.m4652a().f3460a.getFileStreamPath(".FlurrySenderIndex.info." + str);
            if (fileStreamPath.exists()) {
                C0478ku.m4596a(5, str2, "Reading Index File for " + str + " Found file.");
                try {
                    dataInputStream = new DataInputStream(new FileInputStream(fileStreamPath));
                    try {
                        readUnsignedShort = dataInputStream.readUnsignedShort();
                    } catch (Throwable th2) {
                        th = th2;
                        arrayList2 = null;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    dataInputStream = null;
                    arrayList2 = null;
                }
                if (readUnsignedShort == 0) {
                    C0505md.m4487a((Closeable) dataInputStream);
                    return null;
                }
                arrayList2 = new ArrayList(readUnsignedShort);
                for (int i = 0; i < readUnsignedShort; i++) {
                    try {
                        int readUnsignedShort2 = dataInputStream.readUnsignedShort();
                        C0478ku.m4596a(4, f3555d, "read iter " + i + " dataLength = " + readUnsignedShort2);
                        byte[] bArr = new byte[readUnsignedShort2];
                        dataInputStream.readFully(bArr);
                        arrayList2.add(new String(bArr));
                    } catch (Throwable th4) {
                        th = th4;
                        C0478ku.m4595a(6, f3555d, "Error when loading persistent file", th);
                        C0505md.m4487a((Closeable) dataInputStream);
                        arrayList = arrayList2;
                        return arrayList;
                    }
                }
                dataInputStream.readUnsignedShort();
                C0505md.m4487a((Closeable) dataInputStream);
                arrayList = arrayList2;
            } else {
                C0478ku.m4596a(5, str2, "Agent cache file doesn't exist.");
                arrayList = null;
            }
            return arrayList;
        }
    }

    /* renamed from: e */
    private void m4530e(String str) {
        List<String> m4531d = m4531d(str);
        if (m4531d == null) {
            C0478ku.m4587c(f3555d, "No old file to replace");
            return;
        }
        for (String str2 : m4531d) {
            byte[] m4526i = m4526i(str2);
            if (m4526i == null) {
                C0478ku.m4596a(6, f3555d, "File does not exist");
            } else {
                m4534a(str2, m4526i);
                C0505md.m4482b();
                String str3 = f3555d;
                StringBuilder sb = new StringBuilder("Deleting  block File for ");
                sb.append(str2);
                sb.append(" file name:");
                Context context = C0462kg.m4652a().f3460a;
                sb.append(context.getFileStreamPath(".flurrydatasenderblock." + str2));
                C0478ku.m4596a(5, str3, sb.toString());
                Context context2 = C0462kg.m4652a().f3460a;
                File fileStreamPath = context2.getFileStreamPath(".flurrydatasenderblock." + str2);
                if (fileStreamPath.exists()) {
                    boolean delete = fileStreamPath.delete();
                    C0478ku.m4596a(5, str3, "Found file for " + str2 + ". Deleted - " + delete);
                }
            }
        }
        m4535a(str, m4531d, ".YFlurrySenderIndex.info.");
        m4529f(str);
    }

    /* renamed from: f */
    private static void m4529f(String str) {
        C0505md.m4482b();
        String str2 = f3555d;
        StringBuilder sb = new StringBuilder("Deleting Index File for ");
        sb.append(str);
        sb.append(" file name:");
        Context context = C0462kg.m4652a().f3460a;
        sb.append(context.getFileStreamPath(".FlurrySenderIndex.info." + str));
        C0478ku.m4596a(5, str2, sb.toString());
        Context context2 = C0462kg.m4652a().f3460a;
        File fileStreamPath = context2.getFileStreamPath(".FlurrySenderIndex.info." + str);
        if (fileStreamPath.exists()) {
            boolean delete = fileStreamPath.delete();
            C0478ku.m4596a(5, str2, "Found file for " + str + ". Deleted - " + delete);
        }
    }

    /* renamed from: g */
    private static String m4528g(String str) {
        return ".YFlurrySenderIndex.info." + str;
    }

    /* renamed from: h */
    private List<String> m4527h(String str) {
        ArrayList arrayList;
        synchronized (this) {
            C0505md.m4482b();
            String str2 = f3555d;
            C0478ku.m4596a(5, str2, "Reading Index File for " + str + " file name:" + C0462kg.m4652a().f3460a.getFileStreamPath(m4528g(str)));
            List<C0493lj> list = (List) new C0469kn(C0462kg.m4652a().f3460a.getFileStreamPath(m4528g(str)), ".YFlurrySenderIndex.info.", 1, new 2(this)).m4623a();
            arrayList = new ArrayList();
            for (C0493lj c0493lj : list) {
                arrayList.add(c0493lj.f3558a);
            }
        }
        return arrayList;
    }

    /* renamed from: i */
    private static byte[] m4526i(String str) {
        byte[] bArr;
        Throwable th;
        C0505md.m4482b();
        String str2 = f3555d;
        StringBuilder sb = new StringBuilder("Reading block File for ");
        sb.append(str);
        sb.append(" file name:");
        sb.append(C0462kg.m4652a().f3460a.getFileStreamPath(".flurrydatasenderblock." + str));
        C0478ku.m4596a(5, str2, sb.toString());
        File fileStreamPath = C0462kg.m4652a().f3460a.getFileStreamPath(".flurrydatasenderblock." + str);
        DataInputStream dataInputStream = null;
        if (fileStreamPath.exists()) {
            C0478ku.m4596a(5, str2, "Reading Index File for " + str + " Found file.");
            try {
                DataInputStream dataInputStream2 = new DataInputStream(new FileInputStream(fileStreamPath));
                bArr = null;
                try {
                    int readUnsignedShort = dataInputStream2.readUnsignedShort();
                    if (readUnsignedShort == 0) {
                        C0505md.m4487a((Closeable) dataInputStream2);
                        return null;
                    }
                    byte[] bArr2 = new byte[readUnsignedShort];
                    dataInputStream2.readFully(bArr2);
                    bArr = bArr2;
                    dataInputStream2.readUnsignedShort();
                    C0505md.m4487a((Closeable) dataInputStream2);
                    bArr = bArr2;
                } catch (Throwable th2) {
                    th = th2;
                    dataInputStream = dataInputStream2;
                    try {
                        C0478ku.m4595a(6, f3555d, "Error when loading persistent file", th);
                        C0505md.m4487a((Closeable) dataInputStream);
                        return bArr;
                    } catch (Throwable th3) {
                        C0505md.m4487a((Closeable) dataInputStream);
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                bArr = null;
            }
        } else {
            C0478ku.m4596a(4, str2, "Agent cache file doesn't exist.");
            bArr = null;
        }
        return bArr;
    }

    /* renamed from: j */
    private boolean m4525j(String str) {
        return new C0469kn(C0462kg.m4652a().f3460a.getFileStreamPath(C0491lh.m4540a(str)), ".yflurrydatasenderblock.", 1, new 5(this)).m4621b();
    }

    /* renamed from: k */
    private boolean m4524k(String str) {
        boolean m4621b;
        synchronized (this) {
            C0505md.m4482b();
            C0469kn c0469kn = new C0469kn(C0462kg.m4652a().f3460a.getFileStreamPath(m4528g(str)), ".YFlurrySenderIndex.info.", 1, new 7(this));
            List<String> m4537a = m4537a(str);
            if (m4537a != null) {
                String str2 = f3555d;
                C0478ku.m4596a(4, str2, "discardOutdatedBlocksForDataKey: notSentBlocks = " + m4537a.size());
                for (String str3 : m4537a) {
                    m4525j(str3);
                    String str4 = f3555d;
                    C0478ku.m4596a(4, str4, "discardOutdatedBlocksForDataKey: removed block = " + str3);
                }
            }
            this.f3557c.remove(str);
            m4621b = c0469kn.m4621b();
            m4539a();
        }
        return m4621b;
    }

    /* renamed from: a */
    public final List<String> m4537a(String str) {
        return this.f3557c.get(str);
    }

    /* renamed from: a */
    public final void m4538a(C0491lh c0491lh, String str) {
        boolean z;
        synchronized (this) {
            String str2 = f3555d;
            C0478ku.m4596a(4, str2, "addBlockInfo" + str);
            String str3 = c0491lh.f3550a;
            List<String> list = this.f3557c.get(str);
            if (list == null) {
                C0478ku.m4596a(4, str2, "New Data Key");
                list = new LinkedList<>();
                z = true;
            } else {
                z = false;
            }
            list.add(str3);
            if (list.size() > f3554a.intValue()) {
                m4525j(list.get(0));
                list.remove(0);
            }
            this.f3557c.put(str, list);
            m4535a(str, list, ".YFlurrySenderIndex.info.");
            if (z) {
                m4539a();
            }
        }
    }

    /* renamed from: a */
    public final boolean m4536a(String str, String str2) {
        boolean z;
        List<String> list = this.f3557c.get(str2);
        if (list != null) {
            m4525j(str);
            z = list.remove(str);
        } else {
            z = false;
        }
        if (list == null || list.isEmpty()) {
            m4524k(str2);
        } else {
            this.f3557c.put(str2, list);
            m4535a(str2, list, ".YFlurrySenderIndex.info.");
        }
        return z;
    }
}
