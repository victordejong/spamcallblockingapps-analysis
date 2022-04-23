package com.google.android.exoplayer2.upstream.cache;

import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.os.ConditionVariable;
import com.google.android.exoplayer2.database.DatabaseIOException;
import com.google.android.exoplayer2.database.a;
import com.google.android.exoplayer2.database.c;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.j;
import java.io.File;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/n.class */
public final class n implements Cache {

    /* renamed from: a  reason: collision with root package name */
    private static final HashSet<File> f22186a = new HashSet<>();

    /* renamed from: b  reason: collision with root package name */
    private final File f22187b;

    /* renamed from: c  reason: collision with root package name */
    private final c f22188c;

    /* renamed from: d  reason: collision with root package name */
    private final i f22189d;
    private final e e;
    private final HashMap<String, ArrayList<Cache.a>> f;
    private final Random g;
    private final boolean h;
    private long i;
    private long j;
    private boolean k;
    private Cache.CacheException l;

    @Deprecated
    public n(File file, c cVar) {
        this(file, cVar, (byte[]) null, false);
    }

    public n(File file, c cVar, a aVar) {
        this(file, cVar, aVar, null, false, false);
    }

    public n(File file, c cVar, a aVar, byte[] bArr, boolean z, boolean z2) {
        this(file, cVar, new i(aVar, file, bArr, z, z2), (aVar == null || z2) ? null : new e(aVar));
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [com.google.android.exoplayer2.upstream.cache.n$1] */
    n(File file, c cVar, i iVar, e eVar) {
        if (b(file)) {
            this.f22187b = file;
            this.f22188c = cVar;
            this.f22189d = iVar;
            this.e = eVar;
            this.f = new HashMap<>();
            this.g = new Random();
            this.h = true;
            this.i = -1L;
            final ConditionVariable conditionVariable = new ConditionVariable();
            new Thread("ExoPlayer:SimpleCacheInit") { // from class: com.google.android.exoplayer2.upstream.cache.n.1
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    synchronized (n.this) {
                        conditionVariable.open();
                        n.a(n.this);
                        c unused = n.this.f22188c;
                    }
                }
            }.start();
            conditionVariable.block();
            return;
        }
        throw new IllegalStateException("Another SimpleCache instance uses the folder: ".concat(String.valueOf(file)));
    }

    @Deprecated
    public n(File file, c cVar, byte[] bArr) {
        this(file, cVar, bArr, bArr != null);
    }

    @Deprecated
    public n(File file, c cVar, byte[] bArr, boolean z) {
        this(file, cVar, null, bArr, z, true);
    }

    private static long a(File[] fileArr) {
        for (File file : fileArr) {
            String name = file.getName();
            if (name.endsWith(".uid")) {
                try {
                    return Long.parseLong(name.substring(0, name.indexOf(46)), 16);
                } catch (NumberFormatException e) {
                    com.google.android.exoplayer2.util.n.b("SimpleCache", "Malformed UID file: ".concat(String.valueOf(file)));
                    file.delete();
                }
            }
        }
        return -1L;
    }

    private o a(String str, o oVar) {
        if (!this.h) {
            return oVar;
        }
        String name = ((File) com.google.android.exoplayer2.util.a.b(oVar.e)).getName();
        long j = oVar.f22158c;
        long currentTimeMillis = System.currentTimeMillis();
        boolean z = false;
        e eVar = this.e;
        if (eVar != null) {
            try {
                eVar.a(name, j, currentTimeMillis);
            } catch (IOException e) {
                com.google.android.exoplayer2.util.n.a("SimpleCache", "Failed to update index with new touch timestamp.");
            }
        } else {
            z = true;
        }
        h b2 = this.f22189d.b(str);
        com.google.android.exoplayer2.util.a.b(b2.f22162c.remove(oVar));
        File file = (File) com.google.android.exoplayer2.util.a.b(oVar.e);
        if (z) {
            File a2 = o.a((File) com.google.android.exoplayer2.util.a.b(file.getParentFile()), b2.f22160a, oVar.f22157b, currentTimeMillis);
            if (file.renameTo(a2)) {
                file = a2;
            } else {
                com.google.android.exoplayer2.util.n.a("CachedContent", "Failed to rename " + file + " to " + a2);
            }
        }
        com.google.android.exoplayer2.util.a.b(oVar.f22159d);
        o oVar2 = new o(oVar.f22156a, oVar.f22157b, oVar.f22158c, currentTimeMillis, file);
        b2.f22162c.add(oVar2);
        a(oVar, oVar2);
        return oVar2;
    }

