package com.allinone.callerid.p135a;

import android.util.SparseArray;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p200l.p201a.AbstractC3041d;
import com.allinone.callerid.p200l.p201a.C3045f;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3725e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Timer;
/* renamed from: com.allinone.callerid.a.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/a/b.class */
public class C2137b {

    /* renamed from: a */
    private static C2137b f7436a;

    /* renamed from: b */
    private SparseArray<C2136a> f7437b = new SparseArray<>();

    /* renamed from: c */
    private ArrayList<C2143c> f7438c = new ArrayList<>();

    /* renamed from: d */
    private Timer f7439d = new Timer();

    /* renamed from: com.allinone.callerid.a.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/a/b$a.class */
    public class C2138a extends C2143c {

        /* renamed from: com.allinone.callerid.a.b$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/a/b$a$a.class */
        class C2139a implements AbstractC3041d {
            C2139a() {
                C2138a.this = r4;
            }

            @Override // com.allinone.callerid.p200l.p201a.AbstractC3041d
            /* renamed from: a */
            public void mo24848a() {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("wbb", "onSuccess");
                }
            }

            @Override // com.allinone.callerid.p200l.p201a.AbstractC3041d
            /* renamed from: b */
            public void mo24847b() {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("wbb", "onEnd");
                }
                C2137b.this.m27927d(718);
            }
        }

        /* renamed from: com.allinone.callerid.a.b$a$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/a/b$a$b.class */
        class C2140b implements AbstractC3041d {
            C2140b() {
                C2138a.this = r4;
            }

            @Override // com.allinone.callerid.p200l.p201a.AbstractC3041d
            /* renamed from: a */
            public void mo24848a() {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("checkupdate", "onSuccess");
                }
            }

            @Override // com.allinone.callerid.p200l.p201a.AbstractC3041d
            /* renamed from: b */
            public void mo24847b() {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("checkupdate", "onEnd");
                }
                C2137b.this.m27927d(970);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2138a(int i) {
            super(i);
            C2137b.this = r4;
        }

        @Override // com.allinone.callerid.p135a.C2143c, java.util.TimerTask, java.lang.Runnable
        public void run() {
            C2136a c2136a;
            if (C2137b.this.f7437b != null && (c2136a = (C2136a) C2137b.this.f7437b.get(this.f7447d)) != null && !c2136a.m27935d() && C3725e.m24415d(EZCallApplication.m26146c())) {
                c2136a.m27934e(true);
                if (c2136a.m27936c() == 718) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("wbb", "处理718任务");
                    }
                    C3045f.m26162j(new C2139a());
                } else if (c2136a.m27936c() != 970) {
                } else {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("wbb", "处理970任务");
                    }
                    C3045f.m26164h(EZCallApplication.m26146c(), true, new C2140b());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.a.b$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/a/b$b.class */
    public class C2141b implements AbstractC3041d {

        /* renamed from: a */
        final /* synthetic */ C2136a f7443a;

        C2141b(C2136a c2136a) {
            C2137b.this = r4;
            this.f7443a = c2136a;
        }

        @Override // com.allinone.callerid.p200l.p201a.AbstractC3041d
        /* renamed from: a */
        public void mo24848a() {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "onSuccess");
            }
        }

        @Override // com.allinone.callerid.p200l.p201a.AbstractC3041d
        /* renamed from: b */
        public void mo24847b() {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "onEnd");
            }
            C2137b.this.m27927d(this.f7443a.m27936c());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.a.b$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/a/b$c.class */
    public class C2142c implements AbstractC3041d {

        /* renamed from: a */
        final /* synthetic */ C2136a f7445a;

        C2142c(C2136a c2136a) {
            C2137b.this = r4;
            this.f7445a = c2136a;
        }

        @Override // com.allinone.callerid.p200l.p201a.AbstractC3041d
        /* renamed from: a */
        public void mo24848a() {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("checkupdate", "onSuccess");
            }
        }

        @Override // com.allinone.callerid.p200l.p201a.AbstractC3041d
        /* renamed from: b */
        public void mo24847b() {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("checkupdate", "onEnd");
            }
            C2137b.this.m27927d(this.f7445a.m27936c());
        }
    }

    /* renamed from: d */
    public void m27927d(int i) {
        try {
            SparseArray<C2136a> sparseArray = this.f7437b;
            if (sparseArray != null && sparseArray.size() > 0) {
                this.f7437b.remove(i);
            }
            SparseArray<C2136a> sparseArray2 = this.f7437b;
            if (sparseArray2 == null || sparseArray2.size() != 0) {
                return;
            }
            m27928c();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public static C2137b m27926e() {
        if (f7436a == null) {
            f7436a = new C2137b();
        }
        return f7436a;
    }

    /* renamed from: c */
    public void m27928c() {
        try {
            ArrayList<C2143c> arrayList = this.f7438c;
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<C2143c> it = this.f7438c.iterator();
                while (it.hasNext()) {
                    C2143c next = it.next();
                    if (next != null) {
                        next.cancel();
                    }
                }
                this.f7438c.clear();
                this.f7438c = null;
            }
            Timer timer = this.f7439d;
            if (timer == null) {
                return;
            }
            timer.cancel();
            this.f7439d = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: f */
    public void m27925f(long j, int i) {
        try {
            if (this.f7437b.get(i) == null) {
                C2136a c2136a = new C2136a();
                c2136a.m27933f(System.currentTimeMillis());
                c2136a.m27932g(j);
                c2136a.m27931h(i);
                this.f7437b.put(i, c2136a);
            }
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "开始方法，从主页开始: " + i);
            }
            C2138a c2138a = new C2138a(i);
            this.f7439d.schedule(c2138a, j);
            this.f7438c.add(c2138a);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: g */
    public void m27924g() {
        try {
            SparseArray<C2136a> sparseArray = this.f7437b;
            if (sparseArray == null || sparseArray.size() <= 0) {
                return;
            }
            int size = this.f7437b.size();
            for (int i = 0; i < size; i++) {
                C2136a valueAt = this.f7437b.valueAt(i);
                if (valueAt.m27938a() != 0 && !valueAt.m27935d() && C3725e.m24415d(EZCallApplication.m26146c()) && System.currentTimeMillis() - valueAt.m27938a() >= valueAt.m27937b()) {
                    valueAt.m27934e(true);
                    if (valueAt.m27936c() == 718) {
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("wbb", "开始请求下载，有网的时候,处理718任务");
                        }
                        C3045f.m26162j(new C2141b(valueAt));
                    } else if (valueAt.m27936c() == 970) {
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("wbb", "开始请求下载，有网的时候,处理970任务");
                        }
                        C3045f.m26164h(EZCallApplication.m26146c(), true, new C2142c(valueAt));
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
