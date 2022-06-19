package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.p013b.C0373a;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.p132c.C2586c;
import com.google.android.gms.common.util.AbstractC2708e;
import com.google.android.gms.internal.measurement.AbstractC3900ed;
import com.google.android.gms.internal.measurement.C3767al;
import com.google.android.gms.internal.measurement.C3776ao;
import com.google.android.gms.internal.measurement.C4053jl;
import com.google.android.gms.internal.measurement.C4066jy;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.android.gms.measurement.internal.jo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/jo.class */
public class C4415jo implements AbstractC4321gb {

    /* renamed from: a */
    private static volatile C4415jo f19237a;

    /* renamed from: b */
    private C4289ex f19238b;

    /* renamed from: c */
    private C4272eg f19239c;

    /* renamed from: d */
    private C4211c f19240d;

    /* renamed from: e */
    private C4275ej f19241e;

    /* renamed from: f */
    private C4411jk f19242f;

    /* renamed from: g */
    private C4434kf f19243g;

    /* renamed from: h */
    private final C4420js f19244h;

    /* renamed from: i */
    private C4360hn f19245i;

    /* renamed from: j */
    private final C4296fd f19246j;

    /* renamed from: k */
    private boolean f19247k;

    /* renamed from: l */
    private boolean f19248l;

    /* renamed from: m */
    private long f19249m;

    /* renamed from: n */
    private List<Runnable> f19250n;

    /* renamed from: o */
    private int f19251o;

    /* renamed from: p */
    private int f19252p;

    /* renamed from: q */
    private boolean f19253q;

    /* renamed from: r */
    private boolean f19254r;

    /* renamed from: s */
    private boolean f19255s;

    /* renamed from: t */
    private FileLock f19256t;

    /* renamed from: u */
    private FileChannel f19257u;

    /* renamed from: v */
    private List<Long> f19258v;

    /* renamed from: w */
    private List<Long> f19259w;

    /* renamed from: x */
    private long f19260x;

    /* renamed from: com.google.android.gms.measurement.internal.jo$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/jo$a.class */
    public final class C4416a implements AbstractC4265e {

        /* renamed from: a */
        C3776ao.C3789g f19261a;

        /* renamed from: b */
        List<Long> f19262b;

        /* renamed from: c */
        List<C3776ao.C3781c> f19263c;

        /* renamed from: d */
        private long f19264d;

        private C4416a() {
            C4415jo.this = r4;
        }

        /* synthetic */ C4416a(C4415jo c4415jo, RunnableC4414jn runnableC4414jn) {
            this();
        }

        /* renamed from: a */
        private static long m4184a(C3776ao.C3781c c3781c) {
            return ((c3781c.m6316e() / 1000) / 60) / 60;
        }

        @Override // com.google.android.gms.measurement.internal.AbstractC4265e
        /* renamed from: a */
        public final void mo4183a(C3776ao.C3789g c3789g) {
            C2662s.m13981a(c3789g);
            this.f19261a = c3789g;
        }

        @Override // com.google.android.gms.measurement.internal.AbstractC4265e
        /* renamed from: a */
        public final boolean mo4185a(long j, C3776ao.C3781c c3781c) {
            boolean z;
            C2662s.m13981a(c3781c);
            if (this.f19263c == null) {
                this.f19263c = new ArrayList();
            }
            if (this.f19262b == null) {
                this.f19262b = new ArrayList();
            }
            if (this.f19263c.size() <= 0 || m4184a(this.f19263c.get(0)) == m4184a(c3781c)) {
                long mo5541an = this.f19264d + c3781c.mo5541an();
                if (mo5541an >= Math.max(0, C4452t.f19472h.m4707a(null).intValue())) {
                    z = false;
                } else {
                    this.f19264d = mo5541an;
                    this.f19263c.add(c3781c);
                    this.f19262b.add(Long.valueOf(j));
                    z = this.f19263c.size() < Math.max(1, C4452t.f19473i.m4707a(null).intValue());
                }
            } else {
                z = false;
            }
            return z;
        }
    }

    private C4415jo(C4421jt c4421jt) {
        this(c4421jt, null);
    }

    private C4415jo(C4421jt c4421jt, C4296fd c4296fd) {
        this.f19247k = false;
        C2662s.m13981a(c4421jt);
        this.f19246j = C4296fd.m4565a(c4421jt.f19271a, null, null);
        this.f19260x = -1L;
        C4420js c4420js = new C4420js(this);
        c4420js.m4245L();
        this.f19244h = c4420js;
        C4272eg c4272eg = new C4272eg(this);
        c4272eg.m4245L();
        this.f19239c = c4272eg;
        C4289ex c4289ex = new C4289ex(this);
        c4289ex.m4245L();
        this.f19238b = c4289ex;
        this.f19246j.mo4031u().m4587a(new RunnableC4414jn(this, c4421jt));
    }

    /* renamed from: A */
    private final void m4244A() {
        m4189t();
        if (this.f19253q || this.f19254r || this.f19255s) {
            this.f19246j.mo4030v().m4657j().m4651a("Not stopping services. fetch, network, upload", Boolean.valueOf(this.f19253q), Boolean.valueOf(this.f19254r), Boolean.valueOf(this.f19255s));
            return;
        }
        this.f19246j.mo4030v().m4657j().m4654a("Stopping uploading service(s)");
        if (this.f19250n == null) {
            return;
        }
        for (Runnable runnable : this.f19250n) {
            runnable.run();
        }
        this.f19250n.clear();
    }

