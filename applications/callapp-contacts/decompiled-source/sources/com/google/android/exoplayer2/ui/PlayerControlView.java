package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.aa;
import com.google.android.exoplayer2.ab;
import com.google.android.exoplayer2.ac;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.g;
import com.google.android.exoplayer2.p;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.ui.c;
import com.google.android.exoplayer2.ui.h;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.w;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerControlView.class */
public class PlayerControlView extends FrameLayout {
    private final String A;
    private final Drawable B;
    private final Drawable C;
    private final float D;
    private final float E;
    private final String F;
    private final String G;
    private ac H;
    private g I;
    private b J;
    private ab K;
    private boolean L;
    private boolean M;
    private boolean N;
    private boolean O;
    private int P;
    private int Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private boolean U;
    private boolean V;
    private long W;

    /* renamed from: a  reason: collision with root package name */
    final CopyOnWriteArrayList<c> f21970a;
    private long[] aa;
    private boolean[] ab;
    private long[] ac;
    private boolean[] ad;
    private long ae;

    /* renamed from: b  reason: collision with root package name */
    int f21971b;

    /* renamed from: c  reason: collision with root package name */
    private final a f21972c;

    /* renamed from: d  reason: collision with root package name */
    private final View f21973d;
    private final View e;
    private final View f;
    private final View g;
    private final View h;
    private final View i;
    private final ImageView j;
    private final ImageView k;
    private final View l;
    private final TextView m;
    private final TextView n;
    private final h o;
    private final StringBuilder p;
    private final Formatter q;
    private final al.a r;
    private final al.b s;
    private final Runnable t;
    private final Runnable u;
    private final Drawable v;
    private final Drawable w;
    private final Drawable x;
    private final String y;
    private final String z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerControlView$a.class */
    public final class a implements View.OnClickListener, ac.a, h.a {
        private a() {
        }

        @Override // com.google.android.exoplayer2.ui.h.a
        public final void a(long j) {
            PlayerControlView.this.O = true;
            if (PlayerControlView.this.n != null) {
                PlayerControlView.this.n.setText(af.a(PlayerControlView.this.p, PlayerControlView.this.q, j));
            }
        }

