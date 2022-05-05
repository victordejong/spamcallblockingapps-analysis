package com.android.contacts;

import android.app.Activity;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.HeaderViewListAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.android.contacts.calllog.e;
import com.android.contacts.calllog.h;
import com.android.contacts.calllog.o;
import com.android.contacts.calllog.s;
import com.android.contacts.dialpad.d;
import com.android.contacts.j.g;
import com.android.contacts.list.ak;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ae.class */
public final class ae implements View.OnTouchListener {
    private Integer A;
    private d D;
    private int E;
    private View F;
    private View G;
    private ImageView H;
    private ImageView I;
    private d.k J;
    private g.i K;
    private h L;
    private d.b M;
    private o N;

    /* renamed from: a  reason: collision with root package name */
    public ak f534a;

    /* renamed from: b  reason: collision with root package name */
    private int f535b;
    private Activity c;
    private ListView d;
    private int e;
    private int f;
    private int g;
    private int h;
    private Animation i;
    private Animation j;
    private b k;
    private a l;
    private c m;
    private com.android.contacts.dialpad.d n;
    private e o;
    private HeaderViewListAdapter p;
    private g q;
    private float r;
    private float s;
    private VelocityTracker t;
    private SharedPreferences y;
    private boolean z;
    private boolean u = false;
    private boolean v = false;
    private boolean w = false;
    private boolean x = false;
    private Runnable O = new Runnable() { // from class: com.android.contacts.ae.1
        @Override // java.lang.Runnable
        public final void run() {
            ae.a(ae.this);
            ae.this.x = true;
        }
    };
    private Handler B = new Handler();
    private int C = ViewConfiguration.getLongPressTimeout();

    /* loaded from: classes-dex2jar.jar:com/android/contacts/ae$a.class */
    public interface a {
        void a();

        void a(Uri uri);

        void a(Uri uri, String str, long j);

        void b();

        void h_();
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/ae$b.class */
    public interface b {
        String a();

        void a(int i);

        void a(int i, View view, o oVar);

        void a(int i, View view, d.b bVar);

        void a(o oVar);

        void a(s sVar);

        void a(d.b bVar);

        void b(int i, View view, d.b bVar);

        void b(o oVar);

        void b(d.b bVar);

        boolean b(s sVar);

        void c(d.b bVar);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/ae$c.class */
    public interface c {
        void c(int i, View view, d.b bVar);

        void d(int i, View view, d.b bVar);

        void d(d.b bVar);

        void e(d.b bVar);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/ae$d.class */
    private final class d implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private View f541b;

        public d(View view) {
            this.f541b = view;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (ae.this.f535b != 2) {
                this.f541b.setPressed(true);
            }
        }
    }

    public ae(Activity activity, ViewGroup viewGroup) {
        this.c = activity;
        this.d = (ListView) viewGroup;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(this.c);
        this.e = viewConfiguration.getScaledTouchSlop();
        this.f = viewConfiguration.getScaledMinimumFlingVelocity();
        this.g = viewConfiguration.getScaledMaximumFlingVelocity();
        this.h = this.c.getResources().getInteger(17694720);
        this.i = AnimationUtils.loadAnimation(this.c, 2130771972);
        this.j = AnimationUtils.loadAnimation(this.c, 2130771973);
        this.y = PreferenceManager.getDefaultSharedPreferences(this.c);
        this.z = this.y.getBoolean("swipe_to_do_action", false);
        this.A = Integer.valueOf(this.y.getString("swipe_to_do_action_list", "0"));
    }

    private void a(float f) {
        switch (this.f535b) {
            case 2:
                int childCount = ((ViewGroup) this.F).getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = ((ViewGroup) this.F).getChildAt(i);
                    if (childAt.getVisibility() == 0 && !(childAt instanceof LinearLayout) && !(childAt instanceof RelativeLayout)) {
                        childAt.setTranslationX(f);
                    }
                }
                return;
            default:
                this.G.setTranslationX(f);
                return;
        }
    }

    private void a(MotionEvent motionEvent) {
        if (this.t == null) {
            this.t = VelocityTracker.obtain();
        }
        this.t.addMovement(motionEvent);
        this.t.computeCurrentVelocity(1000);
    }

    static /* synthetic */ void a(ae aeVar) {
        switch (aeVar.f535b) {
            case 0:
                aeVar.k.a(aeVar.E, aeVar.d, aeVar.N);
                return;
            case 1:
                aeVar.k.b(aeVar.E, aeVar.d, aeVar.M);
                return;
            case 2:
                aeVar.l.b();
                aeVar.B.postDelayed(new Runnable() { // from class: com.android.contacts.ae.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        ae.this.l.h_();
                    }
                }, 500L);
                return;
            case 3:
                aeVar.m.d(aeVar.E, aeVar.d, aeVar.M);
                return;
            default:
                return;
        }
    }

