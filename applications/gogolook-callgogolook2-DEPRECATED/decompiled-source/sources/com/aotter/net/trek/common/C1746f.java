package com.aotter.net.trek.common;

import androidx.media2.session.MediaSessionImplBase;
import com.aotter.net.trek.common.DiskLruCache;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.aotter.net.trek.common.f */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/f.class */
public final class C1746f {

    /* renamed from: a */
    public final /* synthetic */ DiskLruCache f1511a;

    /* renamed from: b */
    public final String f1512b;

    /* renamed from: c */
    public final long[] f1513c;

    /* renamed from: d */
    public boolean f1514d;

    /* renamed from: e */
    public DiskLruCache.Editor f1515e;

    /* renamed from: f */
    public long f1516f;

    public C1746f(DiskLruCache diskLruCache, String str) {
        this.f1511a = diskLruCache;
        this.f1512b = str;
        this.f1513c = new long[diskLruCache.f1481s];
    }

    public /* synthetic */ C1746f(DiskLruCache diskLruCache, String str, CallableC1743c cVar) {
        this(diskLruCache, str);
    }

    /* renamed from: a */
    public static /* synthetic */ long m36359a(C1746f fVar, long j) {
        fVar.f1516f = j;
        return j;
    }

    /* renamed from: a */
    public static /* synthetic */ DiskLruCache.Editor m36360a(C1746f fVar) {
        return fVar.f1515e;
    }

    /* renamed from: a */
    public static /* synthetic */ DiskLruCache.Editor m36358a(C1746f fVar, DiskLruCache.Editor editor) {
        fVar.f1515e = editor;
        return editor;
    }

    /* renamed from: a */
    public static /* synthetic */ void m36356a(C1746f fVar, String[] strArr) {
        fVar.m36355a(strArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m36355a(String[] strArr) {
        if (strArr.length == this.f1511a.f1481s) {
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.f1513c[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException e) {
                    throw m36353b(strArr);
                }
            }
            return;
        }
        throw m36353b(strArr);
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m36357a(C1746f fVar, boolean z) {
        fVar.f1514d = z;
        return z;
    }

    /* renamed from: b */
    private IOException m36353b(String[] strArr) {
        throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
    }

    /* renamed from: b */
    public static /* synthetic */ long[] m36354b(C1746f fVar) {
        return fVar.f1513c;
    }

    /* renamed from: c */
    public static /* synthetic */ String m36352c(C1746f fVar) {
        return fVar.f1512b;
    }

    /* renamed from: d */
    public static /* synthetic */ boolean m36351d(C1746f fVar) {
        return fVar.f1514d;
    }

    /* renamed from: e */
    public static /* synthetic */ long m36350e(C1746f fVar) {
        return fVar.f1516f;
    }

    public File getCleanFile(int i) {
        File file = this.f1511a.f1475m;
        return new File(file, this.f1512b + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + i);
    }

    public File getDirtyFile(int i) {
        File file = this.f1511a.f1475m;
        return new File(file, this.f1512b + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + i + ".tmp");
    }

    public String getLengths() {
        long[] jArr;
        StringBuilder sb = new StringBuilder();
        for (long j : this.f1513c) {
            sb.append(' ');
            sb.append(j);
        }
        return sb.toString();
    }
}
