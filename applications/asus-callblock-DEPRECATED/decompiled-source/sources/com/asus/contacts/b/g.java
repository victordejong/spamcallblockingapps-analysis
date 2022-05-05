package com.asus.contacts.b;

import android.app.Activity;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.contacts.MessageSubjectBubble;
import com.android.contacts.dialpad.e;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/b/g.class */
public class g {
    private static g q;

    /* renamed from: a  reason: collision with root package name */
    public PopupWindow f2595a;

    /* renamed from: b  reason: collision with root package name */
    public e.g f2596b;
    private int d;
    private int e;
    private int f;
    private View g;
    private Activity h;
    private TextView i;
    private TextView j;
    private MessageSubjectBubble k;
    private View l;
    private int n;
    private String o;
    private String p;
    private int r;
    private int s;
    private final String c = g.class.getSimpleName();
    private int[] m = new int[2];

    private g(Activity activity) {
        this.h = activity;
    }

    public static g a(Activity activity) {
        if (q != null) {
            q = null;
        }
        g gVar = new g(activity);
        q = gVar;
        return gVar;
    }

    public final void a(View view, String str, String str2, int i, int i2, int i3, final boolean z, final int i4) {
        int i5;
        synchronized (this) {
            this.g = view;
            this.o = str;
            this.p = str2;
            this.d = i;
            this.r = i2;
            this.s = i3;
            this.f = this.g.getWidth();
            this.g.getLocationOnScreen(this.m);
            Display defaultDisplay = this.h.getWindowManager().getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getSize(point);
            this.n = point.x;
            Log.d(this.c, "mScreenMaxWidth = " + this.n);
            if (this.f2595a == null) {
                this.l = ((LayoutInflater) this.h.getSystemService("layout_inflater")).inflate(2131427604, (ViewGroup) null);
                Log.d(this.c, "mPopupWindowWidth = " + this.d + " mCursorPositionX = " + this.r + " mCursorPositionY = " + this.s);
                this.f2595a = new PopupWindow(this.l, this.d, 0, true);
                this.f2595a.setWindowLayoutMode(0, -2);
                this.f2595a.setOutsideTouchable(true);
                this.f2595a.setBackgroundDrawable(new BitmapDrawable(this.h.getResources()));
                this.i = (TextView) this.l.findViewById(2131297086);
                if (i4 == 2) {
                    this.i.setBackgroundColor(this.h.getResources().getColor(2131034461));
                }
                this.k = (MessageSubjectBubble) this.l.findViewById(2131296410);
                this.j = (TextView) this.l.findViewById(2131297356);
            }
            int dimensionPixelSize = this.h.getResources().getDimensionPixelSize(2131099653);
            int dimensionPixelSize2 = this.h.getResources().getDimensionPixelSize(2131099648);
            int dimensionPixelSize3 = this.h.getResources().getDimensionPixelSize(2131099649);
            if (this.r <= 0) {
                i5 = this.d / 2;
                if ((this.m[0] + (this.f / 2)) - (this.d / 2) <= 0) {
                    i5 = this.m[0] + (this.f / 2);
                }
                if (this.m[0] + (this.f / 2) + (this.d / 2) >= this.n) {
                    i5 = (this.d / 2) + (this.f / 2);
                }
            } else {
                i5 = this.d - (this.n - this.r);
            }
            Log.d(this.c, "anchorX = " + i5);
            this.k.setAnchorPoint(i5, 0);
            this.k.setLayoutParams(new RelativeLayout.LayoutParams(this.d, dimensionPixelSize2));
            this.k.setCursorDimension(dimensionPixelSize, dimensionPixelSize2);
            this.k.setPopupWindowDimension(this.d, this.e);
            this.k.setMargin(dimensionPixelSize3);
            this.k.setBubblePage(i4);
            this.i.setText(this.o);
            if (!TextUtils.isEmpty(this.p)) {
                this.j.setText(this.p);
                this.j.setVisibility(0);
            } else {
                this.j.setVisibility(8);
            }
            this.g.post(new Runnable() { // from class: com.asus.contacts.b.g.1
                /* JADX WARN: Code restructure failed: missing block: B:11:0x0040, code lost:
                    if (r0 == 2) goto L_0x0043;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:25:0x00b8, code lost:
                    if (r0 == 4) goto L_0x00bb;
                 */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        r6 = this;
                        r0 = 0
                        r7 = r0
                        r0 = 1
                        r8 = r0
                        r0 = r6
                        com.asus.contacts.b.g r0 = com.asus.contacts.b.g.this
                        android.app.Activity r0 = com.asus.contacts.b.g.a(r0)
                        android.content.SharedPreferences r0 = android.preference.PreferenceManager.getDefaultSharedPreferences(r0)
                        r0 = r8
                        r9 = r0
                        r0 = r6
                        int r0 = r5
                        r1 = 2
                        if (r0 != r1) goto L_0x0060
                        r0 = r8
                        r9 = r0
                        r0 = r6
                        com.asus.contacts.b.g r0 = com.asus.contacts.b.g.this
                        com.android.contacts.dialpad.e$g r0 = com.asus.contacts.b.g.b(r0)
                        if (r0 == 0) goto L_0x0060
                        r0 = r6
                        com.asus.contacts.b.g r0 = com.asus.contacts.b.g.this
                        com.android.contacts.dialpad.e$g r0 = com.asus.contacts.b.g.b(r0)
                        int r0 = r0.getProviderStatus()
                        r8 = r0
                        boolean r0 = com.android.contacts.util.CompatUtils.isMarshmallowCompatible()
                        if (r0 == 0) goto L_0x00b0
                        r0 = r8
                        if (r0 == 0) goto L_0x0043
                        r0 = r7
                        r9 = r0
                        r0 = r8
                        r1 = 2
                        if (r0 != r1) goto L_0x0045
                    L_0x0043:
                        r0 = 1
                        r9 = r0
                    L_0x0045:
                        r0 = r6
                        com.asus.contacts.b.g r0 = com.asus.contacts.b.g.this
                        java.lang.String r0 = com.asus.contacts.b.g.c(r0)
                        java.lang.StringBuilder r1 = new java.lang.StringBuilder
                        r2 = r1
                        java.lang.String r3 = "mProviderStatus = "
                        r2.<init>(r3)
                        r2 = r8
                        java.lang.StringBuilder r1 = r1.append(r2)
                        java.lang.String r1 = r1.toString()
                        int r0 = android.util.Log.i(r0, r1)
                    L_0x0060:
                        r0 = r9
                        if (r0 != 0) goto L_0x006b
                        r0 = r6
                        boolean r0 = r6
                        if (r0 == 0) goto L_0x00af
                    L_0x006b:
                        r0 = r6
                        com.asus.contacts.b.g r0 = com.asus.contacts.b.g.this
                        android.widget.PopupWindow r0 = com.asus.contacts.b.g.h(r0)
                        r1 = r6
                        com.asus.contacts.b.g r1 = com.asus.contacts.b.g.this
                        android.view.View r1 = com.asus.contacts.b.g.d(r1)
                        r2 = r6
                        com.asus.contacts.b.g r2 = com.asus.contacts.b.g.this
                        int r2 = com.asus.contacts.b.g.e(r2)
                        r3 = 2
                        int r2 = r2 / r3
                        r3 = r6
                        com.asus.contacts.b.g r3 = com.asus.contacts.b.g.this
                        int r3 = com.asus.contacts.b.g.f(r3)
                        r4 = 2
                        int r3 = r3 / r4
                        int r2 = r2 - r3
                        int r2 = -r2
                        r3 = r6
                        com.asus.contacts.b.g r3 = com.asus.contacts.b.g.this
                        int r3 = com.asus.contacts.b.g.g(r3)
                        r0.showAsDropDown(r1, r2, r3)
                        r0 = r6
                        com.asus.contacts.b.g r0 = com.asus.contacts.b.g.this
                        android.widget.PopupWindow r0 = com.asus.contacts.b.g.h(r0)
                        boolean r0 = r0.isAboveAnchor()
                        if (r0 == 0) goto L_0x00af
                        r0 = r6
                        com.asus.contacts.b.g r0 = com.asus.contacts.b.g.this
                        com.android.contacts.MessageSubjectBubble r0 = com.asus.contacts.b.g.i(r0)
                        r1 = 4
                        r0.setVisibility(r1)
                    L_0x00af:
                        return
                    L_0x00b0:
                        r0 = r8
                        if (r0 == 0) goto L_0x00bb
                        r0 = r7
                        r9 = r0
                        r0 = r8
                        r1 = 4
                        if (r0 != r1) goto L_0x0045
                    L_0x00bb:
                        r0 = 1
                        r9 = r0
                        goto L_0x0045
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.asus.contacts.b.g.AnonymousClass1.run():void");
                }
            });
            this.f2595a.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.asus.contacts.b.g.2
                @Override // android.widget.PopupWindow.OnDismissListener
                public final void onDismiss() {
                    g unused = g.q = null;
                }
            });
        }
    }
}