    /* renamed from: B */
    private final boolean m4243B() {
        boolean z = true;
        m4189t();
        if (!this.f19246j.m4556b().m4804a(C4452t.f19452am) || this.f19256t == null || !this.f19256t.isValid()) {
            try {
                this.f19257u = new RandomAccessFile(new File(this.f19246j.mo4034r().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
                this.f19256t = this.f19257u.tryLock();
            } catch (FileNotFoundException e) {
                this.f19246j.mo4030v().m4655x_().m4653a("Failed to acquire storage lock", e);
            } catch (IOException e2) {
                this.f19246j.mo4030v().m4655x_().m4653a("Failed to access storage lock file", e2);
            } catch (OverlappingFileLockException e3) {
                this.f19246j.mo4030v().m4662e().m4653a("Storage lock already acquired", e3);
            }
            if (this.f19256t != null) {
                this.f19246j.mo4030v().m4657j().m4654a("Storage concurrent access okay");
            } else {
                this.f19246j.mo4030v().m4655x_().m4654a("Storage concurrent data access panic");
                z = false;
            }
        } else {
            this.f19246j.mo4030v().m4657j().m4654a("Storage concurrent access okay");
        }
        return z;
    }

    /* renamed from: a */
    private final int m4218a(FileChannel fileChannel) {
        int i;
        m4189t();
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.f19246j.mo4030v().m4655x_().m4654a("Bad channel to read from");
            i = 0;
        } else {
            ByteBuffer allocate = ByteBuffer.allocate(4);
            try {
                fileChannel.position(0L);
                int read = fileChannel.read(allocate);
                if (read != 4) {
                    i = 0;
                    if (read != -1) {
                        this.f19246j.mo4030v().m4662e().m4653a("Unexpected data length. Bytes read", Integer.valueOf(read));
                        i = 0;
                    }
                } else {
                    allocate.flip();
                    i = allocate.getInt();
                }
            } catch (IOException e) {
                this.f19246j.mo4030v().m4655x_().m4653a("Failed to read from channel", e);
                i = 0;
            }
        }
        return i;
    }

    /* renamed from: a */
    private final C4299fg m4227a(C4430kb c4430kb, C4299fg c4299fg, String str) {
        C4299fg c4299fg2;
        boolean z = false;
        if (c4299fg == null) {
            c4299fg2 = new C4299fg(this.f19246j, c4430kb.f19301a);
            c4299fg2.m4519a(this.f19246j.m4547i().m4082g());
            c4299fg2.m4503e(str);
            z = true;
        } else {
            c4299fg2 = c4299fg;
            if (!str.equals(c4299fg.m4496h())) {
                c4299fg.m4503e(str);
                c4299fg.m4519a(this.f19246j.m4547i().m4082g());
                z = true;
                c4299fg2 = c4299fg;
            }
        }
        if (!TextUtils.equals(c4430kb.f19302b, c4299fg2.m4505e())) {
            c4299fg2.m4514b(c4430kb.f19302b);
            z = true;
        }
        boolean z2 = z;
        if (!TextUtils.equals(c4430kb.f19318r, c4299fg2.m4502f())) {
            c4299fg2.m4510c(c4430kb.f19318r);
            z2 = true;
        }
        boolean z3 = z2;
        if (C4066jy.m5025b()) {
            z3 = z2;
            if (this.f19246j.m4556b().m4787e(c4299fg2.m4512c(), C4452t.f19454ao)) {
                z3 = z2;
                if (!TextUtils.equals(c4430kb.f19322v, c4299fg2.m4499g())) {
                    c4299fg2.m4506d(c4430kb.f19322v);
                    z3 = true;
                }
            }
        }
        boolean z4 = z3;
        if (!TextUtils.isEmpty(c4430kb.f19311k)) {
            z4 = z3;
            if (!c4430kb.f19311k.equals(c4299fg2.m4493i())) {
                c4299fg2.m4500f(c4430kb.f19311k);
                z4 = true;
            }
        }
        boolean z5 = z4;
        if (c4430kb.f19305e != 0) {
            z5 = z4;
            if (c4430kb.f19305e != c4299fg2.m4480o()) {
                c4299fg2.m4507d(c4430kb.f19305e);
                z5 = true;
            }
        }
        boolean z6 = z5;
        if (!TextUtils.isEmpty(c4430kb.f19303c)) {
            z6 = z5;
            if (!c4430kb.f19303c.equals(c4299fg2.m4486l())) {
                c4299fg2.m4497g(c4430kb.f19303c);
                z6 = true;
            }
        }
        boolean z7 = z6;
        if (c4430kb.f19310j != c4299fg2.m4484m()) {
            c4299fg2.m4511c(c4430kb.f19310j);
            z7 = true;
        }
        boolean z8 = z7;
        if (c4430kb.f19304d != null) {
            z8 = z7;
            if (!c4430kb.f19304d.equals(c4299fg2.m4482n())) {
                c4299fg2.m4494h(c4430kb.f19304d);
                z8 = true;
            }
        }
        if (c4430kb.f19306f != c4299fg2.m4478p()) {
            c4299fg2.m4504e(c4430kb.f19306f);
            z8 = true;
        }
        if (c4430kb.f19308h != c4299fg2.m4475r()) {
            c4299fg2.m4517a(c4430kb.f19308h);
            z8 = true;
        }
        boolean z9 = z8;
        if (!TextUtils.isEmpty(c4430kb.f19307g)) {
            z9 = z8;
            if (!c4430kb.f19307g.equals(c4299fg2.m4529C())) {
                c4299fg2.m4491i(c4430kb.f19307g);
                z9 = true;
            }
        }
        boolean z10 = z9;
        if (!this.f19246j.m4556b().m4804a(C4452t.f19430aM)) {
            z10 = z9;
            if (c4430kb.f19312l != c4299fg2.m4527E()) {
                c4299fg2.m4477p(c4430kb.f19312l);
                z10 = true;
            }
        }
        if (c4430kb.f19315o != c4299fg2.m4526F()) {
            c4299fg2.m4513b(c4430kb.f19315o);
            z10 = true;
        }
        boolean z11 = z10;
        if (c4430kb.f19316p != c4299fg2.m4525G()) {
            c4299fg2.m4509c(c4430kb.f19316p);
            z11 = true;
        }
        if (c4430kb.f19319s != c4299fg2.m4524H()) {
            c4299fg2.m4520a(c4430kb.f19319s);
            z11 = true;
        }
        boolean z12 = z11;
        if (c4430kb.f19320t != 0) {
            z12 = z11;
            if (c4430kb.f19320t != c4299fg2.m4476q()) {
                c4299fg2.m4501f(c4430kb.f19320t);
                z12 = true;
            }
        }
        if (z12) {
            m4203e().m4757a(c4299fg2);
        }
        return c4299fg2;
    }

    /* renamed from: a */
    public static C4415jo m4239a(Context context) {
        C2662s.m13981a(context);
        C2662s.m13981a(context.getApplicationContext());
        if (f19237a == null) {
            synchronized (C4415jo.class) {
                try {
                    if (f19237a == null) {
                        f19237a = new C4415jo(new C4421jt(context));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f19237a;
    }

    /* renamed from: a */
    private final C4430kb m4221a(String str) {
        C4430kb c4430kb;
        C4299fg m4739b = m4203e().m4739b(str);
        if (m4739b == null || TextUtils.isEmpty(m4739b.m4486l())) {
            this.f19246j.mo4030v().m4658i().m4653a("No app data available; dropping", str);
            c4430kb = null;
        } else {
            Boolean m4214b = m4214b(m4739b);
            if (m4214b == null || m4214b.booleanValue()) {
                c4430kb = new C4430kb(str, m4739b.m4505e(), m4739b.m4486l(), m4739b.m4484m(), m4739b.m4482n(), m4739b.m4480o(), m4739b.m4478p(), (String) null, m4739b.m4475r(), false, m4739b.m4493i(), m4739b.m4527E(), 0L, 0, m4739b.m4526F(), m4739b.m4525G(), false, m4739b.m4502f(), m4739b.m4524H(), m4739b.m4476q(), m4739b.m4523I(), (!C4066jy.m5025b() || !this.f19246j.m4556b().m4787e(str, C4452t.f19454ao)) ? null : m4739b.m4499g());
            } else {
                this.f19246j.mo4030v().m4655x_().m4653a("App version does not match; dropping. appId", C4263dy.m4669a(str));
                c4430kb = null;
            }
        }
        return c4430kb;
    }

    /* renamed from: a */
    private static void m4238a(C3776ao.C3781c.C3782a c3782a, int i, String str) {
        List<C3776ao.C3785e> m6307a = c3782a.m6307a();
        for (int i2 = 0; i2 < m6307a.size(); i2++) {
            if ("_err".equals(m6307a.get(i2).m6271b())) {
                return;
            }
        }
        c3782a.m6301a((C3776ao.C3785e) ((AbstractC3900ed) C3776ao.C3785e.m6256k().m6244a("_err").m6247a(Long.valueOf(i).longValue()).mo5544u())).m6301a((C3776ao.C3785e) ((AbstractC3900ed) C3776ao.C3785e.m6256k().m6244a("_ev").m6242b(str).mo5544u()));
    }

    /* renamed from: a */
    private static void m4236a(C3776ao.C3781c.C3782a c3782a, String str) {
        List<C3776ao.C3785e> m6307a = c3782a.m6307a();
        for (int i = 0; i < m6307a.size(); i++) {
            if (str.equals(m6307a.get(i).m6271b())) {
                c3782a.m6297b(i);
                return;
            }
        }
    }

    /* renamed from: a */
    private static void m4235a(C3776ao.C3789g.C3790a c3790a) {
        c3790a.m6049b(Long.MAX_VALUE).m6043c(Long.MIN_VALUE);
        for (int i = 0; i < c3790a.m6051b(); i++) {
            C3776ao.C3781c m6050b = c3790a.m6050b(i);
            if (m6050b.m6316e() < c3790a.m6031f()) {
                c3790a.m6049b(m6050b.m6316e());
            }
            if (m6050b.m6316e() > c3790a.m6027g()) {
                c3790a.m6043c(m6050b.m6316e());
            }
        }
    }

    /* renamed from: a */
    private final void m4234a(C3776ao.C3789g.C3790a c3790a, long j, boolean z) {
        String str = "_lte";
        if (z) {
            str = "_se";
        }
        C4425jx m4732c = m4203e().m4732c(c3790a.m6015j(), str);
        C4425jx c4425jx = (m4732c == null || m4732c.f19290e == null) ? new C4425jx(c3790a.m6015j(), "auto", str, this.f19246j.mo4035q().mo13862a(), Long.valueOf(j)) : new C4425jx(c3790a.m6015j(), "auto", str, this.f19246j.mo4035q().mo13862a(), Long.valueOf(((Long) m4732c.f19290e).longValue() + j));
        C3776ao.C3798k c3798k = (C3776ao.C3798k) ((AbstractC3900ed) C3776ao.C3798k.m5918j().m5910a(str).m5911a(this.f19246j.mo4035q().mo13862a()).m5908b(((Long) c4425jx.f19290e).longValue()).mo5544u());
        boolean z2 = false;
        int m4174a = C4420js.m4174a(c3790a, str);
        if (m4174a >= 0) {
            c3790a.m6060a(m4174a, c3798k);
            z2 = true;
        }
        if (!z2) {
            c3790a.m6055a(c3798k);
        }
        if (j > 0) {
            m4203e().m4756a(c4425jx);
            Object obj = "lifetime";
            if (z) {
                obj = "session-scoped";
            }
            this.f19246j.mo4030v().m4657j().m4652a("Updated engagement user property. scope, value", obj, c4425jx.f19290e);
        }
    }

    /* renamed from: a */
    private final void m4233a(C4299fg c4299fg) {
        C0373a c0373a;
        m4189t();
        if (!C4066jy.m5025b() || !this.f19246j.m4556b().m4787e(c4299fg.m4512c(), C4452t.f19454ao)) {
            if (TextUtils.isEmpty(c4299fg.m4505e()) && TextUtils.isEmpty(c4299fg.m4502f())) {
                m4220a(c4299fg.m4512c(), 204, null, null, null);
                return;
            }
        } else if (TextUtils.isEmpty(c4299fg.m4505e()) && TextUtils.isEmpty(c4299fg.m4499g()) && TextUtils.isEmpty(c4299fg.m4502f())) {
            m4220a(c4299fg.m4512c(), 204, null, null, null);
            return;
        }
        String m4803a = this.f19246j.m4556b().m4803a(c4299fg);
        try {
            URL url = new URL(m4803a);
            this.f19246j.mo4030v().m4657j().m4653a("Fetching remote configuration", c4299fg.m4512c());
            C3767al.C3770b m4606a = m4207c().m4606a(c4299fg.m4512c());
            String m4602b = m4207c().m4602b(c4299fg.m4512c());
            if (m4606a == null || TextUtils.isEmpty(m4602b)) {
                c0373a = null;
            } else {
                c0373a = new C0373a();
                c0373a.put("If-Modified-Since", m4602b);
            }
            this.f19253q = true;
            C4272eg m4205d = m4205d();
            String m4512c = c4299fg.m4512c();
            C4417jp c4417jp = new C4417jp(this);
            m4205d.mo4037o();
            m4205d.m4246K();
            C2662s.m13981a(url);
            C2662s.m13981a(c4417jp);
            m4205d.mo4031u().m4582b(new RunnableC4276ek(m4205d, m4512c, url, null, c0373a, c4417jp));
        } catch (MalformedURLException e) {
            this.f19246j.mo4030v().m4655x_().m4652a("Failed to parse config URL. Not fetching. appId", C4263dy.m4669a(c4299fg.m4512c()), m4803a);
        }
    }

    /* renamed from: a */
    public final void m4230a(C4421jt c4421jt) {
        this.f19246j.mo4031u().mo4037o();
        C4211c c4211c = new C4211c(this);
        c4211c.m4245L();
        this.f19240d = c4211c;
        this.f19246j.m4556b().m4805a(this.f19238b);
        C4434kf c4434kf = new C4434kf(this);
        c4434kf.m4245L();
        this.f19243g = c4434kf;
        C4360hn c4360hn = new C4360hn(this);
        c4360hn.m4245L();
        this.f19245i = c4360hn;
        C4411jk c4411jk = new C4411jk(this);
        c4411jk.m4245L();
        this.f19242f = c4411jk;
        this.f19241e = new C4275ej(this);
        if (this.f19251o != this.f19252p) {
            this.f19246j.mo4030v().m4655x_().m4652a("Not all upload components initialized", Integer.valueOf(this.f19251o), Integer.valueOf(this.f19252p));
        }
        this.f19247k = true;
    }

    /* renamed from: a */
    private final boolean m4240a(int i, FileChannel fileChannel) {
        boolean z;
        m4189t();
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.f19246j.mo4030v().m4655x_().m4654a("Bad channel to read from");
            z = false;
        } else {
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.putInt(i);
            allocate.flip();
            try {
                fileChannel.truncate(0L);
                if (this.f19246j.m4556b().m4804a(C4452t.f19465az) && Build.VERSION.SDK_INT <= 19) {
                    fileChannel.position(0L);
                }
                fileChannel.write(allocate);
                fileChannel.force(true);
                z = true;
                if (fileChannel.size() != 4) {
                    this.f19246j.mo4030v().m4655x_().m4653a("Error writing to channel. Bytes written", Long.valueOf(fileChannel.size()));
                    z = true;
                }
            } catch (IOException e) {
                this.f19246j.mo4030v().m4655x_().m4653a("Failed to write to channel", e);
                z = false;
            }
        }
        return z;
    }

    /* renamed from: a */
    private final boolean m4237a(C3776ao.C3781c.C3782a c3782a, C3776ao.C3781c.C3782a c3782a2) {
        boolean z;
        String str = null;
        C2662s.m13973b("_e".equals(c3782a.m6294d()));
        m4199h();
        C3776ao.C3785e m4177a = C4420js.m4177a((C3776ao.C3781c) ((AbstractC3900ed) c3782a.mo5544u()), "_sc");
        String m6265d = m4177a == null ? null : m4177a.m6265d();
        m4199h();
        C3776ao.C3785e m4177a2 = C4420js.m4177a((C3776ao.C3781c) ((AbstractC3900ed) c3782a2.mo5544u()), "_pc");
        if (m4177a2 != null) {
            str = m4177a2.m6265d();
        }
        if (str == null || !str.equals(m6265d)) {
            z = false;
        } else {
            m4215b(c3782a, c3782a2);
            z = true;
        }
        return z;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(27:2|689|3|4|5|6|691|7|8|9|(17:11|12|(2:14|15)(2:65|66)|16|17|(1:19)(1:67)|20|21|22|23|24|25|26|27|28|29|(9:31|(1:33)|34|35|(2:39|40)(2:194|195)|41|(50:43|44|45|46|47|(4:50|(4:52|(2:56|57)(1:196)|58|(2:686|700)(3:62|63|698))(31:197|(7:199|200|201|202|203|204|206)|208|(4:211|(4:213|214|215|704)(4:230|(3:232|233|234)|235|705)|216|209)|703|236|(1:240)|241|(1:243)|244|245|(1:247)(1:685)|248|249|250|(3:252|253|(3:255|256|(20:258|259|(4:262|(3:264|265|707)(3:267|268|(3:270|271|709)(1:708))|266|260)|706|272|(2:288|(1:290)(2:291|292))(1:276)|277|(6:279|280|(4:283|(3:285|286|711)(2:294|(3:296|297|712)(1:713))|287|281)|710|298|(2:300|(4:332|(1:334)(2:338|(2:340|341)(2:342|(2:343|(2:345|(3:715|347|348)(1:349))(2:714|684))))|335|(1:337))(1:304)))|305|306|(2:308|(2:310|(10:312|(1:351)(2:316|(2:318|319)(1:350))|320|(2:324|(1:326)(2:398|(1:400)(1:401)))|327|328|329|330|331|699))(2:352|(2:354|(10:356|(1:365)(2:360|(2:362|363)(1:364))|320|(3:322|324|(0)(0))|327|328|329|330|331|699))(2:366|(2:370|(23:376|(1:378)(1:396)|379|380|(1:382)|383|(1:385)(1:397)|386|387|(1:389)|390|(1:392)|393|394|395|320|(0)|327|328|329|330|331|699)))))|683|320|(0)|327|328|329|330|331|699)))|293|277|(0)|305|306|(0)|683|320|(0)|327|328|329|330|331|699)|64|48)|697|402|(2:404|(2:405|(6:407|(2:409|(4:411|412|717|413))|414|415|(1:718)(5:417|(1:419)(1:428)|420|421|(3:423|424|(3:426|427|721)(1:720))(1:719))|413)(1:716)))(1:429)|430|(3:431|432|(2:434|(3:723|436|437))(2:722|682))|438|(1:440)|441|442|(2:444|445)(1:504)|446|(1:448)(2:505|(1:507))|449|450|(5:458|459|(3:460|461|(1:724)(2:463|(3:725|465|466)(1:508)))|467|(1:469))|470|471|(1:473)|474|475|(10:477|478|(4:481|(9:483|484|(1:486)|487|488|(7:490|(1:492)|493|494|(1:498)|499|500)|501|502|727)(6:509|(1:513)(2:520|(3:521|522|(2:524|(3:732|526|(1:542)(2:540|541)))(2:731|543)))|514|(1:516)(1:681)|517|(2:519|728)(9:544|545|(3:547|548|(1:550))|551|552|(1:554)(1:570)|555|556|(5:558|(2:566|567)|568|569|729)(5:571|(6:573|574|575|(1:577)|578|579)(5:582|(1:584)(1:593)|585|586|(4:588|(1:590)|591|592)(2:594|(1:596)))|580|581|730)))|503|479)|726|597|(1:599)|600|601|(3:605|602|603)|733)|606|(1:608)|609|610|(1:612)(2:636|(14:638|639|(1:641)(1:656)|642|643|644|(1:646)|647|(1:649)(1:657)|650|651|(1:653)(1:658)|654|655))|613|614|(4:616|(3:620|621|(1:623)(1:659))(1:660)|624|625)|626|627|628|(5:631|(1:633)|634|635|629)|734|661|(1:663)|664|665|666|694|667|668|669|670)(2:675|676)|671|672)(7:68|69|70|71|72|73|74))(16:88|(2:90|91)(2:110|111)|92|93|(1:95)(1:112)|96|97|98|99|100|101|102|103|104|105|(11:107|(1:109)|34|35|(1:37)|39|40|41|(0)(0)|671|672)(5:113|114|115|116|117))|75|696|76|77|78|(4:80|81|82|(1:84))(21:118|119|120|687|121|122|123|(3:125|126|127)|128|129|130|131|132|133|(5:135|136|137|138|139)(3:155|156|157)|140|141|142|690|143|(4:145|146|147|(1:149))(1:(16:164|165|166|167|168|692|169|170|171|172|173|(3:702|175|(1:177))|181|182|183|(3:701|185|(1:187)))))|34|35|(0)|39|40|41|(0)(0)|671|672|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x05cc, code lost:
        r32 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x05ce, code lost:
        r30 = r29;
        r29 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x06ad, code lost:
        if (r19 != null) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x06b0, code lost:
        r19.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x06b8, code lost:
        throw r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x0741, code lost:
        if (r41 != false) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:677:0x1818, code lost:
        r29 = th;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:279:0x09b7 A[Catch: all -> 0x0341, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0341, blocks: (B:3:0x0007, B:5:0x001c, B:33:0x0116, B:35:0x011f, B:37:0x0125, B:44:0x013d, B:46:0x0155, B:48:0x017a, B:50:0x0189, B:52:0x01ba, B:54:0x01f6, B:60:0x0210, B:62:0x021e, B:84:0x0337, B:109:0x0401, B:149:0x0570, B:154:0x059d, B:163:0x05f5, B:177:0x0666, B:187:0x06a0, B:191:0x06b0, B:193:0x06b8, B:197:0x06c5, B:199:0x06e0, B:201:0x06f5, B:202:0x06fa, B:209:0x074d, B:211:0x0757, B:213:0x076a, B:215:0x078c, B:216:0x0796, B:217:0x079c, B:221:0x07ad, B:225:0x07be, B:230:0x07d5, B:232:0x07e8, B:234:0x080a, B:240:0x0821, B:243:0x0858, B:245:0x088b, B:247:0x08bc, B:250:0x08c8, B:256:0x08e0, B:258:0x0915, B:260:0x093c, B:262:0x0946, B:264:0x095d, B:268:0x0984, B:276:0x09aa, B:279:0x09b7, B:281:0x09cf, B:283:0x09db, B:290:0x0a02, B:291:0x0a2d, B:294:0x0a53, B:300:0x0a78, B:302:0x0a8a, B:304:0x0a9c, B:306:0x0ac7, B:308:0x0ade, B:310:0x0aec, B:314:0x0b09, B:316:0x0b1d, B:318:0x0b34, B:322:0x0b54, B:324:0x0b62, B:326:0x0b6a, B:328:0x0b87, B:330:0x0ba3, B:337:0x0bc4, B:338:0x0bf1, B:343:0x0c14, B:345:0x0c1e, B:349:0x0c35, B:352:0x0c60, B:354:0x0c6e, B:358:0x0c8c, B:360:0x0ca1, B:362:0x0cb7, B:366:0x0d00, B:368:0x0d18, B:370:0x0d26, B:374:0x0d44, B:376:0x0d59, B:378:0x0dc9, B:380:0x0dd2, B:382:0x0dd8, B:385:0x0deb, B:387:0x0df4, B:389:0x0dfa, B:392:0x0e0d, B:394:0x0e23, B:398:0x0e4d, B:400:0x0e6c, B:401:0x0e8a, B:407:0x0ea7, B:409:0x0ebc, B:411:0x0ecb, B:414:0x0ef2, B:417:0x0f0e, B:419:0x0f15, B:424:0x0f37, B:426:0x0f40, B:430:0x0f5b, B:432:0x0f70, B:434:0x0f78, B:440:0x0f95, B:442:0x0fa6, B:448:0x0fb7, B:450:0x0fc1, B:452:0x0fe1, B:454:0x0ff4, B:456:0x0ffc, B:458:0x1006, B:461:0x103e, B:463:0x1048, B:465:0x105b, B:469:0x106c, B:471:0x1074, B:473:0x1088, B:475:0x108f, B:477:0x10d1, B:479:0x10f4, B:481:0x10fe, B:483:0x111e, B:486:0x114e, B:488:0x116c, B:490:0x1172, B:492:0x117e, B:494:0x118f, B:496:0x1195, B:498:0x119f, B:500:0x11b1, B:502:0x11c4, B:503:0x11cc, B:505:0x11d8, B:507:0x11e7, B:509:0x1213, B:516:0x125d, B:519:0x1278, B:520:0x12b2, B:522:0x12c0, B:524:0x12c8, B:526:0x12e2, B:528:0x12e9, B:531:0x12f9, B:533:0x12ff, B:536:0x130c, B:538:0x1312, B:544:0x1333, B:547:0x134c, B:550:0x136a, B:552:0x13aa, B:555:0x13cb, B:558:0x13d8, B:560:0x13f3, B:562:0x13fa, B:564:0x1401, B:567:0x1409, B:569:0x1420, B:571:0x1431, B:573:0x143b, B:575:0x1463, B:577:0x146b, B:579:0x147b, B:581:0x1494, B:582:0x149f, B:584:0x14a6, B:588:0x14b5, B:590:0x14f2, B:592:0x1504, B:593:0x151d, B:594:0x1532, B:596:0x153a, B:597:0x1552, B:599:0x1561, B:601:0x156e, B:603:0x157c, B:605:0x1584, B:606:0x15a2, B:608:0x15b7, B:610:0x15be, B:612:0x15d4, B:614:0x15f1, B:616:0x15f7, B:618:0x1615, B:621:0x161f, B:623:0x162b, B:625:0x1635, B:627:0x164a, B:629:0x1676, B:633:0x1687, B:635:0x1692, B:636:0x16ab, B:638:0x16b3, B:641:0x16c1, B:643:0x16cb, B:649:0x16de, B:651:0x16e7, B:653:0x1716, B:655:0x171f, B:656:0x172a, B:657:0x1733, B:658:0x173c, B:659:0x1745, B:660:0x1763, B:661:0x1771, B:663:0x1799, B:665:0x17b7, B:667:0x17c5, B:669:0x17d8, B:674:0x17ed, B:675:0x1804, B:121:0x0473), top: B:689:0x0007, inners: #0, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0ade A[Catch: all -> 0x0341, TryCatch #1 {all -> 0x0341, blocks: (B:3:0x0007, B:5:0x001c, B:33:0x0116, B:35:0x011f, B:37:0x0125, B:44:0x013d, B:46:0x0155, B:48:0x017a, B:50:0x0189, B:52:0x01ba, B:54:0x01f6, B:60:0x0210, B:62:0x021e, B:84:0x0337, B:109:0x0401, B:149:0x0570, B:154:0x059d, B:163:0x05f5, B:177:0x0666, B:187:0x06a0, B:191:0x06b0, B:193:0x06b8, B:197:0x06c5, B:199:0x06e0, B:201:0x06f5, B:202:0x06fa, B:209:0x074d, B:211:0x0757, B:213:0x076a, B:215:0x078c, B:216:0x0796, B:217:0x079c, B:221:0x07ad, B:225:0x07be, B:230:0x07d5, B:232:0x07e8, B:234:0x080a, B:240:0x0821, B:243:0x0858, B:245:0x088b, B:247:0x08bc, B:250:0x08c8, B:256:0x08e0, B:258:0x0915, B:260:0x093c, B:262:0x0946, B:264:0x095d, B:268:0x0984, B:276:0x09aa, B:279:0x09b7, B:281:0x09cf, B:283:0x09db, B:290:0x0a02, B:291:0x0a2d, B:294:0x0a53, B:300:0x0a78, B:302:0x0a8a, B:304:0x0a9c, B:306:0x0ac7, B:308:0x0ade, B:310:0x0aec, B:314:0x0b09, B:316:0x0b1d, B:318:0x0b34, B:322:0x0b54, B:324:0x0b62, B:326:0x0b6a, B:328:0x0b87, B:330:0x0ba3, B:337:0x0bc4, B:338:0x0bf1, B:343:0x0c14, B:345:0x0c1e, B:349:0x0c35, B:352:0x0c60, B:354:0x0c6e, B:358:0x0c8c, B:360:0x0ca1, B:362:0x0cb7, B:366:0x0d00, B:368:0x0d18, B:370:0x0d26, B:374:0x0d44, B:376:0x0d59, B:378:0x0dc9, B:380:0x0dd2, B:382:0x0dd8, B:385:0x0deb, B:387:0x0df4, B:389:0x0dfa, B:392:0x0e0d, B:394:0x0e23, B:398:0x0e4d, B:400:0x0e6c, B:401:0x0e8a, B:407:0x0ea7, B:409:0x0ebc, B:411:0x0ecb, B:414:0x0ef2, B:417:0x0f0e, B:419:0x0f15, B:424:0x0f37, B:426:0x0f40, B:430:0x0f5b, B:432:0x0f70, B:434:0x0f78, B:440:0x0f95, B:442:0x0fa6, B:448:0x0fb7, B:450:0x0fc1, B:452:0x0fe1, B:454:0x0ff4, B:456:0x0ffc, B:458:0x1006, B:461:0x103e, B:463:0x1048, B:465:0x105b, B:469:0x106c, B:471:0x1074, B:473:0x1088, B:475:0x108f, B:477:0x10d1, B:479:0x10f4, B:481:0x10fe, B:483:0x111e, B:486:0x114e, B:488:0x116c, B:490:0x1172, B:492:0x117e, B:494:0x118f, B:496:0x1195, B:498:0x119f, B:500:0x11b1, B:502:0x11c4, B:503:0x11cc, B:505:0x11d8, B:507:0x11e7, B:509:0x1213, B:516:0x125d, B:519:0x1278, B:520:0x12b2, B:522:0x12c0, B:524:0x12c8, B:526:0x12e2, B:528:0x12e9, B:531:0x12f9, B:533:0x12ff, B:536:0x130c, B:538:0x1312, B:544:0x1333, B:547:0x134c, B:550:0x136a, B:552:0x13aa, B:555:0x13cb, B:558:0x13d8, B:560:0x13f3, B:562:0x13fa, B:564:0x1401, B:567:0x1409, B:569:0x1420, B:571:0x1431, B:573:0x143b, B:575:0x1463, B:577:0x146b, B:579:0x147b, B:581:0x1494, B:582:0x149f, B:584:0x14a6, B:588:0x14b5, B:590:0x14f2, B:592:0x1504, B:593:0x151d, B:594:0x1532, B:596:0x153a, B:597:0x1552, B:599:0x1561, B:601:0x156e, B:603:0x157c, B:605:0x1584, B:606:0x15a2, B:608:0x15b7, B:610:0x15be, B:612:0x15d4, B:614:0x15f1, B:616:0x15f7, B:618:0x1615, B:621:0x161f, B:623:0x162b, B:625:0x1635, B:627:0x164a, B:629:0x1676, B:633:0x1687, B:635:0x1692, B:636:0x16ab, B:638:0x16b3, B:641:0x16c1, B:643:0x16cb, B:649:0x16de, B:651:0x16e7, B:653:0x1716, B:655:0x171f, B:656:0x172a, B:657:0x1733, B:658:0x173c, B:659:0x1745, B:660:0x1763, B:661:0x1771, B:663:0x1799, B:665:0x17b7, B:667:0x17c5, B:669:0x17d8, B:674:0x17ed, B:675:0x1804, B:121:0x0473), top: B:689:0x0007, inners: #0, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:322:0x0b54 A[Catch: all -> 0x0341, TRY_ENTER, TryCatch #1 {all -> 0x0341, blocks: (B:3:0x0007, B:5:0x001c, B:33:0x0116, B:35:0x011f, B:37:0x0125, B:44:0x013d, B:46:0x0155, B:48:0x017a, B:50:0x0189, B:52:0x01ba, B:54:0x01f6, B:60:0x0210, B:62:0x021e, B:84:0x0337, B:109:0x0401, B:149:0x0570, B:154:0x059d, B:163:0x05f5, B:177:0x0666, B:187:0x06a0, B:191:0x06b0, B:193:0x06b8, B:197:0x06c5, B:199:0x06e0, B:201:0x06f5, B:202:0x06fa, B:209:0x074d, B:211:0x0757, B:213:0x076a, B:215:0x078c, B:216:0x0796, B:217:0x079c, B:221:0x07ad, B:225:0x07be, B:230:0x07d5, B:232:0x07e8, B:234:0x080a, B:240:0x0821, B:243:0x0858, B:245:0x088b, B:247:0x08bc, B:250:0x08c8, B:256:0x08e0, B:258:0x0915, B:260:0x093c, B:262:0x0946, B:264:0x095d, B:268:0x0984, B:276:0x09aa, B:279:0x09b7, B:281:0x09cf, B:283:0x09db, B:290:0x0a02, B:291:0x0a2d, B:294:0x0a53, B:300:0x0a78, B:302:0x0a8a, B:304:0x0a9c, B:306:0x0ac7, B:308:0x0ade, B:310:0x0aec, B:314:0x0b09, B:316:0x0b1d, B:318:0x0b34, B:322:0x0b54, B:324:0x0b62, B:326:0x0b6a, B:328:0x0b87, B:330:0x0ba3, B:337:0x0bc4, B:338:0x0bf1, B:343:0x0c14, B:345:0x0c1e, B:349:0x0c35, B:352:0x0c60, B:354:0x0c6e, B:358:0x0c8c, B:360:0x0ca1, B:362:0x0cb7, B:366:0x0d00, B:368:0x0d18, B:370:0x0d26, B:374:0x0d44, B:376:0x0d59, B:378:0x0dc9, B:380:0x0dd2, B:382:0x0dd8, B:385:0x0deb, B:387:0x0df4, B:389:0x0dfa, B:392:0x0e0d, B:394:0x0e23, B:398:0x0e4d, B:400:0x0e6c, B:401:0x0e8a, B:407:0x0ea7, B:409:0x0ebc, B:411:0x0ecb, B:414:0x0ef2, B:417:0x0f0e, B:419:0x0f15, B:424:0x0f37, B:426:0x0f40, B:430:0x0f5b, B:432:0x0f70, B:434:0x0f78, B:440:0x0f95, B:442:0x0fa6, B:448:0x0fb7, B:450:0x0fc1, B:452:0x0fe1, B:454:0x0ff4, B:456:0x0ffc, B:458:0x1006, B:461:0x103e, B:463:0x1048, B:465:0x105b, B:469:0x106c, B:471:0x1074, B:473:0x1088, B:475:0x108f, B:477:0x10d1, B:479:0x10f4, B:481:0x10fe, B:483:0x111e, B:486:0x114e, B:488:0x116c, B:490:0x1172, B:492:0x117e, B:494:0x118f, B:496:0x1195, B:498:0x119f, B:500:0x11b1, B:502:0x11c4, B:503:0x11cc, B:505:0x11d8, B:507:0x11e7, B:509:0x1213, B:516:0x125d, B:519:0x1278, B:520:0x12b2, B:522:0x12c0, B:524:0x12c8, B:526:0x12e2, B:528:0x12e9, B:531:0x12f9, B:533:0x12ff, B:536:0x130c, B:538:0x1312, B:544:0x1333, B:547:0x134c, B:550:0x136a, B:552:0x13aa, B:555:0x13cb, B:558:0x13d8, B:560:0x13f3, B:562:0x13fa, B:564:0x1401, B:567:0x1409, B:569:0x1420, B:571:0x1431, B:573:0x143b, B:575:0x1463, B:577:0x146b, B:579:0x147b, B:581:0x1494, B:582:0x149f, B:584:0x14a6, B:588:0x14b5, B:590:0x14f2, B:592:0x1504, B:593:0x151d, B:594:0x1532, B:596:0x153a, B:597:0x1552, B:599:0x1561, B:601:0x156e, B:603:0x157c, B:605:0x1584, B:606:0x15a2, B:608:0x15b7, B:610:0x15be, B:612:0x15d4, B:614:0x15f1, B:616:0x15f7, B:618:0x1615, B:621:0x161f, B:623:0x162b, B:625:0x1635, B:627:0x164a, B:629:0x1676, B:633:0x1687, B:635:0x1692, B:636:0x16ab, B:638:0x16b3, B:641:0x16c1, B:643:0x16cb, B:649:0x16de, B:651:0x16e7, B:653:0x1716, B:655:0x171f, B:656:0x172a, B:657:0x1733, B:658:0x173c, B:659:0x1745, B:660:0x1763, B:661:0x1771, B:663:0x1799, B:665:0x17b7, B:667:0x17c5, B:669:0x17d8, B:674:0x17ed, B:675:0x1804, B:121:0x0473), top: B:689:0x0007, inners: #0, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:326:0x0b6a A[Catch: all -> 0x0341, TryCatch #1 {all -> 0x0341, blocks: (B:3:0x0007, B:5:0x001c, B:33:0x0116, B:35:0x011f, B:37:0x0125, B:44:0x013d, B:46:0x0155, B:48:0x017a, B:50:0x0189, B:52:0x01ba, B:54:0x01f6, B:60:0x0210, B:62:0x021e, B:84:0x0337, B:109:0x0401, B:149:0x0570, B:154:0x059d, B:163:0x05f5, B:177:0x0666, B:187:0x06a0, B:191:0x06b0, B:193:0x06b8, B:197:0x06c5, B:199:0x06e0, B:201:0x06f5, B:202:0x06fa, B:209:0x074d, B:211:0x0757, B:213:0x076a, B:215:0x078c, B:216:0x0796, B:217:0x079c, B:221:0x07ad, B:225:0x07be, B:230:0x07d5, B:232:0x07e8, B:234:0x080a, B:240:0x0821, B:243:0x0858, B:245:0x088b, B:247:0x08bc, B:250:0x08c8, B:256:0x08e0, B:258:0x0915, B:260:0x093c, B:262:0x0946, B:264:0x095d, B:268:0x0984, B:276:0x09aa, B:279:0x09b7, B:281:0x09cf, B:283:0x09db, B:290:0x0a02, B:291:0x0a2d, B:294:0x0a53, B:300:0x0a78, B:302:0x0a8a, B:304:0x0a9c, B:306:0x0ac7, B:308:0x0ade, B:310:0x0aec, B:314:0x0b09, B:316:0x0b1d, B:318:0x0b34, B:322:0x0b54, B:324:0x0b62, B:326:0x0b6a, B:328:0x0b87, B:330:0x0ba3, B:337:0x0bc4, B:338:0x0bf1, B:343:0x0c14, B:345:0x0c1e, B:349:0x0c35, B:352:0x0c60, B:354:0x0c6e, B:358:0x0c8c, B:360:0x0ca1, B:362:0x0cb7, B:366:0x0d00, B:368:0x0d18, B:370:0x0d26, B:374:0x0d44, B:376:0x0d59, B:378:0x0dc9, B:380:0x0dd2, B:382:0x0dd8, B:385:0x0deb, B:387:0x0df4, B:389:0x0dfa, B:392:0x0e0d, B:394:0x0e23, B:398:0x0e4d, B:400:0x0e6c, B:401:0x0e8a, B:407:0x0ea7, B:409:0x0ebc, B:411:0x0ecb, B:414:0x0ef2, B:417:0x0f0e, B:419:0x0f15, B:424:0x0f37, B:426:0x0f40, B:430:0x0f5b, B:432:0x0f70, B:434:0x0f78, B:440:0x0f95, B:442:0x0fa6, B:448:0x0fb7, B:450:0x0fc1, B:452:0x0fe1, B:454:0x0ff4, B:456:0x0ffc, B:458:0x1006, B:461:0x103e, B:463:0x1048, B:465:0x105b, B:469:0x106c, B:471:0x1074, B:473:0x1088, B:475:0x108f, B:477:0x10d1, B:479:0x10f4, B:481:0x10fe, B:483:0x111e, B:486:0x114e, B:488:0x116c, B:490:0x1172, B:492:0x117e, B:494:0x118f, B:496:0x1195, B:498:0x119f, B:500:0x11b1, B:502:0x11c4, B:503:0x11cc, B:505:0x11d8, B:507:0x11e7, B:509:0x1213, B:516:0x125d, B:519:0x1278, B:520:0x12b2, B:522:0x12c0, B:524:0x12c8, B:526:0x12e2, B:528:0x12e9, B:531:0x12f9, B:533:0x12ff, B:536:0x130c, B:538:0x1312, B:544:0x1333, B:547:0x134c, B:550:0x136a, B:552:0x13aa, B:555:0x13cb, B:558:0x13d8, B:560:0x13f3, B:562:0x13fa, B:564:0x1401, B:567:0x1409, B:569:0x1420, B:571:0x1431, B:573:0x143b, B:575:0x1463, B:577:0x146b, B:579:0x147b, B:581:0x1494, B:582:0x149f, B:584:0x14a6, B:588:0x14b5, B:590:0x14f2, B:592:0x1504, B:593:0x151d, B:594:0x1532, B:596:0x153a, B:597:0x1552, B:599:0x1561, B:601:0x156e, B:603:0x157c, B:605:0x1584, B:606:0x15a2, B:608:0x15b7, B:610:0x15be, B:612:0x15d4, B:614:0x15f1, B:616:0x15f7, B:618:0x1615, B:621:0x161f, B:623:0x162b, B:625:0x1635, B:627:0x164a, B:629:0x1676, B:633:0x1687, B:635:0x1692, B:636:0x16ab, B:638:0x16b3, B:641:0x16c1, B:643:0x16cb, B:649:0x16de, B:651:0x16e7, B:653:0x1716, B:655:0x171f, B:656:0x172a, B:657:0x1733, B:658:0x173c, B:659:0x1745, B:660:0x1763, B:661:0x1771, B:663:0x1799, B:665:0x17b7, B:667:0x17c5, B:669:0x17d8, B:674:0x17ed, B:675:0x1804, B:121:0x0473), top: B:689:0x0007, inners: #0, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0125 A[Catch: all -> 0x0341, TryCatch #1 {all -> 0x0341, blocks: (B:3:0x0007, B:5:0x001c, B:33:0x0116, B:35:0x011f, B:37:0x0125, B:44:0x013d, B:46:0x0155, B:48:0x017a, B:50:0x0189, B:52:0x01ba, B:54:0x01f6, B:60:0x0210, B:62:0x021e, B:84:0x0337, B:109:0x0401, B:149:0x0570, B:154:0x059d, B:163:0x05f5, B:177:0x0666, B:187:0x06a0, B:191:0x06b0, B:193:0x06b8, B:197:0x06c5, B:199:0x06e0, B:201:0x06f5, B:202:0x06fa, B:209:0x074d, B:211:0x0757, B:213:0x076a, B:215:0x078c, B:216:0x0796, B:217:0x079c, B:221:0x07ad, B:225:0x07be, B:230:0x07d5, B:232:0x07e8, B:234:0x080a, B:240:0x0821, B:243:0x0858, B:245:0x088b, B:247:0x08bc, B:250:0x08c8, B:256:0x08e0, B:258:0x0915, B:260:0x093c, B:262:0x0946, B:264:0x095d, B:268:0x0984, B:276:0x09aa, B:279:0x09b7, B:281:0x09cf, B:283:0x09db, B:290:0x0a02, B:291:0x0a2d, B:294:0x0a53, B:300:0x0a78, B:302:0x0a8a, B:304:0x0a9c, B:306:0x0ac7, B:308:0x0ade, B:310:0x0aec, B:314:0x0b09, B:316:0x0b1d, B:318:0x0b34, B:322:0x0b54, B:324:0x0b62, B:326:0x0b6a, B:328:0x0b87, B:330:0x0ba3, B:337:0x0bc4, B:338:0x0bf1, B:343:0x0c14, B:345:0x0c1e, B:349:0x0c35, B:352:0x0c60, B:354:0x0c6e, B:358:0x0c8c, B:360:0x0ca1, B:362:0x0cb7, B:366:0x0d00, B:368:0x0d18, B:370:0x0d26, B:374:0x0d44, B:376:0x0d59, B:378:0x0dc9, B:380:0x0dd2, B:382:0x0dd8, B:385:0x0deb, B:387:0x0df4, B:389:0x0dfa, B:392:0x0e0d, B:394:0x0e23, B:398:0x0e4d, B:400:0x0e6c, B:401:0x0e8a, B:407:0x0ea7, B:409:0x0ebc, B:411:0x0ecb, B:414:0x0ef2, B:417:0x0f0e, B:419:0x0f15, B:424:0x0f37, B:426:0x0f40, B:430:0x0f5b, B:432:0x0f70, B:434:0x0f78, B:440:0x0f95, B:442:0x0fa6, B:448:0x0fb7, B:450:0x0fc1, B:452:0x0fe1, B:454:0x0ff4, B:456:0x0ffc, B:458:0x1006, B:461:0x103e, B:463:0x1048, B:465:0x105b, B:469:0x106c, B:471:0x1074, B:473:0x1088, B:475:0x108f, B:477:0x10d1, B:479:0x10f4, B:481:0x10fe, B:483:0x111e, B:486:0x114e, B:488:0x116c, B:490:0x1172, B:492:0x117e, B:494:0x118f, B:496:0x1195, B:498:0x119f, B:500:0x11b1, B:502:0x11c4, B:503:0x11cc, B:505:0x11d8, B:507:0x11e7, B:509:0x1213, B:516:0x125d, B:519:0x1278, B:520:0x12b2, B:522:0x12c0, B:524:0x12c8, B:526:0x12e2, B:528:0x12e9, B:531:0x12f9, B:533:0x12ff, B:536:0x130c, B:538:0x1312, B:544:0x1333, B:547:0x134c, B:550:0x136a, B:552:0x13aa, B:555:0x13cb, B:558:0x13d8, B:560:0x13f3, B:562:0x13fa, B:564:0x1401, B:567:0x1409, B:569:0x1420, B:571:0x1431, B:573:0x143b, B:575:0x1463, B:577:0x146b, B:579:0x147b, B:581:0x1494, B:582:0x149f, B:584:0x14a6, B:588:0x14b5, B:590:0x14f2, B:592:0x1504, B:593:0x151d, B:594:0x1532, B:596:0x153a, B:597:0x1552, B:599:0x1561, B:601:0x156e, B:603:0x157c, B:605:0x1584, B:606:0x15a2, B:608:0x15b7, B:610:0x15be, B:612:0x15d4, B:614:0x15f1, B:616:0x15f7, B:618:0x1615, B:621:0x161f, B:623:0x162b, B:625:0x1635, B:627:0x164a, B:629:0x1676, B:633:0x1687, B:635:0x1692, B:636:0x16ab, B:638:0x16b3, B:641:0x16c1, B:643:0x16cb, B:649:0x16de, B:651:0x16e7, B:653:0x1716, B:655:0x171f, B:656:0x172a, B:657:0x1733, B:658:0x173c, B:659:0x1745, B:660:0x1763, B:661:0x1771, B:663:0x1799, B:665:0x17b7, B:667:0x17c5, B:669:0x17d8, B:674:0x17ed, B:675:0x1804, B:121:0x0473), top: B:689:0x0007, inners: #0, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:398:0x0e4d A[Catch: all -> 0x0341, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0341, blocks: (B:3:0x0007, B:5:0x001c, B:33:0x0116, B:35:0x011f, B:37:0x0125, B:44:0x013d, B:46:0x0155, B:48:0x017a, B:50:0x0189, B:52:0x01ba, B:54:0x01f6, B:60:0x0210, B:62:0x021e, B:84:0x0337, B:109:0x0401, B:149:0x0570, B:154:0x059d, B:163:0x05f5, B:177:0x0666, B:187:0x06a0, B:191:0x06b0, B:193:0x06b8, B:197:0x06c5, B:199:0x06e0, B:201:0x06f5, B:202:0x06fa, B:209:0x074d, B:211:0x0757, B:213:0x076a, B:215:0x078c, B:216:0x0796, B:217:0x079c, B:221:0x07ad, B:225:0x07be, B:230:0x07d5, B:232:0x07e8, B:234:0x080a, B:240:0x0821, B:243:0x0858, B:245:0x088b, B:247:0x08bc, B:250:0x08c8, B:256:0x08e0, B:258:0x0915, B:260:0x093c, B:262:0x0946, B:264:0x095d, B:268:0x0984, B:276:0x09aa, B:279:0x09b7, B:281:0x09cf, B:283:0x09db, B:290:0x0a02, B:291:0x0a2d, B:294:0x0a53, B:300:0x0a78, B:302:0x0a8a, B:304:0x0a9c, B:306:0x0ac7, B:308:0x0ade, B:310:0x0aec, B:314:0x0b09, B:316:0x0b1d, B:318:0x0b34, B:322:0x0b54, B:324:0x0b62, B:326:0x0b6a, B:328:0x0b87, B:330:0x0ba3, B:337:0x0bc4, B:338:0x0bf1, B:343:0x0c14, B:345:0x0c1e, B:349:0x0c35, B:352:0x0c60, B:354:0x0c6e, B:358:0x0c8c, B:360:0x0ca1, B:362:0x0cb7, B:366:0x0d00, B:368:0x0d18, B:370:0x0d26, B:374:0x0d44, B:376:0x0d59, B:378:0x0dc9, B:380:0x0dd2, B:382:0x0dd8, B:385:0x0deb, B:387:0x0df4, B:389:0x0dfa, B:392:0x0e0d, B:394:0x0e23, B:398:0x0e4d, B:400:0x0e6c, B:401:0x0e8a, B:407:0x0ea7, B:409:0x0ebc, B:411:0x0ecb, B:414:0x0ef2, B:417:0x0f0e, B:419:0x0f15, B:424:0x0f37, B:426:0x0f40, B:430:0x0f5b, B:432:0x0f70, B:434:0x0f78, B:440:0x0f95, B:442:0x0fa6, B:448:0x0fb7, B:450:0x0fc1, B:452:0x0fe1, B:454:0x0ff4, B:456:0x0ffc, B:458:0x1006, B:461:0x103e, B:463:0x1048, B:465:0x105b, B:469:0x106c, B:471:0x1074, B:473:0x1088, B:475:0x108f, B:477:0x10d1, B:479:0x10f4, B:481:0x10fe, B:483:0x111e, B:486:0x114e, B:488:0x116c, B:490:0x1172, B:492:0x117e, B:494:0x118f, B:496:0x1195, B:498:0x119f, B:500:0x11b1, B:502:0x11c4, B:503:0x11cc, B:505:0x11d8, B:507:0x11e7, B:509:0x1213, B:516:0x125d, B:519:0x1278, B:520:0x12b2, B:522:0x12c0, B:524:0x12c8, B:526:0x12e2, B:528:0x12e9, B:531:0x12f9, B:533:0x12ff, B:536:0x130c, B:538:0x1312, B:544:0x1333, B:547:0x134c, B:550:0x136a, B:552:0x13aa, B:555:0x13cb, B:558:0x13d8, B:560:0x13f3, B:562:0x13fa, B:564:0x1401, B:567:0x1409, B:569:0x1420, B:571:0x1431, B:573:0x143b, B:575:0x1463, B:577:0x146b, B:579:0x147b, B:581:0x1494, B:582:0x149f, B:584:0x14a6, B:588:0x14b5, B:590:0x14f2, B:592:0x1504, B:593:0x151d, B:594:0x1532, B:596:0x153a, B:597:0x1552, B:599:0x1561, B:601:0x156e, B:603:0x157c, B:605:0x1584, B:606:0x15a2, B:608:0x15b7, B:610:0x15be, B:612:0x15d4, B:614:0x15f1, B:616:0x15f7, B:618:0x1615, B:621:0x161f, B:623:0x162b, B:625:0x1635, B:627:0x164a, B:629:0x1676, B:633:0x1687, B:635:0x1692, B:636:0x16ab, B:638:0x16b3, B:641:0x16c1, B:643:0x16cb, B:649:0x16de, B:651:0x16e7, B:653:0x1716, B:655:0x171f, B:656:0x172a, B:657:0x1733, B:658:0x173c, B:659:0x1745, B:660:0x1763, B:661:0x1771, B:663:0x1799, B:665:0x17b7, B:667:0x17c5, B:669:0x17d8, B:674:0x17ed, B:675:0x1804, B:121:0x0473), top: B:689:0x0007, inners: #0, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:675:0x1804 A[Catch: all -> 0x0341, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0341, blocks: (B:3:0x0007, B:5:0x001c, B:33:0x0116, B:35:0x011f, B:37:0x0125, B:44:0x013d, B:46:0x0155, B:48:0x017a, B:50:0x0189, B:52:0x01ba, B:54:0x01f6, B:60:0x0210, B:62:0x021e, B:84:0x0337, B:109:0x0401, B:149:0x0570, B:154:0x059d, B:163:0x05f5, B:177:0x0666, B:187:0x06a0, B:191:0x06b0, B:193:0x06b8, B:197:0x06c5, B:199:0x06e0, B:201:0x06f5, B:202:0x06fa, B:209:0x074d, B:211:0x0757, B:213:0x076a, B:215:0x078c, B:216:0x0796, B:217:0x079c, B:221:0x07ad, B:225:0x07be, B:230:0x07d5, B:232:0x07e8, B:234:0x080a, B:240:0x0821, B:243:0x0858, B:245:0x088b, B:247:0x08bc, B:250:0x08c8, B:256:0x08e0, B:258:0x0915, B:260:0x093c, B:262:0x0946, B:264:0x095d, B:268:0x0984, B:276:0x09aa, B:279:0x09b7, B:281:0x09cf, B:283:0x09db, B:290:0x0a02, B:291:0x0a2d, B:294:0x0a53, B:300:0x0a78, B:302:0x0a8a, B:304:0x0a9c, B:306:0x0ac7, B:308:0x0ade, B:310:0x0aec, B:314:0x0b09, B:316:0x0b1d, B:318:0x0b34, B:322:0x0b54, B:324:0x0b62, B:326:0x0b6a, B:328:0x0b87, B:330:0x0ba3, B:337:0x0bc4, B:338:0x0bf1, B:343:0x0c14, B:345:0x0c1e, B:349:0x0c35, B:352:0x0c60, B:354:0x0c6e, B:358:0x0c8c, B:360:0x0ca1, B:362:0x0cb7, B:366:0x0d00, B:368:0x0d18, B:370:0x0d26, B:374:0x0d44, B:376:0x0d59, B:378:0x0dc9, B:380:0x0dd2, B:382:0x0dd8, B:385:0x0deb, B:387:0x0df4, B:389:0x0dfa, B:392:0x0e0d, B:394:0x0e23, B:398:0x0e4d, B:400:0x0e6c, B:401:0x0e8a, B:407:0x0ea7, B:409:0x0ebc, B:411:0x0ecb, B:414:0x0ef2, B:417:0x0f0e, B:419:0x0f15, B:424:0x0f37, B:426:0x0f40, B:430:0x0f5b, B:432:0x0f70, B:434:0x0f78, B:440:0x0f95, B:442:0x0fa6, B:448:0x0fb7, B:450:0x0fc1, B:452:0x0fe1, B:454:0x0ff4, B:456:0x0ffc, B:458:0x1006, B:461:0x103e, B:463:0x1048, B:465:0x105b, B:469:0x106c, B:471:0x1074, B:473:0x1088, B:475:0x108f, B:477:0x10d1, B:479:0x10f4, B:481:0x10fe, B:483:0x111e, B:486:0x114e, B:488:0x116c, B:490:0x1172, B:492:0x117e, B:494:0x118f, B:496:0x1195, B:498:0x119f, B:500:0x11b1, B:502:0x11c4, B:503:0x11cc, B:505:0x11d8, B:507:0x11e7, B:509:0x1213, B:516:0x125d, B:519:0x1278, B:520:0x12b2, B:522:0x12c0, B:524:0x12c8, B:526:0x12e2, B:528:0x12e9, B:531:0x12f9, B:533:0x12ff, B:536:0x130c, B:538:0x1312, B:544:0x1333, B:547:0x134c, B:550:0x136a, B:552:0x13aa, B:555:0x13cb, B:558:0x13d8, B:560:0x13f3, B:562:0x13fa, B:564:0x1401, B:567:0x1409, B:569:0x1420, B:571:0x1431, B:573:0x143b, B:575:0x1463, B:577:0x146b, B:579:0x147b, B:581:0x1494, B:582:0x149f, B:584:0x14a6, B:588:0x14b5, B:590:0x14f2, B:592:0x1504, B:593:0x151d, B:594:0x1532, B:596:0x153a, B:597:0x1552, B:599:0x1561, B:601:0x156e, B:603:0x157c, B:605:0x1584, B:606:0x15a2, B:608:0x15b7, B:610:0x15be, B:612:0x15d4, B:614:0x15f1, B:616:0x15f7, B:618:0x1615, B:621:0x161f, B:623:0x162b, B:625:0x1635, B:627:0x164a, B:629:0x1676, B:633:0x1687, B:635:0x1692, B:636:0x16ab, B:638:0x16b3, B:641:0x16c1, B:643:0x16cb, B:649:0x16de, B:651:0x16e7, B:653:0x1716, B:655:0x171f, B:656:0x172a, B:657:0x1733, B:658:0x173c, B:659:0x1745, B:660:0x1763, B:661:0x1771, B:663:0x1799, B:665:0x17b7, B:667:0x17c5, B:669:0x17d8, B:674:0x17ed, B:675:0x1804, B:121:0x0473), top: B:689:0x0007, inners: #0, #7 }] */
    /* JADX WARN: Type inference failed for: r0v113, types: [long] */
    /* JADX WARN: Type inference failed for: r0v119, types: [long] */
    /* JADX WARN: Type inference failed for: r0v291, types: [long] */
    /* JADX WARN: Type inference failed for: r0v312, types: [long] */
    /* JADX WARN: Type inference failed for: r0v494, types: [long] */
    /* JADX WARN: Type inference failed for: r0v558, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m4219a(java.lang.String r19, long r20) {
        /*
            Method dump skipped, instructions count: 6266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4415jo.m4219a(java.lang.String, long):boolean");
    }

    /* renamed from: b */
    private final Boolean m4214b(C4299fg c4299fg) {
        Boolean bool;
        try {
        } catch (PackageManager.NameNotFoundException e) {
            bool = null;
        }
        if (c4299fg.m4484m() != -2147483648L) {
            if (c4299fg.m4484m() == C2586c.m14193a(this.f19246j.mo4034r()).m14194b(c4299fg.m4512c(), 0).versionCode) {
                bool = true;
                return bool;
            }
            bool = false;
            return bool;
        }
        String str = C2586c.m14193a(this.f19246j.mo4034r()).m14194b(c4299fg.m4512c(), 0).versionName;
        if (c4299fg.m4486l() != null && c4299fg.m4486l().equals(str)) {
            bool = true;
            return bool;
        }
        bool = false;
        return bool;
        bool = null;
        return bool;
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* renamed from: b */
    private final void m4215b(C3776ao.C3781c.C3782a c3782a, C3776ao.C3781c.C3782a c3782a2) {
        C2662s.m13973b("_e".equals(c3782a.m6294d()));
        m4199h();
        C3776ao.C3785e m4177a = C4420js.m4177a((C3776ao.C3781c) ((AbstractC3900ed) c3782a.mo5544u()), "_et");
        if (!m4177a.m6263e() || m4177a.m6261f() <= 0) {
            return;
        }
        char m6261f = m4177a.m6261f();
        m4199h();
        C3776ao.C3785e m4177a2 = C4420js.m4177a((C3776ao.C3781c) ((AbstractC3900ed) c3782a2.mo5544u()), "_et");
        if (m4177a2 != null && m4177a2.m6261f() > 0) {
            m6261f = m4177a2.m6261f() + m6261f;
        }
        m4199h().m4178a(c3782a2, "_et", Long.valueOf(m6261f));
        m4199h().m4178a(c3782a, "_fr", (Object) 1L);
    }

    /* renamed from: b */
    private static void m4213b(AbstractC4412jl abstractC4412jl) {
        if (abstractC4412jl == null) {
            throw new IllegalStateException("Upload Component not created");
        }
        if (abstractC4412jl.m4247J()) {
            return;
        }
        String valueOf = String.valueOf(abstractC4412jl.getClass());
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 27).append("Component not initialized: ").append(valueOf).toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x046c A[Catch: all -> 0x04d1, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x04d1, blocks: (B:46:0x026a, B:48:0x0276, B:52:0x0289, B:56:0x029c, B:58:0x02aa, B:62:0x02bb, B:69:0x02d6, B:71:0x02e7, B:74:0x0306, B:80:0x032d, B:82:0x033a, B:84:0x034a, B:88:0x035d, B:90:0x0364, B:92:0x0378, B:94:0x038e, B:96:0x0396, B:98:0x03a6, B:101:0x03b2, B:103:0x03da, B:104:0x03fb, B:105:0x03fe, B:107:0x0421, B:109:0x042c, B:114:0x046c, B:119:0x048f, B:121:0x04b2, B:122:0x04c5, B:127:0x04dd, B:128:0x04f5, B:129:0x0529, B:131:0x0547, B:135:0x0551, B:137:0x0565, B:139:0x057a, B:144:0x05b7, B:146:0x05d4, B:150:0x05e9, B:155:0x0610, B:157:0x062d, B:161:0x0659, B:166:0x068a, B:168:0x06a7, B:170:0x06b7, B:172:0x06e4, B:174:0x070d, B:176:0x0718, B:178:0x072b, B:180:0x0735, B:182:0x0749, B:185:0x075a, B:186:0x0774, B:187:0x0777, B:189:0x07a8, B:193:0x07c7, B:195:0x0814, B:197:0x0830, B:199:0x0879, B:201:0x0884, B:203:0x088d, B:205:0x0898, B:207:0x08a1, B:209:0x08ac, B:211:0x08b6, B:213:0x08c3, B:215:0x08d5, B:216:0x08df, B:218:0x08e5, B:220:0x08f9, B:222:0x0904, B:224:0x090e, B:226:0x091a, B:228:0x0923, B:230:0x092e, B:232:0x0938, B:234:0x0943, B:236:0x094b, B:238:0x0957, B:240:0x0973, B:242:0x0981, B:244:0x098a, B:246:0x099e, B:248:0x09ac, B:250:0x09b3, B:252:0x09c9, B:254:0x09db, B:256:0x0a2c, B:258:0x0a37, B:260:0x0a40, B:262:0x0a4d, B:264:0x0a55, B:267:0x0a6a, B:269:0x0b08, B:271:0x0b13, B:273:0x0b25, B:275:0x0b2e, B:277:0x0b3b, B:279:0x0b44, B:281:0x0b50, B:283:0x0b5f, B:285:0x0b6b, B:286:0x0bb7, B:287:0x0bd3, B:289:0x0bde, B:291:0x0be8, B:292:0x0bf5, B:294:0x0c09, B:296:0x0c10, B:298:0x0c27, B:300:0x0c44, B:302:0x0c53, B:304:0x0c5b, B:306:0x0c7a, B:308:0x0c8f, B:310:0x0c9a, B:312:0x0ca5, B:314:0x0cad, B:318:0x0cc3, B:320:0x0ccf, B:322:0x0cd5, B:325:0x0d0a, B:326:0x0d26, B:328:0x0d52), top: B:335:0x026a, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:320:0x0ccf A[Catch: all -> 0x04d1, TryCatch #1 {all -> 0x04d1, blocks: (B:46:0x026a, B:48:0x0276, B:52:0x0289, B:56:0x029c, B:58:0x02aa, B:62:0x02bb, B:69:0x02d6, B:71:0x02e7, B:74:0x0306, B:80:0x032d, B:82:0x033a, B:84:0x034a, B:88:0x035d, B:90:0x0364, B:92:0x0378, B:94:0x038e, B:96:0x0396, B:98:0x03a6, B:101:0x03b2, B:103:0x03da, B:104:0x03fb, B:105:0x03fe, B:107:0x0421, B:109:0x042c, B:114:0x046c, B:119:0x048f, B:121:0x04b2, B:122:0x04c5, B:127:0x04dd, B:128:0x04f5, B:129:0x0529, B:131:0x0547, B:135:0x0551, B:137:0x0565, B:139:0x057a, B:144:0x05b7, B:146:0x05d4, B:150:0x05e9, B:155:0x0610, B:157:0x062d, B:161:0x0659, B:166:0x068a, B:168:0x06a7, B:170:0x06b7, B:172:0x06e4, B:174:0x070d, B:176:0x0718, B:178:0x072b, B:180:0x0735, B:182:0x0749, B:185:0x075a, B:186:0x0774, B:187:0x0777, B:189:0x07a8, B:193:0x07c7, B:195:0x0814, B:197:0x0830, B:199:0x0879, B:201:0x0884, B:203:0x088d, B:205:0x0898, B:207:0x08a1, B:209:0x08ac, B:211:0x08b6, B:213:0x08c3, B:215:0x08d5, B:216:0x08df, B:218:0x08e5, B:220:0x08f9, B:222:0x0904, B:224:0x090e, B:226:0x091a, B:228:0x0923, B:230:0x092e, B:232:0x0938, B:234:0x0943, B:236:0x094b, B:238:0x0957, B:240:0x0973, B:242:0x0981, B:244:0x098a, B:246:0x099e, B:248:0x09ac, B:250:0x09b3, B:252:0x09c9, B:254:0x09db, B:256:0x0a2c, B:258:0x0a37, B:260:0x0a40, B:262:0x0a4d, B:264:0x0a55, B:267:0x0a6a, B:269:0x0b08, B:271:0x0b13, B:273:0x0b25, B:275:0x0b2e, B:277:0x0b3b, B:279:0x0b44, B:281:0x0b50, B:283:0x0b5f, B:285:0x0b6b, B:286:0x0bb7, B:287:0x0bd3, B:289:0x0bde, B:291:0x0be8, B:292:0x0bf5, B:294:0x0c09, B:296:0x0c10, B:298:0x0c27, B:300:0x0c44, B:302:0x0c53, B:304:0x0c5b, B:306:0x0c7a, B:308:0x0c8f, B:310:0x0c9a, B:312:0x0ca5, B:314:0x0cad, B:318:0x0cc3, B:320:0x0ccf, B:322:0x0cd5, B:325:0x0d0a, B:326:0x0d26, B:328:0x0d52), top: B:335:0x026a, inners: #0, #2 }] */
    /* JADX WARN: Type inference failed for: r0v436, types: [long] */
    /* JADX WARN: Type inference failed for: r0v444, types: [long] */
    /* JADX WARN: Type inference failed for: r0v510, types: [double] */
    /* JADX WARN: Type inference failed for: r0v524, types: [long] */
    /* JADX WARN: Type inference failed for: r0v533, types: [long] */
    /* JADX WARN: Type inference failed for: r0v539, types: [double] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:127:0x04dd -> B:104:0x03fb). Please submit an issue!!! */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m4208b(com.google.android.gms.measurement.internal.C4450r r17, com.google.android.gms.measurement.internal.C4430kb r18) {
        /*
            Method dump skipped, instructions count: 3454
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4415jo.m4208b(com.google.android.gms.measurement.internal.r, com.google.android.gms.measurement.internal.kb):void");
    }

    /* renamed from: e */
    private final boolean m4202e(C4430kb c4430kb) {
        boolean z = false;
        if (!C4066jy.m5025b() || !this.f19246j.m4556b().m4787e(c4430kb.f19301a, C4452t.f19454ao)) {
            if (!TextUtils.isEmpty(c4430kb.f19302b) || !TextUtils.isEmpty(c4430kb.f19318r)) {
                z = true;
            }
        } else if (!TextUtils.isEmpty(c4430kb.f19302b) || !TextUtils.isEmpty(c4430kb.f19322v) || !TextUtils.isEmpty(c4430kb.f19318r)) {
            z = true;
        }
        return z;
    }

    /* renamed from: p */
    private final C4275ej m4191p() {
        if (this.f19241e == null) {
            throw new IllegalStateException("Network broadcast receiver not created");
        }
        return this.f19241e;
    }

    /* renamed from: s */
    private final C4411jk m4190s() {
        m4213b(this.f19242f);
        return this.f19242f;
    }

    /* renamed from: t */
    private final void m4189t() {
        this.f19246j.mo4031u().mo4037o();
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* renamed from: w */
    private final long m4188w() {
        long mo13862a = this.f19246j.mo4035q().mo13862a();
        C4277el m4553c = this.f19246j.m4553c();
        m4553c.m4445A();
        m4553c.mo4037o();
        ?? m4624a = m4553c.f18765g.m4624a();
        char c = m4624a;
        if (m4624a == 0) {
            c = 1 + m4553c.mo4032t().m4088d().nextInt(86400000);
            m4553c.f18765g.m4623a(c);
        }
        return ((((c + mo13862a) / 1000) / 60) / 60) / 24;
    }

    /* renamed from: x */
    private final boolean m4187x() {
        m4189t();
        m4196k();
        return m4203e().m4715k() || !TextUtils.isEmpty(m4203e().m4726f());
    }

    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v114, types: [long] */
    /* JADX WARN: Type inference failed for: r0v120, types: [long] */
    /* JADX WARN: Type inference failed for: r0v145, types: [long] */
    /* JADX WARN: Type inference failed for: r0v149, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    /* renamed from: z */
    private final void m4186z() {
        char max;
        char c;
        m4189t();
        m4196k();
        if (this.f19249m > 0) {
            long abs = 3600000 - Math.abs(this.f19246j.mo4035q().mo13861b() - this.f19249m);
            if (abs > 0) {
                this.f19246j.mo4030v().m4657j().m4653a("Upload has been suspended. Will update scheduling later in approximately ms", Long.valueOf(abs));
                m4191p().m4643b();
                m4190s().m4251b();
                return;
            }
            this.f19249m = 0L;
        }
        if (!this.f19246j.m4569G() || !m4187x()) {
            this.f19246j.mo4030v().m4657j().m4654a("Nothing to upload or uploading impossible");
            m4191p().m4643b();
            m4190s().m4251b();
            return;
        }
        long mo13862a = this.f19246j.mo4035q().mo13862a();
        long max2 = Math.max(0L, C4452t.f19490z.m4707a(null).longValue());
        boolean z = m4203e().m4713z() || m4203e().m4723g();
        if (z) {
            String m4780i = this.f19246j.m4556b().m4780i();
            max = (TextUtils.isEmpty(m4780i) || ".none.".equals(m4780i)) ? Math.max(0L, C4452t.f19484t.m4707a(null).longValue()) : Math.max(0L, C4452t.f19485u.m4707a(null).longValue());
        } else {
            max = Math.max(0L, C4452t.f19483s.m4707a(null).longValue());
        }
        long m4624a = this.f19246j.m4553c().f18761c.m4624a();
        long m4624a2 = this.f19246j.m4553c().f18762d.m4624a();
        long max3 = Math.max(m4203e().m4717i(), m4203e().m4716j());
        if (max3 == 0) {
            c = 0;
        } else {
            long abs2 = mo13862a - Math.abs(max3 - mo13862a);
            long abs3 = Math.abs(m4624a - mo13862a);
            long abs4 = mo13862a - Math.abs(m4624a2 - mo13862a);
            long max4 = Math.max(mo13862a - abs3, abs4);
            ?? r0 = abs2 + max2;
            char c2 = r0;
            if (z) {
                c2 = r0;
                if (max4 > 0) {
                    c2 = Math.min(abs2, max4) + max;
                }
            }
            if (!m4199h().m4181a(max4, max)) {
                c2 = max4 + max;
            }
            c = c2;
            if (abs4 != 0) {
                c = c2;
                if (abs4 >= abs2) {
                    int i = 0;
                    while (true) {
                        if (i >= Math.min(20, Math.max(0, C4452t.f19392B.m4707a(null).intValue()))) {
                            c = 0;
                            break;
                        }
                        c2 += (1 << i) * Math.max(0L, C4452t.f19391A.m4707a(null).longValue());
                        c = c2;
                        if (c2 > abs4) {
                            break;
                        }
                        i++;
                    }
                }
            }
        }
        if (c == 0) {
            this.f19246j.mo4030v().m4657j().m4654a("Next upload time is 0");
            m4191p().m4643b();
            m4190s().m4251b();
        } else if (!m4205d().m4646b()) {
            this.f19246j.mo4030v().m4657j().m4654a("No network");
            m4191p().m4645a();
            m4190s().m4251b();
        } else {
            long m4624a3 = this.f19246j.m4553c().f18763e.m4624a();
            long max5 = Math.max(0L, C4452t.f19481q.m4707a(null).longValue());
            if (!m4199h().m4181a(m4624a3, max5)) {
                c = Math.max((long) c, max5 + m4624a3);
            }
            m4191p().m4643b();
            ?? mo13862a2 = c - this.f19246j.mo4035q().mo13862a();
            char c3 = mo13862a2;
            if (mo13862a2 <= 0) {
                c3 = Math.max(0L, C4452t.f19486v.m4707a(null).longValue());
                this.f19246j.m4553c().f18761c.m4623a(this.f19246j.mo4035q().mo13862a());
            }
            this.f19246j.mo4030v().m4657j().m4653a("Upload scheduled in approximately ms", Long.valueOf(c3));
            m4190s().m4252a(c3);
        }
    }

    /* renamed from: a */
    public final void m4242a() {
        this.f19246j.mo4031u().mo4037o();
        m4203e().m4720h();
        if (this.f19246j.m4553c().f18761c.m4624a() == 0) {
            this.f19246j.m4553c().f18761c.m4623a(this.f19246j.mo4035q().mo13862a());
        }
        m4186z();
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final void m4241a(int i, Throwable th, byte[] bArr, String str) {
        C4211c m4203e;
        long longValue;
        m4189t();
        m4196k();
        byte[] bArr2 = bArr;
        if (bArr == null) {
            try {
                bArr2 = new byte[0];
            } finally {
                this.f19254r = false;
                m4244A();
            }
        }
        List<Long> list = this.f19258v;
        this.f19258v = null;
        if ((i == 200 || i == 204) && th == null) {
            try {
                this.f19246j.m4553c().f18761c.m4623a(this.f19246j.mo4035q().mo13862a());
                this.f19246j.m4553c().f18762d.m4623a(0L);
                m4186z();
                this.f19246j.mo4030v().m4657j().m4652a("Successful upload. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr2.length));
                m4203e().m4740b();
                try {
                    for (Long l : list) {
                        try {
                            m4203e = m4203e();
                            longValue = l.longValue();
                            m4203e.mo4037o();
                            m4203e.m4246K();
                        } catch (SQLiteException e) {
                            if (this.f19259w == null || !this.f19259w.contains(l)) {
                                throw e;
                            }
                        }
                        try {
                            if (m4203e.m4729e().delete("queue", "rowid=?", new String[]{String.valueOf(longValue)}) != 1) {
                                throw new SQLiteException("Deleted fewer rows from queue than expected");
                                break;
                            }
                            continue;
                        } catch (SQLiteException e2) {
                            m4203e.mo4030v().m4655x_().m4653a("Failed to delete a bundle in a queue table", e2);
                            throw e2;
                            break;
                        }
                    }
                    m4203e().m4734c();
                    m4203e().m4714s_();
                    this.f19259w = null;
                    if (!m4205d().m4646b() || !m4187x()) {
                        this.f19260x = -1L;
                        m4186z();
                    } else {
                        m4195l();
                    }
                    this.f19249m = 0L;
                } catch (Throwable th2) {
                    m4203e().m4714s_();
                    throw th2;
                }
            } catch (SQLiteException e3) {
                this.f19246j.mo4030v().m4655x_().m4653a("Database error while trying to delete uploaded bundles", e3);
                this.f19249m = this.f19246j.mo4035q().mo13861b();
                this.f19246j.mo4030v().m4657j().m4653a("Disable upload, time", Long.valueOf(this.f19249m));
            }
        } else {
            this.f19246j.mo4030v().m4657j().m4652a("Network upload failed. Will retry later. code, error", Integer.valueOf(i), th);
            this.f19246j.m4553c().f18762d.m4623a(this.f19246j.mo4035q().mo13862a());
            if (i == 503 || i == 429) {
                this.f19246j.m4553c().f18763e.m4623a(this.f19246j.mo4035q().mo13862a());
            }
            m4203e().m4741a(list);
            m4186z();
        }
    }

    /* renamed from: a */
    public final void m4232a(AbstractC4412jl abstractC4412jl) {
        this.f19251o++;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00c0, code lost:
        if ((r0 instanceof java.lang.CharSequence) != false) goto L22;
     */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4229a(com.google.android.gms.measurement.internal.C4423jv r12, com.google.android.gms.measurement.internal.C4430kb r13) {
        /*
            Method dump skipped, instructions count: 598
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4415jo.m4229a(com.google.android.gms.measurement.internal.jv, com.google.android.gms.measurement.internal.kb):void");
    }

    /* renamed from: a */
    public final void m4228a(C4430kb c4430kb) {
        if (this.f19258v != null) {
            this.f19259w = new ArrayList();
            this.f19259w.addAll(this.f19258v);
        }
        C4211c m4203e = m4203e();
        String str = c4430kb.f19301a;
        C2662s.m13979a(str);
        m4203e.mo4037o();
        m4203e.m4246K();
        try {
            SQLiteDatabase m4729e = m4203e.m4729e();
            String[] strArr = new String[1];
            strArr[0] = str;
            int delete = m4729e.delete("apps", "app_id=?", strArr);
            int delete2 = m4729e.delete("events", "app_id=?", strArr);
            int delete3 = m4729e.delete("user_attributes", "app_id=?", strArr);
            int delete4 = m4729e.delete("conditional_properties", "app_id=?", strArr);
            int delete5 = m4729e.delete("raw_events", "app_id=?", strArr);
            int delete6 = m4729e.delete("raw_events_metadata", "app_id=?", strArr);
            int delete7 = m4729e.delete("queue", "app_id=?", strArr);
            int delete8 = m4729e.delete("main_event_params", "app_id=?", strArr) + delete + 0 + delete2 + delete3 + delete4 + delete5 + delete6 + delete7 + m4729e.delete("audience_filter_values", "app_id=?", strArr);
            if (delete8 > 0) {
                m4203e.mo4030v().m4657j().m4652a("Reset analytics data. app, records", str, Integer.valueOf(delete8));
            }
        } catch (SQLiteException e) {
            m4203e.mo4030v().m4655x_().m4652a("Error resetting analytics data. appId, error", C4263dy.m4669a(str), e);
        }
        if (c4430kb.f19308h) {
            m4211b(c4430kb);
        }
    }

    /* renamed from: a */
    public final void m4226a(C4442kn c4442kn) {
        C4430kb m4221a = m4221a(c4442kn.f19354a);
        if (m4221a != null) {
            m4225a(c4442kn, m4221a);
        }
    }

    /* renamed from: a */
    public final void m4225a(C4442kn c4442kn, C4430kb c4430kb) {
        boolean z = true;
        C2662s.m13981a(c4442kn);
        C2662s.m13979a(c4442kn.f19354a);
        C2662s.m13981a(c4442kn.f19355b);
        C2662s.m13981a(c4442kn.f19356c);
        C2662s.m13979a(c4442kn.f19356c.f19272a);
        m4189t();
        m4196k();
        if (!m4202e(c4430kb)) {
            return;
        }
        if (!c4430kb.f19308h) {
            m4206c(c4430kb);
            return;
        }
        C4442kn c4442kn2 = new C4442kn(c4442kn);
        c4442kn2.f19358e = false;
        m4203e().m4740b();
        try {
            C4442kn m4730d = m4203e().m4730d(c4442kn2.f19354a, c4442kn2.f19356c.f19272a);
            if (m4730d != null && !m4730d.f19355b.equals(c4442kn2.f19355b)) {
                this.f19246j.mo4030v().m4662e().m4651a("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.f19246j.m4546j().m4677c(c4442kn2.f19356c.f19272a), c4442kn2.f19355b, m4730d.f19355b);
            }
            if (m4730d != null && m4730d.f19358e) {
                c4442kn2.f19355b = m4730d.f19355b;
                c4442kn2.f19357d = m4730d.f19357d;
                c4442kn2.f19361h = m4730d.f19361h;
                c4442kn2.f19359f = m4730d.f19359f;
                c4442kn2.f19362i = m4730d.f19362i;
                c4442kn2.f19358e = m4730d.f19358e;
                c4442kn2.f19356c = new C4423jv(c4442kn2.f19356c.f19272a, m4730d.f19356c.f19273b, c4442kn2.f19356c.m4148a(), m4730d.f19356c.f19276e);
                z = false;
            } else if (TextUtils.isEmpty(c4442kn2.f19359f)) {
                c4442kn2.f19356c = new C4423jv(c4442kn2.f19356c.f19272a, c4442kn2.f19357d, c4442kn2.f19356c.m4148a(), c4442kn2.f19356c.f19276e);
                c4442kn2.f19358e = true;
            } else {
                z = false;
            }
            if (c4442kn2.f19358e) {
                C4423jv c4423jv = c4442kn2.f19356c;
                C4425jx c4425jx = new C4425jx(c4442kn2.f19354a, c4442kn2.f19355b, c4423jv.f19272a, c4423jv.f19273b, c4423jv.m4148a());
                if (m4203e().m4756a(c4425jx)) {
                    this.f19246j.mo4030v().m4658i().m4651a("User property updated immediately", c4442kn2.f19354a, this.f19246j.m4546j().m4677c(c4425jx.f19288c), c4425jx.f19290e);
                } else {
                    this.f19246j.mo4030v().m4655x_().m4651a("(2)Too many active user properties, ignoring", C4263dy.m4669a(c4442kn2.f19354a), this.f19246j.m4546j().m4677c(c4425jx.f19288c), c4425jx.f19290e);
                }
                if (z && c4442kn2.f19362i != null) {
                    m4208b(new C4450r(c4442kn2.f19362i, c4442kn2.f19357d), c4430kb);
                }
            }
            if (m4203e().m4754a(c4442kn2)) {
                this.f19246j.mo4030v().m4658i().m4651a("Conditional property added", c4442kn2.f19354a, this.f19246j.m4546j().m4677c(c4442kn2.f19356c.f19272a), c4442kn2.f19356c.m4148a());
            } else {
                this.f19246j.mo4030v().m4655x_().m4651a("Too many conditional properties, ignoring", C4263dy.m4669a(c4442kn2.f19354a), this.f19246j.m4546j().m4677c(c4442kn2.f19356c.f19272a), c4442kn2.f19356c.m4148a());
            }
            m4203e().m4734c();
        } finally {
            m4203e().m4714s_();
        }
    }

    /* renamed from: a */
    public final void m4224a(C4450r c4450r, C4430kb c4430kb) {
        List<C4442kn> m4743a;
        List<C4442kn> m4743a2;
        List<C4442kn> m4743a3;
        C2662s.m13981a(c4430kb);
        C2662s.m13979a(c4430kb.f19301a);
        m4189t();
        m4196k();
        String str = c4430kb.f19301a;
        long j = c4450r.f19389d;
        m4199h();
        if (!C4420js.m4171a(c4450r, c4430kb)) {
            return;
        }
        if (!c4430kb.f19308h) {
            m4206c(c4430kb);
            return;
        }
        C4450r c4450r2 = c4450r;
        if (this.f19246j.m4556b().m4787e(str, C4452t.f19442ac)) {
            c4450r2 = c4450r;
            if (c4430kb.f19321u != null) {
                if (!c4430kb.f19321u.contains(c4450r.f19386a)) {
                    this.f19246j.mo4030v().m4658i().m4651a("Dropping non-safelisted event. appId, event name, origin", str, c4450r.f19386a, c4450r.f19388c);
                    return;
                }
                Bundle m4022b = c4450r.f19387b.m4022b();
                m4022b.putLong("ga_safelisted", 1L);
                c4450r2 = new C4450r(c4450r.f19386a, new C4445m(m4022b), c4450r.f19388c, c4450r.f19389d);
            }
        }
        m4203e().m4740b();
        try {
            C4211c m4203e = m4203e();
            C2662s.m13979a(str);
            m4203e.mo4037o();
            m4203e.m4246K();
            if (j < 0) {
                m4203e.mo4030v().m4662e().m4652a("Invalid time querying timed out conditional properties", C4263dy.m4669a(str), Long.valueOf(j));
                m4743a = Collections.emptyList();
            } else {
                m4743a = m4203e.m4743a("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str, String.valueOf(j)});
            }
            for (C4442kn c4442kn : m4743a) {
                if (c4442kn != null) {
                    this.f19246j.mo4030v().m4657j().m4651a("User property timed out", c4442kn.f19354a, this.f19246j.m4546j().m4677c(c4442kn.f19356c.f19272a), c4442kn.f19356c.m4148a());
                    if (c4442kn.f19360g != null) {
                        m4208b(new C4450r(c4442kn.f19360g, j), c4430kb);
                    }
                    m4203e().m4727e(str, c4442kn.f19356c.f19272a);
                }
            }
            C4211c m4203e2 = m4203e();
            C2662s.m13979a(str);
            m4203e2.mo4037o();
            m4203e2.m4246K();
            if (j < 0) {
                m4203e2.mo4030v().m4662e().m4652a("Invalid time querying expired conditional properties", C4263dy.m4669a(str), Long.valueOf(j));
                m4743a2 = Collections.emptyList();
            } else {
                m4743a2 = m4203e2.m4743a("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str, String.valueOf(j)});
            }
            ArrayList arrayList = new ArrayList(m4743a2.size());
            for (C4442kn c4442kn2 : m4743a2) {
                if (c4442kn2 != null) {
                    this.f19246j.mo4030v().m4657j().m4651a("User property expired", c4442kn2.f19354a, this.f19246j.m4546j().m4677c(c4442kn2.f19356c.f19272a), c4442kn2.f19356c.m4148a());
                    m4203e().m4738b(str, c4442kn2.f19356c.f19272a);
                    if (c4442kn2.f19364k != null) {
                        arrayList.add(c4442kn2.f19364k);
                    }
                    m4203e().m4727e(str, c4442kn2.f19356c.f19272a);
                }
            }
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList2.get(i);
                i++;
                m4208b(new C4450r((C4450r) obj, j), c4430kb);
            }
            C4211c m4203e3 = m4203e();
            String str2 = c4450r2.f19386a;
            C2662s.m13979a(str);
            C2662s.m13979a(str2);
            m4203e3.mo4037o();
            m4203e3.m4246K();
            if (j < 0) {
                m4203e3.mo4030v().m4662e().m4651a("Invalid time querying triggered conditional properties", C4263dy.m4669a(str), m4203e3.mo4033s().m4682a(str2), Long.valueOf(j));
                m4743a3 = Collections.emptyList();
            } else {
                m4743a3 = m4203e3.m4743a("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str, str2, String.valueOf(j)});
            }
            ArrayList arrayList3 = new ArrayList(m4743a3.size());
            for (C4442kn c4442kn3 : m4743a3) {
                if (c4442kn3 != null) {
                    C4423jv c4423jv = c4442kn3.f19356c;
                    C4425jx c4425jx = new C4425jx(c4442kn3.f19354a, c4442kn3.f19355b, c4423jv.f19272a, j, c4423jv.m4148a());
                    if (m4203e().m4756a(c4425jx)) {
                        this.f19246j.mo4030v().m4657j().m4651a("User property triggered", c4442kn3.f19354a, this.f19246j.m4546j().m4677c(c4425jx.f19288c), c4425jx.f19290e);
                    } else {
                        this.f19246j.mo4030v().m4655x_().m4651a("Too many active user properties, ignoring", C4263dy.m4669a(c4442kn3.f19354a), this.f19246j.m4546j().m4677c(c4425jx.f19288c), c4425jx.f19290e);
                    }
                    if (c4442kn3.f19362i != null) {
                        arrayList3.add(c4442kn3.f19362i);
                    }
                    c4442kn3.f19356c = new C4423jv(c4425jx);
                    c4442kn3.f19358e = true;
                    m4203e().m4754a(c4442kn3);
                }
            }
            m4208b(c4450r2, c4430kb);
            ArrayList arrayList4 = arrayList3;
            int size2 = arrayList4.size();
            int i2 = 0;
            while (i2 < size2) {
                Object obj2 = arrayList4.get(i2);
                i2++;
                m4208b(new C4450r((C4450r) obj2, j), c4430kb);
            }
            m4203e().m4734c();
        } finally {
            m4203e().m4714s_();
        }
    }

    /* renamed from: a */
    public final void m4223a(C4450r c4450r, String str) {
        C4299fg m4739b = m4203e().m4739b(str);
        if (m4739b == null || TextUtils.isEmpty(m4739b.m4486l())) {
            this.f19246j.mo4030v().m4658i().m4653a("No app data available; dropping event", str);
            return;
        }
        Boolean m4214b = m4214b(m4739b);
        if (m4214b == null) {
            if (!"_ui".equals(c4450r.f19386a)) {
                this.f19246j.mo4030v().m4662e().m4653a("Could not find package. appId", C4263dy.m4669a(str));
            }
        } else if (!m4214b.booleanValue()) {
            this.f19246j.mo4030v().m4655x_().m4653a("App version does not match; dropping event. appId", C4263dy.m4669a(str));
            return;
        }
        m4224a(c4450r, new C4430kb(str, m4739b.m4505e(), m4739b.m4486l(), m4739b.m4484m(), m4739b.m4482n(), m4739b.m4480o(), m4739b.m4478p(), (String) null, m4739b.m4475r(), false, m4739b.m4493i(), m4739b.m4527E(), 0L, 0, m4739b.m4526F(), m4739b.m4525G(), false, m4739b.m4502f(), m4739b.m4524H(), m4739b.m4476q(), m4739b.m4523I(), (!C4066jy.m5025b() || !this.f19246j.m4556b().m4787e(m4739b.m4512c(), C4452t.f19454ao)) ? null : m4739b.m4499g()));
    }

    /* renamed from: a */
    public final void m4222a(Runnable runnable) {
        m4189t();
        if (this.f19250n == null) {
            this.f19250n = new ArrayList();
        }
        this.f19250n.add(runnable);
    }

    /* renamed from: a */
    public final void m4220a(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        m4189t();
        m4196k();
        C2662s.m13979a(str);
        byte[] bArr2 = bArr;
        if (bArr == null) {
            try {
                bArr2 = new byte[0];
            } finally {
                this.f19253q = false;
                m4244A();
            }
        }
        this.f19246j.mo4030v().m4657j().m4653a("onConfigFetched. Response size", Integer.valueOf(bArr2.length));
        m4203e().m4740b();
        C4299fg m4739b = m4203e().m4739b(str);
        boolean z = (i == 200 || i == 204 || i == 304) && th == null;
        if (m4739b == null) {
            this.f19246j.mo4030v().m4662e().m4653a("App does not exist in onConfigFetched. appId", C4263dy.m4669a(str));
        } else if (z || i == 404) {
            List<String> list = map != null ? map.get("Last-Modified") : null;
            String str2 = (list == null || list.size() <= 0) ? null : list.get(0);
            if (i == 404 || i == 304) {
                if (m4207c().m4606a(str) == null && !m4207c().m4603a(str, null, null)) {
                    m4203e().m4714s_();
                    return;
                }
            } else if (!m4207c().m4603a(str, bArr2, str2)) {
                m4203e().m4714s_();
                return;
            }
            m4739b.m4495h(this.f19246j.mo4035q().mo13862a());
            m4203e().m4757a(m4739b);
            if (i == 404) {
                this.f19246j.mo4030v().m4660g().m4653a("Config not found. Using empty config. appId", str);
            } else {
                this.f19246j.mo4030v().m4657j().m4652a("Successfully fetched config. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr2.length));
            }
            if (!m4205d().m4646b() || !m4187x()) {
                m4186z();
            } else {
                m4195l();
            }
        } else {
            m4739b.m4492i(this.f19246j.mo4035q().mo13862a());
            m4203e().m4757a(m4739b);
            this.f19246j.mo4030v().m4657j().m4652a("Fetching config failed. code, error", Integer.valueOf(i), th);
            m4207c().m4600c(str);
            this.f19246j.m4553c().f18762d.m4623a(this.f19246j.mo4035q().mo13862a());
            boolean z2 = true;
            if (i != 503) {
                z2 = i == 429;
            }
            if (z2) {
                this.f19246j.m4553c().f18763e.m4623a(this.f19246j.mo4035q().mo13862a());
            }
            m4186z();
        }
        m4203e().m4734c();
        m4203e().m4714s_();
    }

    /* renamed from: a */
    public final void m4217a(boolean z) {
        m4186z();
    }

    /* renamed from: b */
    public final C4184b m4216b() {
        return this.f19246j.m4556b();
    }

    /* renamed from: b */
    public final void m4212b(C4423jv c4423jv, C4430kb c4430kb) {
        m4189t();
        m4196k();
        if (!m4202e(c4430kb)) {
            return;
        }
        if (!c4430kb.f19308h) {
            m4206c(c4430kb);
        } else if ("_npa".equals(c4423jv.f19272a) && c4430kb.f19319s != null) {
            this.f19246j.mo4030v().m4658i().m4654a("Falling back to manifest metadata value for ad personalization");
            m4229a(new C4423jv("_npa", this.f19246j.mo4035q().mo13862a(), Long.valueOf((c4430kb.f19319s.booleanValue() ? 1 : null) == 1 ? 1L : 0L), "auto"), c4430kb);
        } else {
            this.f19246j.mo4030v().m4658i().m4653a("Removing user property", this.f19246j.m4546j().m4677c(c4423jv.f19272a));
            m4203e().m4740b();
            try {
                m4206c(c4430kb);
                m4203e().m4738b(c4430kb.f19301a, c4423jv.f19272a);
                m4203e().m4734c();
                this.f19246j.mo4030v().m4658i().m4653a("User property removed", this.f19246j.m4546j().m4677c(c4423jv.f19272a));
            } finally {
                m4203e().m4714s_();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v175 */
    /* JADX WARN: Type inference failed for: r0v226 */
    /* JADX WARN: Type inference failed for: r0v227 */
    /* JADX WARN: Type inference failed for: r0v325, types: [long] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r1v84 */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r26v1 */
    /* JADX WARN: Type inference failed for: r26v2 */
    /* JADX WARN: Type inference failed for: r2v21, types: [long] */
    /* JADX WARN: Type inference failed for: r2v4, types: [long] */
    /* JADX WARN: Type inference failed for: r2v41, types: [long] */
    /* JADX WARN: Type inference failed for: r2v6, types: [long] */
    /* JADX WARN: Type inference failed for: r2v85, types: [long] */
    /* JADX WARN: Type inference failed for: r2v87, types: [long] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r4v0, types: [long] */
    /* JADX WARN: Type inference failed for: r4v2, types: [long] */
    /* JADX WARN: Type inference failed for: r4v3, types: [long] */
    /* JADX WARN: Type inference failed for: r4v6, types: [long] */
    /* JADX WARN: Type inference failed for: r4v7, types: [long] */
    /* renamed from: b */
    public final void m4211b(C4430kb c4430kb) {
        ApplicationInfo applicationInfo;
        ?? r16;
        m4189t();
        m4196k();
        C2662s.m13981a(c4430kb);
        C2662s.m13979a(c4430kb.f19301a);
        if (!m4202e(c4430kb)) {
            return;
        }
        C4299fg m4739b = m4203e().m4739b(c4430kb.f19301a);
        if (m4739b != null && TextUtils.isEmpty(m4739b.m4505e()) && !TextUtils.isEmpty(c4430kb.f19302b)) {
            m4739b.m4495h(0L);
            m4203e().m4757a(m4739b);
            m4207c().m4598d(c4430kb.f19301a);
        }
        if (!c4430kb.f19308h) {
            m4206c(c4430kb);
            return;
        }
        ?? r0 = c4430kb.f19313m;
        ?? r14 = r0;
        if (r0 == 0) {
            r14 = this.f19246j.mo4035q().mo13862a();
        }
        this.f19246j.m4537w().m4042e();
        int i = c4430kb.f19314n;
        if (i != 0 && i != 1) {
            this.f19246j.mo4030v().m4662e().m4652a("Incorrect app type, assuming installed app. appId, appType", C4263dy.m4669a(c4430kb.f19301a), Integer.valueOf(i));
            i = 0;
        }
        m4203e().m4740b();
        try {
            C4425jx m4732c = m4203e().m4732c(c4430kb.f19301a, "_npa");
            if (m4732c == null || "auto".equals(m4732c.f19287b)) {
                if (c4430kb.f19319s != null) {
                    C4423jv c4423jv = new C4423jv("_npa", r14, Long.valueOf((c4430kb.f19319s.booleanValue()) == true ? 1L : 0L), "auto");
                    if (m4732c == null || !m4732c.f19290e.equals(c4423jv.f19274c)) {
                        m4229a(c4423jv, c4430kb);
                    }
                } else if (m4732c != null) {
                    m4212b(new C4423jv("_npa", r14, null, "auto"), c4430kb);
                }
            }
            C4299fg m4739b2 = m4203e().m4739b(c4430kb.f19301a);
            if (m4739b2 != null) {
                this.f19246j.m4547i();
                if (C4424jw.m4109a(c4430kb.f19302b, m4739b2.m4505e(), c4430kb.f19318r, m4739b2.m4502f())) {
                    this.f19246j.mo4030v().m4662e().m4653a("New GMP App Id passed in. Removing cached database data. appId", C4263dy.m4669a(m4739b2.m4512c()));
                    C4211c m4203e = m4203e();
                    String m4512c = m4739b2.m4512c();
                    m4203e.m4246K();
                    m4203e.mo4037o();
                    C2662s.m13979a(m4512c);
                    try {
                        SQLiteDatabase m4729e = m4203e.m4729e();
                        String[] strArr = new String[1];
                        strArr[0] = m4512c;
                        int delete = m4729e.delete("events", "app_id=?", strArr);
                        int delete2 = m4729e.delete("user_attributes", "app_id=?", strArr);
                        int delete3 = m4729e.delete("conditional_properties", "app_id=?", strArr);
                        int delete4 = m4729e.delete("apps", "app_id=?", strArr);
                        int delete5 = m4729e.delete("raw_events", "app_id=?", strArr);
                        int delete6 = m4729e.delete("audience_filter_values", "app_id=?", strArr) + delete + 0 + delete2 + delete3 + delete4 + delete5 + m4729e.delete("raw_events_metadata", "app_id=?", strArr) + m4729e.delete("event_filters", "app_id=?", strArr) + m4729e.delete("property_filters", "app_id=?", strArr);
                        if (delete6 > 0) {
                            m4203e.mo4030v().m4657j().m4652a("Deleted application data. app, records", m4512c, Integer.valueOf(delete6));
                        }
                    } catch (SQLiteException e) {
                        m4203e.mo4030v().m4655x_().m4652a("Error deleting application data. appId, error", C4263dy.m4669a(m4512c), e);
                    }
                    m4739b2 = null;
                }
            }
            if (m4739b2 != null) {
                if (((m4739b2.m4484m() == -2147483648L && m4739b2.m4486l() != null && !m4739b2.m4486l().equals(c4430kb.f19303c)) | ((m4739b2.m4484m() == -2147483648L || m4739b2.m4484m() == c4430kb.f19310j) ? false : true)) != false) {
                    Bundle bundle = new Bundle();
                    bundle.putString("_pv", m4739b2.m4486l());
                    m4224a(new C4450r("_au", new C4445m(bundle), "auto", r14), c4430kb);
                }
            }
            m4206c(c4430kb);
            C4446n c4446n = null;
            if (i == 0) {
                c4446n = m4203e().m4746a(c4430kb.f19301a, "_f");
            } else if (i == 1) {
                c4446n = m4203e().m4746a(c4430kb.f19301a, "_v");
            }
            if (c4446n == null) {
                long j = 3600000 * (1 + (r14 / 61056));
                if (i == 0) {
                    m4229a(new C4423jv("_fot", r14, Long.valueOf(j), "auto"), c4430kb);
                    if (this.f19246j.m4556b().m4787e(c4430kb.f19302b, C4452t.f19408R)) {
                        m4189t();
                        this.f19246j.m4550f().m4611a(c4430kb.f19301a);
                    }
                    m4189t();
                    m4196k();
                    Bundle bundle2 = new Bundle();
                    bundle2.putLong("_c", 1L);
                    bundle2.putLong("_r", 1L);
                    bundle2.putLong("_uwa", 0L);
                    bundle2.putLong("_pfo", 0L);
                    bundle2.putLong("_sys", 0L);
                    bundle2.putLong("_sysu", 0L);
                    if (this.f19246j.m4556b().m4787e(c4430kb.f19301a, C4452t.f19410T)) {
                        bundle2.putLong("_et", 1L);
                    }
                    if (c4430kb.f19317q) {
                        bundle2.putLong("_dac", 1L);
                    }
                    C4211c m4203e2 = m4203e();
                    String str = c4430kb.f19301a;
                    C2662s.m13979a(str);
                    m4203e2.mo4037o();
                    m4203e2.m4246K();
                    long m4718h = m4203e2.m4718h(str, "first_open_count");
                    if (this.f19246j.mo4034r().getPackageManager() == null) {
                        this.f19246j.mo4030v().m4655x_().m4653a("PackageManager is null, first open report might be inaccurate. appId", C4263dy.m4669a(c4430kb.f19301a));
                    } else {
                        PackageInfo packageInfo = null;
                        try {
                            packageInfo = C2586c.m14193a(this.f19246j.mo4034r()).m14194b(c4430kb.f19301a, 0);
                        } catch (PackageManager.NameNotFoundException e2) {
                            this.f19246j.mo4030v().m4655x_().m4652a("Package info is null, first open report might be inaccurate. appId", C4263dy.m4669a(c4430kb.f19301a), e2);
                        }
                        if (packageInfo != null && packageInfo.firstInstallTime != 0) {
                            if (packageInfo.firstInstallTime == packageInfo.lastUpdateTime) {
                                r16 = true;
                            } else if (!this.f19246j.m4556b().m4804a(C4452t.f19459at)) {
                                bundle2.putLong("_uwa", 1L);
                                r16 = false;
                            } else if (m4718h == 0) {
                                bundle2.putLong("_uwa", 1L);
                                r16 = false;
                            } else {
                                r16 = false;
                            }
                            m4229a(new C4423jv("_fi", r14, Long.valueOf((r16 != false) == true ? 1L : 0L), "auto"), c4430kb);
                        }
                        try {
                            applicationInfo = C2586c.m14193a(this.f19246j.mo4034r()).m14198a(c4430kb.f19301a, 0);
                        } catch (PackageManager.NameNotFoundException e3) {
                            this.f19246j.mo4030v().m4655x_().m4652a("Application info is null, first open report might be inaccurate. appId", C4263dy.m4669a(c4430kb.f19301a), e3);
                            applicationInfo = null;
                        }
                        if (applicationInfo != null) {
                            if ((applicationInfo.flags & 1) != 0) {
                                bundle2.putLong("_sys", 1L);
                            }
                            if ((applicationInfo.flags & 128) != 0) {
                                bundle2.putLong("_sysu", 1L);
                            }
                        }
                    }
                    if (m4718h >= 0) {
                        bundle2.putLong("_pfo", m4718h);
                    }
                    m4224a(new C4450r("_f", new C4445m(bundle2), "auto", r14), c4430kb);
                } else if (i == 1) {
                    m4229a(new C4423jv("_fvt", r14, Long.valueOf(j), "auto"), c4430kb);
                    m4189t();
                    m4196k();
                    Bundle bundle3 = new Bundle();
                    bundle3.putLong("_c", 1L);
                    bundle3.putLong("_r", 1L);
                    if (this.f19246j.m4556b().m4787e(c4430kb.f19301a, C4452t.f19410T)) {
                        bundle3.putLong("_et", 1L);
                    }
                    if (c4430kb.f19317q) {
                        bundle3.putLong("_dac", 1L);
                    }
                    m4224a(new C4450r("_v", new C4445m(bundle3), "auto", r14), c4430kb);
                }
                if (!this.f19246j.m4556b().m4787e(c4430kb.f19301a, C4452t.f19411U)) {
                    Bundle bundle4 = new Bundle();
                    bundle4.putLong("_et", 1L);
                    if (this.f19246j.m4556b().m4787e(c4430kb.f19301a, C4452t.f19410T)) {
                        bundle4.putLong("_fr", 1L);
                    }
                    m4224a(new C4450r("_e", new C4445m(bundle4), "auto", r14), c4430kb);
                }
            } else if (c4430kb.f19309i) {
                m4224a(new C4450r("_cd", new C4445m(new Bundle()), "auto", r14), c4430kb);
            }
            m4203e().m4734c();
        } finally {
            m4203e().m4714s_();
        }
    }

    /* renamed from: b */
    public final void m4210b(C4442kn c4442kn) {
        C4430kb m4221a = m4221a(c4442kn.f19354a);
        if (m4221a != null) {
            m4209b(c4442kn, m4221a);
        }
    }

    /* renamed from: b */
    public final void m4209b(C4442kn c4442kn, C4430kb c4430kb) {
        C2662s.m13981a(c4442kn);
        C2662s.m13979a(c4442kn.f19354a);
        C2662s.m13981a(c4442kn.f19356c);
        C2662s.m13979a(c4442kn.f19356c.f19272a);
        m4189t();
        m4196k();
        if (!m4202e(c4430kb)) {
            return;
        }
        if (!c4430kb.f19308h) {
            m4206c(c4430kb);
            return;
        }
        m4203e().m4740b();
        try {
            m4206c(c4430kb);
            C4442kn m4730d = m4203e().m4730d(c4442kn.f19354a, c4442kn.f19356c.f19272a);
            if (m4730d != null) {
                this.f19246j.mo4030v().m4658i().m4652a("Removing conditional user property", c4442kn.f19354a, this.f19246j.m4546j().m4677c(c4442kn.f19356c.f19272a));
                m4203e().m4727e(c4442kn.f19354a, c4442kn.f19356c.f19272a);
                if (m4730d.f19358e) {
                    m4203e().m4738b(c4442kn.f19354a, c4442kn.f19356c.f19272a);
                }
                if (c4442kn.f19364k != null) {
                    Bundle bundle = null;
                    if (c4442kn.f19364k.f19387b != null) {
                        bundle = c4442kn.f19364k.f19387b.m4022b();
                    }
                    m4208b(this.f19246j.m4547i().m4114a(c4442kn.f19354a, c4442kn.f19364k.f19386a, bundle, m4730d.f19355b, c4442kn.f19364k.f19389d, true, false), c4430kb);
                }
            } else {
                this.f19246j.mo4030v().m4662e().m4652a("Conditional user property doesn't exist", C4263dy.m4669a(c4442kn.f19354a), this.f19246j.m4546j().m4677c(c4442kn.f19356c.f19272a));
            }
            m4203e().m4734c();
        } finally {
            m4203e().m4714s_();
        }
    }

    /* renamed from: c */
    public final C4289ex m4207c() {
        m4213b(this.f19238b);
        return this.f19238b;
    }

    /* renamed from: c */
    public final C4299fg m4206c(C4430kb c4430kb) {
        C4299fg m4227a;
        C4299fg c4299fg;
        m4189t();
        m4196k();
        C2662s.m13981a(c4430kb);
        C2662s.m13979a(c4430kb.f19301a);
        C4299fg m4739b = m4203e().m4739b(c4430kb.f19301a);
        String m4639b = this.f19246j.m4553c().m4639b(c4430kb.f19301a);
        if (!C4053jl.m5042b() || !this.f19246j.m4556b().m4804a(C4452t.f19460au)) {
            m4227a = m4227a(c4430kb, m4739b, m4639b);
        } else {
            if (m4739b == null) {
                c4299fg = new C4299fg(this.f19246j, c4430kb.f19301a);
                c4299fg.m4519a(this.f19246j.m4547i().m4082g());
                c4299fg.m4503e(m4639b);
            } else {
                c4299fg = m4739b;
                if (!m4639b.equals(m4739b.m4496h())) {
                    m4739b.m4503e(m4639b);
                    m4739b.m4519a(this.f19246j.m4547i().m4082g());
                    c4299fg = m4739b;
                }
            }
            c4299fg.m4514b(c4430kb.f19302b);
            c4299fg.m4510c(c4430kb.f19318r);
            if (C4066jy.m5025b() && this.f19246j.m4556b().m4787e(c4299fg.m4512c(), C4452t.f19454ao)) {
                c4299fg.m4506d(c4430kb.f19322v);
            }
            if (!TextUtils.isEmpty(c4430kb.f19311k)) {
                c4299fg.m4500f(c4430kb.f19311k);
            }
            if (c4430kb.f19305e != 0) {
                c4299fg.m4507d(c4430kb.f19305e);
            }
            if (!TextUtils.isEmpty(c4430kb.f19303c)) {
                c4299fg.m4497g(c4430kb.f19303c);
            }
            c4299fg.m4511c(c4430kb.f19310j);
            if (c4430kb.f19304d != null) {
                c4299fg.m4494h(c4430kb.f19304d);
            }
            c4299fg.m4504e(c4430kb.f19306f);
            c4299fg.m4517a(c4430kb.f19308h);
            if (!TextUtils.isEmpty(c4430kb.f19307g)) {
                c4299fg.m4491i(c4430kb.f19307g);
            }
            if (!this.f19246j.m4556b().m4804a(C4452t.f19430aM)) {
                c4299fg.m4477p(c4430kb.f19312l);
            }
            c4299fg.m4513b(c4430kb.f19315o);
            c4299fg.m4509c(c4430kb.f19316p);
            c4299fg.m4520a(c4430kb.f19319s);
            c4299fg.m4501f(c4430kb.f19320t);
            m4227a = c4299fg;
            if (c4299fg.m4522a()) {
                m4203e().m4757a(c4299fg);
                m4227a = c4299fg;
            }
        }
        return m4227a;
    }

    /* renamed from: d */
    public final C4272eg m4205d() {
        m4213b(this.f19239c);
        return this.f19239c;
    }

    /* renamed from: d */
    public final String m4204d(C4430kb c4430kb) {
        String str;
        try {
            str = (String) this.f19246j.mo4031u().m4586a(new CallableC4419jr(this, c4430kb)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            this.f19246j.mo4030v().m4655x_().m4652a("Failed to get app instance id. appId", C4263dy.m4669a(c4430kb.f19301a), e);
            str = null;
        }
        return str;
    }

    /* renamed from: e */
    public final C4211c m4203e() {
        m4213b(this.f19240d);
        return this.f19240d;
    }

    /* renamed from: f */
    public final C4434kf m4201f() {
        m4213b(this.f19243g);
        return this.f19243g;
    }

    /* renamed from: g */
    public final C4360hn m4200g() {
        m4213b(this.f19245i);
        return this.f19245i;
    }

    /* renamed from: h */
    public final C4420js m4199h() {
        m4213b(this.f19244h);
        return this.f19244h;
    }

    /* renamed from: i */
    public final C4261dw m4198i() {
        return this.f19246j.m4546j();
    }

    /* renamed from: j */
    public final C4424jw m4197j() {
        return this.f19246j.m4547i();
    }

    /* renamed from: k */
    public final void m4196k() {
        if (!this.f19247k) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    /* renamed from: l */
    public final void m4195l() {
        C4299fg m4739b;
        String str;
        List<Pair<C3776ao.C3789g, Long>> list;
        m4189t();
        m4196k();
        this.f19255s = true;
        try {
            this.f19246j.mo4026y();
            Boolean m4342G = this.f19246j.m4538t().m4342G();
            if (m4342G == null) {
                this.f19246j.mo4030v().m4662e().m4654a("Upload data called on the client side before use of service was decided");
            } else if (m4342G.booleanValue()) {
                this.f19246j.mo4030v().m4655x_().m4654a("Upload called in the client side when service should be used");
            } else if (this.f19249m > 0) {
                m4186z();
            } else {
                m4189t();
                if (this.f19258v != null) {
                    this.f19246j.mo4030v().m4657j().m4654a("Uploading requested multiple times");
                } else if (!m4205d().m4646b()) {
                    this.f19246j.mo4030v().m4657j().m4654a("Network not connected, ignoring upload request");
                    m4186z();
                } else {
                    long mo13862a = this.f19246j.mo4035q().mo13862a();
                    int m4796b = this.f19246j.m4556b().m4796b(null, C4452t.f19406P);
                    long m4782h = C4184b.m4782h();
                    for (int i = 0; i < m4796b && m4219a((String) null, mo13862a - m4782h); i++) {
                    }
                    long m4624a = this.f19246j.m4553c().f18761c.m4624a();
                    if (m4624a != 0) {
                        this.f19246j.mo4030v().m4658i().m4653a("Uploading events. Elapsed time since last upload attempt (ms)", Long.valueOf(Math.abs(mo13862a - m4624a)));
                    }
                    String m4726f = m4203e().m4726f();
                    if (!TextUtils.isEmpty(m4726f)) {
                        if (this.f19260x == -1) {
                            this.f19260x = m4203e().m4775A();
                        }
                        List<Pair<C3776ao.C3789g, Long>> m4751a = m4203e().m4751a(m4726f, this.f19246j.m4556b().m4796b(m4726f, C4452t.f19470f), Math.max(0, this.f19246j.m4556b().m4796b(m4726f, C4452t.f19471g)));
                        if (!m4751a.isEmpty()) {
                            Iterator<Pair<C3776ao.C3789g, Long>> it = m4751a.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    str = null;
                                    break;
                                }
                                C3776ao.C3789g c3789g = (C3776ao.C3789g) it.next().first;
                                if (!TextUtils.isEmpty(c3789g.m6227D())) {
                                    str = c3789g.m6227D();
                                    break;
                                }
                            }
                            if (str != null) {
                                for (int i2 = 0; i2 < m4751a.size(); i2++) {
                                    C3776ao.C3789g c3789g2 = (C3776ao.C3789g) m4751a.get(i2).first;
                                    if (!TextUtils.isEmpty(c3789g2.m6227D()) && !c3789g2.m6227D().equals(str)) {
                                        list = m4751a.subList(0, i2);
                                        break;
                                    }
                                }
                            }
                            list = m4751a;
                            C3776ao.C3787f.C3788a m6234b = C3776ao.C3787f.m6234b();
                            int size = list.size();
                            ArrayList arrayList = new ArrayList(list.size());
                            boolean m4785f = this.f19246j.m4556b().m4785f(m4726f);
                            for (int i3 = 0; i3 < size; i3++) {
                                C3776ao.C3789g.C3790a m5642am = ((C3776ao.C3789g) list.get(i3).first).m5642am();
                                arrayList.add((Long) list.get(i3).second);
                                C3776ao.C3789g.C3790a m6059a = m5642am.m6025g(this.f19246j.m4556b().m4798b()).m6059a(mo13862a);
                                this.f19246j.mo4026y();
                                m6059a.m6046b(false);
                                if (!m4785f) {
                                    m5642am.m6004n();
                                }
                                if (this.f19246j.m4556b().m4787e(m4726f, C4452t.f19415Y)) {
                                    m5642am.m6008l(m4199h().m4159a(((C3776ao.C3789g) ((AbstractC3900ed) m5642am.mo5544u())).m5839ai()));
                                }
                                m6234b.m6231a(m5642am);
                            }
                            String m4175a = this.f19246j.mo4030v().m4675a(2) ? m4199h().m4175a((C3776ao.C3787f) ((AbstractC3900ed) m6234b.mo5544u())) : null;
                            m4199h();
                            byte[] m5839ai = ((C3776ao.C3787f) ((AbstractC3900ed) m6234b.mo5544u())).m5839ai();
                            String m4707a = C4452t.f19480p.m4707a(null);
                            try {
                                URL url = new URL(m4707a);
                                C2662s.m13973b(!arrayList.isEmpty());
                                if (this.f19258v != null) {
                                    this.f19246j.mo4030v().m4655x_().m4654a("Set uploading progress before finishing the previous upload");
                                } else {
                                    this.f19258v = new ArrayList(arrayList);
                                }
                                this.f19246j.m4553c().f18762d.m4623a(mo13862a);
                                String str2 = "?";
                                if (size > 0) {
                                    str2 = m6234b.m6232a(0).m6066x();
                                }
                                this.f19246j.mo4030v().m4657j().m4651a("Uploading data. app, uncompressed size, data", str2, Integer.valueOf(m5839ai.length), m4175a);
                                this.f19254r = true;
                                C4272eg m4205d = m4205d();
                                C4418jq c4418jq = new C4418jq(this, m4726f);
                                m4205d.mo4037o();
                                m4205d.m4246K();
                                C2662s.m13981a(url);
                                C2662s.m13981a(m5839ai);
                                C2662s.m13981a(c4418jq);
                                m4205d.mo4031u().m4582b(new RunnableC4276ek(m4205d, m4726f, url, m5839ai, null, c4418jq));
                            } catch (MalformedURLException e) {
                                this.f19246j.mo4030v().m4655x_().m4652a("Failed to parse upload URL. Not uploading. appId", C4263dy.m4669a(m4726f), m4707a);
                            }
                        }
                    } else {
                        this.f19260x = -1L;
                        String m4765a = m4203e().m4765a(mo13862a - C4184b.m4782h());
                        if (!TextUtils.isEmpty(m4765a) && (m4739b = m4203e().m4739b(m4765a)) != null) {
                            m4233a(m4739b);
                        }
                    }
                }
            }
        } finally {
            this.f19255s = false;
            m4244A();
        }
    }

    /* renamed from: m */
    public final void m4194m() {
        m4189t();
        m4196k();
        if (!this.f19248l) {
            this.f19248l = true;
            if (!m4243B()) {
                return;
            }
            int m4218a = m4218a(this.f19257u);
            int m4689F = this.f19246j.m4536x().m4689F();
            m4189t();
            if (m4218a > m4689F) {
                this.f19246j.mo4030v().m4655x_().m4652a("Panic: can't downgrade version. Previous, current version", Integer.valueOf(m4218a), Integer.valueOf(m4689F));
            } else if (m4218a >= m4689F) {
            } else {
                if (m4240a(m4689F, this.f19257u)) {
                    this.f19246j.mo4030v().m4657j().m4652a("Storage version upgraded. Previous, current version", Integer.valueOf(m4218a), Integer.valueOf(m4689F));
                } else {
                    this.f19246j.mo4030v().m4655x_().m4652a("Storage version upgrade failed. Previous, current version", Integer.valueOf(m4218a), Integer.valueOf(m4689F));
                }
            }
        }
    }

    /* renamed from: n */
    public final void m4193n() {
        this.f19252p++;
    }

    /* renamed from: o */
    public final C4296fd m4192o() {
        return this.f19246j;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: q */
    public final AbstractC2708e mo4035q() {
        return this.f19246j.mo4035q();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: r */
    public final Context mo4034r() {
        return this.f19246j.mo4034r();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: u */
    public final C4293fa mo4031u() {
        return this.f19246j.mo4031u();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: v */
    public final C4263dy mo4030v() {
        return this.f19246j.mo4030v();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: y */
    public final C4439kk mo4026y() {
        return this.f19246j.mo4026y();
    }
}