    static /* synthetic */ void a(ae aeVar, int i) {
        switch (i) {
            case 0:
                switch (aeVar.f535b) {
                    case 0:
                        if (aeVar.G != null) {
                            aeVar.k.b((s) aeVar.G.getTag());
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(5, aeVar.c, "Dialer", "Call Log", "Call Log: swipe", null);
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(18, aeVar.c, "Make a Call", true);
                            return;
                        }
                        return;
                    case 1:
                        aeVar.k.a(aeVar.M);
                        String a2 = aeVar.k.a();
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(5, aeVar.c, "Dialer", a2, a2 + ": swipe", null);
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(18, aeVar.c, "Make a Call", true);
                        return;
                    case 2:
                        if (aeVar.F != null) {
                            if (((Integer) aeVar.F.getTag(2131296566)).intValue() == 0) {
                                Toast.makeText(aeVar.c, 2131756218, 0).show();
                            } else {
                                long longValue = ((Long) aeVar.F.getTag(2131296568)).longValue();
                                aeVar.l.a((Uri) aeVar.F.getTag(2131296574), (String) aeVar.F.getTag(2131296576), longValue);
                            }
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(5, aeVar.c, "Contacts", "Contact List", "Contact List: swipe", null);
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(18, aeVar.c, "Make a Call", true);
                            return;
                        }
                        return;
                    case 3:
                        aeVar.m.d(aeVar.M);
                        return;
                    default:
                        return;
                }
            case 1:
                switch (aeVar.f535b) {
                    case 0:
                        if (com.asus.a.c.a(aeVar.N.e)) {
                            Toast.makeText(aeVar.c, 2131756219, 0).show();
                            return;
                        } else {
                            aeVar.k.b(aeVar.N);
                            return;
                        }
                    case 1:
                        aeVar.k.b(aeVar.M);
                        return;
                    case 2:
                        if (((Integer) aeVar.F.getTag(2131296566)).intValue() == 0) {
                            Toast.makeText(aeVar.c, 2131756218, 0).show();
                            return;
                        }
                        aeVar.l.a((Uri) aeVar.F.getTag(2131296574));
                        return;
                    case 3:
                        aeVar.m.e(aeVar.M);
                        return;
                    default:
                        return;
                }
            case 2:
                switch (aeVar.f535b) {
                    case 0:
                        aeVar.k.a(aeVar.N);
                        return;
                    default:
                        return;
                }
            case 3:
                switch (aeVar.f535b) {
                    case 0:
                        aeVar.k.a(aeVar.E);
                        return;
                    case 1:
                        int intValue = ((Integer) aeVar.J.h.getTag()).intValue();
                        if (intValue == 10) {
                            aeVar.k.c(aeVar.M);
                        }
                        if (intValue == 11) {
                            Toast.makeText(aeVar.c, "Delete Contact is not unsupported", 0).show();
                            return;
                        }
                        return;
                    default:
                        return;
                }
            default:
                return;
        }
    }

    private void a(boolean z, int i) {
        switch (this.f535b) {
            case 2:
                int childCount = ((ViewGroup) this.F).getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = ((ViewGroup) this.F).getChildAt(i2);
                    if (childAt.getVisibility() == 0 && !(childAt instanceof LinearLayout) && !(childAt instanceof RelativeLayout)) {
                        childAt.animate().translationX(z ? i : -i).setDuration(this.h);
                    }
                }
                return;
            default:
                this.G.animate().translationX(z ? i : -i).setDuration(this.h);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.H.setVisibility(4);
        this.I.setVisibility(4);
    }

    private void c() {
        if (this.t != null) {
            this.t.clear();
            this.t.recycle();
            this.t = null;
        }
        this.r = 0.0f;
        this.s = 0.0f;
        this.u = false;
        this.v = false;
        this.x = false;
        this.d.requestDisallowInterceptTouchEvent(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.F != null) {
            this.F.setPressed(false);
            this.F = null;
        }
        this.J = null;
        this.K = null;
        this.L = null;
    }

    public final void a() {
        switch (this.f535b) {
            case 2:
                if (this.F != null) {
                    int childCount = ((ViewGroup) this.F).getChildCount();
                    for (int i = 0; i < childCount; i++) {
                        View childAt = ((ViewGroup) this.F).getChildAt(i);
                        if (childAt.getVisibility() == 0 && !(childAt instanceof LinearLayout)) {
                            childAt.animate().translationX(0.0f).setDuration(this.h);
                        }
                    }
                    return;
                }
                return;
            default:
                if (this.G != null) {
                    this.G.animate().translationX(0.0f).setDuration(this.h);
                    return;
                }
                return;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x056e, code lost:
        if ((r7.F instanceof com.android.contacts.list.ContactListItemView) != false) goto L_0x0571;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0168, code lost:
        if ((r7.F instanceof com.android.contacts.list.ContactListItemView) != false) goto L_0x016b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0398, code lost:
        if ((r7.F instanceof com.android.contacts.list.ContactListItemView) != false) goto L_0x039b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x04d4, code lost:
        if (java.lang.Math.abs(r0) <= r7.e) goto L_0x040a;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(android.view.View r8, android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 1819
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.ae.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
