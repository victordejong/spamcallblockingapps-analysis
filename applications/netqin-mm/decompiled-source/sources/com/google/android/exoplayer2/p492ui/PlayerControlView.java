package com.google.android.exoplayer2.p492ui;

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
import com.google.android.exoplayer2.p492ui.PlayerControlView;
import com.google.android.exoplayer2.source.TrackGroupArray;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import p131c.p161d.p170b.p188c.AbstractC2939i0;
import p131c.p161d.p170b.p188c.AbstractC2941j0;
import p131c.p161d.p170b.p188c.AbstractC2965r0;
import p131c.p161d.p170b.p188c.AbstractC2969s;
import p131c.p161d.p170b.p188c.C2683a0;
import p131c.p161d.p170b.p188c.C2910h0;
import p131c.p161d.p170b.p188c.C2947k0;
import p131c.p161d.p170b.p188c.C3006t;
import p131c.p161d.p170b.p188c.p198d1.C2783g;
import p131c.p161d.p170b.p188c.p199e1.AbstractC2801m;
import p131c.p161d.p170b.p188c.p199e1.C2794f;
import p131c.p161d.p170b.p188c.p199e1.C2795g;
import p131c.p161d.p170b.p188c.p199e1.C2796h;
import p131c.p161d.p170b.p188c.p199e1.C2797i;
import p131c.p161d.p170b.p188c.p199e1.C2798j;
import p131c.p161d.p170b.p188c.p199e1.C2799k;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2907y;
/* renamed from: com.google.android.exoplayer2.ui.PlayerControlView */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerControlView.class */
public class PlayerControlView extends FrameLayout {

    /* renamed from: A */
    public final Drawable f22408A;

    /* renamed from: B */
    public final Drawable f22409B;

    /* renamed from: C */
    public final float f22410C;

    /* renamed from: D */
    public final float f22411D;

    /* renamed from: E */
    public final String f22412E;

    /* renamed from: F */
    public final String f22413F;

    /* renamed from: G */
    public AbstractC2941j0 f22414G;

    /* renamed from: H */
    public AbstractC2969s f22415H;

    /* renamed from: I */
    public AbstractC7191c f22416I;

    /* renamed from: J */
    public AbstractC2939i0 f22417J;

    /* renamed from: K */
    public boolean f22418K;

    /* renamed from: L */
    public boolean f22419L;

    /* renamed from: M */
    public boolean f22420M;

    /* renamed from: N */
    public boolean f22421N;

    /* renamed from: O */
    public int f22422O;

    /* renamed from: P */
    public int f22423P;

    /* renamed from: Q */
    public int f22424Q;

    /* renamed from: R */
    public int f22425R;

    /* renamed from: S */
    public int f22426S;

    /* renamed from: T */
    public boolean f22427T;

    /* renamed from: U */
    public long f22428U;

    /* renamed from: V */
    public long[] f22429V;

    /* renamed from: W */
    public boolean[] f22430W;

    /* renamed from: a */
    public final View$OnClickListenerC7190b f22431a;

    /* renamed from: a0 */
    public long[] f22432a0;

    /* renamed from: b */
    public final CopyOnWriteArrayList<AbstractC7192d> f22433b;

    /* renamed from: b0 */
    public boolean[] f22434b0;

    /* renamed from: c */
    public final View f22435c;

    /* renamed from: c0 */
    public long f22436c0;

    /* renamed from: d */
    public final View f22437d;

    /* renamed from: e */
    public final View f22438e;

    /* renamed from: f */
    public final View f22439f;

    /* renamed from: g */
    public final View f22440g;

    /* renamed from: h */
    public final View f22441h;

    /* renamed from: i */
    public final ImageView f22442i;

    /* renamed from: j */
    public final ImageView f22443j;

    /* renamed from: k */
    public final View f22444k;

    /* renamed from: l */
    public final TextView f22445l;

    /* renamed from: m */
    public final TextView f22446m;

    /* renamed from: n */
    public final AbstractC2801m f22447n;

    /* renamed from: o */
    public final StringBuilder f22448o;

    /* renamed from: p */
    public final Formatter f22449p;

    /* renamed from: q */
    public final AbstractC2965r0.C2967b f22450q;

    /* renamed from: r */
    public final AbstractC2965r0.C2968c f22451r;

    /* renamed from: s */
    public final Runnable f22452s;

