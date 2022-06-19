package com.google.android.exoplayer2.upstream.cache;

import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.os.ConditionVariable;
import com.google.android.exoplayer2.database.AbstractC10926a;
import com.google.android.exoplayer2.database.C10928c;
import com.google.android.exoplayer2.database.DatabaseIOException;
import com.google.android.exoplayer2.upstream.cache.AbstractC11555j;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11617n;
import java.io.File;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
/* renamed from: com.google.android.exoplayer2.upstream.cache.n */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/n.class */
public final class C11559n implements Cache {

    /* renamed from: a */
    private static final HashSet<File> f38481a = new HashSet<>();

    /* renamed from: b */
    private final File f38482b;

    /* renamed from: c */
    private final AbstractC11544c f38483c;

    /* renamed from: d */
    private final C11551i f38484d;

    /* renamed from: e */
    private final C11546e f38485e;

    /* renamed from: f */
    private final HashMap<String, ArrayList<Cache.AbstractC11538a>> f38486f;

    /* renamed from: g */
    private final Random f38487g;

    /* renamed from: h */
    private final boolean f38488h;

    /* renamed from: i */
    private long f38489i;

    /* renamed from: j */
    private long f38490j;

    /* renamed from: k */
    private boolean f38491k;

    /* renamed from: l */
    private Cache.CacheException f38492l;

    @Deprecated
    public C11559n(File file, AbstractC11544c abstractC11544c) {
        this(file, abstractC11544c, (byte[]) null, false);
    }

    public C11559n(File file, AbstractC11544c abstractC11544c, AbstractC10926a abstractC10926a) {
        this(file, abstractC11544c, abstractC10926a, null, false, false);
    }

    public C11559n(File file, AbstractC11544c abstractC11544c, AbstractC10926a abstractC10926a, byte[] bArr, boolean z, boolean z2) {
        this(file, abstractC11544c, new C11551i(abstractC10926a, file, bArr, z, z2), (abstractC10926a == null || z2) ? null : new C11546e(abstractC10926a));
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [com.google.android.exoplayer2.upstream.cache.n$1] */
    C11559n(File file, AbstractC11544c abstractC11544c, C11551i c11551i, C11546e c11546e) {
        if (m20098b(file)) {
            this.f38482b = file;
            this.f38483c = abstractC11544c;
            this.f38484d = c11551i;
            this.f38485e = c11546e;
            this.f38486f = new HashMap<>();
            this.f38487g = new Random();
            this.f38488h = true;
            this.f38489i = -1L;
            final ConditionVariable conditionVariable = new ConditionVariable();
            new Thread("ExoPlayer:SimpleCacheInit") { // from class: com.google.android.exoplayer2.upstream.cache.n.1
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    synchronized (C11559n.this) {
                        conditionVariable.open();
                        C11559n.m20113a(C11559n.this);
                        AbstractC11544c unused = C11559n.this.f38483c;
                    }
                }
            }.start();
            conditionVariable.block();
            return;
        }
        throw new IllegalStateException("Another SimpleCache instance uses the folder: ".concat(String.valueOf(file)));
    }

    @Deprecated
    public C11559n(File file, AbstractC11544c abstractC11544c, byte[] bArr) {
        this(file, abstractC11544c, bArr, bArr != null);
    }

    @Deprecated
    public C11559n(File file, AbstractC11544c abstractC11544c, byte[] bArr, boolean z) {
        this(file, abstractC11544c, null, bArr, z, true);
    }

    /* renamed from: a */
    private static long m20103a(File[] fileArr) {
        for (File file : fileArr) {
            String name = file.getName();
            if (name.endsWith(".uid")) {
                try {
                    return Long.parseLong(name.substring(0, name.indexOf(46)), 16);
                } catch (NumberFormatException e) {
                    C11617n.m19858b("SimpleCache", "Malformed UID file: ".concat(String.valueOf(file)));
                    file.delete();
                }
            }
        }
        return -1L;
    }

