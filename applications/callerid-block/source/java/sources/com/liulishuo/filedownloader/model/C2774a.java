package com.liulishuo.filedownloader.model;

import android.content.ContentValues;
import java.util.Iterator;
import java.util.List;
import p092e.p096e.p097a.p102h0.C3066f;
/* renamed from: com.liulishuo.filedownloader.model.a */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/model/a.class */
public class C2774a {

    /* renamed from: a */
    private int f11520a;

    /* renamed from: b */
    private int f11521b;

    /* renamed from: c */
    private long f11522c;

    /* renamed from: d */
    private long f11523d;

    /* renamed from: e */
    private long f11524e;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* renamed from: f */
    public static long m1786f(List<C2774a> list) {
        Iterator<C2774a> it = list.iterator();
        ?? r0 = 0;
        while (true) {
            char c = r0;
            if (it.hasNext()) {
                C2774a next = it.next();
                r0 = c + (next.m1791a() - next.m1787e());
            } else {
                return c;
            }
        }
    }

    /* renamed from: a */
    public long m1791a() {
        return this.f11523d;
    }

    /* renamed from: b */
    public long m1790b() {
        return this.f11524e;
    }

    /* renamed from: c */
    public int m1789c() {
        return this.f11520a;
    }

    /* renamed from: d */
    public int m1788d() {
        return this.f11521b;
    }

    /* renamed from: e */
    public long m1787e() {
        return this.f11522c;
    }

    /* renamed from: g */
    public void m1785g(long j) {
        this.f11523d = j;
    }

    /* renamed from: h */
    public void m1784h(long j) {
        this.f11524e = j;
    }

    /* renamed from: i */
    public void m1783i(int i) {
        this.f11520a = i;
    }

    /* renamed from: j */
    public void m1782j(int i) {
        this.f11521b = i;
    }

    /* renamed from: k */
    public void m1781k(long j) {
        this.f11522c = j;
    }

    /* renamed from: l */
    public ContentValues m1780l() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Integer.valueOf(this.f11520a));
        contentValues.put("connectionIndex", Integer.valueOf(this.f11521b));
        contentValues.put("startOffset", Long.valueOf(this.f11522c));
        contentValues.put("currentOffset", Long.valueOf(this.f11523d));
        contentValues.put("endOffset", Long.valueOf(this.f11524e));
        return contentValues;
    }

    public String toString() {
        return C3066f.m367o("id[%d] index[%d] range[%d, %d) current offset(%d)", Integer.valueOf(this.f11520a), Integer.valueOf(this.f11521b), Long.valueOf(this.f11522c), Long.valueOf(this.f11524e), Long.valueOf(this.f11523d));
    }
}
