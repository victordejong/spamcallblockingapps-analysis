package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.PointF;
import android.os.Handler;
import android.text.TextUtils;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzazp;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazp.class */
public final class zzazp {

    /* renamed from: a */
    public final Context f24677a;

    /* renamed from: b */
    public String f24678b;

    /* renamed from: c */
    public String f24679c;

    /* renamed from: d */
    public String f24680d;

    /* renamed from: e */
    public String f24681e;

    /* renamed from: f */
    public int f24682f;

    /* renamed from: g */
    public int f24683g;

    /* renamed from: h */
    public PointF f24684h;

    /* renamed from: i */
    public PointF f24685i;

    /* renamed from: j */
    public Handler f24686j;

    /* renamed from: k */
    public Runnable f24687k;

    public zzazp(Context context) {
        this.f24682f = 0;
        this.f24687k = new Runnable(this) { // from class: c.d.b.d.g.a.p5

            /* renamed from: a */
            public final zzazp f14387a;

            {
                this.f14387a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f14387a.m16006d();
            }
        };
        this.f24677a = context;
        this.f24683g = ViewConfiguration.get(context).getScaledTouchSlop();
        zzp.m17955q().m15947b();
        this.f24686j = zzp.m17955q().m15948a();
    }

    public zzazp(Context context, String str) {
        this(context);
        this.f24678b = str;
    }

    /* renamed from: a */
    public static int m16011a(List<String> list, String str, boolean z) {
        list.add(str);
        return list.size() - 1;
    }

    /* renamed from: a */
    public final void m16017a() {
        try {
            if (!(this.f24677a instanceof Activity)) {
                zzbbq.m15854c("Can not create dialog without Activity Context");
                return;
            }
            String str = !TextUtils.isEmpty(zzp.m17959m().m16004a()) ? "Creative Preview (Enabled)" : "Creative Preview";
            String str2 = zzp.m17959m().m15999b() ? "Troubleshooting (Enabled)" : "Troubleshooting";
            ArrayList arrayList = new ArrayList();
            final int a = m16011a((List<String>) arrayList, "Ad Information", true);
            final int a2 = m16011a((List<String>) arrayList, str, true);
            final int a3 = m16011a((List<String>) arrayList, str2, true);
            AlertDialog.Builder builder = new AlertDialog.Builder(this.f24677a, zzp.m17967e().mo16029c());
            builder.setTitle("Select a Debug Mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener(this, a, a2, a3) { // from class: c.d.b.d.g.a.r5

                /* renamed from: a */
                public final zzazp f14869a;

                /* renamed from: b */
                public final int f14870b;

                /* renamed from: c */
                public final int f14871c;

                /* renamed from: d */
                public final int f14872d;

                {
                    this.f14869a = this;
                    this.f14870b = a;
                    this.f14871c = a2;
                    this.f14872d = a3;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f14869a.m16015a(this.f14870b, this.f14871c, this.f14872d, dialogInterface, i);
                }
            });
            builder.create().show();
        } catch (WindowManager.BadTokenException e) {
            zzayp.m16154e("", e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00b4, code lost:
        if (android.text.TextUtils.isEmpty(r11) == false) goto L_0x00be;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void m16015a(int r8, int r9, int r10, android.content.DialogInterface r11, int r12) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzazp.m16015a(int, int, int, android.content.DialogInterface, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ea, code lost:
        if (m16016a(r9.getX(), r9.getY(), r9.getX(1), r9.getY(1)) == false) goto L_0x0097;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m16014a(android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzazp.m16014a(android.view.MotionEvent):void");
    }

    /* renamed from: a */
    public final void m16013a(String str) {
        this.f24679c = str;
    }

    /* renamed from: a */
    public final /* synthetic */ void m16012a(String str, DialogInterface dialogInterface, int i) {
        zzp.m17969c();
        zzayu.m16143a(this.f24677a, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", str), "Share via"));
    }

    /* renamed from: a */
    public final boolean m16016a(float f, float f2, float f3, float f4) {
        return Math.abs(this.f24684h.x - f) < ((float) this.f24683g) && Math.abs(this.f24684h.y - f2) < ((float) this.f24683g) && Math.abs(this.f24685i.x - f3) < ((float) this.f24683g) && Math.abs(this.f24685i.y - f4) < ((float) this.f24683g);
    }

    /* renamed from: b */
    public final /* synthetic */ void m16010b() {
        zzp.m17959m().m16001a(this.f24677a, this.f24679c, this.f24680d, this.f24681e);
    }

    /* renamed from: b */
    public final void m16009b(String str) {
        this.f24680d = str;
    }

    /* renamed from: c */
    public final /* synthetic */ void m16008c() {
        zzp.m17959m().m16002a(this.f24677a, this.f24679c, this.f24680d);
    }

    /* renamed from: c */
    public final void m16007c(String str) {
        this.f24678b = str;
    }

    /* renamed from: d */
    public final /* synthetic */ void m16006d() {
        this.f24682f = 4;
        m16017a();
    }

    /* renamed from: d */
    public final void m16005d(String str) {
        this.f24681e = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("{Dialog: ");
        sb.append(this.f24678b);
        sb.append(",DebugSignal: ");
        sb.append(this.f24681e);
        sb.append(",AFMA Version: ");
        sb.append(this.f24680d);
        sb.append(",Ad Unit ID: ");
        sb.append(this.f24679c);
        sb.append("}");
        return sb.toString();
    }
}
