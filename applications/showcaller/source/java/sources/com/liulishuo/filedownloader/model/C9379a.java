package com.liulishuo.filedownloader.model;

import android.content.ContentValues;
import java.util.Iterator;
import java.util.List;
import p078c.p122d.p123a.p128i0.C2040f;
/* renamed from: com.liulishuo.filedownloader.model.a */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/model/a.class */
public class C9379a {

    /* renamed from: a */
    private int f40117a;

    /* renamed from: b */
    private int f40118b;

    /* renamed from: c */
    private long f40119c;

    /* renamed from: d */
    private long f40120d;

    /* renamed from: e */
    private long f40121e;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* renamed from: f */
    public static long m831f(List<C9379a> list) {
        Iterator<C9379a> it = list.iterator();
        ?? r0 = 0;
        while (true) {
            char c = r0;
            if (it.hasNext()) {
                C9379a next = it.next();
                r0 = c + (next.m836a() - next.m832e());
            } else {
                return c;
            }
        }
    }

    /* renamed from: a */
    public long m836a() {
        return this.f40120d;
    }

    /* renamed from: b */
    public long m835b() {
        return this.f40121e;
    }

    /* renamed from: c */
    public int m834c() {
        return this.f40117a;
    }

    /* renamed from: d */
    public int m833d() {
        return this.f40118b;
    }

    /* renamed from: e */
    public long m832e() {
        return this.f40119c;
    }

    /* renamed from: g */
    public void m830g(long j) {
        this.f40120d = j;
    }

    /* renamed from: h */
    public void m829h(long j) {
        this.f40121e = j;
    }

    /* renamed from: i */
    public void m828i(int i) {
        this.f40117a = i;
    }

    /* renamed from: j */
    public void m827j(int i) {
        this.f40118b = i;
    }

    /* renamed from: k */
    public void m826k(long j) {
        this.f40119c = j;
    }

    /* renamed from: l */
    public ContentValues m825l() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Integer.valueOf(this.f40117a));
        contentValues.put("connectionIndex", Integer.valueOf(this.f40118b));
        contentValues.put("startOffset", Long.valueOf(this.f40119c));
        contentValues.put("currentOffset", Long.valueOf(this.f40120d));
        contentValues.put("endOffset", Long.valueOf(this.f40121e));
        return contentValues;
    }

    public String toString() {
        return C2040f.m28206o("id[%d] index[%d] range[%d, %d) current offset(%d)", Integer.valueOf(this.f40117a), Integer.valueOf(this.f40118b), Long.valueOf(this.f40119c), Long.valueOf(this.f40121e), Long.valueOf(this.f40120d));
    }
}
