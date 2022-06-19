package com.google.android.exoplayer2.p260ui;

import android.annotation.SuppressLint;
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
import com.google.android.exoplayer2.AbstractC5104m0;
import com.google.android.exoplayer2.AbstractC5162o0;
import com.google.android.exoplayer2.AbstractC5578w;
import com.google.android.exoplayer2.AbstractC5585y0;
import com.google.android.exoplayer2.C5053e0;
import com.google.android.exoplayer2.C5102l0;
import com.google.android.exoplayer2.C5160n0;
import com.google.android.exoplayer2.C5543v;
import com.google.android.exoplayer2.C5580x;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.p260ui.AbstractC5444m;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.C5411g;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5539y;
import java.util.Arrays;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: com.google.android.exoplayer2.ui.PlayerControlView */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerControlView.class */
public class PlayerControlView extends FrameLayout {

    /* renamed from: A */
    private final String f17454A;

    /* renamed from: B */
    private final String f17455B;

    /* renamed from: C */
    private final String f17456C;

    /* renamed from: D */
    private final Drawable f17457D;

    /* renamed from: E */
    private final Drawable f17458E;

    /* renamed from: F */
    private final float f17459F;

    /* renamed from: G */
    private final float f17460G;

    /* renamed from: H */
    private final String f17461H;

    /* renamed from: I */
    private final String f17462I;

    /* renamed from: J */
    private AbstractC5162o0 f17463J;

    /* renamed from: K */
    private AbstractC5578w f17464K;

    /* renamed from: L */
    private AbstractC5425c f17465L;

    /* renamed from: M */
    private AbstractC5104m0 f17466M;

    /* renamed from: N */
    private boolean f17467N;

    /* renamed from: O */
    private boolean f17468O;

    /* renamed from: P */
    private boolean f17469P;

    /* renamed from: Q */
    private boolean f17470Q;

    /* renamed from: R */
    private int f17471R;

    /* renamed from: S */
    private int f17472S;

    /* renamed from: T */
    private int f17473T;

    /* renamed from: U */
    private int f17474U;

    /* renamed from: V */
    private int f17475V;

    /* renamed from: W */
    private boolean f17476W;

    /* renamed from: a0 */
    private long f17477a0;

    /* renamed from: b0 */
    private long[] f17478b0;

    /* renamed from: c0 */
    private boolean[] f17479c0;

    /* renamed from: d */
    private final View$OnClickListenerC5424b f17480d;

    /* renamed from: d0 */
    private long[] f17481d0;

    /* renamed from: e */
    private final CopyOnWriteArrayList<AbstractC5426d> f17482e;

    /* renamed from: e0 */
    private boolean[] f17483e0;

    /* renamed from: f */
    private final View f17484f;

    /* renamed from: f0 */
    private long f17485f0;

    /* renamed from: g */
    private final View f17486g;

    /* renamed from: h */
    private final View f17487h;

    /* renamed from: i */
    private final View f17488i;

    /* renamed from: j */
    private final View f17489j;

    /* renamed from: k */
    private final View f17490k;

    /* renamed from: l */
    private final ImageView f17491l;

    /* renamed from: m */
    private final ImageView f17492m;

    /* renamed from: n */
    private final View f17493n;

    /* renamed from: o */
    private final TextView f17494o;

    /* renamed from: p */
    private final TextView f17495p;

    /* renamed from: q */
    private final AbstractC5444m f17496q;

    /* renamed from: r */
    private final StringBuilder f17497r;

    /* renamed from: s */
    private final Formatter f17498s;

    /* renamed from: t */
    private final AbstractC5585y0.C5587b f17499t;

    /* renamed from: u */
    private final AbstractC5585y0.C5588c f17500u;

    /* renamed from: v */
    private final Runnable f17501v;

    /* renamed from: w */
    private final Runnable f17502w;

    /* renamed from: x */
    private final Drawable f17503x;

    /* renamed from: y */
    private final Drawable f17504y;

    /* renamed from: z */
    private final Drawable f17505z;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.ui.PlayerControlView$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerControlView$b.class */
    public final class View$OnClickListenerC5424b implements AbstractC5162o0.AbstractC5163a, AbstractC5444m.AbstractC5445a, View.OnClickListener {
        private View$OnClickListenerC5424b() {
            PlayerControlView.this = r4;
        }

        @Override // com.google.android.exoplayer2.p260ui.AbstractC5444m.AbstractC5445a
        /* renamed from: a */
        public void mo19092a(AbstractC5444m abstractC5444m, long j) {
            if (PlayerControlView.this.f17495p != null) {
                PlayerControlView.this.f17495p.setText(C5515h0.m18860L(PlayerControlView.this.f17497r, PlayerControlView.this.f17498s, j));
            }
        }