    /* JADX WARN: Finally extract failed */
    static /* synthetic */ void a(n nVar) {
        if (!nVar.f22187b.exists()) {
            try {
                a(nVar.f22187b);
            } catch (Cache.CacheException e) {
                nVar.l = e;
                return;
            }
        }
        File[] listFiles = nVar.f22187b.listFiles();
        if (listFiles == null) {
            String str = "Failed to list cache directory files: " + nVar.f22187b;
            com.google.android.exoplayer2.util.n.b("SimpleCache", str);
            nVar.l = new Cache.CacheException(str);
            return;
        }
        long a2 = a(listFiles);
        nVar.i = a2;
        if (a2 == -1) {
            try {
                File file = nVar.f22187b;
                long nextLong = new SecureRandom().nextLong();
                long abs = nextLong == Long.MIN_VALUE ? 0L : Math.abs(nextLong);
                File file2 = new File(file, Long.toString(abs, 16) + ".uid");
                if (file2.createNewFile()) {
                    nVar.i = abs;
                } else {
                    throw new IOException("Failed to create UID file: ".concat(String.valueOf(file2)));
                }
            } catch (IOException e2) {
                String str2 = "Failed to create cache UID: " + nVar.f22187b;
                com.google.android.exoplayer2.util.n.b("SimpleCache", str2, e2);
                nVar.l = new Cache.CacheException(str2, e2);
                return;
            }
        }
        try {
            i iVar = nVar.f22189d;
            long j = nVar.i;
            iVar.f22168c.a(j);
            if (iVar.f22169d != null) {
                iVar.f22169d.a(j);
            }
            if (iVar.f22168c.a() || iVar.f22169d == null || !iVar.f22169d.a()) {
                iVar.f22168c.a(iVar.f22166a, iVar.f22167b);
            } else {
                iVar.f22169d.a(iVar.f22166a, iVar.f22167b);
                iVar.f22168c.a(iVar.f22166a);
            }
            if (iVar.f22169d != null) {
                iVar.f22169d.b();
                iVar.f22169d = null;
            }
            e eVar = nVar.e;
            if (eVar != null) {
                try {
                    String hexString = Long.toHexString(nVar.i);
                    eVar.f22154b = "ExoPlayerCacheFileMetadata".concat(String.valueOf(hexString));
                    if (c.b(eVar.f22153a.getReadableDatabase(), 2, hexString) != 1) {
                        SQLiteDatabase writableDatabase = eVar.f22153a.getWritableDatabase();
                        writableDatabase.beginTransactionNonExclusive();
                        try {
                            c.a(writableDatabase, 2, hexString);
                            writableDatabase.execSQL("DROP TABLE IF EXISTS ".concat(String.valueOf(eVar.f22154b)));
                            writableDatabase.execSQL("CREATE TABLE " + eVar.f22154b + " (name TEXT PRIMARY KEY NOT NULL,length INTEGER NOT NULL,last_touch_timestamp INTEGER NOT NULL)");
                            writableDatabase.setTransactionSuccessful();
                            writableDatabase.endTransaction();
                        } catch (Throwable th) {
                            writableDatabase.endTransaction();
                            throw th;
                        }
                    }
                    Map<String, d> a3 = nVar.e.a();
                    nVar.a(nVar.f22187b, true, listFiles, a3);
                    nVar.e.a(a3.keySet());
                } catch (SQLException e3) {
                    throw new DatabaseIOException(e3);
                }
            } else {
                nVar.a(nVar.f22187b, true, listFiles, null);
            }
            nVar.f22189d.c();
            try {
                nVar.f22189d.a();
            } catch (IOException e4) {
                com.google.android.exoplayer2.util.n.b("SimpleCache", "Storing index file failed", e4);
            }
        } catch (IOException e5) {
            String str3 = "Failed to initialize cache indices: " + nVar.f22187b;
            com.google.android.exoplayer2.util.n.b("SimpleCache", str3, e5);
            nVar.l = new Cache.CacheException(str3, e5);
        }
    }

