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
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.internal.ads.C1674c;
import com.google.android.gms.internal.ads.C1842m3;
import com.google.android.gms.internal.ads.C1894po;
import com.google.android.gms.internal.ads.C2073zo;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.ads.internal.util.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/l.class */
public final class C1432l {

    /* renamed from: a */
    private final Context f5583a;

    /* renamed from: b */
    private String f5584b;

    /* renamed from: c */
    private String f5585c;

    /* renamed from: d */
    private String f5586d;

    /* renamed from: e */
    private String f5587e;

    /* renamed from: f */
    private int f5588f;

    /* renamed from: g */
    private int f5589g;

    /* renamed from: h */
    private PointF f5590h;

    /* renamed from: i */
    private PointF f5591i;

    /* renamed from: j */
    private Handler f5592j;

    /* renamed from: k */
    private Runnable f5593k;

    public C1432l(Context context) {
        this.f5588f = 0;
        this.f5593k = new Runnable(this) { // from class: com.google.android.gms.ads.internal.util.f

            /* renamed from: b */
            private final C1432l f5565b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5565b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f5565b.m8800k();
            }
        };
        this.f5583a = context;
        this.f5589g = ViewConfiguration.get(context).getScaledTouchSlop();
        C1407r.m8906r().m8824a();
        this.f5592j = C1407r.m8906r().m8823b();
    }

    public C1432l(Context context, String str) {
        this(context);
        this.f5584b = str;
    }

    /* renamed from: l */
    private final boolean m8799l(float f, float f2, float f3, float f4) {
        return Math.abs(this.f5590h.x - f) < ((float) this.f5589g) && Math.abs(this.f5590h.y - f2) < ((float) this.f5589g) && Math.abs(this.f5591i.x - f3) < ((float) this.f5589g) && Math.abs(this.f5591i.y - f4) < ((float) this.f5589g);
    }

    /* renamed from: m */
    private static final int m8798m(List<String> list, String str, boolean z) {
        list.add(str);
        return list.size() - 1;
    }

    /* renamed from: a */
    public final void m8810a(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int historySize = motionEvent.getHistorySize();
        int pointerCount = motionEvent.getPointerCount();
        if (actionMasked == 0) {
            this.f5588f = 0;
            this.f5590h = new PointF(motionEvent.getX(0), motionEvent.getY(0));
            return;
        }
        int i = this.f5588f;
        if (i != -1) {
            if (i == 0) {
                if (actionMasked == 5) {
                    this.f5588f = 5;
                    this.f5591i = new PointF(motionEvent.getX(1), motionEvent.getY(1));
                    this.f5592j.postDelayed(this.f5593k, ((Long) C1674c.m7906c().m6878b(C1842m3.f7548z2)).longValue());
                }
            } else if (i == 5) {
                if (pointerCount == 2) {
                    if (actionMasked == 2) {
                        boolean z = false;
                        for (int i2 = 0; i2 < historySize; i2++) {
                            z |= !m8799l(motionEvent.getHistoricalX(0, i2), motionEvent.getHistoricalY(0, i2), motionEvent.getHistoricalX(1, i2), motionEvent.getHistoricalY(1, i2));
                        }
                        if (m8799l(motionEvent.getX(), motionEvent.getY(), motionEvent.getX(1), motionEvent.getY(1)) && !z) {
                            return;
                        }
                    } else {
                        return;
                    }
                }
                this.f5588f = -1;
                this.f5592j.removeCallbacks(this.f5593k);
            }
        }
    }

    /* renamed from: b */
    public final void m8809b() {
        try {
            if (this.f5583a instanceof Activity) {
                String str = "Creative Preview (Enabled)";
                if (true == TextUtils.isEmpty(C1407r.m8910n().m8732e())) {
                    str = "Creative Preview";
                }
                String str2 = "Troubleshooting (Enabled)";
                if (true != C1407r.m8910n().m8731f()) {
                    str2 = "Troubleshooting";
                }
                ArrayList arrayList = new ArrayList();
                final int m = m8798m(arrayList, "Ad Information", true);
                final int m2 = m8798m(arrayList, str, true);
                final int m3 = m8798m(arrayList, str2, true);
                AlertDialog.Builder builder = new AlertDialog.Builder(this.f5583a, C1407r.m8918f().m8852m());
                builder.setTitle("Select a Debug Mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener(this, m, m2, m3) { // from class: com.google.android.gms.ads.internal.util.g

                    /* renamed from: b */
                    private final C1432l f5566b;

                    /* renamed from: c */
                    private final int f5567c;

                    /* renamed from: d */
                    private final int f5568d;

                    /* renamed from: e */
                    private final int f5569e;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f5566b = this;
                        this.f5567c = m;
                        this.f5568d = m2;
                        this.f5569e = m3;
                    }

                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        this.f5566b.m8801j(this.f5567c, this.f5568d, this.f5569e, dialogInterface, i);
                    }
                });
                builder.create().show();
                return;
            }
            C1894po.m6181e("Can not create dialog without Activity Context");
        } catch (WindowManager.BadTokenException e) {
            y0.l("", e);
        }
    }

    /* renamed from: c */
    public final void m8808c(String str) {
        this.f5585c = str;
    }

    /* renamed from: d */
    public final void m8807d(String str) {
        this.f5586d = str;
    }

    /* renamed from: e */
    public final void m8806e(String str) {
        this.f5584b = str;
    }

    /* renamed from: f */
    public final void m8805f(String str) {
        this.f5587e = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final /* synthetic */ void m8804g() {
        C1407r.m8910n().m8735b(this.f5583a, this.f5585c, this.f5586d, this.f5587e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final /* synthetic */ void m8803h() {
        C1407r.m8910n().m8736a(this.f5583a, this.f5585c, this.f5586d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public final /* synthetic */ void m8802i(String str, DialogInterface dialogInterface, int i) {
        C1407r.m8920d();
        C1433l1.m8753n(this.f5583a, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", str), "Share via"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public final /* synthetic */ void m8801j(int i, int i2, int i3, DialogInterface dialogInterface, int i4) {
        if (i4 == i) {
            if (!(this.f5583a instanceof Activity)) {
                C1894po.m6181e("Can not create dialog without Activity Context");
                return;
            }
            String str = this.f5584b;
            final String str2 = "No debug information";
            if (!TextUtils.isEmpty(str)) {
                Uri build = new Uri.Builder().encodedQuery(str.replaceAll("\\+", "%20")).build();
                StringBuilder sb = new StringBuilder();
                C1407r.m8920d();
                Map<String, String> p = C1433l1.m8751p(build);
                for (String str3 : p.keySet()) {
                    sb.append(str3);
                    sb.append(" = ");
                    sb.append(p.get(str3));
                    sb.append("\n\n");
                }
                String trim = sb.toString().trim();
                if (!TextUtils.isEmpty(trim)) {
                    str2 = trim;
                }
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(this.f5583a);
            builder.setMessage(str2);
            builder.setTitle("Ad Information");
            builder.setPositiveButton("Share", new DialogInterface.OnClickListener(this, str2) { // from class: com.google.android.gms.ads.internal.util.h

                /* renamed from: b */
                private final C1432l f5572b;

                /* renamed from: c */
                private final String f5573c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f5572b = this;
                    this.f5573c = str2;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface2, int i5) {
                    this.f5572b.m8802i(this.f5573c, dialogInterface2, i5);
                }
            });
            builder.setNegativeButton("Close", DialogInterface$OnClickListenerC1423i.f5574b);
            builder.create().show();
        } else if (i4 == i2) {
            C1894po.m6185a("Debug mode [Creative Preview] selected.");
            C2073zo.f9410a.execute(new Runnable(this) { // from class: com.google.android.gms.ads.internal.util.j

                /* renamed from: b */
                private final C1432l f5579b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f5579b = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f5579b.m8803h();
                }
            });
        } else if (i4 == i3) {
            C1894po.m6185a("Debug mode [Troubleshooting] selected.");
            C2073zo.f9410a.execute(new Runnable(this) { // from class: com.google.android.gms.ads.internal.util.k

                /* renamed from: b */
                private final C1432l f5581b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f5581b = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f5581b.m8804g();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public final /* synthetic */ void m8800k() {
        this.f5588f = 4;
        m8809b();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("{Dialog: ");
        sb.append(this.f5584b);
        sb.append(",DebugSignal: ");
        sb.append(this.f5587e);
        sb.append(",AFMA Version: ");
        sb.append(this.f5586d);
        sb.append(",Ad Unit ID: ");
        sb.append(this.f5585c);
        sb.append("}");
        return sb.toString();
    }
}