    /* renamed from: t */
    public final Runnable f22453t;

    /* renamed from: u */
    public final Drawable f22454u;

    /* renamed from: v */
    public final Drawable f22455v;

    /* renamed from: w */
    public final Drawable f22456w;

    /* renamed from: x */
    public final String f22457x;

    /* renamed from: y */
    public final String f22458y;

    /* renamed from: z */
    public final String f22459z;

    /* renamed from: com.google.android.exoplayer2.ui.PlayerControlView$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerControlView$b.class */
    public final class View$OnClickListenerC7190b implements AbstractC2941j0.AbstractC2943b, AbstractC2801m.AbstractC2802a, View.OnClickListener {
        public View$OnClickListenerC7190b() {
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        /* renamed from: a */
        public /* synthetic */ void mo18324a() {
            C2947k0.m28422a(this);
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        /* renamed from: a */
        public /* synthetic */ void mo18323a(int i) {
            C2947k0.m28421a(this, i);
        }

        @Override // p131c.p161d.p170b.p188c.p199e1.AbstractC2801m.AbstractC2802a
        /* renamed from: a */
        public void mo18362a(AbstractC2801m mVar, long j) {
            if (PlayerControlView.this.f22446m != null) {
                PlayerControlView.this.f22446m.setText(C2885h0.m28664a(PlayerControlView.this.f22448o, PlayerControlView.this.f22449p, j));
            }
        }

        @Override // p131c.p161d.p170b.p188c.p199e1.AbstractC2801m.AbstractC2802a
        /* renamed from: a */
        public void mo18361a(AbstractC2801m mVar, long j, boolean z) {
            PlayerControlView.this.f22421N = false;
            if (!z && PlayerControlView.this.f22414G != null) {
                PlayerControlView playerControlView = PlayerControlView.this;
                playerControlView.m18400b(playerControlView.f22414G, j);
            }
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        /* renamed from: a */
        public void mo18322a(boolean z) {
            PlayerControlView.this.m18374l();
            PlayerControlView.this.m18382h();
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        /* renamed from: b */
        public void mo18321b(int i) {
            PlayerControlView.this.m18382h();
            PlayerControlView.this.m18372m();
        }

        @Override // p131c.p161d.p170b.p188c.p199e1.AbstractC2801m.AbstractC2802a
        /* renamed from: b */
        public void mo18360b(AbstractC2801m mVar, long j) {
            PlayerControlView.this.f22421N = true;
            if (PlayerControlView.this.f22446m != null) {
                PlayerControlView.this.f22446m.setText(C2885h0.m28664a(PlayerControlView.this.f22448o, PlayerControlView.this.f22449p, j));
            }
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        /* renamed from: b */
        public void mo18320b(boolean z) {
            PlayerControlView.this.m18378j();
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        /* renamed from: d */
        public void mo18318d(int i) {
            PlayerControlView.this.m18376k();
            PlayerControlView.this.m18382h();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AbstractC2941j0 j0Var = PlayerControlView.this.f22414G;
            if (j0Var != null) {
                if (PlayerControlView.this.f22437d == view) {
                    PlayerControlView.this.m18401b(j0Var);
                } else if (PlayerControlView.this.f22435c == view) {
                    PlayerControlView.this.m18395c(j0Var);
                } else if (PlayerControlView.this.f22440g == view) {
                    PlayerControlView.this.m18413a(j0Var);
                } else if (PlayerControlView.this.f22441h == view) {
                    PlayerControlView.this.m18391d(j0Var);
                } else if (PlayerControlView.this.f22438e == view) {
                    if (j0Var.mo27498P() == 1) {
                        if (PlayerControlView.this.f22417J != null) {
                            PlayerControlView.this.f22417J.m28438a();
                        }
                    } else if (j0Var.mo27498P() == 4) {
                        PlayerControlView.this.m18412a(j0Var, j0Var.mo27467b(), -9223372036854775807L);
                    }
                    PlayerControlView.this.f22415H.mo28171b(j0Var, true);
                } else if (PlayerControlView.this.f22439f == view) {
                    PlayerControlView.this.f22415H.mo28171b(j0Var, false);
                } else if (PlayerControlView.this.f22442i == view) {
                    PlayerControlView.this.f22415H.mo28174a(j0Var, C2907y.m28502a(j0Var.mo27491Z(), PlayerControlView.this.f22426S));
                } else if (PlayerControlView.this.f22443j == view) {
                    PlayerControlView.this.f22415H.mo28172a(j0Var, !j0Var.mo27462b0());
                }
            }
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        public /* synthetic */ void onLoadingChanged(boolean z) {
            C2947k0.m28413b(this, z);
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        public /* synthetic */ void onPlaybackParametersChanged(C2910h0 h0Var) {
            C2947k0.m28420a(this, h0Var);
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        public /* synthetic */ void onPlayerError(ExoPlaybackException exoPlaybackException) {
            C2947k0.m28417a(this, exoPlaybackException);
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        public void onPlayerStateChanged(boolean z, int i) {
            PlayerControlView.this.m18380i();
            PlayerControlView.this.m18378j();
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        public void onTimelineChanged(AbstractC2965r0 r0Var, int i) {
            PlayerControlView.this.m18382h();
            PlayerControlView.this.m18372m();
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        @Deprecated
        public /* synthetic */ void onTimelineChanged(AbstractC2965r0 r0Var, Object obj, int i) {
            C2947k0.m28418a(this, r0Var, obj, i);
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        public /* synthetic */ void onTracksChanged(TrackGroupArray trackGroupArray, C2783g gVar) {
            C2947k0.m28416a(this, trackGroupArray, gVar);
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.PlayerControlView$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerControlView$c.class */
    public interface AbstractC7191c {
        /* renamed from: a */
        void m18359a(long j, long j2);
    }

    /* renamed from: com.google.android.exoplayer2.ui.PlayerControlView$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerControlView$d.class */
    public interface AbstractC7192d {
        /* renamed from: c */
        void mo18319c(int i);
    }

    static {
        C2683a0.m29296a("goog.exo.ui");
    }

    public PlayerControlView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerControlView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, attributeSet);
    }

    public PlayerControlView(Context context, AttributeSet attributeSet, int i, AttributeSet attributeSet2) {
        super(context, attributeSet, i);
        int i2 = C2797i.exo_player_control_view;
        this.f22422O = 5000;
        this.f22423P = 15000;
        this.f22424Q = 5000;
        this.f22426S = 0;
        this.f22425R = 200;
        this.f22428U = -9223372036854775807L;
        this.f22427T = false;
        int i3 = i2;
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, C2799k.PlayerControlView, 0, 0);
            try {
                this.f22422O = obtainStyledAttributes.getInt(C2799k.PlayerControlView_rewind_increment, this.f22422O);
                this.f22423P = obtainStyledAttributes.getInt(C2799k.PlayerControlView_fastforward_increment, this.f22423P);
                this.f22424Q = obtainStyledAttributes.getInt(C2799k.PlayerControlView_show_timeout, this.f22424Q);
                i3 = obtainStyledAttributes.getResourceId(C2799k.PlayerControlView_controller_layout_id, i2);
                this.f22426S = m18415a(obtainStyledAttributes, this.f22426S);
                this.f22427T = obtainStyledAttributes.getBoolean(C2799k.PlayerControlView_show_shuffle_button, this.f22427T);
                setTimeBarMinUpdateInterval(obtainStyledAttributes.getInt(C2799k.PlayerControlView_time_bar_min_update_interval, this.f22425R));
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f22433b = new CopyOnWriteArrayList<>();
        this.f22450q = new AbstractC2965r0.C2967b();
        this.f22451r = new AbstractC2965r0.C2968c();
        this.f22448o = new StringBuilder();
        this.f22449p = new Formatter(this.f22448o, Locale.getDefault());
        this.f22429V = new long[0];
        this.f22430W = new boolean[0];
        this.f22432a0 = new long[0];
        this.f22434b0 = new boolean[0];
        this.f22431a = new View$OnClickListenerC7190b();
        this.f22415H = new C3006t();
        this.f22452s = new Runnable() { // from class: c.d.b.c.e1.c
            @Override // java.lang.Runnable
            public final void run() {
                PlayerControlView.this.m18378j();
            }
        };
        this.f22453t = new Runnable() { // from class: c.d.b.c.e1.a
            @Override // java.lang.Runnable
            public final void run() {
                PlayerControlView.this.m18417a();
            }
        };
        LayoutInflater.from(context).inflate(i3, this);
        setDescendantFocusability(262144);
        AbstractC2801m mVar = (AbstractC2801m) findViewById(C2795g.exo_progress);
        View findViewById = findViewById(C2795g.exo_progress_placeholder);
        if (mVar != null) {
            this.f22447n = mVar;
        } else if (findViewById != null) {
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2);
            defaultTimeBar.setId(C2795g.exo_progress);
            defaultTimeBar.setLayoutParams(findViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById);
            viewGroup.removeView(findViewById);
            viewGroup.addView(defaultTimeBar, indexOfChild);
            this.f22447n = defaultTimeBar;
        } else {
            this.f22447n = null;
        }
        this.f22445l = (TextView) findViewById(C2795g.exo_duration);
        this.f22446m = (TextView) findViewById(C2795g.exo_position);
        AbstractC2801m mVar2 = this.f22447n;
        if (mVar2 != null) {
            mVar2.mo18426a(this.f22431a);
        }
        View findViewById2 = findViewById(C2795g.exo_play);
        this.f22438e = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(this.f22431a);
        }
        View findViewById3 = findViewById(C2795g.exo_pause);
        this.f22439f = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(this.f22431a);
        }
        View findViewById4 = findViewById(C2795g.exo_prev);
        this.f22435c = findViewById4;
        if (findViewById4 != null) {
            findViewById4.setOnClickListener(this.f22431a);
        }
        View findViewById5 = findViewById(C2795g.exo_next);
        this.f22437d = findViewById5;
        if (findViewById5 != null) {
            findViewById5.setOnClickListener(this.f22431a);
        }
        View findViewById6 = findViewById(C2795g.exo_rew);
        this.f22441h = findViewById6;
        if (findViewById6 != null) {
            findViewById6.setOnClickListener(this.f22431a);
        }
        View findViewById7 = findViewById(C2795g.exo_ffwd);
        this.f22440g = findViewById7;
        if (findViewById7 != null) {
            findViewById7.setOnClickListener(this.f22431a);
        }
        ImageView imageView = (ImageView) findViewById(C2795g.exo_repeat_toggle);
        this.f22442i = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(this.f22431a);
        }
        ImageView imageView2 = (ImageView) findViewById(C2795g.exo_shuffle);
        this.f22443j = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(this.f22431a);
        }
        this.f22444k = findViewById(C2795g.exo_vr);
        setShowVrButton(false);
        Resources resources = context.getResources();
        this.f22410C = resources.getInteger(C2796h.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.f22411D = resources.getInteger(C2796h.exo_media_button_opacity_percentage_disabled) / 100.0f;
        this.f22454u = resources.getDrawable(C2794f.exo_controls_repeat_off);
        this.f22455v = resources.getDrawable(C2794f.exo_controls_repeat_one);
        this.f22456w = resources.getDrawable(C2794f.exo_controls_repeat_all);
        this.f22408A = resources.getDrawable(C2794f.exo_controls_shuffle_on);
        this.f22409B = resources.getDrawable(C2794f.exo_controls_shuffle_off);
        this.f22457x = resources.getString(C2798j.exo_controls_repeat_off_description);
        this.f22458y = resources.getString(C2798j.exo_controls_repeat_one_description);
        this.f22459z = resources.getString(C2798j.exo_controls_repeat_all_description);
        this.f22412E = resources.getString(C2798j.exo_controls_shuffle_on_description);
        this.f22413F = resources.getString(C2798j.exo_controls_shuffle_off_description);
    }

    /* renamed from: a */
    public static int m18415a(TypedArray typedArray, int i) {
        return typedArray.getInt(C2799k.PlayerControlView_repeat_toggle_modes, i);
    }

    /* renamed from: a */
    public static boolean m18416a(int i) {
        return i == 90 || i == 89 || i == 85 || i == 126 || i == 127 || i == 87 || i == 88;
    }

    /* renamed from: a */
    public static boolean m18410a(AbstractC2965r0 r0Var, AbstractC2965r0.C2968c cVar) {
        if (r0Var.mo28338b() > 100) {
            return false;
        }
        int b = r0Var.mo28338b();
        for (int i = 0; i < b; i++) {
            if (r0Var.m28352a(i, cVar).f10693i == -9223372036854775807L) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public void m18417a() {
        if (m18396c()) {
            setVisibility(8);
            Iterator<AbstractC7192d> it = this.f22433b.iterator();
            while (it.hasNext()) {
                it.next().mo18319c(getVisibility());
            }
            removeCallbacks(this.f22452s);
            removeCallbacks(this.f22453t);
            this.f22428U = -9223372036854775807L;
        }
    }

    /* renamed from: a */
    public final void m18413a(AbstractC2941j0 j0Var) {
        int i;
        if (j0Var.mo28391T() && (i = this.f22423P) > 0) {
            m18411a(j0Var, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m18411a(p131c.p161d.p170b.p188c.AbstractC2941j0 r7, long r8) {
        /*
            r6 = this;
            r0 = r7
            long r0 = r0.getCurrentPosition()
            r1 = r8
            long r0 = r0 + r1
            r10 = r0
            r0 = r7
            long r0 = r0.getDuration()
            r12 = r0
            r0 = r10
            r8 = r0
            r0 = r12
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0026
            r0 = r10
            r1 = r12
            long r0 = java.lang.Math.min(r0, r1)
            r8 = r0
        L_0x0026:
            r0 = r8
            r1 = 0
            long r0 = java.lang.Math.max(r0, r1)
            r8 = r0
            r0 = r6
            r1 = r7
            r2 = r7
            int r2 = r2.mo27467b()
            r3 = r8
            boolean r0 = r0.m18412a(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p492ui.PlayerControlView.m18411a(c.d.b.c.j0, long):void");
    }

    /* renamed from: a */
    public void m18409a(AbstractC7192d dVar) {
        this.f22433b.add(dVar);
    }

    /* renamed from: a */
    public final void m18403a(boolean z, View view) {
        if (view != null) {
            view.setEnabled(z);
            view.setAlpha(z ? this.f22410C : this.f22411D);
            view.setVisibility(0);
        }
    }

    /* renamed from: a */
    public boolean m18414a(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        AbstractC2941j0 j0Var = this.f22414G;
        if (j0Var == null || !m18416a(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() != 0) {
            return true;
        }
        if (keyCode == 90) {
            m18413a(j0Var);
            return true;
        } else if (keyCode == 89) {
            m18391d(j0Var);
            return true;
        } else if (keyEvent.getRepeatCount() != 0) {
            return true;
        } else {
            if (keyCode == 85) {
                this.f22415H.mo28171b(j0Var, !j0Var.mo27496R());
                return true;
            } else if (keyCode == 87) {
                m18401b(j0Var);
                return true;
            } else if (keyCode == 88) {
                m18395c(j0Var);
                return true;
            } else if (keyCode == 126) {
                this.f22415H.mo28171b(j0Var, true);
                return true;
            } else if (keyCode != 127) {
                return true;
            } else {
                this.f22415H.mo28171b(j0Var, false);
                return true;
            }
        }
    }

    /* renamed from: a */
    public final boolean m18412a(AbstractC2941j0 j0Var, int i, long j) {
        return this.f22415H.mo28173a(j0Var, i, j);
    }

    /* renamed from: b */
    public final void m18402b() {
        removeCallbacks(this.f22453t);
        if (this.f22424Q > 0) {
            long uptimeMillis = SystemClock.uptimeMillis();
            int i = this.f22424Q;
            this.f22428U = uptimeMillis + i;
            if (this.f22418K) {
                postDelayed(this.f22453t, i);
                return;
            }
            return;
        }
        this.f22428U = -9223372036854775807L;
    }

    /* renamed from: b */
    public final void m18401b(AbstractC2941j0 j0Var) {
        AbstractC2965r0 e = j0Var.mo27455e();
        if (!e.m28344c() && !j0Var.mo27497Q()) {
            int b = j0Var.mo27467b();
            int W = j0Var.mo28389W();
            if (W != -1) {
                m18412a(j0Var, W, -9223372036854775807L);
            } else if (e.m28352a(b, this.f22451r).f10689e) {
                m18412a(j0Var, b, -9223372036854775807L);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r8v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m18400b(p131c.p161d.p170b.p188c.AbstractC2941j0 r7, long r8) {
        /*
            r6 = this;
            r0 = r7
            c.d.b.c.r0 r0 = r0.mo27455e()
            r10 = r0
            r0 = r6
            boolean r0 = r0.f22420M
            if (r0 == 0) goto L_0x0055
            r0 = r10
            boolean r0 = r0.m28344c()
            if (r0 != 0) goto L_0x0055
            r0 = r10
            int r0 = r0.mo28338b()
            r11 = r0
            r0 = 0
            r12 = r0
        L_0x0021:
            r0 = r10
            r1 = r12
            r2 = r6
            c.d.b.c.r0$c r2 = r2.f22451r
            c.d.b.c.r0$c r0 = r0.m28352a(r1, r2)
            long r0 = r0.m28318c()
            r13 = r0
            r0 = r8
            r1 = r13
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x003b
            goto L_0x005d
        L_0x003b:
            r0 = r12
            r1 = r11
            r2 = 1
            int r1 = r1 - r2
            if (r0 != r1) goto L_0x004a
            r0 = r13
            r8 = r0
            goto L_0x005d
        L_0x004a:
            r0 = r8
            r1 = r13
            long r0 = r0 - r1
            r8 = r0
            int r12 = r12 + 1
            goto L_0x0021
        L_0x0055:
            r0 = r7
            int r0 = r0.mo27467b()
            r12 = r0
        L_0x005d:
            r0 = r6
            r1 = r7
            r2 = r12
            r3 = r8
            boolean r0 = r0.m18412a(r1, r2, r3)
            if (r0 != 0) goto L_0x006c
            r0 = r6
            r0.m18378j()
        L_0x006c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p492ui.PlayerControlView.m18400b(c.d.b.c.j0, long):void");
    }

    /* renamed from: b */
    public void m18399b(AbstractC7192d dVar) {
        this.f22433b.remove(dVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0056, code lost:
        if (r0.f10688d == false) goto L_0x0059;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m18395c(p131c.p161d.p170b.p188c.AbstractC2941j0 r7) {
        /*
            r6 = this;
            r0 = r7
            c.d.b.c.r0 r0 = r0.mo27455e()
            r8 = r0
            r0 = r8
            boolean r0 = r0.m28344c()
            if (r0 != 0) goto L_0x006f
            r0 = r7
            boolean r0 = r0.mo27497Q()
            if (r0 == 0) goto L_0x001a
            goto L_0x006f
        L_0x001a:
            r0 = r7
            int r0 = r0.mo27467b()
            r9 = r0
            r0 = r8
            r1 = r9
            r2 = r6
            c.d.b.c.r0$c r2 = r2.f22451r
            c.d.b.c.r0$c r0 = r0.m28352a(r1, r2)
            r0 = r7
            int r0 = r0.mo28390V()
            r10 = r0
            r0 = r10
            r1 = -1
            if (r0 == r1) goto L_0x0067
            r0 = r7
            long r0 = r0.getCurrentPosition()
            r1 = 3000(0xbb8, double:1.482E-320)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0059
            r0 = r6
            c.d.b.c.r0$c r0 = r0.f22451r
            r8 = r0
            r0 = r8
            boolean r0 = r0.f10689e
            if (r0 == 0) goto L_0x0067
            r0 = r8
            boolean r0 = r0.f10688d
            if (r0 != 0) goto L_0x0067
        L_0x0059:
            r0 = r6
            r1 = r7
            r2 = r10
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            boolean r0 = r0.m18412a(r1, r2, r3)
            goto L_0x006f
        L_0x0067:
            r0 = r6
            r1 = r7
            r2 = r9
            r3 = 0
            boolean r0 = r0.m18412a(r1, r2, r3)
        L_0x006f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p492ui.PlayerControlView.m18395c(c.d.b.c.j0):void");
    }

    /* renamed from: c */
    public boolean m18396c() {
        return getVisibility() == 0;
    }

    /* renamed from: d */
    public final void m18392d() {
        View view;
        View view2;
        boolean e = m18388e();
        if (!e && (view2 = this.f22438e) != null) {
            view2.requestFocus();
        } else if (e && (view = this.f22439f) != null) {
            view.requestFocus();
        }
    }

    /* renamed from: d */
    public final void m18391d(AbstractC2941j0 j0Var) {
        int i;
        if (j0Var.mo28391T() && (i = this.f22422O) > 0) {
            m18411a(j0Var, -i);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return m18414a(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            removeCallbacks(this.f22453t);
        } else if (motionEvent.getAction() == 1) {
            m18402b();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    /* renamed from: e */
    public final boolean m18388e() {
        AbstractC2941j0 j0Var = this.f22414G;
        boolean z = true;
        if (j0Var == null || j0Var.mo27498P() == 4 || this.f22414G.mo27498P() == 1 || !this.f22414G.mo27496R()) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public void m18386f() {
        if (!m18396c()) {
            setVisibility(0);
            Iterator<AbstractC7192d> it = this.f22433b.iterator();
            while (it.hasNext()) {
                it.next().mo18319c(getVisibility());
            }
            m18384g();
            m18392d();
        }
        m18402b();
    }

    /* renamed from: g */
    public final void m18384g() {
        m18380i();
        m18382h();
        m18376k();
        m18374l();
        m18372m();
    }

    public AbstractC2941j0 getPlayer() {
        return this.f22414G;
    }

    public int getRepeatToggleModes() {
        return this.f22426S;
    }

    public boolean getShowShuffleButton() {
        return this.f22427T;
    }

    public int getShowTimeoutMs() {
        return this.f22424Q;
    }

    public boolean getShowVrButton() {
        View view = this.f22444k;
        return view != null && view.getVisibility() == 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m18382h() {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p492ui.PlayerControlView.m18382h():void");
    }

    /* renamed from: i */
    public final void m18380i() {
        boolean z;
        if (m18396c() && this.f22418K) {
            boolean e = m18388e();
            View view = this.f22438e;
            int i = 8;
            boolean z2 = true;
            if (view != null) {
                z = (e && view.isFocused()) | false;
                this.f22438e.setVisibility(e ? 8 : 0);
            } else {
                z = false;
            }
            View view2 = this.f22439f;
            boolean z3 = z;
            if (view2 != null) {
                if (e || !view2.isFocused()) {
                    z2 = false;
                }
                z3 = z | z2;
                View view3 = this.f22439f;
                if (e) {
                    i = 0;
                }
                view3.setVisibility(i);
            }
            if (z3) {
                m18392d();
            }
        }
    }

    /* renamed from: j */
    public final void m18378j() {
        long j;
        if (m18396c() && this.f22418K) {
            AbstractC2941j0 j0Var = this.f22414G;
            long j2 = 0;
            if (j0Var != null) {
                j2 = this.f22436c0 + j0Var.mo27461c();
                j = this.f22436c0 + j0Var.mo27457c0();
            } else {
                j = 0;
            }
            TextView textView = this.f22446m;
            if (textView != null && !this.f22421N) {
                textView.setText(C2885h0.m28664a(this.f22448o, this.f22449p, j2));
            }
            AbstractC2801m mVar = this.f22447n;
            if (mVar != null) {
                mVar.setPosition(j2);
                this.f22447n.setBufferedPosition(j);
            }
            AbstractC7191c cVar = this.f22416I;
            if (cVar != null) {
                cVar.m18359a(j2, j);
            }
            removeCallbacks(this.f22452s);
            int P = j0Var == null ? 1 : j0Var.mo27498P();
            long j3 = 1000;
            if (j0Var != null && j0Var.isPlaying()) {
                AbstractC2801m mVar2 = this.f22447n;
                long min = Math.min(mVar2 != null ? mVar2.getPreferredUpdateDelay() : 1000L, 1000 - (j2 % 1000));
                float f = j0Var.mo27453g().f10540a;
                if (f > 0.0f) {
                    j3 = ((float) min) / f;
                }
                postDelayed(this.f22452s, C2885h0.m28649b(j3, this.f22425R, 1000L));
            } else if (P != 4 && P != 1) {
                postDelayed(this.f22452s, 1000L);
            }
        }
    }

    /* renamed from: k */
    public final void m18376k() {
        ImageView imageView;
        if (m18396c() && this.f22418K && (imageView = this.f22442i) != null) {
            if (this.f22426S == 0) {
                imageView.setVisibility(8);
                return;
            }
            AbstractC2941j0 j0Var = this.f22414G;
            if (j0Var == null) {
                m18403a(false, (View) imageView);
                this.f22442i.setImageDrawable(this.f22454u);
                this.f22442i.setContentDescription(this.f22457x);
                return;
            }
            m18403a(true, (View) imageView);
            int Z = j0Var.mo27491Z();
            if (Z == 0) {
                this.f22442i.setImageDrawable(this.f22454u);
                this.f22442i.setContentDescription(this.f22457x);
            } else if (Z == 1) {
                this.f22442i.setImageDrawable(this.f22455v);
                this.f22442i.setContentDescription(this.f22458y);
            } else if (Z == 2) {
                this.f22442i.setImageDrawable(this.f22456w);
                this.f22442i.setContentDescription(this.f22459z);
            }
            this.f22442i.setVisibility(0);
        }
    }

    /* renamed from: l */
    public final void m18374l() {
        ImageView imageView;
        if (m18396c() && this.f22418K && (imageView = this.f22443j) != null) {
            AbstractC2941j0 j0Var = this.f22414G;
            if (!this.f22427T) {
                imageView.setVisibility(8);
            } else if (j0Var == null) {
                m18403a(false, (View) imageView);
                this.f22443j.setImageDrawable(this.f22409B);
                this.f22443j.setContentDescription(this.f22413F);
            } else {
                m18403a(true, (View) imageView);
                this.f22443j.setImageDrawable(j0Var.mo27462b0() ? this.f22408A : this.f22409B);
                this.f22443j.setContentDescription(j0Var.mo27462b0() ? this.f22412E : this.f22413F);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1, types: [long] */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m18372m() {
        /*
            Method dump skipped, instructions count: 617
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p492ui.PlayerControlView.m18372m():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f22418K = true;
        long j = this.f22428U;
        if (j != -9223372036854775807L) {
            long uptimeMillis = j - SystemClock.uptimeMillis();
            if (uptimeMillis <= 0) {
                m18417a();
            } else {
                postDelayed(this.f22453t, uptimeMillis);
            }
        } else if (m18396c()) {
            m18402b();
        }
        m18384g();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f22418K = false;
        removeCallbacks(this.f22452s);
        removeCallbacks(this.f22453t);
    }

    public void setControlDispatcher(AbstractC2969s sVar) {
        AbstractC2969s sVar2 = sVar;
        if (sVar == null) {
            sVar2 = new C3006t();
        }
        this.f22415H = sVar2;
    }

    public void setFastForwardIncrementMs(int i) {
        this.f22423P = i;
        m18382h();
    }

    public void setPlaybackPreparer(AbstractC2939i0 i0Var) {
        this.f22417J = i0Var;
    }

    public void setPlayer(AbstractC2941j0 j0Var) {
        C2877e.m28731b(Looper.myLooper() == Looper.getMainLooper());
        boolean z = true;
        if (j0Var != null) {
            z = j0Var.mo27468a0() == Looper.getMainLooper();
        }
        C2877e.m28734a(z);
        AbstractC2941j0 j0Var2 = this.f22414G;
        if (j0Var2 != j0Var) {
            if (j0Var2 != null) {
                j0Var2.mo27465b(this.f22431a);
            }
            this.f22414G = j0Var;
            if (j0Var != null) {
                j0Var.mo27478a(this.f22431a);
            }
            m18384g();
        }
    }

    public void setProgressUpdateListener(AbstractC7191c cVar) {
        this.f22416I = cVar;
    }

    public void setRepeatToggleModes(int i) {
        this.f22426S = i;
        AbstractC2941j0 j0Var = this.f22414G;
        if (j0Var != null) {
            int Z = j0Var.mo27491Z();
            if (i == 0 && Z != 0) {
                this.f22415H.mo28174a(this.f22414G, 0);
            } else if (i == 1 && Z == 2) {
                this.f22415H.mo28174a(this.f22414G, 1);
            } else if (i == 2 && Z == 1) {
                this.f22415H.mo28174a(this.f22414G, 2);
            }
        }
        m18376k();
    }

    public void setRewindIncrementMs(int i) {
        this.f22422O = i;
        m18382h();
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        this.f22419L = z;
        m18372m();
    }

    public void setShowShuffleButton(boolean z) {
        this.f22427T = z;
        m18374l();
    }

    public void setShowTimeoutMs(int i) {
        this.f22424Q = i;
        if (m18396c()) {
            m18402b();
        }
    }

    public void setShowVrButton(boolean z) {
        View view = this.f22444k;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
    }

    public void setTimeBarMinUpdateInterval(int i) {
        this.f22425R = C2885h0.m28685a(i, 16, 1000);
    }

    public void setVrButtonListener(View.OnClickListener onClickListener) {
        View view = this.f22444k;
        if (view != null) {
            view.setOnClickListener(onClickListener);
        }
    }
}