        @Override // com.google.android.exoplayer2.ui.h.a
        public final void a(long j, boolean z) {
            PlayerControlView.this.O = false;
            if (!z && PlayerControlView.this.H != null) {
                PlayerControlView playerControlView = PlayerControlView.this;
                PlayerControlView.a(playerControlView, playerControlView.H, j);
            }
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void a(ExoPlaybackException exoPlaybackException) {
            ac.a._CC.$default$a(this, exoPlaybackException);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void a(MediaItem mediaItem, int i) {
            ac.a._CC.$default$a(this, mediaItem, i);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void a(aa aaVar) {
            ac.a._CC.$default$a(this, aaVar);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public final void a(ac.b bVar) {
            if (bVar.a(5, 6)) {
                PlayerControlView.this.f();
            }
            if (bVar.a(5, 6, 8)) {
                PlayerControlView.this.k();
            }
            if (bVar.a(9)) {
                PlayerControlView.this.h();
            }
            if (bVar.a(10)) {
                PlayerControlView.this.i();
            }
            if (bVar.a(9, 10, 12, 0)) {
                PlayerControlView.this.g();
            }
            if (bVar.a(12, 0)) {
                PlayerControlView.this.j();
            }
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void a(al alVar, int i) {
            ac.a._CC.$default$a(this, alVar, i);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void a(TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.g gVar) {
            ac.a._CC.$default$a(this, trackGroupArray, gVar);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void a(boolean z) {
            ac.a._CC.$default$a(this, z);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void b(int i) {
            ac.a._CC.$default$b(this, i);
        }

        @Override // com.google.android.exoplayer2.ui.h.a
        public final void b(long j) {
            if (PlayerControlView.this.n != null) {
                PlayerControlView.this.n.setText(af.a(PlayerControlView.this.p, PlayerControlView.this.q, j));
            }
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void b(boolean z) {
            ac.a._CC.$default$b(this, z);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void b(boolean z, int i) {
            ac.a._CC.$default$b(this, z, i);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void c(List list) {
            ac.a._CC.$default$c(this, list);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void c(boolean z) {
            ac.a._CC.$default$c(this, z);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void c(boolean z, int i) {
            ac.a._CC.$default$c(this, z, i);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void d(int i) {
            ac.a._CC.$default$d(this, i);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void e(int i) {
            ac.a._CC.$default$e(this, i);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void f(int i) {
            ac.a._CC.$default$f(this, i);
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ac acVar = PlayerControlView.this.H;
            if (acVar != null) {
                if (PlayerControlView.this.e == view) {
                    PlayerControlView.this.I.c(acVar);
                } else if (PlayerControlView.this.f21973d == view) {
                    PlayerControlView.this.I.b(acVar);
                } else if (PlayerControlView.this.h == view) {
                    if (acVar.n() != 4) {
                        PlayerControlView.this.I.e(acVar);
                    }
                } else if (PlayerControlView.this.i == view) {
                    PlayerControlView.this.I.d(acVar);
                } else if (PlayerControlView.this.f == view) {
                    PlayerControlView.this.b(acVar);
                } else if (PlayerControlView.this.g == view) {
                    PlayerControlView.this.c(acVar);
                } else if (PlayerControlView.this.j == view) {
                    PlayerControlView.this.I.a(acVar, w.a(acVar.s(), PlayerControlView.this.Q));
                } else if (PlayerControlView.this.k == view) {
                    PlayerControlView.this.I.b(acVar, !acVar.t());
                }
            }
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void p_() {
            ac.a._CC.$default$p_(this);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void q_() {
            ac.a._CC.$default$q_(this);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerControlView$b.class */
    public interface b {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerControlView$c.class */
    public interface c {
        void a();
    }

    static {
        p.a("goog.exo.ui");
    }

    public PlayerControlView(Context context) {
        this(context, null);
    }

    public PlayerControlView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerControlView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, attributeSet);
    }

    public PlayerControlView(Context context, AttributeSet attributeSet, int i, AttributeSet attributeSet2) {
        super(context, attributeSet, i);
        int i2 = c.h.exo_player_control_view;
        int i3 = 5000;
        this.f21971b = 5000;
        this.Q = 0;
        this.P = 200;
        this.W = -9223372036854775807L;
        this.R = true;
        this.S = true;
        this.T = true;
        this.U = true;
        this.V = false;
        int i4 = 15000;
        int i5 = i2;
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, c.l.PlayerControlView, 0, 0);
            try {
                i3 = obtainStyledAttributes.getInt(c.l.PlayerControlView_rewind_increment, 5000);
                i4 = obtainStyledAttributes.getInt(c.l.PlayerControlView_fastforward_increment, 15000);
                this.f21971b = obtainStyledAttributes.getInt(c.l.PlayerControlView_show_timeout, this.f21971b);
                i5 = obtainStyledAttributes.getResourceId(c.l.PlayerControlView_controller_layout_id, i2);
                this.Q = obtainStyledAttributes.getInt(c.l.PlayerControlView_repeat_toggle_modes, this.Q);
                this.R = obtainStyledAttributes.getBoolean(c.l.PlayerControlView_show_rewind_button, this.R);
                this.S = obtainStyledAttributes.getBoolean(c.l.PlayerControlView_show_fastforward_button, this.S);
                this.T = obtainStyledAttributes.getBoolean(c.l.PlayerControlView_show_previous_button, this.T);
                this.U = obtainStyledAttributes.getBoolean(c.l.PlayerControlView_show_next_button, this.U);
                this.V = obtainStyledAttributes.getBoolean(c.l.PlayerControlView_show_shuffle_button, this.V);
                setTimeBarMinUpdateInterval(obtainStyledAttributes.getInt(c.l.PlayerControlView_time_bar_min_update_interval, this.P));
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f21970a = new CopyOnWriteArrayList<>();
        this.r = new al.a();
        this.s = new al.b();
        StringBuilder sb = new StringBuilder();
        this.p = sb;
        this.q = new Formatter(sb, Locale.getDefault());
        this.aa = new long[0];
        this.ab = new boolean[0];
        this.ac = new long[0];
        this.ad = new boolean[0];
        a aVar = new a();
        this.f21972c = aVar;
        this.I = new com.google.android.exoplayer2.h(i4, i3);
        this.t = new Runnable() { // from class: com.google.android.exoplayer2.ui._$$Lambda$PlayerControlView$Z_IBx2WWvSVS6SUO7bHZvi77_1g
            @Override // java.lang.Runnable
            public final void run() {
                PlayerControlView.this.k();
            }
        };
        this.u = new Runnable() { // from class: com.google.android.exoplayer2.ui._$$Lambda$3_JPVCMjzOr_jY2Ib8V2AwePTmI
            @Override // java.lang.Runnable
            public final void run() {
                PlayerControlView.this.b();
            }
        };
        LayoutInflater.from(context).inflate(i5, this);
        setDescendantFocusability(262144);
        h hVar = (h) findViewById(c.f.exo_progress);
        View findViewById = findViewById(c.f.exo_progress_placeholder);
        if (hVar != null) {
            this.o = hVar;
        } else if (findViewById != null) {
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2);
            defaultTimeBar.setId(c.f.exo_progress);
            defaultTimeBar.setLayoutParams(findViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById);
            viewGroup.removeView(findViewById);
            viewGroup.addView(defaultTimeBar, indexOfChild);
            this.o = defaultTimeBar;
        } else {
            this.o = null;
        }
        this.m = (TextView) findViewById(c.f.exo_duration);
        this.n = (TextView) findViewById(c.f.exo_position);
        h hVar2 = this.o;
        if (hVar2 != null) {
            hVar2.a(aVar);
        }
        View findViewById2 = findViewById(c.f.exo_play);
        this.f = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(aVar);
        }
        View findViewById3 = findViewById(c.f.exo_pause);
        this.g = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(aVar);
        }
        View findViewById4 = findViewById(c.f.exo_prev);
        this.f21973d = findViewById4;
        if (findViewById4 != null) {
            findViewById4.setOnClickListener(aVar);
        }
        View findViewById5 = findViewById(c.f.exo_next);
        this.e = findViewById5;
        if (findViewById5 != null) {
            findViewById5.setOnClickListener(aVar);
        }
        View findViewById6 = findViewById(c.f.exo_rew);
        this.i = findViewById6;
        if (findViewById6 != null) {
            findViewById6.setOnClickListener(aVar);
        }
        View findViewById7 = findViewById(c.f.exo_ffwd);
        this.h = findViewById7;
        if (findViewById7 != null) {
            findViewById7.setOnClickListener(aVar);
        }
        ImageView imageView = (ImageView) findViewById(c.f.exo_repeat_toggle);
        this.j = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(aVar);
        }
        ImageView imageView2 = (ImageView) findViewById(c.f.exo_shuffle);
        this.k = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(aVar);
        }
        View findViewById8 = findViewById(c.f.exo_vr);
        this.l = findViewById8;
        setShowVrButton(false);
        a(false, false, findViewById8);
        Resources resources = context.getResources();
        this.D = resources.getInteger(c.g.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.E = resources.getInteger(c.g.exo_media_button_opacity_percentage_disabled) / 100.0f;
        this.v = resources.getDrawable(c.d.exo_controls_repeat_off);
        this.w = resources.getDrawable(c.d.exo_controls_repeat_one);
        this.x = resources.getDrawable(c.d.exo_controls_repeat_all);
        this.B = resources.getDrawable(c.d.exo_controls_shuffle_on);
        this.C = resources.getDrawable(c.d.exo_controls_shuffle_off);
        this.y = resources.getString(c.j.exo_controls_repeat_off_description);
        this.z = resources.getString(c.j.exo_controls_repeat_one_description);
        this.A = resources.getString(c.j.exo_controls_repeat_all_description);
        this.F = resources.getString(c.j.exo_controls_shuffle_on_description);
        this.G = resources.getString(c.j.exo_controls_shuffle_off_description);
    }

    private void a(ac acVar) {
        int n = acVar.n();
        if (n == 1 || n == 4 || !acVar.r()) {
            b(acVar);
        } else {
            c(acVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.google.android.exoplayer2.ui.PlayerControlView] */
    /* JADX WARN: Type inference failed for: r8v0, types: [long] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ void a(com.google.android.exoplayer2.ui.PlayerControlView r6, com.google.android.exoplayer2.ac r7, long r8) {
        /*
            r0 = r7
            com.google.android.exoplayer2.al r0 = r0.K()
            r10 = r0
            r0 = r6
            boolean r0 = r0.N
            if (r0 == 0) goto L_0x0062
            r0 = r10
            boolean r0 = r0.c()
            if (r0 != 0) goto L_0x0062
            r0 = r10
            int r0 = r0.a()
            r11 = r0
            r0 = 0
            r12 = r0
        L_0x0021:
            r0 = r10
            r1 = r12
            r2 = r6
            com.google.android.exoplayer2.al$b r2 = r2.s
            r3 = 0
            com.google.android.exoplayer2.al$b r0 = r0.a(r1, r2, r3)
            long r0 = r0.q
            long r0 = com.google.android.exoplayer2.f.a(r0)
            r13 = r0
            r0 = r12
            r15 = r0
            r0 = r8
            r16 = r0
            r0 = r8
            r1 = r13
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x006d
            r0 = r12
            r1 = r11
            r2 = 1
            int r1 = r1 - r2
            if (r0 != r1) goto L_0x0057
            r0 = r13
            r16 = r0
            r0 = r12
            r15 = r0
            goto L_0x006d
        L_0x0057:
            r0 = r8
            r1 = r13
            long r0 = r0 - r1
            r8 = r0
            int r12 = r12 + 1
            goto L_0x0021
        L_0x0062:
            r0 = r7
            int r0 = r0.y()
            r15 = r0
            r0 = r8
            r16 = r0
        L_0x006d:
            r0 = r6
            r1 = r7
            r2 = r15
            r3 = r16
            boolean r0 = r0.a(r1, r2, r3)
            if (r0 != 0) goto L_0x007d
            r0 = r6
            r0.k()
        L_0x007d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.PlayerControlView.a(com.google.android.exoplayer2.ui.PlayerControlView, com.google.android.exoplayer2.ac, long):void");
    }

    private void a(boolean z, boolean z2, View view) {
        if (view != null) {
            view.setEnabled(z2);
            view.setAlpha(z2 ? this.D : this.E);
            view.setVisibility(z ? 0 : 8);
        }
    }

    private static boolean a(int i) {
        return i == 90 || i == 89 || i == 85 || i == 79 || i == 126 || i == 127 || i == 87 || i == 88;
    }

    private boolean a(ac acVar, int i, long j) {
        return this.I.a(acVar, i, j);
    }

    private static boolean a(al alVar, al.b bVar) {
        if (alVar.a() > 100) {
            return false;
        }
        int a2 = alVar.a();
        for (int i = 0; i < a2; i++) {
            if (alVar.a(i, bVar, 0L).q == -9223372036854775807L) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(ac acVar) {
        int n = acVar.n();
        if (n == 1) {
            if (this.K == null) {
                this.I.a(acVar);
            }
        } else if (n == 4) {
            a(acVar, acVar.y(), -9223372036854775807L);
        }
        this.I.a(acVar, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(ac acVar) {
        this.I.a(acVar, false);
    }

    private void d() {
        removeCallbacks(this.u);
        if (this.f21971b > 0) {
            long uptimeMillis = SystemClock.uptimeMillis();
            int i = this.f21971b;
            this.W = uptimeMillis + i;
            if (this.L) {
                postDelayed(this.u, i);
                return;
            }
            return;
        }
        this.W = -9223372036854775807L;
    }

    private void e() {
        f();
        g();
        h();
        i();
        j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        boolean z;
        if (c() && this.L) {
            boolean m = m();
            View view = this.f;
            int i = 8;
            boolean z2 = true;
            if (view != null) {
                z = (m && view.isFocused()) | false;
                this.f.setVisibility(m ? 8 : 0);
            } else {
                z = false;
            }
            View view2 = this.g;
            boolean z3 = z;
            if (view2 != null) {
                if (m || !view2.isFocused()) {
                    z2 = false;
                }
                z3 = z | z2;
                View view3 = this.g;
                if (m) {
                    i = 0;
                }
                view3.setVisibility(i);
            }
            if (z3) {
                l();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void g() {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.PlayerControlView.g():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        ImageView imageView;
        if (c() && this.L && (imageView = this.j) != null) {
            if (this.Q == 0) {
                a(false, false, (View) imageView);
                return;
            }
            ac acVar = this.H;
            if (acVar == null) {
                a(true, false, (View) imageView);
                this.j.setImageDrawable(this.v);
                this.j.setContentDescription(this.y);
                return;
            }
            a(true, true, (View) imageView);
            int s = acVar.s();
            if (s == 0) {
                this.j.setImageDrawable(this.v);
                this.j.setContentDescription(this.y);
            } else if (s == 1) {
                this.j.setImageDrawable(this.w);
                this.j.setContentDescription(this.z);
            } else if (s == 2) {
                this.j.setImageDrawable(this.x);
                this.j.setContentDescription(this.A);
            }
            this.j.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        ImageView imageView;
        String str;
        ImageView imageView2;
        if (c() && this.L && (imageView = this.k) != null) {
            ac acVar = this.H;
            if (!this.V) {
                a(false, false, (View) imageView);
                return;
            }
            if (acVar == null) {
                a(true, false, (View) imageView);
                this.k.setImageDrawable(this.C);
                imageView2 = this.k;
            } else {
                a(true, true, (View) imageView);
                this.k.setImageDrawable(acVar.t() ? this.B : this.C);
                ImageView imageView3 = this.k;
                imageView2 = imageView3;
                if (acVar.t()) {
                    str = this.F;
                    imageView2 = imageView3;
                    imageView2.setContentDescription(str);
                }
            }
            str = this.G;
            imageView2.setContentDescription(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1, types: [long] */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void j() {
        /*
            Method dump skipped, instructions count: 593
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.PlayerControlView.j():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        long j;
        if (c() && this.L) {
            ac acVar = this.H;
            long j2 = 0;
            if (acVar != null) {
                j2 = this.ae + acVar.F();
                j = this.ae + acVar.G();
            } else {
                j = 0;
            }
            TextView textView = this.n;
            if (textView != null && !this.O) {
                textView.setText(af.a(this.p, this.q, j2));
            }
            h hVar = this.o;
            if (hVar != null) {
                hVar.setPosition(j2);
                this.o.setBufferedPosition(j);
            }
            removeCallbacks(this.t);
            int n = acVar == null ? 1 : acVar.n();
            long j3 = 1000;
            if (acVar != null && acVar.A_()) {
                h hVar2 = this.o;
                long min = Math.min(hVar2 != null ? hVar2.a() : 1000L, 1000 - (j2 % 1000));
                float f = acVar.v().f20647b;
                if (f > BitmapDescriptorFactory.HUE_RED) {
                    j3 = ((float) min) / f;
                }
                postDelayed(this.t, af.a(j3, this.P, 1000L));
            } else if (n != 4 && n != 1) {
                postDelayed(this.t, 1000L);
            }
        }
    }

    private void l() {
        View view;
        View view2;
        boolean m = m();
        if (!m && (view2 = this.f) != null) {
            view2.requestFocus();
        } else if (m && (view = this.g) != null) {
            view.requestFocus();
        }
    }

    private boolean m() {
        ac acVar = this.H;
        return (acVar == null || acVar.n() == 4 || this.H.n() == 1 || !this.H.r()) ? false : true;
    }

    public final void a() {
        if (!c()) {
            setVisibility(0);
            Iterator<c> it2 = this.f21970a.iterator();
            while (it2.hasNext()) {
                getVisibility();
                it2.next().a();
            }
            e();
            l();
        }
        d();
    }

    public final void a(c cVar) {
        com.google.android.exoplayer2.util.a.b(cVar);
        this.f21970a.add(cVar);
    }

    public final boolean a(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        ac acVar = this.H;
        if (acVar == null || !a(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() != 0) {
            return true;
        }
        if (keyCode == 90) {
            if (acVar.n() == 4) {
                return true;
            }
            this.I.e(acVar);
            return true;
        } else if (keyCode == 89) {
            this.I.d(acVar);
            return true;
        } else if (keyEvent.getRepeatCount() != 0) {
            return true;
        } else {
            if (keyCode == 79 || keyCode == 85) {
                a(acVar);
                return true;
            } else if (keyCode == 87) {
                this.I.c(acVar);
                return true;
            } else if (keyCode == 88) {
                this.I.b(acVar);
                return true;
            } else if (keyCode == 126) {
                b(acVar);
                return true;
            } else if (keyCode != 127) {
                return true;
            } else {
                c(acVar);
                return true;
            }
        }
    }

    public void b() {
        if (c()) {
            setVisibility(8);
            Iterator<c> it2 = this.f21970a.iterator();
            while (it2.hasNext()) {
                getVisibility();
                it2.next().a();
            }
            removeCallbacks(this.t);
            removeCallbacks(this.u);
            this.W = -9223372036854775807L;
        }
    }

    public final boolean c() {
        return getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return a(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            removeCallbacks(this.u);
        } else if (motionEvent.getAction() == 1) {
            d();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.L = true;
        long j = this.W;
        if (j != -9223372036854775807L) {
            long uptimeMillis = j - SystemClock.uptimeMillis();
            if (uptimeMillis <= 0) {
                b();
            } else {
                postDelayed(this.u, uptimeMillis);
            }
        } else if (c()) {
            d();
        }
        e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.L = false;
        removeCallbacks(this.t);
        removeCallbacks(this.u);
    }

    public void setControlDispatcher(g gVar) {
        if (this.I != gVar) {
            this.I = gVar;
            g();
        }
    }

    public void setExtraAdGroupMarkers(long[] jArr, boolean[] zArr) {
        boolean z = false;
        if (jArr == null) {
            this.ac = new long[0];
            this.ad = new boolean[0];
        } else {
            boolean[] zArr2 = (boolean[]) com.google.android.exoplayer2.util.a.b(zArr);
            if (jArr.length == zArr2.length) {
                z = true;
            }
            com.google.android.exoplayer2.util.a.a(z);
            this.ac = jArr;
            this.ad = zArr2;
        }
        j();
    }

    @Deprecated
    public void setFastForwardIncrementMs(int i) {
        g gVar = this.I;
        if (gVar instanceof com.google.android.exoplayer2.h) {
            ((com.google.android.exoplayer2.h) gVar).f21364b = i;
            g();
        }
    }

    @Deprecated
    public void setPlaybackPreparer(ab abVar) {
        this.K = abVar;
    }

    public void setPlayer(ac acVar) {
        com.google.android.exoplayer2.util.a.b(Looper.myLooper() == Looper.getMainLooper());
        boolean z = true;
        if (acVar != null) {
            z = acVar.m() == Looper.getMainLooper();
        }
        com.google.android.exoplayer2.util.a.a(z);
        ac acVar2 = this.H;
        if (acVar2 != acVar) {
            if (acVar2 != null) {
                acVar2.b(this.f21972c);
            }
            this.H = acVar;
            if (acVar != null) {
                acVar.a(this.f21972c);
            }
            e();
        }
    }

    public void setProgressUpdateListener(b bVar) {
        this.J = bVar;
    }

    public void setRepeatToggleModes(int i) {
        this.Q = i;
        ac acVar = this.H;
        if (acVar != null) {
            int s = acVar.s();
            if (i == 0 && s != 0) {
                this.I.a(this.H, 0);
            } else if (i == 1 && s == 2) {
                this.I.a(this.H, 1);
            } else if (i == 2 && s == 1) {
                this.I.a(this.H, 2);
            }
        }
        h();
    }

    @Deprecated
    public void setRewindIncrementMs(int i) {
        g gVar = this.I;
        if (gVar instanceof com.google.android.exoplayer2.h) {
            ((com.google.android.exoplayer2.h) gVar).f21363a = i;
            g();
        }
    }

    public void setShowFastForwardButton(boolean z) {
        this.S = z;
        g();
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        this.M = z;
        j();
    }

    public void setShowNextButton(boolean z) {
        this.U = z;
        g();
    }

    public void setShowPreviousButton(boolean z) {
        this.T = z;
        g();
    }

    public void setShowRewindButton(boolean z) {
        this.R = z;
        g();
    }

    public void setShowShuffleButton(boolean z) {
        this.V = z;
        i();
    }

    public void setShowTimeoutMs(int i) {
        this.f21971b = i;
        if (c()) {
            d();
        }
    }

    public void setShowVrButton(boolean z) {
        View view = this.l;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
    }

    public void setTimeBarMinUpdateInterval(int i) {
        this.P = af.a(i, 16, 1000);
    }

    public void setVrButtonListener(View.OnClickListener onClickListener) {
        View view = this.l;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            View view2 = this.l;
            boolean z = true;
            boolean z2 = view2 != null && view2.getVisibility() == 0;
            if (onClickListener == null) {
                z = false;
            }
            a(z2, z, this.l);
        }
    }
}