    private void a(o oVar) {
        this.f22189d.a(oVar.f22156a).a(oVar);
        this.j += oVar.f22158c;
        b(oVar);
    }

    private void a(o oVar, g gVar) {
        ArrayList<Cache.a> arrayList = this.f.get(oVar.f22156a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).a(this, oVar, gVar);
            }
        }
        this.f22188c.a(this, oVar, gVar);
    }

    private static void a(File file) throws Cache.CacheException {
        if (!file.mkdirs() && !file.isDirectory()) {
            String concat = "Failed to create cache directory: ".concat(String.valueOf(file));
            com.google.android.exoplayer2.util.n.b("SimpleCache", concat);
            throw new Cache.CacheException(concat);
        }
    }

    private void a(File file, boolean z, File[] fileArr, Map<String, d> map) {
        if (fileArr != null && fileArr.length != 0) {
            for (File file2 : fileArr) {
                String name = file2.getName();
                if (z && name.indexOf(46) == -1) {
                    a(file2, false, file2.listFiles(), map);
                } else if (!z || (!name.startsWith("cached_content_index.exi") && !name.endsWith(".uid"))) {
                    long j = -1;
                    long j2 = -9223372036854775807L;
                    d remove = map != null ? map.remove(name) : null;
                    if (remove != null) {
                        j = remove.f22150a;
                        j2 = remove.f22151b;
                    }
                    o a2 = o.a(file2, j, j2, this.f22189d);
                    if (a2 != null) {
                        a(a2);
                    } else {
                        file2.delete();
                    }
                }
            }
        } else if (!z) {
            file.delete();
        }
    }

    private void b(o oVar) {
        ArrayList<Cache.a> arrayList = this.f.get(oVar.f22156a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).a(this, oVar);
            }
        }
        this.f22188c.a(this, oVar);
    }

    private static boolean b(File file) {
        boolean add;
        synchronized (n.class) {
            try {
                add = f22186a.add(file.getAbsoluteFile());
            } catch (Throwable th) {
                throw th;
            }
        }
        return add;
    }

    private void c() throws Cache.CacheException {
        synchronized (this) {
            Cache.CacheException cacheException = this.l;
            if (cacheException != null) {
                throw cacheException;
            }
        }
    }

    private void c(g gVar) {
        h b2 = this.f22189d.b(gVar.f22156a);
        if (b2 != null && b2.a(gVar)) {
            this.j -= gVar.f22158c;
            if (this.e != null) {
                String name = gVar.e.getName();
                try {
                    this.e.a(name);
                } catch (IOException e) {
                    com.google.android.exoplayer2.util.n.a("SimpleCache", "Failed to remove file index entry for: ".concat(String.valueOf(name)));
                }
            }
            this.f22189d.d(b2.f22161b);
            d(gVar);
        }
    }

    private static void c(File file) {
        synchronized (n.class) {
            try {
                f22186a.remove(file.getAbsoluteFile());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void d() {
        ArrayList arrayList = new ArrayList();
        for (h hVar : this.f22189d.b()) {
            Iterator<o> it2 = hVar.f22162c.iterator();
            while (it2.hasNext()) {
                o next = it2.next();
                if (next.e.length() != next.f22158c) {
                    arrayList.add(next);
                }
            }
        }
        for (int i = 0; i < arrayList.size(); i++) {
            c((g) arrayList.get(i));
        }
    }

    private void d(g gVar) {
        ArrayList<Cache.a> arrayList = this.f.get(gVar.f22156a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).a(gVar);
            }
        }
        this.f22188c.a(gVar);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public final long a() {
        long j;
        synchronized (this) {
            com.google.android.exoplayer2.util.a.b(!this.k);
            j = this.j;
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public final g a(String str, long j, long j2) throws InterruptedException, Cache.CacheException {
        g b2;
        synchronized (this) {
            com.google.android.exoplayer2.util.a.b(!this.k);
            c();
            while (true) {
                b2 = b(str, j, j2);
                if (b2 == null) {
                    wait();
                }
            }
        }
        return b2;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public final j a(String str) {
        synchronized (this) {
            com.google.android.exoplayer2.util.a.b(!this.k);
            h b2 = this.f22189d.b(str);
            if (b2 != null) {
                return b2.e;
            }
            return l.f22180a;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public final void a(g gVar) {
        synchronized (this) {
            com.google.android.exoplayer2.util.a.b(!this.k);
            h hVar = (h) com.google.android.exoplayer2.util.a.b(this.f22189d.b(gVar.f22156a));
            long j = gVar.f22157b;
            for (int i = 0; i < hVar.f22163d.size(); i++) {
                if (hVar.f22163d.get(i).f22164a == j) {
                    hVar.f22163d.remove(i);
                    this.f22189d.d(hVar.f22161b);
                    notifyAll();
                }
            }
            throw new IllegalStateException();
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public final void a(File file, long j) throws Cache.CacheException {
        synchronized (this) {
            boolean z = true;
            com.google.android.exoplayer2.util.a.b(!this.k);
            if (file.exists()) {
                if (j == 0) {
                    file.delete();
                    return;
                }
                o oVar = (o) com.google.android.exoplayer2.util.a.b(o.a(file, j, this.f22189d));
                h hVar = (h) com.google.android.exoplayer2.util.a.b(this.f22189d.b(oVar.f22156a));
                com.google.android.exoplayer2.util.a.b(hVar.a(oVar.f22157b, oVar.f22158c));
                long a2 = j._CC.a(hVar.e);
                if (a2 != -1) {
                    if (oVar.f22157b + oVar.f22158c > a2) {
                        z = false;
                    }
                    com.google.android.exoplayer2.util.a.b(z);
                }
                if (this.e != null) {
                    try {
                        this.e.a(file.getName(), oVar.f22158c, oVar.f);
                    } catch (IOException e) {
                        throw new Cache.CacheException(e);
                    }
                }
                a(oVar);
                try {
                    this.f22189d.a();
                    notifyAll();
                } catch (IOException e2) {
                    throw new Cache.CacheException(e2);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public final void a(String str, k kVar) throws Cache.CacheException {
        synchronized (this) {
            com.google.android.exoplayer2.util.a.b(!this.k);
            c();
            i iVar = this.f22189d;
            h a2 = iVar.a(str);
            l lVar = a2.e;
            a2.e = a2.e.a(kVar);
            if (!a2.e.equals(lVar)) {
                iVar.f22168c.a(a2);
            }
            try {
                this.f22189d.a();
            } catch (IOException e) {
                throw new Cache.CacheException(e);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0162 A[LOOP:1: B:39:0x00f6->B:58:0x0162, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x015c A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0, types: [long] */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.exoplayer2.upstream.cache.g b(java.lang.String r7, long r8, long r10) throws com.google.android.exoplayer2.upstream.cache.Cache.CacheException {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.cache.n.b(java.lang.String, long, long):com.google.android.exoplayer2.upstream.cache.g");
    }

    public final void b() {
        synchronized (this) {
            if (!this.k) {
                this.f.clear();
                d();
                try {
                    this.f22189d.a();
                    c(this.f22187b);
                    this.k = true;
                } catch (IOException e) {
                    com.google.android.exoplayer2.util.n.b("SimpleCache", "Storing index file failed", e);
                    c(this.f22187b);
                    this.k = true;
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public final void b(g gVar) {
        synchronized (this) {
            com.google.android.exoplayer2.util.a.b(!this.k);
            c(gVar);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public final File c(String str, long j, long j2) throws Cache.CacheException {
        File a2;
        synchronized (this) {
            com.google.android.exoplayer2.util.a.b(!this.k);
            c();
            h b2 = this.f22189d.b(str);
            com.google.android.exoplayer2.util.a.b(b2);
            com.google.android.exoplayer2.util.a.b(b2.a(j, j2));
            if (!this.f22187b.exists()) {
                a(this.f22187b);
                d();
            }
            this.f22188c.a(this, j2);
            File file = new File(this.f22187b, Integer.toString(this.g.nextInt(10)));
            if (!file.exists()) {
                a(file);
            }
            a2 = o.a(file, b2.f22160a, j, System.currentTimeMillis());
        }
        return a2;
    }
}