    /* renamed from: a */
    private C11561o m20104a(String str, C11561o c11561o) {
        if (!this.f38488h) {
            return c11561o;
        }
        String name = ((File) C11593a.m20020b(c11561o.f38446e)).getName();
        long j = c11561o.f38444c;
        long currentTimeMillis = System.currentTimeMillis();
        boolean z = false;
        C11546e c11546e = this.f38485e;
        if (c11546e != null) {
            try {
                c11546e.m20169a(name, j, currentTimeMillis);
            } catch (IOException e) {
                C11617n.m19863a("SimpleCache", "Failed to update index with new touch timestamp.");
            }
        } else {
            z = true;
        }
        C11549h m20154b = this.f38484d.m20154b(str);
        C11593a.m20019b(m20154b.f38450c.remove(c11561o));
        File file = (File) C11593a.m20020b(c11561o.f38446e);
        if (z) {
            File m20090a = C11561o.m20090a((File) C11593a.m20020b(file.getParentFile()), m20154b.f38448a, c11561o.f38443b, currentTimeMillis);
            if (file.renameTo(m20090a)) {
                file = m20090a;
            } else {
                C11617n.m19863a("CachedContent", "Failed to rename " + file + " to " + m20090a);
            }
        }
        C11593a.m20019b(c11561o.f38445d);
        C11561o c11561o2 = new C11561o(c11561o.f38442a, c11561o.f38443b, c11561o.f38444c, currentTimeMillis, file);
        m20154b.f38450c.add(c11561o2);
        m20111a(c11561o, c11561o2);
        return c11561o2;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v127, types: [long] */
    /* renamed from: a */
    static /* synthetic */ void m20113a(C11559n c11559n) {
        if (!c11559n.f38482b.exists()) {
            try {
                m20110a(c11559n.f38482b);
            } catch (Cache.CacheException e) {
                c11559n.f38492l = e;
                return;
            }
        }
        File[] listFiles = c11559n.f38482b.listFiles();
        if (listFiles == null) {
            String str = "Failed to list cache directory files: " + c11559n.f38482b;
            C11617n.m19858b("SimpleCache", str);
            c11559n.f38492l = new Cache.CacheException(str);
            return;
        }
        long m20103a = m20103a(listFiles);
        c11559n.f38489i = m20103a;
        if (m20103a == -1) {
            try {
                File file = c11559n.f38482b;
                long nextLong = new SecureRandom().nextLong();
                char abs = nextLong == Long.MIN_VALUE ? (char) 0 : Math.abs(nextLong);
                File file2 = new File(file, Long.toString(abs, 16) + ".uid");
                if (!file2.createNewFile()) {
                    throw new IOException("Failed to create UID file: ".concat(String.valueOf(file2)));
                }
                c11559n.f38489i = abs;
            } catch (IOException e2) {
                String str2 = "Failed to create cache UID: " + c11559n.f38482b;
                C11617n.m19857b("SimpleCache", str2, e2);
                c11559n.f38492l = new Cache.CacheException(str2, e2);
                return;
            }
        }
        try {
            C11551i c11551i = c11559n.f38484d;
            long j = c11559n.f38489i;
            c11551i.f38457c.mo20142a(j);
            if (c11551i.f38458d != null) {
                c11551i.f38458d.mo20142a(j);
            }
            if (c11551i.f38457c.mo20143a() || c11551i.f38458d == null || !c11551i.f38458d.mo20143a()) {
                c11551i.f38457c.mo20138a(c11551i.f38455a, c11551i.f38456b);
            } else {
                c11551i.f38458d.mo20138a(c11551i.f38455a, c11551i.f38456b);
                c11551i.f38457c.mo20139a(c11551i.f38455a);
            }
            if (c11551i.f38458d != null) {
                c11551i.f38458d.mo20137b();
                c11551i.f38458d = null;
            }
            C11546e c11546e = c11559n.f38485e;
            if (c11546e != null) {
                try {
                    String hexString = Long.toHexString(c11559n.f38489i);
                    c11546e.f38440b = "ExoPlayerCacheFileMetadata".concat(String.valueOf(hexString));
                    if (C10928c.m21926b(c11546e.f38439a.getReadableDatabase(), 2, hexString) != 1) {
                        SQLiteDatabase writableDatabase = c11546e.f38439a.getWritableDatabase();
                        writableDatabase.beginTransactionNonExclusive();
                        try {
                            C10928c.m21927a(writableDatabase, 2, hexString);
                            writableDatabase.execSQL("DROP TABLE IF EXISTS ".concat(String.valueOf(c11546e.f38440b)));
                            writableDatabase.execSQL("CREATE TABLE " + c11546e.f38440b + " (name TEXT PRIMARY KEY NOT NULL,length INTEGER NOT NULL,last_touch_timestamp INTEGER NOT NULL)");
                            writableDatabase.setTransactionSuccessful();
                            writableDatabase.endTransaction();
                        } catch (Throwable th) {
                            writableDatabase.endTransaction();
                            throw th;
                        }
                    }
                    Map<String, C11545d> m20171a = c11559n.f38485e.m20171a();
                    c11559n.m20108a(c11559n.f38482b, true, listFiles, m20171a);
                    c11559n.f38485e.m20168a(m20171a.keySet());
                } catch (SQLException e3) {
                    throw new DatabaseIOException(e3);
                }
            } else {
                c11559n.m20108a(c11559n.f38482b, true, listFiles, null);
            }
            c11559n.f38484d.m20153c();
            try {
                c11559n.f38484d.m20160a();
            } catch (IOException e4) {
                C11617n.m19857b("SimpleCache", "Storing index file failed", e4);
            }
        } catch (IOException e5) {
            String str3 = "Failed to initialize cache indices: " + c11559n.f38482b;
            C11617n.m19857b("SimpleCache", str3, e5);
            c11559n.f38492l = new Cache.CacheException(str3, e5);
        }
    }

    /* renamed from: a */
    private void m20112a(C11561o c11561o) {
        this.f38484d.m20156a(c11561o.f38442a).m20161a(c11561o);
        this.f38490j += c11561o.f38444c;
        m20099b(c11561o);
    }

    /* renamed from: a */
    private void m20111a(C11561o c11561o, C11548g c11548g) {
        ArrayList<Cache.AbstractC11538a> arrayList = this.f38486f.get(c11561o.f38442a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).mo20119a(this, c11561o, c11548g);
            }
        }
        this.f38483c.mo20119a(this, c11561o, c11548g);
    }

    /* renamed from: a */
    private static void m20110a(File file) throws Cache.CacheException {
        if (file.mkdirs() || file.isDirectory()) {
            return;
        }
        String concat = "Failed to create cache directory: ".concat(String.valueOf(file));
        C11617n.m19858b("SimpleCache", concat);
        throw new Cache.CacheException(concat);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* renamed from: a */
    private void m20108a(File file, boolean z, File[] fileArr, Map<String, C11545d> map) {
        if (fileArr == null || fileArr.length == 0) {
            if (z) {
                return;
            }
            file.delete();
            return;
        }
        for (File file2 : fileArr) {
            String name = file2.getName();
            if (z && name.indexOf(46) == -1) {
                m20108a(file2, false, file2.listFiles(), map);
            } else if (!z || (!name.startsWith("cached_content_index.exi") && !name.endsWith(".uid"))) {
                ?? r15 = true;
                ?? r17 = true;
                C11545d remove = map != null ? map.remove(name) : null;
                if (remove != null) {
                    r15 = remove.f38436a;
                    r17 = remove.f38437b;
                }
                C11561o m20089a = C11561o.m20089a(file2, r15 == true ? 1L : 0L, r17 == true ? 1L : 0L, this.f38484d);
                if (m20089a != null) {
                    m20112a(m20089a);
                } else {
                    file2.delete();
                }
            }
        }
    }

    /* renamed from: b */
    private void m20099b(C11561o c11561o) {
        ArrayList<Cache.AbstractC11538a> arrayList = this.f38486f.get(c11561o.f38442a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).mo20120a(this, c11561o);
            }
        }
        this.f38483c.mo20120a(this, c11561o);
    }

    /* renamed from: b */
    private static boolean m20098b(File file) {
        boolean add;
        synchronized (C11559n.class) {
            try {
                add = f38481a.add(file.getAbsoluteFile());
            } catch (Throwable th) {
                throw th;
            }
        }
        return add;
    }

    /* renamed from: c */
    private void m20096c() throws Cache.CacheException {
        synchronized (this) {
            Cache.CacheException cacheException = this.f38492l;
            if (cacheException != null) {
                throw cacheException;
            }
        }
    }

    /* renamed from: c */
    private void m20095c(C11548g c11548g) {
        C11549h m20154b = this.f38484d.m20154b(c11548g.f38442a);
        if (m20154b == null || !m20154b.m20162a(c11548g)) {
            return;
        }
        this.f38490j -= c11548g.f38444c;
        if (this.f38485e != null) {
            String name = c11548g.f38446e.getName();
            try {
                this.f38485e.m20170a(name);
            } catch (IOException e) {
                C11617n.m19863a("SimpleCache", "Failed to remove file index entry for: ".concat(String.valueOf(name)));
            }
        }
        this.f38484d.m20150d(m20154b.f38449b);
        m20091d(c11548g);
    }

    /* renamed from: c */
    private static void m20094c(File file) {
        synchronized (C11559n.class) {
            try {
                f38481a.remove(file.getAbsoluteFile());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: d */
    private void m20092d() {
        ArrayList arrayList = new ArrayList();
        for (C11549h c11549h : this.f38484d.m20155b()) {
            Iterator<C11561o> it2 = c11549h.f38450c.iterator();
            while (it2.hasNext()) {
                C11561o next = it2.next();
                if (next.f38446e.length() != next.f38444c) {
                    arrayList.add(next);
                }
            }
        }
        for (int i = 0; i < arrayList.size(); i++) {
            m20095c((C11548g) arrayList.get(i));
        }
    }

    /* renamed from: d */
    private void m20091d(C11548g c11548g) {
        ArrayList<Cache.AbstractC11538a> arrayList = this.f38486f.get(c11548g.f38442a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).mo20118a(c11548g);
            }
        }
        this.f38483c.mo20118a(c11548g);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /* renamed from: a */
    public final long mo20115a() {
        long j;
        synchronized (this) {
            C11593a.m20019b(!this.f38491k);
            j = this.f38490j;
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /* renamed from: a */
    public final C11548g mo20106a(String str, long j, long j2) throws InterruptedException, Cache.CacheException {
        C11548g mo20097b;
        synchronized (this) {
            C11593a.m20019b(!this.f38491k);
            m20096c();
            while (true) {
                mo20097b = mo20097b(str, j, j2);
                if (mo20097b == null) {
                    wait();
                }
            }
        }
        return mo20097b;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /* renamed from: a */
    public final AbstractC11555j mo20107a(String str) {
        synchronized (this) {
            C11593a.m20019b(!this.f38491k);
            C11549h m20154b = this.f38484d.m20154b(str);
            if (m20154b != null) {
                return m20154b.f38452e;
            }
            return C11557l.f38475a;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /* renamed from: a */
    public final void mo20114a(C11548g c11548g) {
        synchronized (this) {
            C11593a.m20019b(!this.f38491k);
            C11549h c11549h = (C11549h) C11593a.m20020b(this.f38484d.m20154b(c11548g.f38442a));
            long j = c11548g.f38443b;
            for (int i = 0; i < c11549h.f38451d.size(); i++) {
                if (c11549h.f38451d.get(i).f38453a == j) {
                    c11549h.f38451d.remove(i);
                    this.f38484d.m20150d(c11549h.f38449b);
                    notifyAll();
                }
            }
            throw new IllegalStateException();
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /* renamed from: a */
    public final void mo20109a(File file, long j) throws Cache.CacheException {
        synchronized (this) {
            C11593a.m20019b(!this.f38491k);
            if (!file.exists()) {
                return;
            }
            if (j == 0) {
                file.delete();
                return;
            }
            C11561o c11561o = (C11561o) C11593a.m20020b(C11561o.m20088a(file, j, this.f38484d));
            C11549h c11549h = (C11549h) C11593a.m20020b(this.f38484d.m20154b(c11561o.f38442a));
            C11593a.m20019b(c11549h.m20163a(c11561o.f38443b, c11561o.f38444c));
            long m20135a = AbstractC11555j._CC.m20135a(c11549h.f38452e);
            if (m20135a != -1) {
                C11593a.m20019b(c11561o.f38443b + c11561o.f38444c <= m20135a);
            }
            if (this.f38485e != null) {
                try {
                    this.f38485e.m20169a(file.getName(), c11561o.f38444c, c11561o.f38447f);
                } catch (IOException e) {
                    throw new Cache.CacheException(e);
                }
            }
            m20112a(c11561o);
            try {
                this.f38484d.m20160a();
                notifyAll();
            } catch (IOException e2) {
                throw new Cache.CacheException(e2);
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /* renamed from: a */
    public final void mo20105a(String str, C11556k c11556k) throws Cache.CacheException {
        synchronized (this) {
            C11593a.m20019b(!this.f38491k);
            m20096c();
            C11551i c11551i = this.f38484d;
            C11549h m20156a = c11551i.m20156a(str);
            C11557l c11557l = m20156a.f38452e;
            m20156a.f38452e = m20156a.f38452e.m20128a(c11556k);
            if (!m20156a.f38452e.equals(c11557l)) {
                c11551i.f38457c.mo20141a(m20156a);
            }
            try {
                this.f38484d.m20160a();
            } catch (IOException e) {
                throw new Cache.CacheException(e);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0162 A[LOOP:1: B:39:0x00f6->B:58:0x0162, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x015c A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v85, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.exoplayer2.upstream.cache.C11548g mo20097b(java.lang.String r7, long r8, long r10) throws com.google.android.exoplayer2.upstream.cache.Cache.CacheException {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.cache.C11559n.mo20097b(java.lang.String, long, long):com.google.android.exoplayer2.upstream.cache.g");
    }

    /* renamed from: b */
    public final void m20102b() {
        synchronized (this) {
            if (this.f38491k) {
                return;
            }
            this.f38486f.clear();
            m20092d();
            try {
                this.f38484d.m20160a();
                m20094c(this.f38482b);
                this.f38491k = true;
            } catch (IOException e) {
                C11617n.m19857b("SimpleCache", "Storing index file failed", e);
                m20094c(this.f38482b);
                this.f38491k = true;
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /* renamed from: b */
    public final void mo20101b(C11548g c11548g) {
        synchronized (this) {
            C11593a.m20019b(!this.f38491k);
            m20095c(c11548g);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /* renamed from: c */
    public final File mo20093c(String str, long j, long j2) throws Cache.CacheException {
        File m20090a;
        synchronized (this) {
            C11593a.m20019b(!this.f38491k);
            m20096c();
            C11549h m20154b = this.f38484d.m20154b(str);
            C11593a.m20020b(m20154b);
            C11593a.m20019b(m20154b.m20163a(j, j2));
            if (!this.f38482b.exists()) {
                m20110a(this.f38482b);
                m20092d();
            }
            this.f38483c.mo20121a(this, j2);
            File file = new File(this.f38482b, Integer.toString(this.f38487g.nextInt(10)));
            if (!file.exists()) {
                m20110a(file);
            }
            m20090a = C11561o.m20090a(file, m20154b.f38448a, j, System.currentTimeMillis());
        }
        return m20090a;
    }
}