        @Override // com.google.android.exoplayer2.p260ui.AbstractC5444m.AbstractC5445a
        /* renamed from: b */
        public void mo19091b(AbstractC5444m abstractC5444m, long j, boolean z) {
            PlayerControlView.this.f17470Q = false;
            if (z || PlayerControlView.this.f17463J == null) {
                return;
            }
            PlayerControlView playerControlView = PlayerControlView.this;
            playerControlView.m19203T(playerControlView.f17463J, j);
        }

        @Override // com.google.android.exoplayer2.p260ui.AbstractC5444m.AbstractC5445a
        /* renamed from: c */
        public void mo19090c(AbstractC5444m abstractC5444m, long j) {
            PlayerControlView.this.f17470Q = true;
            if (PlayerControlView.this.f17495p != null) {
                PlayerControlView.this.f17495p.setText(C5515h0.m18860L(PlayerControlView.this.f17497r, PlayerControlView.this.f17498s, j));
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AbstractC5162o0 abstractC5162o0 = PlayerControlView.this.f17463J;
            if (abstractC5162o0 == null) {
                return;
            }
            if (PlayerControlView.this.f17486g == view) {
                PlayerControlView.this.m19210M(abstractC5162o0);
            } else if (PlayerControlView.this.f17484f == view) {
                PlayerControlView.this.m19209N(abstractC5162o0);
            } else if (PlayerControlView.this.f17489j == view) {
                PlayerControlView.this.m19217F(abstractC5162o0);
            } else if (PlayerControlView.this.f17490k == view) {
                PlayerControlView.this.m19206Q(abstractC5162o0);
            } else if (PlayerControlView.this.f17487h == view) {
                if (abstractC5162o0.mo18479B() == 1) {
                    if (PlayerControlView.this.f17466M != null) {
                        PlayerControlView.this.f17466M.m20514a();
                    }
                } else if (abstractC5162o0.mo18479B() == 4) {
                    PlayerControlView.this.m19205R(abstractC5162o0, abstractC5162o0.mo18410u(), -9223372036854775807L);
                }
                PlayerControlView.this.f17464K.mo18482d(abstractC5162o0, true);
            } else if (PlayerControlView.this.f17488i == view) {
                PlayerControlView.this.f17464K.mo18482d(abstractC5162o0, false);
            } else if (PlayerControlView.this.f17491l == view) {
                PlayerControlView.this.f17464K.mo18485a(abstractC5162o0, C5539y.m18639a(abstractC5162o0.mo18462K(), PlayerControlView.this.f17475V));
            } else if (PlayerControlView.this.f17492m != view) {
            } else {
                PlayerControlView.this.f17464K.mo18483c(abstractC5162o0, !abstractC5162o0.mo18458N());
            }
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public void onIsPlayingChanged(boolean z) {
            PlayerControlView.this.m19195a0();
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onLoadingChanged(boolean z) {
            C5160n0.m20285b(this, z);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onPlaybackParametersChanged(C5102l0 c5102l0) {
            C5160n0.m20284c(this, c5102l0);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i) {
            C5160n0.m20283d(this, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onPlayerError(ExoPlaybackException exoPlaybackException) {
            C5160n0.m20282e(this, exoPlaybackException);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public void onPlayerStateChanged(boolean z, int i) {
            PlayerControlView.this.m19197Z();
            PlayerControlView.this.m19195a0();
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public void onPositionDiscontinuity(int i) {
            PlayerControlView.this.m19198Y();
            PlayerControlView.this.m19189d0();
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public void onRepeatModeChanged(int i) {
            PlayerControlView.this.m19193b0();
            PlayerControlView.this.m19198Y();
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onSeekProcessed() {
            C5160n0.m20279h(this);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public void onShuffleModeEnabledChanged(boolean z) {
            PlayerControlView.this.m19191c0();
            PlayerControlView.this.m19198Y();
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public void onTimelineChanged(AbstractC5585y0 abstractC5585y0, int i) {
            PlayerControlView.this.m19198Y();
            PlayerControlView.this.m19189d0();
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onTimelineChanged(AbstractC5585y0 abstractC5585y0, Object obj, int i) {
            C5160n0.m20276k(this, abstractC5585y0, obj, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onTracksChanged(TrackGroupArray trackGroupArray, C5411g c5411g) {
            C5160n0.m20275l(this, trackGroupArray, c5411g);
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.PlayerControlView$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerControlView$c.class */
    public interface AbstractC5425c {
        /* renamed from: a */
        void m19166a(long j, long j2);
    }

    /* renamed from: com.google.android.exoplayer2.ui.PlayerControlView$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerControlView$d.class */
    public interface AbstractC5426d {
        /* renamed from: a */
        void mo19126a(int i);
    }

    static {
        C5053e0.m20746a("goog.exo.ui");
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
        int i2 = C5440i.exo_player_control_view;
        this.f17471R = 5000;
        this.f17472S = 15000;
        this.f17473T = 5000;
        this.f17475V = 0;
        this.f17474U = 200;
        this.f17477a0 = -9223372036854775807L;
        this.f17476W = false;
        int i3 = i2;
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, C5442k.PlayerControlView, 0, 0);
            try {
                this.f17471R = obtainStyledAttributes.getInt(C5442k.PlayerControlView_rewind_increment, this.f17471R);
                this.f17472S = obtainStyledAttributes.getInt(C5442k.PlayerControlView_fastforward_increment, this.f17472S);
                this.f17473T = obtainStyledAttributes.getInt(C5442k.PlayerControlView_show_timeout, this.f17473T);
                i3 = obtainStyledAttributes.getResourceId(C5442k.PlayerControlView_controller_layout_id, i2);
                this.f17475V = m19216G(obtainStyledAttributes, this.f17475V);
                this.f17476W = obtainStyledAttributes.getBoolean(C5442k.PlayerControlView_show_shuffle_button, this.f17476W);
                setTimeBarMinUpdateInterval(obtainStyledAttributes.getInt(C5442k.PlayerControlView_time_bar_min_update_interval, this.f17474U));
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f17482e = new CopyOnWriteArrayList<>();
        this.f17499t = new AbstractC5585y0.C5587b();
        this.f17500u = new AbstractC5585y0.C5588c();
        StringBuilder sb = new StringBuilder();
        this.f17497r = sb;
        this.f17498s = new Formatter(sb, Locale.getDefault());
        this.f17478b0 = new long[0];
        this.f17479c0 = new boolean[0];
        this.f17481d0 = new long[0];
        this.f17483e0 = new boolean[0];
        View$OnClickListenerC5424b view$OnClickListenerC5424b = new View$OnClickListenerC5424b();
        this.f17480d = view$OnClickListenerC5424b;
        this.f17464K = new C5580x();
        this.f17501v = new Runnable() { // from class: com.google.android.exoplayer2.ui.c
            @Override // java.lang.Runnable
            public final void run() {
                PlayerControlView.this.m19195a0();
            }
        };
        this.f17502w = new Runnable() { // from class: com.google.android.exoplayer2.ui.a
            @Override // java.lang.Runnable
            public final void run() {
                PlayerControlView.this.m19215H();
            }
        };
        LayoutInflater.from(context).inflate(i3, this);
        setDescendantFocusability(262144);
        int i4 = C5438g.exo_progress;
        AbstractC5444m abstractC5444m = (AbstractC5444m) findViewById(i4);
        View findViewById = findViewById(C5438g.exo_progress_placeholder);
        if (abstractC5444m != null) {
            this.f17496q = abstractC5444m;
        } else if (findViewById != null) {
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2);
            defaultTimeBar.setId(i4);
            defaultTimeBar.setLayoutParams(findViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById);
            viewGroup.removeView(findViewById);
            viewGroup.addView(defaultTimeBar, indexOfChild);
            this.f17496q = defaultTimeBar;
        } else {
            this.f17496q = null;
        }
        this.f17494o = (TextView) findViewById(C5438g.exo_duration);
        this.f17495p = (TextView) findViewById(C5438g.exo_position);
        AbstractC5444m abstractC5444m2 = this.f17496q;
        if (abstractC5444m2 != null) {
            abstractC5444m2.mo19093a(view$OnClickListenerC5424b);
        }
        View findViewById2 = findViewById(C5438g.exo_play);
        this.f17487h = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(view$OnClickListenerC5424b);
        }
        View findViewById3 = findViewById(C5438g.exo_pause);
        this.f17488i = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(view$OnClickListenerC5424b);
        }
        View findViewById4 = findViewById(C5438g.exo_prev);
        this.f17484f = findViewById4;
        if (findViewById4 != null) {
            findViewById4.setOnClickListener(view$OnClickListenerC5424b);
        }
        View findViewById5 = findViewById(C5438g.exo_next);
        this.f17486g = findViewById5;
        if (findViewById5 != null) {
            findViewById5.setOnClickListener(view$OnClickListenerC5424b);
        }
        View findViewById6 = findViewById(C5438g.exo_rew);
        this.f17490k = findViewById6;
        if (findViewById6 != null) {
            findViewById6.setOnClickListener(view$OnClickListenerC5424b);
        }
        View findViewById7 = findViewById(C5438g.exo_ffwd);
        this.f17489j = findViewById7;
        if (findViewById7 != null) {
            findViewById7.setOnClickListener(view$OnClickListenerC5424b);
        }
        ImageView imageView = (ImageView) findViewById(C5438g.exo_repeat_toggle);
        this.f17491l = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(view$OnClickListenerC5424b);
        }
        ImageView imageView2 = (ImageView) findViewById(C5438g.exo_shuffle);
        this.f17492m = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(view$OnClickListenerC5424b);
        }
        this.f17493n = findViewById(C5438g.exo_vr);
        setShowVrButton(false);
        Resources resources = context.getResources();
        this.f17459F = resources.getInteger(C5439h.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.f17460G = resources.getInteger(C5439h.exo_media_button_opacity_percentage_disabled) / 100.0f;
        this.f17503x = resources.getDrawable(C5437f.exo_controls_repeat_off);
        this.f17504y = resources.getDrawable(C5437f.exo_controls_repeat_one);
        this.f17505z = resources.getDrawable(C5437f.exo_controls_repeat_all);
        this.f17457D = resources.getDrawable(C5437f.exo_controls_shuffle_on);
        this.f17458E = resources.getDrawable(C5437f.exo_controls_shuffle_off);
        this.f17454A = resources.getString(C5441j.exo_controls_repeat_off_description);
        this.f17455B = resources.getString(C5441j.exo_controls_repeat_one_description);
        this.f17456C = resources.getString(C5441j.exo_controls_repeat_all_description);
        this.f17461H = resources.getString(C5441j.exo_controls_shuffle_on_description);
        this.f17462I = resources.getString(C5441j.exo_controls_shuffle_off_description);
    }

    /* renamed from: D */
    private static boolean m19219D(AbstractC5585y0 abstractC5585y0, AbstractC5585y0.C5588c c5588c) {
        if (abstractC5585y0.mo18351p() > 100) {
            return false;
        }
        int mo18351p = abstractC5585y0.mo18351p();
        for (int i = 0; i < mo18351p; i++) {
            if (abstractC5585y0.m18359n(i, c5588c).f18192m == -9223372036854775807L) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: F */
    public void m19217F(AbstractC5162o0 abstractC5162o0) {
        int i;
        if (!abstractC5162o0.mo19697m() || (i = this.f17472S) <= 0) {
            return;
        }
        m19204S(abstractC5162o0, i);
    }

    /* renamed from: G */
    private static int m19216G(TypedArray typedArray, int i) {
        return typedArray.getInt(C5442k.PlayerControlView_repeat_toggle_modes, i);
    }

    /* renamed from: I */
    private void m19214I() {
        removeCallbacks(this.f17502w);
        if (this.f17473T <= 0) {
            this.f17477a0 = -9223372036854775807L;
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        int i = this.f17473T;
        this.f17477a0 = uptimeMillis + i;
        if (!this.f17467N) {
            return;
        }
        postDelayed(this.f17502w, i);
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: J */
    private static boolean m19213J(int i) {
        return i == 90 || i == 89 || i == 85 || i == 126 || i == 127 || i == 87 || i == 88;
    }

    /* renamed from: M */
    public void m19210M(AbstractC5162o0 abstractC5162o0) {
        AbstractC5585y0 mo18460L = abstractC5162o0.mo18460L();
        if (mo18460L.m18358q() || abstractC5162o0.mo18441e()) {
            return;
        }
        int mo18410u = abstractC5162o0.mo18410u();
        int mo19702F = abstractC5162o0.mo19702F();
        if (mo19702F != -1) {
            m19205R(abstractC5162o0, mo19702F, -9223372036854775807L);
        } else if (!mo18460L.m18359n(mo18410u, this.f17500u).f18187h) {
        } else {
            m19205R(abstractC5162o0, mo18410u, -9223372036854775807L);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0056, code lost:
        if (r0.f18186g == false) goto L14;
     */
    /* renamed from: N */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m19209N(com.google.android.exoplayer2.AbstractC5162o0 r7) {
        /*
            r6 = this;
            r0 = r7
            com.google.android.exoplayer2.y0 r0 = r0.mo18460L()
            r8 = r0
            r0 = r8
            boolean r0 = r0.m18358q()
            if (r0 != 0) goto L6f
            r0 = r7
            boolean r0 = r0.mo18441e()
            if (r0 == 0) goto L1a
            goto L6f
        L1a:
            r0 = r7
            int r0 = r0.mo18410u()
            r9 = r0
            r0 = r8
            r1 = r9
            r2 = r6
            com.google.android.exoplayer2.y0$c r2 = r2.f17500u
            com.google.android.exoplayer2.y0$c r0 = r0.m18359n(r1, r2)
            r0 = r7
            int r0 = r0.mo19696z()
            r10 = r0
            r0 = r10
            r1 = -1
            if (r0 == r1) goto L67
            r0 = r7
            long r0 = r0.getCurrentPosition()
            r1 = 3000(0xbb8, double:1.482E-320)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L59
            r0 = r6
            com.google.android.exoplayer2.y0$c r0 = r0.f17500u
            r8 = r0
            r0 = r8
            boolean r0 = r0.f18187h
            if (r0 == 0) goto L67
            r0 = r8
            boolean r0 = r0.f18186g
            if (r0 != 0) goto L67
        L59:
            r0 = r6
            r1 = r7
            r2 = r10
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            boolean r0 = r0.m19205R(r1, r2, r3)
            goto L6f
        L67:
            r0 = r6
            r1 = r7
            r2 = r9
            r3 = 0
            boolean r0 = r0.m19205R(r1, r2, r3)
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p260ui.PlayerControlView.m19209N(com.google.android.exoplayer2.o0):void");
    }

    /* renamed from: P */
    private void m19207P() {
        View view;
        View view2;
        boolean m19201V = m19201V();
        if (!m19201V && (view2 = this.f17487h) != null) {
            view2.requestFocus();
        } else if (!m19201V || (view = this.f17488i) == null) {
        } else {
            view.requestFocus();
        }
    }

    /* renamed from: Q */
    public void m19206Q(AbstractC5162o0 abstractC5162o0) {
        int i;
        if (!abstractC5162o0.mo19697m() || (i = this.f17471R) <= 0) {
            return;
        }
        m19204S(abstractC5162o0, -i);
    }

    /* renamed from: R */
    public boolean m19205R(AbstractC5162o0 abstractC5162o0, int i, long j) {
        return this.f17464K.mo18484b(abstractC5162o0, i, j);
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* renamed from: S */
    private void m19204S(AbstractC5162o0 abstractC5162o0, long j) {
        ?? currentPosition = abstractC5162o0.getCurrentPosition() + j;
        long duration = abstractC5162o0.getDuration();
        char c = currentPosition;
        if (duration != -9223372036854775807L) {
            c = Math.min((long) currentPosition, duration);
        }
        m19205R(abstractC5162o0, abstractC5162o0.mo18410u(), Math.max((long) c, 0L));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.google.android.exoplayer2.ui.PlayerControlView] */
    /* JADX WARN: Type inference failed for: r8v0, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* renamed from: T */
    public void m19203T(AbstractC5162o0 abstractC5162o0, long j) {
        int i;
        AbstractC5585y0 mo18460L = abstractC5162o0.mo18460L();
        if (this.f17469P && !mo18460L.m18358q()) {
            int mo18351p = mo18460L.mo18351p();
            i = 0;
            j = j;
            while (true) {
                ?? m18332c = mo18460L.m18359n(i, this.f17500u).m18332c();
                if (j < m18332c) {
                    break;
                } else if (i == mo18351p - 1) {
                    j = m18332c;
                    break;
                } else {
                    j -= m18332c;
                    i++;
                }
            }
        } else {
            i = abstractC5162o0.mo18410u();
        }
        if (!m19205R(abstractC5162o0, i, j)) {
            m19195a0();
        }
    }

    /* renamed from: U */
    private void m19202U(boolean z, View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z);
        view.setAlpha(z ? this.f17459F : this.f17460G);
        view.setVisibility(0);
    }

    /* renamed from: V */
    private boolean m19201V() {
        AbstractC5162o0 abstractC5162o0 = this.f17463J;
        boolean z = true;
        if (abstractC5162o0 == null || abstractC5162o0.mo18479B() == 4 || this.f17463J.mo18479B() == 1 || !this.f17463J.mo18435h()) {
            z = false;
        }
        return z;
    }

    /* renamed from: X */
    private void m19199X() {
        m19197Z();
        m19198Y();
        m19193b0();
        m19191c0();
        m19189d0();
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    /* renamed from: Y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m19198Y() {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p260ui.PlayerControlView.m19198Y():void");
    }

    /* renamed from: Z */
    public void m19197Z() {
        boolean z;
        if (!m19212K() || !this.f17467N) {
            return;
        }
        boolean m19201V = m19201V();
        View view = this.f17487h;
        if (view != null) {
            boolean z2 = (m19201V && view.isFocused()) | false;
            this.f17487h.setVisibility(m19201V ? 8 : 0);
            z = z2;
        } else {
            z = false;
        }
        View view2 = this.f17488i;
        boolean z3 = z;
        if (view2 != null) {
            z3 = z | (!m19201V && view2.isFocused());
            View view3 = this.f17488i;
            int i = 8;
            if (m19201V) {
                i = 0;
            }
            view3.setVisibility(i);
        }
        if (!z3) {
            return;
        }
        m19207P();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.google.android.exoplayer2.ui.m] */
    /* JADX WARN: Type inference failed for: r0v15, types: [com.google.android.exoplayer2.ui.PlayerControlView$c] */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v39 */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [com.google.android.exoplayer2.ui.m] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r1v15, types: [long] */
    /* JADX WARN: Type inference failed for: r1v16, types: [long] */
    /* JADX WARN: Type inference failed for: r1v17, types: [long] */
    /* JADX WARN: Type inference failed for: r2v1, types: [long] */
    /* JADX WARN: Type inference failed for: r2v5, types: [long] */
    /* JADX WARN: Type inference failed for: r3v1, types: [long] */
    /* renamed from: a0 */
    public void m19195a0() {
        ?? r13;
        if (!m19212K() || !this.f17467N) {
            return;
        }
        AbstractC5162o0 abstractC5162o0 = this.f17463J;
        ?? r11 = 0;
        if (abstractC5162o0 != null) {
            r11 = this.f17485f0 + abstractC5162o0.mo18402y();
            r13 = this.f17485f0 + abstractC5162o0.mo18457O();
        } else {
            r13 = 0;
        }
        TextView textView = this.f17495p;
        if (textView != null && !this.f17470Q) {
            textView.setText(C5515h0.m18860L(this.f17497r, this.f17498s, r11));
        }
        ?? r0 = this.f17496q;
        if (r0 != 0) {
            r0.setPosition(r11);
            this.f17496q.setBufferedPosition(r13);
        }
        ?? r02 = this.f17465L;
        if (r02 != 0) {
            r02.m19166a(r11, r13);
        }
        removeCallbacks(this.f17501v);
        int mo18479B = abstractC5162o0 == null ? 1 : abstractC5162o0.mo18479B();
        if (abstractC5162o0 == null || !abstractC5162o0.isPlaying()) {
            if (mo18479B == 4 || mo18479B == 1) {
                return;
            }
            postDelayed(this.f17501v, 1000L);
            return;
        }
        AbstractC5444m abstractC5444m = this.f17496q;
        long min = Math.min((abstractC5444m != null ? abstractC5444m.getPreferredUpdateDelay() : true) == true ? 1L : 0L, 1000 - (r11 % 1000));
        float f = abstractC5162o0.mo18443d().f15985b;
        ?? r112 = true;
        if (f > 0.0f) {
            r112 = ((float) min) / f;
        }
        postDelayed(this.f17501v, C5515h0.m18817o(r112 == true ? 1L : 0L, this.f17474U, 1000L));
    }

    /* renamed from: b0 */
    public void m19193b0() {
        ImageView imageView;
        if (!m19212K() || !this.f17467N || (imageView = this.f17491l) == null) {
            return;
        }
        if (this.f17475V == 0) {
            imageView.setVisibility(8);
            return;
        }
        AbstractC5162o0 abstractC5162o0 = this.f17463J;
        if (abstractC5162o0 == null) {
            m19202U(false, imageView);
            this.f17491l.setImageDrawable(this.f17503x);
            this.f17491l.setContentDescription(this.f17454A);
            return;
        }
        m19202U(true, imageView);
        int mo18462K = abstractC5162o0.mo18462K();
        if (mo18462K == 0) {
            this.f17491l.setImageDrawable(this.f17503x);
            this.f17491l.setContentDescription(this.f17454A);
        } else if (mo18462K == 1) {
            this.f17491l.setImageDrawable(this.f17504y);
            this.f17491l.setContentDescription(this.f17455B);
        } else if (mo18462K == 2) {
            this.f17491l.setImageDrawable(this.f17505z);
            this.f17491l.setContentDescription(this.f17456C);
        }
        this.f17491l.setVisibility(0);
    }

    /* renamed from: c0 */
    public void m19191c0() {
        ImageView imageView;
        if (!m19212K() || !this.f17467N || (imageView = this.f17492m) == null) {
            return;
        }
        AbstractC5162o0 abstractC5162o0 = this.f17463J;
        if (!this.f17476W) {
            imageView.setVisibility(8);
        } else if (abstractC5162o0 == null) {
            m19202U(false, imageView);
            this.f17492m.setImageDrawable(this.f17458E);
            this.f17492m.setContentDescription(this.f17462I);
        } else {
            m19202U(true, imageView);
            this.f17492m.setImageDrawable(abstractC5162o0.mo18458N() ? this.f17457D : this.f17458E);
            this.f17492m.setContentDescription(abstractC5162o0.mo18458N() ? this.f17461H : this.f17462I);
        }
    }

    /* JADX WARN: Type inference failed for: r0v105, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* renamed from: d0 */
    public void m19189d0() {
        int i;
        AbstractC5585y0.C5588c c5588c;
        int i2;
        AbstractC5162o0 abstractC5162o0 = this.f17463J;
        if (abstractC5162o0 == null) {
            return;
        }
        this.f17469P = this.f17468O && m19219D(abstractC5162o0.mo18460L(), this.f17500u);
        boolean z = false;
        this.f17485f0 = 0L;
        AbstractC5585y0 mo18460L = abstractC5162o0.mo18460L();
        if (!mo18460L.m18358q()) {
            int mo18410u = abstractC5162o0.mo18410u();
            boolean z2 = this.f17469P;
            int i3 = z2 ? 0 : mo18410u;
            int mo18351p = z2 ? mo18460L.mo18351p() - 1 : mo18410u;
            z = false;
            i = 0;
            while (true) {
                if (i3 > mo18351p) {
                    break;
                }
                if (i3 == mo18410u) {
                    this.f17485f0 = C5543v.m18629b(z ? 1L : 0L);
                }
                mo18460L.m18359n(i3, this.f17500u);
                AbstractC5585y0.C5588c c5588c2 = this.f17500u;
                if (c5588c2.f18192m == -9223372036854775807L) {
                    C5508e.m18910f(!this.f17469P);
                    break;
                }
                int i4 = c5588c2.f18189j;
                while (true) {
                    c5588c = this.f17500u;
                    if (i4 <= c5588c.f18190k) {
                        mo18460L.m18364f(i4, this.f17499t);
                        int m18348c = this.f17499t.m18348c();
                        int i5 = 0;
                        while (i5 < m18348c) {
                            ?? m18345f = this.f17499t.m18345f(i5);
                            char c = m18345f;
                            if (m18345f == Long.MIN_VALUE) {
                                char c2 = this.f17499t.f18177d;
                                int i6 = (c2 > (-9223372036854775807L) ? 1 : (c2 == (-9223372036854775807L) ? 0 : -1));
                                c = c2;
                                if (i6 == 0) {
                                    i2 = i;
                                    i5++;
                                    i = i2;
                                }
                            }
                            long m18339l = c + this.f17499t.m18339l();
                            i2 = i;
                            if (m18339l >= 0) {
                                long[] jArr = this.f17478b0;
                                if (i == jArr.length) {
                                    int length = jArr.length == 0 ? 1 : jArr.length * 2;
                                    this.f17478b0 = Arrays.copyOf(jArr, length);
                                    this.f17479c0 = Arrays.copyOf(this.f17479c0, length);
                                }
                                this.f17478b0[i] = C5543v.m18629b((z ? 1L : 0L) + m18339l);
                                this.f17479c0[i] = this.f17499t.m18338m(i5);
                                i2 = i + 1;
                            }
                            i5++;
                            i = i2;
                        }
                        i4++;
                    }
                }
                z = (z ? 1L : 0L) + c5588c.f18192m;
                i3++;
            }
        } else {
            i = 0;
        }
        long m18629b = C5543v.m18629b(z ? 1L : 0L);
        TextView textView = this.f17494o;
        if (textView != null) {
            textView.setText(C5515h0.m18860L(this.f17497r, this.f17498s, m18629b));
        }
        AbstractC5444m abstractC5444m = this.f17496q;
        if (abstractC5444m != null) {
            abstractC5444m.setDuration(m18629b);
            int length2 = this.f17481d0.length;
            int i7 = i + length2;
            long[] jArr2 = this.f17478b0;
            if (i7 > jArr2.length) {
                this.f17478b0 = Arrays.copyOf(jArr2, i7);
                this.f17479c0 = Arrays.copyOf(this.f17479c0, i7);
            }
            System.arraycopy(this.f17481d0, 0, this.f17478b0, i, length2);
            System.arraycopy(this.f17483e0, 0, this.f17479c0, i, length2);
            this.f17496q.setAdGroupTimesMs(this.f17478b0, this.f17479c0, i7);
        }
        m19195a0();
    }

    /* renamed from: C */
    public void m19220C(AbstractC5426d abstractC5426d) {
        this.f17482e.add(abstractC5426d);
    }

    /* renamed from: E */
    public boolean m19218E(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        AbstractC5162o0 abstractC5162o0 = this.f17463J;
        if (abstractC5162o0 == null || !m19213J(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() != 0) {
            return true;
        }
        if (keyCode == 90) {
            m19217F(abstractC5162o0);
            return true;
        } else if (keyCode == 89) {
            m19206Q(abstractC5162o0);
            return true;
        } else if (keyEvent.getRepeatCount() != 0) {
            return true;
        } else {
            if (keyCode == 85) {
                this.f17464K.mo18482d(abstractC5162o0, !abstractC5162o0.mo18435h());
                return true;
            } else if (keyCode == 87) {
                m19210M(abstractC5162o0);
                return true;
            } else if (keyCode == 88) {
                m19209N(abstractC5162o0);
                return true;
            } else if (keyCode == 126) {
                this.f17464K.mo18482d(abstractC5162o0, true);
                return true;
            } else if (keyCode != 127) {
                return true;
            } else {
                this.f17464K.mo18482d(abstractC5162o0, false);
                return true;
            }
        }
    }

    /* renamed from: H */
    public void m19215H() {
        if (m19212K()) {
            setVisibility(8);
            Iterator<AbstractC5426d> it = this.f17482e.iterator();
            while (it.hasNext()) {
                it.next().mo19126a(getVisibility());
            }
            removeCallbacks(this.f17501v);
            removeCallbacks(this.f17502w);
            this.f17477a0 = -9223372036854775807L;
        }
    }

    /* renamed from: K */
    public boolean m19212K() {
        return getVisibility() == 0;
    }

    /* renamed from: O */
    public void m19208O(AbstractC5426d abstractC5426d) {
        this.f17482e.remove(abstractC5426d);
    }

    /* renamed from: W */
    public void m19200W() {
        if (!m19212K()) {
            setVisibility(0);
            Iterator<AbstractC5426d> it = this.f17482e.iterator();
            while (it.hasNext()) {
                it.next().mo19126a(getVisibility());
            }
            m19199X();
            m19207P();
        }
        m19214I();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return m19218E(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            removeCallbacks(this.f17502w);
        } else if (motionEvent.getAction() == 1) {
            m19214I();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public AbstractC5162o0 getPlayer() {
        return this.f17463J;
    }

    public int getRepeatToggleModes() {
        return this.f17475V;
    }

    public boolean getShowShuffleButton() {
        return this.f17476W;
    }

    public int getShowTimeoutMs() {
        return this.f17473T;
    }

    public boolean getShowVrButton() {
        View view = this.f17493n;
        return view != null && view.getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f17467N = true;
        long j = this.f17477a0;
        if (j != -9223372036854775807L) {
            long uptimeMillis = j - SystemClock.uptimeMillis();
            if (uptimeMillis <= 0) {
                m19215H();
            } else {
                postDelayed(this.f17502w, uptimeMillis);
            }
        } else if (m19212K()) {
            m19214I();
        }
        m19199X();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f17467N = false;
        removeCallbacks(this.f17501v);
        removeCallbacks(this.f17502w);
    }

    public void setControlDispatcher(AbstractC5578w abstractC5578w) {
        C5580x c5580x = abstractC5578w;
        if (abstractC5578w == null) {
            c5580x = new C5580x();
        }
        this.f17464K = c5580x;
    }

    public void setExtraAdGroupMarkers(long[] jArr, boolean[] zArr) {
        boolean z = false;
        if (jArr == null) {
            this.f17481d0 = new long[0];
            this.f17483e0 = new boolean[0];
        } else {
            boolean[] zArr2 = (boolean[]) C5508e.m18911e(zArr);
            if (jArr.length == zArr2.length) {
                z = true;
            }
            C5508e.m18915a(z);
            this.f17481d0 = jArr;
            this.f17483e0 = zArr2;
        }
        m19189d0();
    }

    public void setFastForwardIncrementMs(int i) {
        this.f17472S = i;
        m19198Y();
    }

    public void setPlaybackPreparer(AbstractC5104m0 abstractC5104m0) {
        this.f17466M = abstractC5104m0;
    }

    public void setPlayer(AbstractC5162o0 abstractC5162o0) {
        C5508e.m18910f(Looper.myLooper() == Looper.getMainLooper());
        boolean z = true;
        if (abstractC5162o0 != null) {
            z = abstractC5162o0.mo18459M() == Looper.getMainLooper();
        }
        C5508e.m18915a(z);
        AbstractC5162o0 abstractC5162o02 = this.f17463J;
        if (abstractC5162o02 == abstractC5162o0) {
            return;
        }
        if (abstractC5162o02 != null) {
            abstractC5162o02.mo18412t(this.f17480d);
        }
        this.f17463J = abstractC5162o0;
        if (abstractC5162o0 != null) {
            abstractC5162o0.mo18422o(this.f17480d);
        }
        m19199X();
    }

    public void setProgressUpdateListener(AbstractC5425c abstractC5425c) {
        this.f17465L = abstractC5425c;
    }

    public void setRepeatToggleModes(int i) {
        this.f17475V = i;
        AbstractC5162o0 abstractC5162o0 = this.f17463J;
        if (abstractC5162o0 != null) {
            int mo18462K = abstractC5162o0.mo18462K();
            if (i == 0 && mo18462K != 0) {
                this.f17464K.mo18485a(this.f17463J, 0);
            } else if (i == 1 && mo18462K == 2) {
                this.f17464K.mo18485a(this.f17463J, 1);
            } else if (i == 2 && mo18462K == 1) {
                this.f17464K.mo18485a(this.f17463J, 2);
            }
        }
        m19193b0();
    }

    public void setRewindIncrementMs(int i) {
        this.f17471R = i;
        m19198Y();
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        this.f17468O = z;
        m19189d0();
    }

    public void setShowShuffleButton(boolean z) {
        this.f17476W = z;
        m19191c0();
    }

    public void setShowTimeoutMs(int i) {
        this.f17473T = i;
        if (m19212K()) {
            m19214I();
        }
    }

    public void setShowVrButton(boolean z) {
        View view = this.f17493n;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
    }

    public void setTimeBarMinUpdateInterval(int i) {
        this.f17474U = C5515h0.m18819n(i, 16, 1000);
    }

    public void setVrButtonListener(View.OnClickListener onClickListener) {
        View view = this.f17493n;
        if (view != null) {
            view.setOnClickListener(onClickListener);
        }
    }
}
