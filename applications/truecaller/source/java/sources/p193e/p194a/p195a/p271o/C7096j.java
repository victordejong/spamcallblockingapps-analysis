package p193e.p194a.p195a.p271o;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.StatFs;
import com.razorpay.AnalyticsConstants;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p195a.p235g1.AbstractC6254b;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.f0.v;
import s1.k;
import s1.u.i;
import s1.u.s;
import s1.u.t;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.y.h;
import s1.z.c.l;
/* renamed from: e.a.a.o.j */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/j.class */
public final class C7096j implements AbstractC7084f {

    /* renamed from: a */
    public final ContentResolver f22837a;

    /* renamed from: b */
    public final Context f22838b;

    /* renamed from: c */
    public final AbstractC6254b f22839c;

    @e(c = "com.truecaller.messaging.storagemanager.StorageManagerImpl", f = "StorageManager.kt", l = {95}, m = "getLangPackTotalSize")
    /* renamed from: e.a.a.o.j$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/j$a.class */
    public static final class C7097a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f22840d;

        /* renamed from: e */
        public int f22841e;

        /* renamed from: g */
        public Object f22843g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7097a(d dVar) {
            super(dVar);
            C7096j.this = r4;
        }

        /* renamed from: s */
        public final Object m30147s(Object obj) {
            this.f22840d = obj;
            this.f22841e |= Integer.MIN_VALUE;
            return C7096j.this.mo30151h(this);
        }
    }

    @Inject
    public C7096j(Context context, AbstractC6254b abstractC6254b) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC6254b, "translateManager");
        this.f22838b = context;
        this.f22839c = abstractC6254b;
        this.f22837a = context.getContentResolver();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v8, types: [long] */
    /* renamed from: a */
    public final long m30158a(File file) {
        ?? r0;
        ?? r7 = false;
        ?? r9 = false;
        try {
            File[] listFiles = file.listFiles();
            l.d(listFiles, "directory.listFiles()");
            int length = listFiles.length;
            int i = 0;
            while (true) {
                r9 = r7;
                if (i >= length) {
                    break;
                }
                File file2 = listFiles[i];
                r9 = r7;
                l.d(file2, "file");
                ?? r02 = r7;
                if (file2.isFile()) {
                    ?? r03 = r7;
                    r0 = file2.length();
                } else {
                    r0 = m30158a(file2);
                }
                r7 += r0;
                i++;
            }
        } catch (RuntimeException e) {
        }
        return r9 == true ? 1L : 0L;
    }

    @Override // p193e.p194a.p195a.p271o.AbstractC7084f
    /* renamed from: b */
    public Object mo30157b(d<? super Boolean> dVar) {
        File cacheDir = this.f22838b.getCacheDir();
        l.d(cacheDir, "context.cacheDir");
        return Boolean.valueOf(h.b(cacheDir));
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v3 */
    @Override // p193e.p194a.p195a.p271o.AbstractC7084f
    /* renamed from: c */
    public Object mo30156c(long j, d<? super Long> dVar) {
        String str = "ms_entity_type IN (1, 2, 4, 5, 6) AND ms_conversation_id = ?";
        l.d(str, "StringBuilder().apply(builderAction).toString()");
        Cursor query = this.f22837a.query(C8582g0.m28303q(false), null, str, new String[]{String.valueOf(j)}, null);
        ?? r11 = false;
        ?? r14 = false;
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    r11 = m30148k(query.getLong(0));
                }
                Long l = new Long(r11 == true ? 1L : 0L);
                C25225a.m4016G(query, null);
                r14 = l.longValue();
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
        return new Long(r14 == true ? 1L : 0L);
    }

    @Override // p193e.p194a.p195a.p271o.AbstractC7084f
    /* renamed from: d */
    public Object mo30155d(d<? super List<k<Long, Integer>>> dVar) {
        ArrayList arrayList;
        Cursor query = this.f22837a.query(C8582g0.m28303q(true), null, "ms_entity_type IN (1, 2, 4, 5, 6)", null, null);
        if (query != null) {
            try {
                arrayList = new ArrayList();
                while (query.moveToNext()) {
                    arrayList.add(new k(new Long(m30148k(query.getLong(0))), new Integer(query.getInt(1))));
                }
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        } else {
            arrayList = s.a;
        }
        return arrayList;
    }

    @Override // p193e.p194a.p195a.p271o.AbstractC7084f
    /* renamed from: e */
    public Object mo30154e(Set<String> set, d<? super Map<String, Long>> dVar) {
        File[] listFiles;
        File file = new File(this.f22838b.getNoBackupFilesDir(), "com.google.mlkit.translate.models");
        if (!file.exists() || file.isFile()) {
            return t.a;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String mo31545d = this.f22839c.mo31545d();
        for (File file2 : file.listFiles()) {
            l.d(file2, "file");
            String name = file2.getName();
            if (name != null) {
                List<String> U = v.U(name, new String[]{AnalyticsConstants.DELIMITER_MAIN}, false, 0, 6);
                for (String str : U) {
                    if (set.contains(str) && U.contains(mo31545d)) {
                        linkedHashMap.put(str, new Long(m30158a(file2)));
                    }
                }
            }
        }
        return linkedHashMap;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    @Override // p193e.p194a.p195a.p271o.AbstractC7084f
    /* renamed from: f */
    public Object mo30153f(d<? super Long> dVar) {
        Cursor query = this.f22837a.query(C8582g0.m28303q(false), null, "ms_entity_type IN (1, 2, 4, 5, 6)", null, null);
        ?? r9 = false;
        ?? r11 = false;
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    r9 = m30148k(query.getLong(0));
                }
                Long l = new Long(r9 == true ? 1L : 0L);
                C25225a.m4016G(query, null);
                r11 = l.longValue();
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
        return new Long(r11 == true ? 1L : 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    @Override // p193e.p194a.p195a.p271o.AbstractC7084f
    /* renamed from: g */
    public Object mo30152g(d<? super Long> dVar) {
        ArrayList<String> arrayList;
        Cursor query = this.f22837a.query(C17891a1.C17894c.m15706a(), new String[]{"recording_path"}, null, null, null);
        if (query != null) {
            try {
                arrayList = new ArrayList();
                while (query.moveToNext()) {
                    arrayList.add(query.getString(0));
                }
                Throwable th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        } else {
            arrayList = s.a;
        }
        ArrayList arrayList2 = new ArrayList(C25225a.m4004J(arrayList, 10));
        for (String str : arrayList) {
            l.d(str, "path");
            Cursor query2 = this.f22837a.query(Uri.parse(str), new String[]{"_size"}, null, null, null);
            ?? r13 = false;
            if (query2 != null) {
                r13 = false;
                try {
                    if (query2.moveToFirst()) {
                        r13 = query2.getLong(0);
                    }
                    Throwable th2 = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            arrayList2.add(new Long(r13 == true ? 1L : 0L));
        }
        return new Long(i.J0(arrayList2));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e1  */
    @Override // p193e.p194a.p195a.p271o.AbstractC7084f
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo30151h(s1.w.d<? super java.lang.Long> r6) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p271o.C7096j.mo30151h(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p195a.p271o.AbstractC7084f
    /* renamed from: i */
    public Object mo30150i(d<? super Long> dVar) {
        File cacheDir = this.f22838b.getCacheDir();
        if (cacheDir.exists()) {
            l.d(cacheDir, "dir");
            return new Long(m30158a(cacheDir));
        }
        return new Long(0L);
    }

    @Override // p193e.p194a.p195a.p271o.AbstractC7084f
    /* renamed from: j */
    public Object mo30149j(d<? super k<Long, Long>> dVar) {
        File file;
        String absolutePath;
        int H;
        if (l.a(Environment.getExternalStorageState(), "mounted")) {
            File[] externalFilesDirs = this.f22838b.getExternalFilesDirs(null);
            l.d(externalFilesDirs, "context.getExternalFilesDirs(null)");
            int length = externalFilesDirs.length;
            int i = 0;
            while (true) {
                file = null;
                if (i < length) {
                    File file2 = externalFilesDirs[i];
                    if (file2 != null && (absolutePath = file2.getAbsolutePath()) != null && (H = v.H(absolutePath, "/Android", 0, false, 6)) >= 0) {
                        String substring = absolutePath.substring(0, H);
                        l.d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        file = new File(substring);
                        break;
                    }
                    i++;
                } else {
                    break;
                }
            }
            if (file == null) {
                return new k(new Long(0L), new Long(0L));
            }
            StatFs statFs = new StatFs(file.getAbsolutePath());
            long blockSizeLong = statFs.getBlockSizeLong();
            long blockCountLong = statFs.getBlockCountLong();
            long availableBlocksLong = statFs.getAvailableBlocksLong() * blockSizeLong;
            return new k(new Long((blockCountLong * blockSizeLong) - availableBlocksLong), new Long(availableBlocksLong));
        }
        return new k(new Long(0L), new Long(0L));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* renamed from: k */
    public final long m30148k(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        ?? r6 = j;
        if (i <= 0) {
            r6 = 0;
        }
        return r6;
    }
}
