package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.PointF;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C7192yr;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.lq1;
import com.google.android.gms.internal.ads.qi0;
import com.google.android.gms.internal.ads.s03;
import com.google.android.gms.internal.ads.zzdxy;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.ads.internal.util.w */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/w.class */
public final class C5744w {

    /* renamed from: a */
    private final Context f18576a;

    /* renamed from: b */
    private final lq1 f18577b;

    /* renamed from: c */
    private String f18578c;

    /* renamed from: d */
    private String f18579d;

    /* renamed from: e */
    private String f18580e;

    /* renamed from: f */
    private String f18581f;

    /* renamed from: g */
    private int f18582g;

    /* renamed from: h */
    private int f18583h;

    /* renamed from: i */
    private PointF f18584i;

    /* renamed from: j */
    private PointF f18585j;

    /* renamed from: k */
    private Handler f18586k;

    /* renamed from: l */
    private Runnable f18587l;

    public C5744w(Context context) {
        this.f18582g = 0;
        this.f18587l = new Runnable(this) { // from class: com.google.android.gms.ads.internal.util.g

            /* renamed from: d */
            private final C5744w f18474d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f18474d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f18474d.m17928r();
            }
        };
        this.f18576a = context;
        this.f18583h = ViewConfiguration.get(context).getScaledTouchSlop();
        C5667s.m18146r().m17910a();
        this.f18586k = C5667s.m18146r().m17909b();
        this.f18577b = C5667s.m18150n().m18135b();
    }

    public C5744w(Context context, String str) {
        this(context);
        this.f18578c = str;
    }

    /* renamed from: s */
    private final boolean m17927s(float f, float f2, float f3, float f4) {
        return Math.abs(this.f18584i.x - f) < ((float) this.f18583h) && Math.abs(this.f18584i.y - f2) < ((float) this.f18583h) && Math.abs(this.f18585j.x - f3) < ((float) this.f18583h) && Math.abs(this.f18585j.y - f4) < ((float) this.f18583h);
    }

    /* renamed from: t */
    private final void m17926t(Context context) {
        ArrayList arrayList = new ArrayList();
        int m17925u = m17925u(arrayList, "None", true);
        int m17925u2 = m17925u(arrayList, "Shake", true);
        int m17925u3 = m17925u(arrayList, "Flick", true);
        zzdxy zzdxyVar = zzdxy.NONE;
        int ordinal = this.f18577b.m13450f().ordinal();
        if (ordinal == 1) {
            m17925u = m17925u2;
        } else if (ordinal == 2) {
            m17925u = m17925u3;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context, C5667s.m18158f().mo18014m());
        AtomicInteger atomicInteger = new AtomicInteger(m17925u);
        builder.setTitle("Setup gesture");
        builder.setSingleChoiceItems((CharSequence[]) arrayList.toArray(new String[0]), m17925u, new DialogInterface.OnClickListener(atomicInteger) { // from class: com.google.android.gms.ads.internal.util.o

            /* renamed from: d */
            private final AtomicInteger f18521d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f18521d = atomicInteger;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f18521d.set(i);
            }
        });
        builder.setNegativeButton("Dismiss", new DialogInterface.OnClickListener(this) { // from class: com.google.android.gms.ads.internal.util.p

            /* renamed from: d */
            private final C5744w f18522d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f18522d = this;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f18522d.m17944b();
            }
        });
        builder.setPositiveButton("Save", new DialogInterface.OnClickListener(this, atomicInteger, m17925u, m17925u2, m17925u3) { // from class: com.google.android.gms.ads.internal.util.q

            /* renamed from: d */
            private final C5744w f18524d;

            /* renamed from: e */
            private final AtomicInteger f18525e;

            /* renamed from: f */
            private final int f18526f;

            /* renamed from: g */
            private final int f18527g;

            /* renamed from: h */
            private final int f18528h;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f18524d = this;
                this.f18525e = atomicInteger;
                this.f18526f = m17925u;
                this.f18527g = m17925u2;
                this.f18528h = m17925u3;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.f18524d.m17930p(this.f18525e, this.f18526f, this.f18527g, this.f18528h, dialogInterface, i2);
            }
        });
        builder.setOnCancelListener(new DialogInterface.OnCancelListener(this) { // from class: com.google.android.gms.ads.internal.util.r

            /* renamed from: d */
            private final C5744w f18531d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f18531d = this;
            }

            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.f18531d.m17944b();
            }
        });
        builder.create().show();
    }

    /* renamed from: u */
    private static final int m17925u(List<String> list, String str, boolean z) {
        if (!z) {
            return -1;
        }
        list.add(str);
        return list.size() - 1;
    }

    /* renamed from: a */
    public final void m17945a(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int historySize = motionEvent.getHistorySize();
        int pointerCount = motionEvent.getPointerCount();
        if (actionMasked == 0) {
            this.f18582g = 0;
            this.f18584i = new PointF(motionEvent.getX(0), motionEvent.getY(0));
            return;
        }
        int i = this.f18582g;
        if (i == -1) {
            return;
        }
        if (i == 0) {
            if (actionMasked != 5) {
                return;
            }
            this.f18582g = 5;
            this.f18585j = new PointF(motionEvent.getX(1), motionEvent.getY(1));
            this.f18586k.postDelayed(this.f18587l, ((Long) C7192yr.m8714c().m14263c(C6679kw.f25665c3)).longValue());
        } else if (i == 5) {
            if (pointerCount == 2) {
                if (actionMasked != 2) {
                    return;
                }
                boolean z = false;
                for (int i2 = 0; i2 < historySize; i2++) {
                    z |= !m17927s(motionEvent.getHistoricalX(0, i2), motionEvent.getHistoricalY(0, i2), motionEvent.getHistoricalX(1, i2), motionEvent.getHistoricalY(1, i2));
                }
                if (m17927s(motionEvent.getX(), motionEvent.getY(), motionEvent.getX(1), motionEvent.getY(1)) && !z) {
                    return;
                }
            }
            this.f18582g = -1;
            this.f18586k.removeCallbacks(this.f18587l);
        }
    }

    /* renamed from: b */
    public final void m17944b() {
        try {
            if (!(this.f18576a instanceof Activity)) {
                ei0.m15465e("Can not create dialog without Activity Context");
                return;
            }
            String str = "Creative preview (enabled)";
            if (true == TextUtils.isEmpty(C5667s.m18150n().m18128i())) {
                str = "Creative preview";
            }
            String str2 = "Troubleshooting (enabled)";
            if (true != C5667s.m18150n().m18124m()) {
                str2 = "Troubleshooting";
            }
            ArrayList arrayList = new ArrayList();
            int m17925u = m17925u(arrayList, "Ad information", true);
            int m17925u2 = m17925u(arrayList, str, true);
            int m17925u3 = m17925u(arrayList, str2, true);
            boolean booleanValue = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25474E6)).booleanValue();
            int m17925u4 = m17925u(arrayList, "Open ad inspector", booleanValue);
            int m17925u5 = m17925u(arrayList, "Ad inspector settings", booleanValue);
            AlertDialog.Builder builder = new AlertDialog.Builder(this.f18576a, C5667s.m18158f().mo18014m());
            builder.setTitle("Select a debug mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener(this, m17925u, m17925u2, m17925u3, m17925u4, m17925u5) { // from class: com.google.android.gms.ads.internal.util.n

                /* renamed from: d */
                private final C5744w f18515d;

                /* renamed from: e */
                private final int f18516e;

                /* renamed from: f */
                private final int f18517f;

                /* renamed from: g */
                private final int f18518g;

                /* renamed from: h */
                private final int f18519h;

                /* renamed from: i */
                private final int f18520i;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f18515d = this;
                    this.f18516e = m17925u;
                    this.f18517f = m17925u2;
                    this.f18518g = m17925u3;
                    this.f18519h = m17925u4;
                    this.f18520i = m17925u5;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f18515d.m17929q(this.f18516e, this.f18517f, this.f18518g, this.f18519h, this.f18520i, dialogInterface, i);
                }
            });
            builder.create().show();
        } catch (WindowManager.BadTokenException e) {
            C5722o1.m17989l("", e);
        }
    }

    /* renamed from: c */
    public final void m17943c(String str) {
        this.f18579d = str;
    }

    /* renamed from: d */
    public final void m17942d(String str) {
        this.f18580e = str;
    }

    /* renamed from: e */
    public final void m17941e(String str) {
        this.f18578c = str;
    }

    /* renamed from: f */
    public final void m17940f(String str) {
        this.f18581f = str;
    }

    /* renamed from: g */
    public final /* synthetic */ void m17939g() {
        C5669a0 m18150n = C5667s.m18150n();
        Context context = this.f18576a;
        String str = this.f18579d;
        String str2 = this.f18580e;
        String str3 = this.f18581f;
        boolean m18124m = m18150n.m18124m();
        m18150n.m18125l(m18150n.m18132e(context, str, str2));
        if (!m18150n.m18124m()) {
            m18150n.m18131f(context, str, str2);
            return;
        }
        if (!m18124m && !TextUtils.isEmpty(str3)) {
            m18150n.m18129h(context, str2, str3, str);
        }
        ei0.m15469a("Device is linked for debug signals.");
        m18150n.m18123n(context, "The device is successfully linked for troubleshooting.", false, true);
    }

    /* renamed from: h */
    public final /* synthetic */ void m17938h() {
        C5669a0 m18150n = C5667s.m18150n();
        Context context = this.f18576a;
        String str = this.f18579d;
        String str2 = this.f18580e;
        if (!m18150n.m18133d(context, str, str2)) {
            m18150n.m18123n(context, "In-app preview failed to load because of a system error. Please try again later.", true, true);
        } else if ("2".equals(m18150n.f18440f)) {
            ei0.m15469a("Creative is not pushed for this device.");
            m18150n.m18123n(context, "There was no creative pushed from DFP to the device.", false, false);
        } else if ("1".equals(m18150n.f18440f)) {
            ei0.m15469a("The app is not linked for creative preview.");
            m18150n.m18131f(context, str, str2);
        } else if (!"0".equals(m18150n.f18440f)) {
        } else {
            ei0.m15469a("Device is linked for in app preview.");
            m18150n.m18123n(context, "The device is successfully linked for creative preview.", false, true);
        }
    }

    /* renamed from: i */
    public final /* synthetic */ void m17937i(s03 s03Var) {
        if (!C5667s.m18150n().m18132e(this.f18576a, this.f18579d, this.f18580e)) {
            C5667s.m18150n().m18131f(this.f18576a, this.f18579d, this.f18580e);
        } else {
            s03Var.execute(new Runnable(this) { // from class: com.google.android.gms.ads.internal.util.l

                /* renamed from: d */
                private final C5744w f18501d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f18501d = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f18501d.m17936j();
                }
            });
        }
    }

    /* renamed from: j */
    public final /* synthetic */ void m17936j() {
        m17926t(this.f18576a);
    }

    /* renamed from: k */
    public final /* synthetic */ void m17935k() {
        m17926t(this.f18576a);
    }

    /* renamed from: l */
    public final /* synthetic */ void m17934l(s03 s03Var) {
        if (!C5667s.m18150n().m18132e(this.f18576a, this.f18579d, this.f18580e)) {
            C5667s.m18150n().m18131f(this.f18576a, this.f18579d, this.f18580e);
        } else {
            s03Var.execute(new Runnable(this) { // from class: com.google.android.gms.ads.internal.util.m

                /* renamed from: d */
                private final C5744w f18508d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f18508d = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f18508d.m17933m();
                }
            });
        }
    }

    /* renamed from: m */
    public final /* synthetic */ void m17933m() {
        C5667s.m18150n().m18134c(this.f18576a);
    }

    /* renamed from: n */
    public final /* synthetic */ void m17932n() {
        C5667s.m18150n().m18134c(this.f18576a);
    }

    /* renamed from: o */
    public final /* synthetic */ void m17931o(String str, DialogInterface dialogInterface, int i) {
        C5667s.m18160d();
        C5679c2.m18059p(this.f18576a, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", str), "Share via"));
    }

    /* renamed from: p */
    public final /* synthetic */ void m17930p(AtomicInteger atomicInteger, int i, int i2, int i3, DialogInterface dialogInterface, int i4) {
        if (atomicInteger.get() != i) {
            if (atomicInteger.get() == i2) {
                this.f18577b.m13451e(zzdxy.SHAKE);
            } else if (atomicInteger.get() == i3) {
                this.f18577b.m13451e(zzdxy.FLICK);
            } else {
                this.f18577b.m13451e(zzdxy.NONE);
            }
        }
        m17944b();
    }

    /* renamed from: q */
    public final /* synthetic */ void m17929q(int i, int i2, int i3, int i4, int i5, DialogInterface dialogInterface, int i6) {
        if (i6 != i) {
            if (i6 == i2) {
                ei0.m15469a("Debug mode [Creative Preview] selected.");
                qi0.f28495a.execute(new Runnable(this) { // from class: com.google.android.gms.ads.internal.util.j

                    /* renamed from: d */
                    private final C5744w f18491d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f18491d = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f18491d.m17938h();
                    }
                });
            } else if (i6 == i3) {
                ei0.m15469a("Debug mode [Troubleshooting] selected.");
                qi0.f28495a.execute(new Runnable(this) { // from class: com.google.android.gms.ads.internal.util.k

                    /* renamed from: d */
                    private final C5744w f18493d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f18493d = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f18493d.m17939g();
                    }
                });
            } else if (i6 == i4) {
                s03 s03Var = qi0.f28499e;
                s03 s03Var2 = qi0.f28495a;
                if (this.f18577b.m13442n()) {
                    s03Var.execute(new Runnable(this) { // from class: com.google.android.gms.ads.internal.util.u

                        /* renamed from: d */
                        private final C5744w f18569d;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f18569d = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f18569d.m17932n();
                        }
                    });
                } else {
                    s03Var2.execute(new Runnable(this, s03Var) { // from class: com.google.android.gms.ads.internal.util.v

                        /* renamed from: d */
                        private final C5744w f18571d;

                        /* renamed from: e */
                        private final s03 f18572e;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f18571d = this;
                            this.f18572e = s03Var;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f18571d.m17934l(this.f18572e);
                        }
                    });
                }
            } else if (i6 == i5) {
                s03 s03Var3 = qi0.f28499e;
                s03 s03Var4 = qi0.f28495a;
                if (this.f18577b.m13442n()) {
                    s03Var3.execute(new Runnable(this) { // from class: com.google.android.gms.ads.internal.util.h

                        /* renamed from: d */
                        private final C5744w f18479d;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f18479d = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f18479d.m17935k();
                        }
                    });
                } else {
                    s03Var4.execute(new Runnable(this, s03Var3) { // from class: com.google.android.gms.ads.internal.util.i

                        /* renamed from: d */
                        private final C5744w f18482d;

                        /* renamed from: e */
                        private final s03 f18483e;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f18482d = this;
                            this.f18483e = s03Var3;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f18482d.m17937i(this.f18483e);
                        }
                    });
                }
            }
        } else if (!(this.f18576a instanceof Activity)) {
            ei0.m15465e("Can not create dialog without Activity Context");
        } else {
            String str = this.f18578c;
            String str2 = "No debug information";
            if (!TextUtils.isEmpty(str)) {
                Uri build = new Uri.Builder().encodedQuery(str.replaceAll("\\+", "%20")).build();
                StringBuilder sb = new StringBuilder();
                C5667s.m18160d();
                Map<String, String> m18057r = C5679c2.m18057r(build);
                for (String str3 : m18057r.keySet()) {
                    sb.append(str3);
                    sb.append(" = ");
                    sb.append(m18057r.get(str3));
                    sb.append("\n\n");
                }
                String trim = sb.toString().trim();
                if (!TextUtils.isEmpty(trim)) {
                    str2 = trim;
                }
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(this.f18576a);
            builder.setMessage(str2);
            builder.setTitle("Ad Information");
            builder.setPositiveButton("Share", new DialogInterface.OnClickListener(this, str2) { // from class: com.google.android.gms.ads.internal.util.s

                /* renamed from: d */
                private final C5744w f18538d;

                /* renamed from: e */
                private final String f18539e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f18538d = this;
                    this.f18539e = str2;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface2, int i7) {
                    this.f18538d.m17931o(this.f18539e, dialogInterface2, i7);
                }
            });
            builder.setNegativeButton("Close", DialogInterface$OnClickListenerC5735t.f18541d);
            builder.create().show();
        }
    }

    /* renamed from: r */
    public final /* synthetic */ void m17928r() {
        this.f18582g = 4;
        m17944b();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("{Dialog: ");
        sb.append(this.f18578c);
        sb.append(",DebugSignal: ");
        sb.append(this.f18581f);
        sb.append(",AFMA Version: ");
        sb.append(this.f18580e);
        sb.append(",Ad Unit ID: ");
        sb.append(this.f18579d);
        sb.append("}");
        return sb.toString();
    }
}
