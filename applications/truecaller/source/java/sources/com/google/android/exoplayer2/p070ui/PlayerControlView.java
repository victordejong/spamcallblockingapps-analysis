package com.google.android.exoplayer2.p070ui;

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
import com.google.android.exoplayer2.p070ui.PlayerControlView;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.mopub.mobileads.AdData;
import java.util.Formatter;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.AbstractC24675p0;
import p193e.p1577m.p1578a.p1596c.AbstractC24760q0;
import p193e.p1577m.p1578a.p1596c.AbstractC24856w;
import p193e.p1577m.p1578a.p1596c.AbstractC24861y0;
import p193e.p1577m.p1578a.p1596c.C24189b0;
import p193e.p1577m.p1578a.p1596c.C24270f0;
import p193e.p1577m.p1578a.p1596c.C24652o0;
import p193e.p1577m.p1578a.p1596c.C24811r0;
import p193e.p1577m.p1578a.p1596c.C24858x;
import p193e.p1577m.p1578a.p1596c.p1631n1.C24648g;
import p193e.p1577m.p1578a.p1596c.p1632o1.AbstractC24658f;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: com.google.android.exoplayer2.ui.PlayerControlView */
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerControlView.class */
public class PlayerControlView extends FrameLayout {

    /* renamed from: n0 */
    public static final /* synthetic */ int f5129n0 = 0;

    /* renamed from: A */
    public final Drawable f5130A;

    /* renamed from: B */
    public final Drawable f5131B;

    /* renamed from: C */
    public final float f5132C;

    /* renamed from: D */
    public final float f5133D;

    /* renamed from: E */
    public final String f5134E;

    /* renamed from: J */
    public final String f5135J;

    /* renamed from: K */
    public AbstractC24760q0 f5136K;

    /* renamed from: L */
    public AbstractC24856w f5137L;

    /* renamed from: M */
    public AbstractC2014c f5138M;

    /* renamed from: N */
    public AbstractC24675p0 f5139N;

    /* renamed from: O */
    public boolean f5140O;

    /* renamed from: P */
    public boolean f5141P;

    /* renamed from: Q */
    public boolean f5142Q;

    /* renamed from: R */
    public boolean f5143R;

    /* renamed from: S */
    public int f5144S;

    /* renamed from: T */
    public int f5145T;

    /* renamed from: U */
    public int f5146U;

    /* renamed from: V */
    public int f5147V;

    /* renamed from: W */
    public int f5148W;

    /* renamed from: a */
    public final View$OnClickListenerC2013b f5149a;

    /* renamed from: b */
    public final CopyOnWriteArrayList<AbstractC2015d> f5150b;

    /* renamed from: c */
    public final View f5151c;

    /* renamed from: d */
    public final View f5152d;

    /* renamed from: e */
    public final View f5153e;

    /* renamed from: f */
    public final View f5154f;

    /* renamed from: g */
    public final View f5155g;

    /* renamed from: g0 */
    public boolean f5156g0;

    /* renamed from: h */
    public final View f5157h;

    /* renamed from: h0 */
    public long f5158h0;

    /* renamed from: i */
    public final ImageView f5159i;

    /* renamed from: i0 */
    public long[] f5160i0;

    /* renamed from: j */
    public final ImageView f5161j;

    /* renamed from: j0 */
    public boolean[] f5162j0;

    /* renamed from: k */
    public final View f5163k;

    /* renamed from: k0 */
    public long[] f5164k0;

    /* renamed from: l */
    public final TextView f5165l;

    /* renamed from: l0 */
    public boolean[] f5166l0;

    /* renamed from: m */
    public final TextView f5167m;

    /* renamed from: m0 */
    public long f5168m0;

    /* renamed from: n */
    public final AbstractC24658f f5169n;

    /* renamed from: o */
    public final StringBuilder f5170o;

    /* renamed from: p */
    public final Formatter f5171p;

    /* renamed from: q */
    public final AbstractC24861y0.C24863b f5172q;

    /* renamed from: r */
    public final AbstractC24861y0.C24864c f5173r;

    /* renamed from: s */
    public final Runnable f5174s;

    /* renamed from: t */
    public final Runnable f5175t;

    /* renamed from: u */
    public final Drawable f5176u;

    /* renamed from: v */
    public final Drawable f5177v;

    /* renamed from: w */
    public final Drawable f5178w;

    /* renamed from: x */
    public final String f5179x;

