package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.PointF;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.C2341q;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.vv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vv.class */
public final class C3584vv {

    /* renamed from: a */
    private final Context f17515a;

    /* renamed from: b */
    private String f17516b;

    /* renamed from: c */
    private String f17517c;

    /* renamed from: d */
    private String f17518d;

    /* renamed from: e */
    private String f17519e;

    /* renamed from: f */
    private int f17520f;

    /* renamed from: g */
    private int f17521g;

    /* renamed from: h */
    private PointF f17522h;

    /* renamed from: i */
    private PointF f17523i;

    /* renamed from: j */
    private Handler f17524j;

    /* renamed from: k */
    private Runnable f17525k;

    public C3584vv(Context context) {
        this.f17520f = 0;
        this.f17525k = new Runnable(this) { // from class: com.google.android.gms.internal.ads.vy

            /* renamed from: a */
            private final C3584vv f17532a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f17532a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f17532a.m6906d();
            }
        };
        this.f17515a = context;
        this.f17521g = ViewConfiguration.get(context).getScaledTouchSlop();
        C2341q.m14730q().m6841a();
        this.f17524j = C2341q.m14730q().m6840b();
    }

    public C3584vv(Context context, String str) {
        this(context);
        this.f17516b = str;
    }

    /* renamed from: a */
    private static int m6911a(List<String> list, String str, boolean z) {
        list.add(str);
        return list.size() - 1;
    }

    /* renamed from: a */
    private final boolean m6916a(float f, float f2, float f3, float f4) {
        return Math.abs(this.f17522h.x - f) < ((float) this.f17521g) && Math.abs(this.f17522h.y - f2) < ((float) this.f17521g) && Math.abs(this.f17523i.x - f3) < ((float) this.f17521g) && Math.abs(this.f17523i.y - f4) < ((float) this.f17521g);
    }

    /* renamed from: a */
    public final void m6917a() {
        try {
            if (!(this.f17515a instanceof Activity)) {
                C3556uu.m6747d("Can not create dialog without Activity Context");
            } else {
                String str = !TextUtils.isEmpty(C2341q.m14734m().m6897a()) ? "Creative Preview (Enabled)" : "Creative Preview";
                String str2 = C2341q.m14734m().m6892b() ? "Troubleshooting (Enabled)" : "Troubleshooting";
                ArrayList arrayList = new ArrayList();
                int m6911a = m6911a((List<String>) arrayList, "Ad Information", true);
                int m6911a2 = m6911a((List<String>) arrayList, str, true);
                int m6911a3 = m6911a((List<String>) arrayList, str2, true);
                AlertDialog.Builder builder = new AlertDialog.Builder(this.f17515a, C2341q.m14742e().mo6926d());
                builder.setTitle("Select a Debug Mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener(this, m6911a, m6911a2, m6911a3) { // from class: com.google.android.gms.internal.ads.vx

                    /* renamed from: a */
                    private final C3584vv f17528a;

                    /* renamed from: b */
                    private final int f17529b;

                    /* renamed from: c */
                    private final int f17530c;

                    /* renamed from: d */
                    private final int f17531d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f17528a = this;
                        this.f17529b = m6911a;
                        this.f17530c = m6911a2;
                        this.f17531d = m6911a3;
                    }

                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        this.f17528a.m6915a(this.f17529b, this.f17530c, this.f17531d, dialogInterface, i);
                    }
                });
                builder.create().show();
            }
        } catch (WindowManager.BadTokenException e) {
            C3556uu.m7051a("", e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00ac, code lost:
        if (android.text.TextUtils.isEmpty(r11) == false) goto L16;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void m6915a(int r8, int r9, int r10, android.content.DialogInterface r11, int r12) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C3584vv.m6915a(int, int, int, android.content.DialogInterface, int):void");
    }

    /* renamed from: a */
    public final void m6914a(MotionEvent motionEvent) {
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        int historySize = motionEvent.getHistorySize();
        int pointerCount = motionEvent.getPointerCount();
        if (actionMasked == 0) {
            this.f17520f = 0;
            this.f17522h = new PointF(motionEvent.getX(0), motionEvent.getY(0));
        } else if (this.f17520f != -1) {
            if (this.f17520f == 0 && actionMasked == 5) {
                this.f17520f = 5;
                this.f17523i = new PointF(motionEvent.getX(1), motionEvent.getY(1));
                this.f17524j.postDelayed(this.f17525k, ((Long) dyx.m8158e().m7876a(edi.f16417bW)).longValue());
            } else if (this.f17520f == 5) {
                if (pointerCount != 2) {
                    z = true;
                } else if (actionMasked == 2) {
                    boolean z2 = false;
                    for (int i = 0; i < historySize; i++) {
                        if (!m6916a(motionEvent.getHistoricalX(0, i), motionEvent.getHistoricalY(0, i), motionEvent.getHistoricalX(1, i), motionEvent.getHistoricalY(1, i))) {
                            z2 = true;
                        }
                    }
                    z = true;
                    if (m6916a(motionEvent.getX(), motionEvent.getY(), motionEvent.getX(1), motionEvent.getY(1))) {
                        z = z2;
                    }
                } else {
                    z = false;
                }
                if (!z) {
                    return;
                }
                this.f17520f = -1;
                this.f17524j.removeCallbacks(this.f17525k);
            }
        }
    }

    /* renamed from: a */
    public final void m6913a(String str) {
        this.f17517c = str;
    }

    /* renamed from: a */
    public final /* synthetic */ void m6912a(String str, DialogInterface dialogInterface, int i) {
        C2341q.m14744c();
        C3567ve.m7007a(this.f17515a, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", str), "Share via"));
    }

    /* renamed from: b */
    public final /* synthetic */ void m6910b() {
        C2341q.m14734m().m6894a(this.f17515a, this.f17517c, this.f17518d, this.f17519e);
    }

    /* renamed from: b */
    public final void m6909b(String str) {
        this.f17518d = str;
    }

    /* renamed from: c */
    public final /* synthetic */ void m6908c() {
        C2341q.m14734m().m6895a(this.f17515a, this.f17517c, this.f17518d);
    }

    /* renamed from: c */
    public final void m6907c(String str) {
        this.f17516b = str;
    }

    /* renamed from: d */
    public final /* synthetic */ void m6906d() {
        this.f17520f = 4;
        m6917a();
    }

    /* renamed from: d */
    public final void m6905d(String str) {
        this.f17519e = str;
    }

    public final String toString() {
        return new StringBuilder(100).append("{Dialog: ").append(this.f17516b).append(",DebugSignal: ").append(this.f17519e).append(",AFMA Version: ").append(this.f17518d).append(",Ad Unit ID: ").append(this.f17517c).append("}").toString();
    }
}
