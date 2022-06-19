package com.callerid.block.p033a;

import android.util.SparseArray;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.p056k.p057a.C1084e;
import com.callerid.block.util.C1170d;
import com.callerid.block.util.C1227w;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Timer;
/* renamed from: com.callerid.block.a.b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/a/b.class */
public class C0877b {

    /* renamed from: d */
    private static C0877b f3917d;

    /* renamed from: a */
    private SparseArray<C0876a> f3918a = new SparseArray<>();

    /* renamed from: b */
    private ArrayList<C0878c> f3919b = new ArrayList<>();

    /* renamed from: c */
    private Timer f3920c = new Timer();

    /* renamed from: d */
    public void m10618d(int i) {
        try {
            SparseArray<C0876a> sparseArray = this.f3918a;
            if (sparseArray != null && sparseArray.size() > 0) {
                this.f3918a.remove(i);
            }
            SparseArray<C0876a> sparseArray2 = this.f3918a;
            if (sparseArray2 == null || sparseArray2.size() != 0) {
                return;
            }
            m10619c();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public static C0877b m10617e() {
        if (f3917d == null) {
            f3917d = new C0877b();
        }
        return f3917d;
    }

    /* renamed from: c */
    public void m10619c() {
        try {
            ArrayList<C0878c> arrayList = this.f3919b;
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<C0878c> it = this.f3919b.iterator();
                while (it.hasNext()) {
                    C0878c next = it.next();
                    if (next != null) {
                        next.cancel();
                    }
                }
                this.f3919b.clear();
                this.f3919b = null;
            }
            Timer timer = this.f3920c;
            if (timer == null) {
                return;
            }
            timer.cancel();
            this.f3920c = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: f */
    public void m10616f(long j, int i) {
        try {
            if (this.f3918a.get(i) == null) {
                C0876a c0876a = new C0876a();
                c0876a.m10624f(System.currentTimeMillis());
                c0876a.m10623g(j);
                c0876a.m10622h(i);
                this.f3918a.put(i, c0876a);
            }
            if (C1227w.f5084a) {
                C1227w.m9527a("wbb", "开始方法，从主页开始: " + i);
            }
            C0878c aVar = new a(this, i);
            this.f3920c.schedule(aVar, j);
            this.f3919b.add(aVar);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: g */
    public void m10615g() {
        try {
            SparseArray<C0876a> sparseArray = this.f3918a;
            if (sparseArray == null || sparseArray.size() <= 0) {
                return;
            }
            int size = this.f3918a.size();
            for (int i = 0; i < size; i++) {
                C0876a valueAt = this.f3918a.valueAt(i);
                if (valueAt.m10629a() != 0 && !valueAt.m10626d() && System.currentTimeMillis() - valueAt.m10629a() >= valueAt.m10628b()) {
                    valueAt.m10625e(true);
                    if (valueAt.m10627c() == 718) {
                        if (C1227w.f5084a) {
                            C1227w.m9527a("wbb", "开始请求下载，有网的时候,处理718任务");
                        }
                        C1084e.m10176j(new d(this, valueAt));
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: h */
    public void m10614h() {
        try {
            SparseArray<C0876a> sparseArray = this.f3918a;
            if (sparseArray == null || sparseArray.size() <= 0) {
                return;
            }
            int size = this.f3918a.size();
            for (int i = 0; i < size; i++) {
                C0876a valueAt = this.f3918a.valueAt(i);
                if (valueAt.m10629a() != 0 && !valueAt.m10626d() && C1170d.m9898d(EZCallApplication.m10163c()) && System.currentTimeMillis() - valueAt.m10629a() >= valueAt.m10628b()) {
                    valueAt.m10625e(true);
                    if (valueAt.m10627c() == 718) {
                        if (C1227w.f5084a) {
                            C1227w.m9527a("wbb", "开始请求下载，有网的时候,处理718任务");
                        }
                        C1084e.m10176j(new b(this, valueAt));
                    } else if (valueAt.m10627c() == 970) {
                        if (C1227w.f5084a) {
                            C1227w.m9527a("wbb", "开始请求下载，有网的时候,处理970任务");
                        }
                        C1084e.m10178h(EZCallApplication.m10163c(), true, new c(this, valueAt));
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