    /* renamed from: y */
    public final String f5180y;

    /* renamed from: z */
    public final String f5181z;

    /* renamed from: com.google.android.exoplayer2.ui.PlayerControlView$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerControlView$b.class */
    public final class View$OnClickListenerC2013b implements AbstractC24760q0.AbstractC24762b, AbstractC24658f.AbstractC24659a, View.OnClickListener {
        public View$OnClickListenerC2013b(C2012a c2012a) {
            PlayerControlView.this = r4;
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: A0 */
        public /* synthetic */ void mo4655A0() {
            C24811r0.m4490i(this);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: G5 */
        public void mo4654G5(boolean z, int i) {
            PlayerControlView playerControlView = PlayerControlView.this;
            int i2 = PlayerControlView.f5129n0;
            playerControlView.m39198n();
            PlayerControlView.this.m39197o();
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: N7 */
        public void mo4653N7(AbstractC24861y0 abstractC24861y0, int i) {
            PlayerControlView playerControlView = PlayerControlView.this;
            int i2 = PlayerControlView.f5129n0;
            playerControlView.m39199m();
            PlayerControlView.this.m39194r();
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: Pi */
        public /* synthetic */ void mo4652Pi(AbstractC24861y0 abstractC24861y0, Object obj, int i) {
            C24811r0.m4487l(this, abstractC24861y0, obj, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: S8 */
        public void mo4651S8(boolean z) {
            PlayerControlView playerControlView = PlayerControlView.this;
            int i = PlayerControlView.f5129n0;
            playerControlView.m39195q();
            PlayerControlView.this.m39199m();
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: Xl */
        public void mo4650Xl(boolean z) {
            PlayerControlView playerControlView = PlayerControlView.this;
            int i = PlayerControlView.f5129n0;
            playerControlView.m39197o();
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: Zl */
        public /* synthetic */ void mo4649Zl(int i) {
            C24811r0.m4495d(this, i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v25, types: [long] */
        /* JADX WARN: Type inference failed for: r0v31, types: [long] */
        /* JADX WARN: Type inference failed for: r0v6, types: [e.m.a.c.q0] */
        /* JADX WARN: Type inference failed for: r7v0, types: [long] */
        /* JADX WARN: Type inference failed for: r7v1 */
        /* JADX WARN: Type inference failed for: r7v2 */
        /* JADX WARN: Type inference failed for: r7v3 */
        /* JADX WARN: Type inference failed for: r7v4 */
        /* JADX WARN: Type inference failed for: r7v5 */
        @Override // p193e.p1577m.p1578a.p1596c.p1632o1.AbstractC24658f.AbstractC24659a
        /* renamed from: a */
        public void mo4785a(AbstractC24658f abstractC24658f, long j, boolean z) {
            ?? r0;
            PlayerControlView playerControlView = PlayerControlView.this;
            int i = 0;
            playerControlView.f5143R = false;
            if (z || (r0 = playerControlView.f5136K) == 0) {
                return;
            }
            AbstractC24861y0 currentTimeline = r0.getCurrentTimeline();
            if (playerControlView.f5142Q && !currentTimeline.m4362p()) {
                int mo4356o = currentTimeline.mo4356o();
                j = j;
                while (true) {
                    ?? m4349a = currentTimeline.m4363m(i, playerControlView.f5173r).m4349a();
                    if (j < m4349a) {
                        break;
                    } else if (i == mo4356o - 1) {
                        j = m4349a;
                        break;
                    } else {
                        j -= m4349a;
                        i++;
                    }
                }
            } else {
                i = r0.getCurrentWindowIndex();
            }
            Objects.requireNonNull((C24858x) playerControlView.f5137L);
            r0.seekTo(i, j);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1632o1.AbstractC24658f.AbstractC24659a
        /* renamed from: b */
        public void mo4784b(AbstractC24658f abstractC24658f, long j) {
            PlayerControlView playerControlView = PlayerControlView.this;
            TextView textView = playerControlView.f5167m;
            if (textView != null) {
                textView.setText(C24773d0.m4609o(playerControlView.f5170o, playerControlView.f5171p, j));
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1632o1.AbstractC24658f.AbstractC24659a
        /* renamed from: c */
        public void mo4783c(AbstractC24658f abstractC24658f, long j) {
            PlayerControlView playerControlView = PlayerControlView.this;
            playerControlView.f5143R = true;
            TextView textView = playerControlView.f5167m;
            if (textView != null) {
                textView.setText(C24773d0.m4609o(playerControlView.f5170o, playerControlView.f5171p, j));
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: fs */
        public /* synthetic */ void mo4648fs(TrackGroupArray trackGroupArray, C24648g c24648g) {
            C24811r0.m4486m(this, trackGroupArray, c24648g);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: h5 */
        public void mo4647h5(int i) {
            PlayerControlView playerControlView = PlayerControlView.this;
            int i2 = PlayerControlView.f5129n0;
            playerControlView.m39199m();
            PlayerControlView.this.m39194r();
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: hy */
        public void mo4646hy(int i) {
            PlayerControlView playerControlView = PlayerControlView.this;
            int i2 = PlayerControlView.f5129n0;
            playerControlView.m39196p();
            PlayerControlView.this.m39199m();
        }

        /* JADX WARN: Removed duplicated region for block: B:59:0x0178 A[LOOP:0: B:42:0x0128->B:59:0x0178, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0171 A[SYNTHETIC] */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onClick(android.view.View r6) {
            /*
                Method dump skipped, instructions count: 441
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p070ui.PlayerControlView.View$OnClickListenerC2013b.onClick(android.view.View):void");
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: rs */
        public /* synthetic */ void mo4645rs(C24652o0 c24652o0) {
            C24811r0.m4496c(this, c24652o0);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: tf */
        public /* synthetic */ void mo4644tf(C24189b0 c24189b0) {
            C24811r0.m4494e(this, c24189b0);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: w1 */
        public /* synthetic */ void mo4643w1(boolean z) {
            C24811r0.m4497b(this, z);
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.PlayerControlView$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerControlView$c.class */
    public interface AbstractC2014c {
        /* renamed from: a */
        void m39193a(long j, long j2);
    }

    /* renamed from: com.google.android.exoplayer2.ui.PlayerControlView$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerControlView$d.class */
    public interface AbstractC2015d {
        /* renamed from: b */
        void mo39192b(int i);
    }

    static {
        HashSet<String> hashSet = C24270f0.f67321a;
        synchronized (C24270f0.class) {
            try {
                if (C24270f0.f67321a.add("goog.exo.ui")) {
                    C24270f0.f67322b += ", goog.exo.ui";
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public PlayerControlView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, attributeSet);
    }

    public PlayerControlView(Context context, AttributeSet attributeSet, int i, AttributeSet attributeSet2) {
        super(context, attributeSet, i);
        int i2 = C2018R.layout.exo_player_control_view;
        this.f5144S = AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS;
        this.f5145T = 15000;
        this.f5146U = AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS;
        this.f5148W = 0;
        this.f5147V = 200;
        this.f5158h0 = -9223372036854775807L;
        this.f5156g0 = false;
        int i3 = i2;
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, C2018R.styleable.PlayerControlView, 0, 0);
            try {
                this.f5144S = obtainStyledAttributes.getInt(C2018R.styleable.PlayerControlView_rewind_increment, this.f5144S);
                this.f5145T = obtainStyledAttributes.getInt(C2018R.styleable.PlayerControlView_fastforward_increment, this.f5145T);
                this.f5146U = obtainStyledAttributes.getInt(C2018R.styleable.PlayerControlView_show_timeout, this.f5146U);
                i3 = obtainStyledAttributes.getResourceId(C2018R.styleable.PlayerControlView_controller_layout_id, i2);
                this.f5148W = obtainStyledAttributes.getInt(C2018R.styleable.PlayerControlView_repeat_toggle_modes, this.f5148W);
                this.f5156g0 = obtainStyledAttributes.getBoolean(C2018R.styleable.PlayerControlView_show_shuffle_button, this.f5156g0);
                setTimeBarMinUpdateInterval(obtainStyledAttributes.getInt(C2018R.styleable.PlayerControlView_time_bar_min_update_interval, this.f5147V));
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f5150b = new CopyOnWriteArrayList<>();
        this.f5172q = new AbstractC24861y0.C24863b();
        this.f5173r = new AbstractC24861y0.C24864c();
        StringBuilder sb = new StringBuilder();
        this.f5170o = sb;
        this.f5171p = new Formatter(sb, Locale.getDefault());
        this.f5160i0 = new long[0];
        this.f5162j0 = new boolean[0];
        this.f5164k0 = new long[0];
        this.f5166l0 = new boolean[0];
        View$OnClickListenerC2013b view$OnClickListenerC2013b = new View$OnClickListenerC2013b(null);
        this.f5149a = view$OnClickListenerC2013b;
        this.f5137L = new C24858x();
        this.f5174s = new Runnable() { // from class: e.m.a.c.o1.c
            @Override // java.lang.Runnable
            public final void run() {
                PlayerControlView playerControlView = PlayerControlView.this;
                int i4 = PlayerControlView.f5129n0;
                playerControlView.m39197o();
            }
        };
        this.f5175t = new Runnable() { // from class: e.m.a.c.o1.a
            @Override // java.lang.Runnable
            public final void run() {
                PlayerControlView.this.m39210b();
            }
        };
        LayoutInflater.from(context).inflate(i3, this);
        setDescendantFocusability(262144);
        int i4 = C2018R.C2020id.exo_progress;
        AbstractC24658f abstractC24658f = (AbstractC24658f) findViewById(i4);
        View findViewById = findViewById(C2018R.C2020id.exo_progress_placeholder);
        if (abstractC24658f != null) {
            this.f5169n = abstractC24658f;
        } else if (findViewById != null) {
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2);
            defaultTimeBar.setId(i4);
            defaultTimeBar.setLayoutParams(findViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById);
            viewGroup.removeView(findViewById);
            viewGroup.addView(defaultTimeBar, indexOfChild);
            this.f5169n = defaultTimeBar;
        } else {
            this.f5169n = null;
        }
        this.f5165l = (TextView) findViewById(C2018R.C2020id.exo_duration);
        this.f5167m = (TextView) findViewById(C2018R.C2020id.exo_position);
        AbstractC24658f abstractC24658f2 = this.f5169n;
        if (abstractC24658f2 != null) {
            abstractC24658f2.mo4786b(view$OnClickListenerC2013b);
        }
        View findViewById2 = findViewById(C2018R.C2020id.exo_play);
        this.f5153e = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(view$OnClickListenerC2013b);
        }
        View findViewById3 = findViewById(C2018R.C2020id.exo_pause);
        this.f5154f = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(view$OnClickListenerC2013b);
        }
        View findViewById4 = findViewById(C2018R.C2020id.exo_prev);
        this.f5151c = findViewById4;
        if (findViewById4 != null) {
            findViewById4.setOnClickListener(view$OnClickListenerC2013b);
        }
        View findViewById5 = findViewById(C2018R.C2020id.exo_next);
        this.f5152d = findViewById5;
        if (findViewById5 != null) {
            findViewById5.setOnClickListener(view$OnClickListenerC2013b);
        }
        View findViewById6 = findViewById(C2018R.C2020id.exo_rew);
        this.f5157h = findViewById6;
        if (findViewById6 != null) {
            findViewById6.setOnClickListener(view$OnClickListenerC2013b);
        }
        View findViewById7 = findViewById(C2018R.C2020id.exo_ffwd);
        this.f5155g = findViewById7;
        if (findViewById7 != null) {
            findViewById7.setOnClickListener(view$OnClickListenerC2013b);
        }
        ImageView imageView = (ImageView) findViewById(C2018R.C2020id.exo_repeat_toggle);
        this.f5159i = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(view$OnClickListenerC2013b);
        }
        ImageView imageView2 = (ImageView) findViewById(C2018R.C2020id.exo_shuffle);
        this.f5161j = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(view$OnClickListenerC2013b);
        }
        this.f5163k = findViewById(C2018R.C2020id.exo_vr);
        setShowVrButton(false);
        Resources resources = context.getResources();
        this.f5132C = resources.getInteger(C2018R.integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.f5133D = resources.getInteger(C2018R.integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        this.f5176u = resources.getDrawable(C2018R.C2019drawable.exo_controls_repeat_off);
        this.f5177v = resources.getDrawable(C2018R.C2019drawable.exo_controls_repeat_one);
        this.f5178w = resources.getDrawable(C2018R.C2019drawable.exo_controls_repeat_all);
        this.f5130A = resources.getDrawable(C2018R.C2019drawable.exo_controls_shuffle_on);
        this.f5131B = resources.getDrawable(C2018R.C2019drawable.exo_controls_shuffle_off);
        this.f5179x = resources.getString(C2018R.string.exo_controls_repeat_off_description);
        this.f5180y = resources.getString(C2018R.string.exo_controls_repeat_one_description);
        this.f5181z = resources.getString(C2018R.string.exo_controls_repeat_all_description);
        this.f5134E = resources.getString(C2018R.string.exo_controls_shuffle_on_description);
        this.f5135J = resources.getString(C2018R.string.exo_controls_shuffle_off_description);
    }

    /* renamed from: a */
    public boolean m39211a(KeyEvent keyEvent) {
        int i;
        int i2;
        int keyCode = keyEvent.getKeyCode();
        AbstractC24760q0 abstractC24760q0 = this.f5136K;
        if (abstractC24760q0 != null) {
            if (!(keyCode == 90 || keyCode == 89 || keyCode == 85 || keyCode == 126 || keyCode == 127 || keyCode == 87 || keyCode == 88)) {
                return false;
            }
            if (keyEvent.getAction() != 0) {
                return true;
            }
            if (keyCode == 90) {
                if (!abstractC24760q0.isCurrentWindowSeekable() || (i2 = this.f5145T) <= 0) {
                    return true;
                }
                m39204h(abstractC24760q0, i2);
                return true;
            } else if (keyCode == 89) {
                if (!abstractC24760q0.isCurrentWindowSeekable() || (i = this.f5144S) <= 0) {
                    return true;
                }
                m39204h(abstractC24760q0, -i);
                return true;
            } else if (keyEvent.getRepeatCount() != 0) {
                return true;
            } else {
                if (keyCode == 85) {
                    AbstractC24856w abstractC24856w = this.f5137L;
                    boolean playWhenReady = abstractC24760q0.getPlayWhenReady();
                    Objects.requireNonNull((C24858x) abstractC24856w);
                    abstractC24760q0.setPlayWhenReady(!playWhenReady);
                    return true;
                } else if (keyCode == 87) {
                    m39207e(abstractC24760q0);
                    return true;
                } else if (keyCode == 88) {
                    m39206f(abstractC24760q0);
                    return true;
                } else if (keyCode == 126) {
                    Objects.requireNonNull((C24858x) this.f5137L);
                    abstractC24760q0.setPlayWhenReady(true);
                    return true;
                } else if (keyCode != 127) {
                    return true;
                } else {
                    Objects.requireNonNull((C24858x) this.f5137L);
                    abstractC24760q0.setPlayWhenReady(false);
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: b */
    public void m39210b() {
        if (m39208d()) {
            setVisibility(8);
            Iterator<AbstractC2015d> it = this.f5150b.iterator();
            while (it.hasNext()) {
                it.next().mo39192b(getVisibility());
            }
            removeCallbacks(this.f5174s);
            removeCallbacks(this.f5175t);
            this.f5158h0 = -9223372036854775807L;
        }
    }

    /* renamed from: c */
    public final void m39209c() {
        removeCallbacks(this.f5175t);
        if (this.f5146U <= 0) {
            this.f5158h0 = -9223372036854775807L;
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        int i = this.f5146U;
        this.f5158h0 = uptimeMillis + i;
        if (!this.f5140O) {
            return;
        }
        postDelayed(this.f5175t, i);
    }

    /* renamed from: d */
    public boolean m39208d() {
        return getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return m39211a(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            removeCallbacks(this.f5175t);
        } else if (motionEvent.getAction() == 1) {
            m39209c();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    /* renamed from: e */
    public final void m39207e(AbstractC24760q0 abstractC24760q0) {
        AbstractC24861y0 currentTimeline = abstractC24760q0.getCurrentTimeline();
        if (currentTimeline.m4362p() || abstractC24760q0.isPlayingAd()) {
            return;
        }
        int currentWindowIndex = abstractC24760q0.getCurrentWindowIndex();
        int nextWindowIndex = abstractC24760q0.getNextWindowIndex();
        if (nextWindowIndex != -1) {
            Objects.requireNonNull((C24858x) this.f5137L);
            abstractC24760q0.seekTo(nextWindowIndex, -9223372036854775807L);
        } else if (!currentTimeline.m4363m(currentWindowIndex, this.f5173r).f69736e) {
        } else {
            Objects.requireNonNull((C24858x) this.f5137L);
            abstractC24760q0.seekTo(currentWindowIndex, -9223372036854775807L);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0056, code lost:
        if (r0.f69735d == false) goto L14;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m39206f(p193e.p1577m.p1578a.p1596c.AbstractC24760q0 r6) {
        /*
            r5 = this;
            r0 = r6
            e.m.a.c.y0 r0 = r0.getCurrentTimeline()
            r7 = r0
            r0 = r7
            boolean r0 = r0.m4362p()
            if (r0 != 0) goto L85
            r0 = r6
            boolean r0 = r0.isPlayingAd()
            if (r0 == 0) goto L1a
            goto L85
        L1a:
            r0 = r6
            int r0 = r0.getCurrentWindowIndex()
            r8 = r0
            r0 = r7
            r1 = r8
            r2 = r5
            e.m.a.c.y0$c r2 = r2.f5173r
            e.m.a.c.y0$c r0 = r0.m4363m(r1, r2)
            r0 = r6
            int r0 = r0.getPreviousWindowIndex()
            r9 = r0
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L72
            r0 = r6
            long r0 = r0.getCurrentPosition()
            r1 = 3000(0xbb8, double:1.482E-320)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L59
            r0 = r5
            e.m.a.c.y0$c r0 = r0.f5173r
            r7 = r0
            r0 = r7
            boolean r0 = r0.f69736e
            if (r0 == 0) goto L72
            r0 = r7
            boolean r0 = r0.f69735d
            if (r0 != 0) goto L72
        L59:
            r0 = r5
            e.m.a.c.w r0 = r0.f5137L
            e.m.a.c.x r0 = (p193e.p1577m.p1578a.p1596c.C24858x) r0
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r6
            r1 = r9
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.seekTo(r1, r2)
            goto L85
        L72:
            r0 = r5
            e.m.a.c.w r0 = r0.f5137L
            e.m.a.c.x r0 = (p193e.p1577m.p1578a.p1596c.C24858x) r0
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r6
            r1 = r8
            r2 = 0
            r0.seekTo(r1, r2)
        L85:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p070ui.PlayerControlView.m39206f(e.m.a.c.q0):void");
    }

    /* renamed from: g */
    public final void m39205g() {
        View view;
        View view2;
        boolean m39202j = m39202j();
        if (!m39202j && (view2 = this.f5153e) != null) {
            view2.requestFocus();
        } else if (!m39202j || (view = this.f5154f) == null) {
        } else {
            view.requestFocus();
        }
    }

    public AbstractC24760q0 getPlayer() {
        return this.f5136K;
    }

    public int getRepeatToggleModes() {
        return this.f5148W;
    }

    public boolean getShowShuffleButton() {
        return this.f5156g0;
    }

    public int getShowTimeoutMs() {
        return this.f5146U;
    }

    public boolean getShowVrButton() {
        View view = this.f5163k;
        return view != null && view.getVisibility() == 0;
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* renamed from: h */
    public final void m39204h(AbstractC24760q0 abstractC24760q0, long j) {
        ?? currentPosition = abstractC24760q0.getCurrentPosition() + j;
        long duration = abstractC24760q0.getDuration();
        char c = currentPosition;
        if (duration != -9223372036854775807L) {
            c = Math.min((long) currentPosition, duration);
        }
        long max = Math.max((long) c, 0L);
        int currentWindowIndex = abstractC24760q0.getCurrentWindowIndex();
        Objects.requireNonNull((C24858x) this.f5137L);
        abstractC24760q0.seekTo(currentWindowIndex, max);
    }

    /* renamed from: i */
    public final void m39203i(boolean z, View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z);
        view.setAlpha(z ? this.f5132C : this.f5133D);
        view.setVisibility(0);
    }

    /* renamed from: j */
    public final boolean m39202j() {
        AbstractC24760q0 abstractC24760q0 = this.f5136K;
        boolean z = true;
        if (abstractC24760q0 == null || abstractC24760q0.getPlaybackState() == 4 || this.f5136K.getPlaybackState() == 1 || !this.f5136K.getPlayWhenReady()) {
            z = false;
        }
        return z;
    }

    /* renamed from: k */
    public void m39201k() {
        if (!m39208d()) {
            setVisibility(0);
            Iterator<AbstractC2015d> it = this.f5150b.iterator();
            while (it.hasNext()) {
                it.next().mo39192b(getVisibility());
            }
            m39200l();
            m39205g();
        }
        m39209c();
    }

    /* renamed from: l */
    public final void m39200l() {
        m39198n();
        m39199m();
        m39196p();
        m39195q();
        m39194r();
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m39199m() {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p070ui.PlayerControlView.m39199m():void");
    }

    /* renamed from: n */
    public final void m39198n() {
        boolean z;
        if (!m39208d() || !this.f5140O) {
            return;
        }
        boolean m39202j = m39202j();
        View view = this.f5153e;
        if (view != null) {
            boolean z2 = (m39202j && view.isFocused()) | false;
            this.f5153e.setVisibility(m39202j ? 8 : 0);
            z = z2;
        } else {
            z = false;
        }
        View view2 = this.f5154f;
        boolean z3 = z;
        if (view2 != null) {
            z3 = z | (!m39202j && view2.isFocused());
            View view3 = this.f5154f;
            int i = 8;
            if (m39202j) {
                i = 0;
            }
            view3.setVisibility(i);
        }
        if (!z3) {
            return;
        }
        m39205g();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [e.m.a.c.o1.f] */
    /* JADX WARN: Type inference failed for: r0v15, types: [com.google.android.exoplayer2.ui.PlayerControlView$c] */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v39 */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [e.m.a.c.o1.f] */
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
    /* renamed from: o */
    public final void m39197o() {
        ?? r13;
        if (!m39208d() || !this.f5140O) {
            return;
        }
        AbstractC24760q0 abstractC24760q0 = this.f5136K;
        ?? r11 = 0;
        if (abstractC24760q0 != null) {
            r11 = this.f5168m0 + abstractC24760q0.getContentPosition();
            r13 = this.f5168m0 + abstractC24760q0.getContentBufferedPosition();
        } else {
            r13 = 0;
        }
        TextView textView = this.f5167m;
        if (textView != null && !this.f5143R) {
            textView.setText(C24773d0.m4609o(this.f5170o, this.f5171p, r11));
        }
        ?? r0 = this.f5169n;
        if (r0 != 0) {
            r0.setPosition(r11);
            this.f5169n.setBufferedPosition(r13);
        }
        ?? r02 = this.f5138M;
        if (r02 != 0) {
            r02.m39193a(r11, r13);
        }
        removeCallbacks(this.f5174s);
        int playbackState = abstractC24760q0 == null ? 1 : abstractC24760q0.getPlaybackState();
        if (abstractC24760q0 == null || !abstractC24760q0.isPlaying()) {
            if (playbackState == 4 || playbackState == 1) {
                return;
            }
            postDelayed(this.f5174s, 1000L);
            return;
        }
        AbstractC24658f abstractC24658f = this.f5169n;
        long min = Math.min((abstractC24658f != null ? abstractC24658f.getPreferredUpdateDelay() : true) == true ? 1L : 0L, 1000 - (r11 % 1000));
        float f = abstractC24760q0.getPlaybackParameters().f69036a;
        ?? r112 = true;
        if (f > 0.0f) {
            r112 = ((float) min) / f;
        }
        postDelayed(this.f5174s, C24773d0.m4617g(r112 == true ? 1L : 0L, this.f5147V, 1000L));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f5140O = true;
        long j = this.f5158h0;
        if (j != -9223372036854775807L) {
            long uptimeMillis = j - SystemClock.uptimeMillis();
            if (uptimeMillis <= 0) {
                m39210b();
            } else {
                postDelayed(this.f5175t, uptimeMillis);
            }
        } else if (m39208d()) {
            m39209c();
        }
        m39200l();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f5140O = false;
        removeCallbacks(this.f5174s);
        removeCallbacks(this.f5175t);
    }

    /* renamed from: p */
    public final void m39196p() {
        ImageView imageView;
        if (!m39208d() || !this.f5140O || (imageView = this.f5159i) == null) {
            return;
        }
        if (this.f5148W == 0) {
            imageView.setVisibility(8);
            return;
        }
        AbstractC24760q0 abstractC24760q0 = this.f5136K;
        if (abstractC24760q0 == null) {
            m39203i(false, imageView);
            this.f5159i.setImageDrawable(this.f5176u);
            this.f5159i.setContentDescription(this.f5179x);
            return;
        }
        m39203i(true, imageView);
        int repeatMode = abstractC24760q0.getRepeatMode();
        if (repeatMode == 0) {
            this.f5159i.setImageDrawable(this.f5176u);
            this.f5159i.setContentDescription(this.f5179x);
        } else if (repeatMode == 1) {
            this.f5159i.setImageDrawable(this.f5177v);
            this.f5159i.setContentDescription(this.f5180y);
        } else if (repeatMode == 2) {
            this.f5159i.setImageDrawable(this.f5178w);
            this.f5159i.setContentDescription(this.f5181z);
        }
        this.f5159i.setVisibility(0);
    }

    /* renamed from: q */
    public final void m39195q() {
        ImageView imageView;
        if (!m39208d() || !this.f5140O || (imageView = this.f5161j) == null) {
            return;
        }
        AbstractC24760q0 abstractC24760q0 = this.f5136K;
        if (!this.f5156g0) {
            imageView.setVisibility(8);
        } else if (abstractC24760q0 == null) {
            m39203i(false, imageView);
            this.f5161j.setImageDrawable(this.f5131B);
            this.f5161j.setContentDescription(this.f5135J);
        } else {
            m39203i(true, imageView);
            this.f5161j.setImageDrawable(abstractC24760q0.getShuffleModeEnabled() ? this.f5130A : this.f5131B);
            this.f5161j.setContentDescription(abstractC24760q0.getShuffleModeEnabled() ? this.f5134E : this.f5135J);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x023a  */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m39194r() {
        /*
            Method dump skipped, instructions count: 687
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p070ui.PlayerControlView.m39194r():void");
    }

    public void setControlDispatcher(AbstractC24856w abstractC24856w) {
        C24858x c24858x = abstractC24856w;
        if (abstractC24856w == null) {
            c24858x = new C24858x();
        }
        this.f5137L = c24858x;
    }

    public void setFastForwardIncrementMs(int i) {
        this.f5145T = i;
        m39199m();
    }

    public void setPlaybackPreparer(AbstractC24675p0 abstractC24675p0) {
        this.f5139N = abstractC24675p0;
    }

    public void setPlayer(AbstractC24760q0 abstractC24760q0) {
        C26232y.m2286x(Looper.myLooper() == Looper.getMainLooper());
        boolean z = true;
        if (abstractC24760q0 != null) {
            z = abstractC24760q0.getApplicationLooper() == Looper.getMainLooper();
        }
        C26232y.m2310r(z);
        AbstractC24760q0 abstractC24760q02 = this.f5136K;
        if (abstractC24760q02 == abstractC24760q0) {
            return;
        }
        if (abstractC24760q02 != null) {
            abstractC24760q02.removeListener(this.f5149a);
        }
        this.f5136K = abstractC24760q0;
        if (abstractC24760q0 != null) {
            abstractC24760q0.addListener(this.f5149a);
        }
        m39200l();
    }

    public void setProgressUpdateListener(AbstractC2014c abstractC2014c) {
        this.f5138M = abstractC2014c;
    }

    public void setRepeatToggleModes(int i) {
        this.f5148W = i;
        AbstractC24760q0 abstractC24760q0 = this.f5136K;
        if (abstractC24760q0 != null) {
            int repeatMode = abstractC24760q0.getRepeatMode();
            if (i == 0 && repeatMode != 0) {
                AbstractC24856w abstractC24856w = this.f5137L;
                AbstractC24760q0 abstractC24760q02 = this.f5136K;
                Objects.requireNonNull((C24858x) abstractC24856w);
                abstractC24760q02.setRepeatMode(0);
            } else if (i == 1 && repeatMode == 2) {
                AbstractC24856w abstractC24856w2 = this.f5137L;
                AbstractC24760q0 abstractC24760q03 = this.f5136K;
                Objects.requireNonNull((C24858x) abstractC24856w2);
                abstractC24760q03.setRepeatMode(1);
            } else if (i == 2 && repeatMode == 1) {
                AbstractC24856w abstractC24856w3 = this.f5137L;
                AbstractC24760q0 abstractC24760q04 = this.f5136K;
                Objects.requireNonNull((C24858x) abstractC24856w3);
                abstractC24760q04.setRepeatMode(2);
            }
        }
        m39196p();
    }

    public void setRewindIncrementMs(int i) {
        this.f5144S = i;
        m39199m();
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        this.f5141P = z;
        m39194r();
    }

    public void setShowShuffleButton(boolean z) {
        this.f5156g0 = z;
        m39195q();
    }

    public void setShowTimeoutMs(int i) {
        this.f5146U = i;
        if (m39208d()) {
            m39209c();
        }
    }

    public void setShowVrButton(boolean z) {
        View view = this.f5163k;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
    }

    public void setTimeBarMinUpdateInterval(int i) {
        this.f5147V = C24773d0.m4618f(i, 16, 1000);
    }

    public void setVrButtonListener(View.OnClickListener onClickListener) {
        View view = this.f5163k;
        if (view != null) {
            view.setOnClickListener(onClickListener);
        }
    }
}
