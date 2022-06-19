package com.google.android.exoplayer2.p346ui;

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
import com.google.android.exoplayer2.AbstractC10841ab;
import com.google.android.exoplayer2.AbstractC10842ac;
import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.AbstractC11159g;
import com.google.android.exoplayer2.C10840aa;
import com.google.android.exoplayer2.C11158f;
import com.google.android.exoplayer2.C11160h;
import com.google.android.exoplayer2.C11257p;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.p346ui.AbstractC11509h;
import com.google.android.exoplayer2.p346ui.C11479c;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.C11443g;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11630w;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: com.google.android.exoplayer2.ui.PlayerControlView */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerControlView.class */
public class PlayerControlView extends FrameLayout {

    /* renamed from: A */
    private final String f37908A;

    /* renamed from: B */
    private final Drawable f37909B;

    /* renamed from: C */
    private final Drawable f37910C;

    /* renamed from: D */
    private final float f37911D;

    /* renamed from: E */
    private final float f37912E;

    /* renamed from: F */
    private final String f37913F;

    /* renamed from: G */
    private final String f37914G;

    /* renamed from: H */
    private AbstractC10842ac f37915H;

    /* renamed from: I */
    private AbstractC11159g f37916I;

    /* renamed from: J */
    private AbstractC11453b f37917J;

    /* renamed from: K */
    private AbstractC10841ab f37918K;

    /* renamed from: L */
    private boolean f37919L;

    /* renamed from: M */
    private boolean f37920M;

    /* renamed from: N */
    private boolean f37921N;

    /* renamed from: O */
    private boolean f37922O;

    /* renamed from: P */
    private int f37923P;

    /* renamed from: Q */
    private int f37924Q;

    /* renamed from: R */
    private boolean f37925R;

    /* renamed from: S */
    private boolean f37926S;

    /* renamed from: T */
    private boolean f37927T;

    /* renamed from: U */
    private boolean f37928U;

    /* renamed from: V */
    private boolean f37929V;

    /* renamed from: W */
    private long f37930W;

    /* renamed from: a */
    final CopyOnWriteArrayList<AbstractC11454c> f37931a;

    /* renamed from: aa */
    private long[] f37932aa;

    /* renamed from: ab */
    private boolean[] f37933ab;

    /* renamed from: ac */
    private long[] f37934ac;

    /* renamed from: ad */
    private boolean[] f37935ad;

    /* renamed from: ae */
    private long f37936ae;

    /* renamed from: b */
    int f37937b;

    /* renamed from: c */
    private final View$OnClickListenerC11452a f37938c;

    /* renamed from: d */
    private final View f37939d;

    /* renamed from: e */
    private final View f37940e;

    /* renamed from: f */
    private final View f37941f;

    /* renamed from: g */
    private final View f37942g;

    /* renamed from: h */
    private final View f37943h;

    /* renamed from: i */
    private final View f37944i;

    /* renamed from: j */
    private final ImageView f37945j;

    /* renamed from: k */
    private final ImageView f37946k;

    /* renamed from: l */
    private final View f37947l;

    /* renamed from: m */
    private final TextView f37948m;

    /* renamed from: n */
    private final TextView f37949n;

    /* renamed from: o */
    private final AbstractC11509h f37950o;

    /* renamed from: p */
    private final StringBuilder f37951p;

    /* renamed from: q */
    private final Formatter f37952q;

    /* renamed from: r */
    private final AbstractC10864al.C10866a f37953r;

    /* renamed from: s */
    private final AbstractC10864al.C10867b f37954s;

    /* renamed from: t */
    private final Runnable f37955t;

    /* renamed from: u */
    private final Runnable f37956u;

    /* renamed from: v */
    private final Drawable f37957v;

    /* renamed from: w */
    private final Drawable f37958w;

    /* renamed from: x */
    private final Drawable f37959x;

    /* renamed from: y */
    private final String f37960y;

    /* renamed from: z */
    private final String f37961z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.ui.PlayerControlView$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerControlView$a.class */
    public final class View$OnClickListenerC11452a implements View.OnClickListener, AbstractC10842ac.AbstractC10843a, AbstractC11509h.AbstractC11510a {
        private View$OnClickListenerC11452a() {
            PlayerControlView.this = r4;
        }

        @Override // com.google.android.exoplayer2.p346ui.AbstractC11509h.AbstractC11510a
        /* renamed from: a */
        public final void mo20230a(long j) {
            PlayerControlView.this.f37922O = true;
            if (PlayerControlView.this.f37949n != null) {
                PlayerControlView.this.f37949n.setText(C11599af.m19967a(PlayerControlView.this.f37951p, PlayerControlView.this.f37952q, j));
            }
        }

        @Override // com.google.android.exoplayer2.p346ui.AbstractC11509h.AbstractC11510a
        /* renamed from: a */
        public final void mo20229a(long j, boolean z) {
            PlayerControlView.this.f37922O = false;
            if (z || PlayerControlView.this.f37915H == null) {
                return;
            }
            PlayerControlView playerControlView = PlayerControlView.this;
            PlayerControlView.m20507a(playerControlView, playerControlView.f37915H, j);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: a */
        public /* synthetic */ void mo20311a(ExoPlaybackException exoPlaybackException) {
            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, exoPlaybackException);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: a */
        public /* synthetic */ void mo20310a(MediaItem mediaItem, int i) {
            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, mediaItem, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: a */
        public /* synthetic */ void mo20309a(C10840aa c10840aa) {
            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, c10840aa);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: a */
        public final void mo20308a(AbstractC10842ac.C10844b c10844b) {
            if (c10844b.mo19838a(5, 6)) {
                PlayerControlView.this.m20493f();
            }
            if (c10844b.mo19838a(5, 6, 8)) {
                PlayerControlView.this.m20483k();
            }
            if (c10844b.mo19839a(9)) {
                PlayerControlView.this.m20489h();
            }
            if (c10844b.mo19839a(10)) {
                PlayerControlView.this.m20487i();
            }
            if (c10844b.mo19838a(9, 10, 12, 0)) {
                PlayerControlView.this.m20491g();
            }
            if (c10844b.mo19838a(12, 0)) {
                PlayerControlView.this.m20485j();
            }
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: a */
        public /* synthetic */ void mo20307a(AbstractC10864al abstractC10864al, int i) {
            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, abstractC10864al, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: a */
        public /* synthetic */ void mo20306a(TrackGroupArray trackGroupArray, C11443g c11443g) {
            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, trackGroupArray, c11443g);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: a */
        public /* synthetic */ void mo20305a(boolean z) {
            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, z);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: b */
        public /* synthetic */ void mo20304b(int i) {
            AbstractC10842ac.AbstractC10843a._CC.$default$b(this, i);
        }

        @Override // com.google.android.exoplayer2.p346ui.AbstractC11509h.AbstractC11510a
        /* renamed from: b */
        public final void mo20228b(long j) {
            if (PlayerControlView.this.f37949n != null) {
                PlayerControlView.this.f37949n.setText(C11599af.m19967a(PlayerControlView.this.f37951p, PlayerControlView.this.f37952q, j));
            }
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: b */
        public /* synthetic */ void mo20303b(boolean z) {
            AbstractC10842ac.AbstractC10843a._CC.$default$b(this, z);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: b */
        public /* synthetic */ void mo20302b(boolean z, int i) {
            AbstractC10842ac.AbstractC10843a._CC.$default$b(this, z, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: c */
        public /* synthetic */ void mo20301c(List list) {
            AbstractC10842ac.AbstractC10843a._CC.$default$c(this, list);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: c */
        public /* synthetic */ void mo20300c(boolean z) {
            AbstractC10842ac.AbstractC10843a._CC.$default$c(this, z);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: c */
        public /* synthetic */ void mo20299c(boolean z, int i) {
            AbstractC10842ac.AbstractC10843a._CC.$default$c(this, z, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: d */
        public /* synthetic */ void mo20298d(int i) {
            AbstractC10842ac.AbstractC10843a._CC.$default$d(this, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: e */
        public /* synthetic */ void mo20297e(int i) {
            AbstractC10842ac.AbstractC10843a._CC.$default$e(this, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: f */
        public /* synthetic */ void mo20296f(int i) {
            AbstractC10842ac.AbstractC10843a._CC.$default$f(this, i);
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC10842ac abstractC10842ac = PlayerControlView.this.f37915H;
            if (abstractC10842ac == null) {
                return;
            }
            if (PlayerControlView.this.f37940e == view) {
                PlayerControlView.this.f37916I.mo21361c(abstractC10842ac);
            } else if (PlayerControlView.this.f37939d == view) {
                PlayerControlView.this.f37916I.mo21363b(abstractC10842ac);
            } else if (PlayerControlView.this.f37943h == view) {
                if (abstractC10842ac.mo21122n() == 4) {
                    return;
                }
                PlayerControlView.this.f37916I.mo21359e(abstractC10842ac);
            } else if (PlayerControlView.this.f37944i == view) {
                PlayerControlView.this.f37916I.mo21360d(abstractC10842ac);
            } else if (PlayerControlView.this.f37941f == view) {
                PlayerControlView.this.m20503b(abstractC10842ac);
            } else if (PlayerControlView.this.f37942g == view) {
                PlayerControlView.this.m20499c(abstractC10842ac);
            } else if (PlayerControlView.this.f37945j == view) {
                PlayerControlView.this.f37916I.mo21369a(abstractC10842ac, C11630w.m19768a(abstractC10842ac.mo21117s(), PlayerControlView.this.f37924Q));
            } else if (PlayerControlView.this.f37946k != view) {
            } else {
                PlayerControlView.this.f37916I.mo21362b(abstractC10842ac, !abstractC10842ac.mo21116t());
            }
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: p_ */
        public /* synthetic */ void mo20295p_() {
            AbstractC10842ac.AbstractC10843a._CC.$default$p_(this);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: q_ */
        public /* synthetic */ void mo20294q_() {
            AbstractC10842ac.AbstractC10843a._CC.$default$q_(this);
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.PlayerControlView$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerControlView$b.class */
    public interface AbstractC11453b {
    }

    /* renamed from: com.google.android.exoplayer2.ui.PlayerControlView$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerControlView$c.class */
    public interface AbstractC11454c {
        /* renamed from: a */
        void mo20437a();
    }

    static {
        C11257p.m21031a("goog.exo.ui");
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
        int i2 = C11479c.C11487h.exo_player_control_view;
        int i3 = 5000;
        this.f37937b = 5000;
        this.f37924Q = 0;
        this.f37923P = 200;
        this.f37930W = -9223372036854775807L;
        this.f37925R = true;
        this.f37926S = true;
        this.f37927T = true;
        this.f37928U = true;
        this.f37929V = false;
        int i4 = 15000;
        int i5 = i2;
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, C11479c.C11491l.PlayerControlView, 0, 0);
            try {
                i3 = obtainStyledAttributes.getInt(C11479c.C11491l.PlayerControlView_rewind_increment, 5000);
                i4 = obtainStyledAttributes.getInt(C11479c.C11491l.PlayerControlView_fastforward_increment, 15000);
                this.f37937b = obtainStyledAttributes.getInt(C11479c.C11491l.PlayerControlView_show_timeout, this.f37937b);
                i5 = obtainStyledAttributes.getResourceId(C11479c.C11491l.PlayerControlView_controller_layout_id, i2);
                this.f37924Q = obtainStyledAttributes.getInt(C11479c.C11491l.PlayerControlView_repeat_toggle_modes, this.f37924Q);
                this.f37925R = obtainStyledAttributes.getBoolean(C11479c.C11491l.PlayerControlView_show_rewind_button, this.f37925R);
                this.f37926S = obtainStyledAttributes.getBoolean(C11479c.C11491l.PlayerControlView_show_fastforward_button, this.f37926S);
                this.f37927T = obtainStyledAttributes.getBoolean(C11479c.C11491l.PlayerControlView_show_previous_button, this.f37927T);
                this.f37928U = obtainStyledAttributes.getBoolean(C11479c.C11491l.PlayerControlView_show_next_button, this.f37928U);
                this.f37929V = obtainStyledAttributes.getBoolean(C11479c.C11491l.PlayerControlView_show_shuffle_button, this.f37929V);
                setTimeBarMinUpdateInterval(obtainStyledAttributes.getInt(C11479c.C11491l.PlayerControlView_time_bar_min_update_interval, this.f37923P));
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f37931a = new CopyOnWriteArrayList<>();
        this.f37953r = new AbstractC10864al.C10866a();
        this.f37954s = new AbstractC10864al.C10867b();
        StringBuilder sb = new StringBuilder();
        this.f37951p = sb;
        this.f37952q = new Formatter(sb, Locale.getDefault());
        this.f37932aa = new long[0];
        this.f37933ab = new boolean[0];
        this.f37934ac = new long[0];
        this.f37935ad = new boolean[0];
        View$OnClickListenerC11452a view$OnClickListenerC11452a = new View$OnClickListenerC11452a();
        this.f37938c = view$OnClickListenerC11452a;
        this.f37916I = new C11160h(i4, i3);
        this.f37955t = new Runnable() { // from class: com.google.android.exoplayer2.ui._$$Lambda$PlayerControlView$Z_IBx2WWvSVS6SUO7bHZvi77_1g
            @Override // java.lang.Runnable
            public final void run() {
                PlayerControlView.this.m20483k();
            }
        };
        this.f37956u = new Runnable() { // from class: com.google.android.exoplayer2.ui._$$Lambda$3_JPVCMjzOr_jY2Ib8V2AwePTmI
            @Override // java.lang.Runnable
            public final void run() {
                PlayerControlView.this.m20504b();
            }
        };
        LayoutInflater.from(context).inflate(i5, this);
        setDescendantFocusability(262144);
        AbstractC11509h abstractC11509h = (AbstractC11509h) findViewById(C11479c.C11485f.exo_progress);
        View findViewById = findViewById(C11479c.C11485f.exo_progress_placeholder);
        if (abstractC11509h != null) {
            this.f37950o = abstractC11509h;
        } else if (findViewById != null) {
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2);
            defaultTimeBar.setId(C11479c.C11485f.exo_progress);
            defaultTimeBar.setLayoutParams(findViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById);
            viewGroup.removeView(findViewById);
            viewGroup.addView(defaultTimeBar, indexOfChild);
            this.f37950o = defaultTimeBar;
        } else {
            this.f37950o = null;
        }
        this.f37948m = (TextView) findViewById(C11479c.C11485f.exo_duration);
        this.f37949n = (TextView) findViewById(C11479c.C11485f.exo_position);
        AbstractC11509h abstractC11509h2 = this.f37950o;
        if (abstractC11509h2 != null) {
            abstractC11509h2.mo20231a(view$OnClickListenerC11452a);
        }
        View findViewById2 = findViewById(C11479c.C11485f.exo_play);
        this.f37941f = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(view$OnClickListenerC11452a);
        }
        View findViewById3 = findViewById(C11479c.C11485f.exo_pause);
        this.f37942g = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(view$OnClickListenerC11452a);
        }
        View findViewById4 = findViewById(C11479c.C11485f.exo_prev);
        this.f37939d = findViewById4;
        if (findViewById4 != null) {
            findViewById4.setOnClickListener(view$OnClickListenerC11452a);
        }
        View findViewById5 = findViewById(C11479c.C11485f.exo_next);
        this.f37940e = findViewById5;
        if (findViewById5 != null) {
            findViewById5.setOnClickListener(view$OnClickListenerC11452a);
        }
        View findViewById6 = findViewById(C11479c.C11485f.exo_rew);
        this.f37944i = findViewById6;
        if (findViewById6 != null) {
            findViewById6.setOnClickListener(view$OnClickListenerC11452a);
        }
        View findViewById7 = findViewById(C11479c.C11485f.exo_ffwd);
        this.f37943h = findViewById7;
        if (findViewById7 != null) {
            findViewById7.setOnClickListener(view$OnClickListenerC11452a);
        }
        ImageView imageView = (ImageView) findViewById(C11479c.C11485f.exo_repeat_toggle);
        this.f37945j = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(view$OnClickListenerC11452a);
        }
        ImageView imageView2 = (ImageView) findViewById(C11479c.C11485f.exo_shuffle);
        this.f37946k = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(view$OnClickListenerC11452a);
        }
        View findViewById8 = findViewById(C11479c.C11485f.exo_vr);
        this.f37947l = findViewById8;
        setShowVrButton(false);
        m20505a(false, false, findViewById8);
        Resources resources = context.getResources();
        this.f37911D = resources.getInteger(C11479c.C11486g.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.f37912E = resources.getInteger(C11479c.C11486g.exo_media_button_opacity_percentage_disabled) / 100.0f;
        this.f37957v = resources.getDrawable(C11479c.C11483d.exo_controls_repeat_off);
        this.f37958w = resources.getDrawable(C11479c.C11483d.exo_controls_repeat_one);
        this.f37959x = resources.getDrawable(C11479c.C11483d.exo_controls_repeat_all);
        this.f37909B = resources.getDrawable(C11479c.C11483d.exo_controls_shuffle_on);
        this.f37910C = resources.getDrawable(C11479c.C11483d.exo_controls_shuffle_off);
        this.f37960y = resources.getString(C11479c.C11489j.exo_controls_repeat_off_description);
        this.f37961z = resources.getString(C11479c.C11489j.exo_controls_repeat_one_description);
        this.f37908A = resources.getString(C11479c.C11489j.exo_controls_repeat_all_description);
        this.f37913F = resources.getString(C11479c.C11489j.exo_controls_shuffle_on_description);
        this.f37914G = resources.getString(C11479c.C11489j.exo_controls_shuffle_off_description);
    }

    /* renamed from: a */
    private void m20513a(AbstractC10842ac abstractC10842ac) {
        int mo21122n = abstractC10842ac.mo21122n();
        if (mo21122n == 1 || mo21122n == 4 || !abstractC10842ac.mo21118r()) {
            m20503b(abstractC10842ac);
        } else {
            m20499c(abstractC10842ac);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* renamed from: a */
    static /* synthetic */ void m20507a(PlayerControlView playerControlView, AbstractC10842ac abstractC10842ac, long j) {
        char c;
        int i;
        AbstractC10864al mo21176K = abstractC10842ac.mo21176K();
        if (!playerControlView.f37921N || mo21176K.m22178c()) {
            i = abstractC10842ac.mo21111y();
            c = j;
        } else {
            int mo20949a = mo21176K.mo20949a();
            int i2 = 0;
            char c2 = j;
            while (true) {
                ?? m21374a = C11158f.m21374a(mo21176K.mo20853a(i2, playerControlView.f37954s, 0L).f35021q);
                i = i2;
                c = c2;
                if (c2 < m21374a) {
                    break;
                } else if (i2 == mo20949a - 1) {
                    c = m21374a;
                    i = i2;
                    break;
                } else {
                    c2 -= m21374a;
                    i2++;
                }
            }
        }
        if (!playerControlView.m20512a(abstractC10842ac, i, c)) {
            playerControlView.m20483k();
        }
    }

    /* renamed from: a */
    private void m20505a(boolean z, boolean z2, View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z2);
        view.setAlpha(z2 ? this.f37911D : this.f37912E);
        view.setVisibility(z ? 0 : 8);
    }

    /* renamed from: a */
    private static boolean m20515a(int i) {
        return i == 90 || i == 89 || i == 85 || i == 79 || i == 126 || i == 127 || i == 87 || i == 88;
    }

    /* renamed from: a */
    private boolean m20512a(AbstractC10842ac abstractC10842ac, int i, long j) {
        return this.f37916I.mo21368a(abstractC10842ac, i, j);
    }

    /* renamed from: a */
    private static boolean m20511a(AbstractC10864al abstractC10864al, AbstractC10864al.C10867b c10867b) {
        if (abstractC10864al.mo20949a() > 100) {
            return false;
        }
        int mo20949a = abstractC10864al.mo20949a();
        for (int i = 0; i < mo20949a; i++) {
            if (abstractC10864al.mo20853a(i, c10867b, 0L).f35021q == -9223372036854775807L) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public void m20503b(AbstractC10842ac abstractC10842ac) {
        int mo21122n = abstractC10842ac.mo21122n();
        if (mo21122n == 1) {
            if (this.f37918K == null) {
                this.f37916I.mo21370a(abstractC10842ac);
            }
        } else if (mo21122n == 4) {
            m20512a(abstractC10842ac, abstractC10842ac.mo21111y(), -9223372036854775807L);
        }
        this.f37916I.mo21365a(abstractC10842ac, true);
    }

    /* renamed from: c */
    public void m20499c(AbstractC10842ac abstractC10842ac) {
        this.f37916I.mo21365a(abstractC10842ac, false);
    }

    /* renamed from: d */
    private void m20497d() {
        removeCallbacks(this.f37956u);
        if (this.f37937b <= 0) {
            this.f37930W = -9223372036854775807L;
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        int i = this.f37937b;
        this.f37930W = uptimeMillis + i;
        if (!this.f37919L) {
            return;
        }
        postDelayed(this.f37956u, i);
    }

    /* renamed from: e */
    private void m20495e() {
        m20493f();
        m20491g();
        m20489h();
        m20487i();
        m20485j();
    }

    /* renamed from: f */
    public void m20493f() {
        boolean z;
        if (!m20500c() || !this.f37919L) {
            return;
        }
        boolean m20479m = m20479m();
        View view = this.f37941f;
        if (view != null) {
            boolean z2 = (m20479m && view.isFocused()) | false;
            this.f37941f.setVisibility(m20479m ? 8 : 0);
            z = z2;
        } else {
            z = false;
        }
        View view2 = this.f37942g;
        boolean z3 = z;
        if (view2 != null) {
            z3 = z | (!m20479m && view2.isFocused());
            View view3 = this.f37942g;
            int i = 8;
            if (m20479m) {
                i = 0;
            }
            view3.setVisibility(i);
        }
        if (!z3) {
            return;
        }
        m20481l();
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m20491g() {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p346ui.PlayerControlView.m20491g():void");
    }

    /* renamed from: h */
    public void m20489h() {
        ImageView imageView;
        if (!m20500c() || !this.f37919L || (imageView = this.f37945j) == null) {
            return;
        }
        if (this.f37924Q == 0) {
            m20505a(false, false, (View) imageView);
            return;
        }
        AbstractC10842ac abstractC10842ac = this.f37915H;
        if (abstractC10842ac == null) {
            m20505a(true, false, (View) imageView);
            this.f37945j.setImageDrawable(this.f37957v);
            this.f37945j.setContentDescription(this.f37960y);
            return;
        }
        m20505a(true, true, (View) imageView);
        int mo21117s = abstractC10842ac.mo21117s();
        if (mo21117s == 0) {
            this.f37945j.setImageDrawable(this.f37957v);
            this.f37945j.setContentDescription(this.f37960y);
        } else if (mo21117s == 1) {
            this.f37945j.setImageDrawable(this.f37958w);
            this.f37945j.setContentDescription(this.f37961z);
        } else if (mo21117s == 2) {
            this.f37945j.setImageDrawable(this.f37959x);
            this.f37945j.setContentDescription(this.f37908A);
        }
        this.f37945j.setVisibility(0);
    }

    /* renamed from: i */
    public void m20487i() {
        ImageView imageView;
        String str;
        ImageView imageView2;
        if (!m20500c() || !this.f37919L || (imageView = this.f37946k) == null) {
            return;
        }
        AbstractC10842ac abstractC10842ac = this.f37915H;
        if (!this.f37929V) {
            m20505a(false, false, (View) imageView);
            return;
        }
        if (abstractC10842ac == null) {
            m20505a(true, false, (View) imageView);
            this.f37946k.setImageDrawable(this.f37910C);
            imageView2 = this.f37946k;
        } else {
            m20505a(true, true, (View) imageView);
            this.f37946k.setImageDrawable(abstractC10842ac.mo21116t() ? this.f37909B : this.f37910C);
            ImageView imageView3 = this.f37946k;
            imageView2 = imageView3;
            if (abstractC10842ac.mo21116t()) {
                imageView2 = imageView3;
                str = this.f37913F;
                imageView2.setContentDescription(str);
            }
        }
        str = this.f37914G;
        imageView2.setContentDescription(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v63 */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r1v49 */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* renamed from: j */
    public void m20485j() {
        int i;
        ?? r14;
        int i2;
        AbstractC10842ac abstractC10842ac = this.f37915H;
        if (abstractC10842ac == null) {
            return;
        }
        this.f37921N = this.f37920M && m20511a(abstractC10842ac.mo21176K(), this.f37954s);
        this.f37936ae = 0L;
        AbstractC10864al mo21176K = abstractC10842ac.mo21176K();
        if (!mo21176K.m22178c()) {
            int mo21111y = abstractC10842ac.mo21111y();
            boolean z = this.f37921N;
            int i3 = z ? 0 : mo21111y;
            int mo20949a = z ? mo21176K.mo20949a() - 1 : mo21111y;
            r14 = false;
            i = 0;
            while (true) {
                if (i3 > mo20949a) {
                    break;
                }
                if (i3 == mo21111y) {
                    this.f37936ae = C11158f.m21374a(r14 == true ? 1L : 0L);
                }
                mo21176K.mo20853a(i3, this.f37954s, 0L);
                if (this.f37954s.f35021q == -9223372036854775807L) {
                    C11593a.m20019b(!this.f37921N);
                    break;
                }
                for (int i4 = this.f37954s.f35018n; i4 <= this.f37954s.f35019o; i4++) {
                    mo21176K.mo20947a(i4, this.f37953r, false);
                    int i5 = this.f37953r.f35003f.f37026c;
                    int i6 = 0;
                    while (i6 < i5) {
                        ?? m22177a = this.f37953r.m22177a(i6);
                        ?? r22 = m22177a;
                        if (m22177a == Long.MIN_VALUE) {
                            i2 = i;
                            if (this.f37953r.f35001d != -9223372036854775807L) {
                                r22 = this.f37953r.f35001d;
                            } else {
                                i6++;
                                i = i2;
                            }
                        }
                        long j = r22 + this.f37953r.f35002e;
                        i2 = i;
                        if (j >= 0) {
                            long[] jArr = this.f37932aa;
                            if (i == jArr.length) {
                                int length = jArr.length == 0 ? 1 : jArr.length * 2;
                                this.f37932aa = Arrays.copyOf(jArr, length);
                                this.f37933ab = Arrays.copyOf(this.f37933ab, length);
                            }
                            this.f37932aa[i] = C11158f.m21374a((r14 == true ? 1L : 0L) + j);
                            this.f37933ab[i] = this.f37953r.m22169c(i6);
                            i2 = i + 1;
                        }
                        i6++;
                        i = i2;
                    }
                }
                r14 = (r14 == true ? 1L : 0L) + this.f37954s.f35021q;
                i3++;
            }
        } else {
            r14 = false;
            i = 0;
        }
        long m21374a = C11158f.m21374a(r14 == true ? 1L : 0L);
        TextView textView = this.f37948m;
        if (textView != null) {
            textView.setText(C11599af.m19967a(this.f37951p, this.f37952q, m21374a));
        }
        AbstractC11509h abstractC11509h = this.f37950o;
        if (abstractC11509h != null) {
            abstractC11509h.setDuration(m21374a);
            int length2 = this.f37934ac.length;
            int i7 = i + length2;
            long[] jArr2 = this.f37932aa;
            if (i7 > jArr2.length) {
                this.f37932aa = Arrays.copyOf(jArr2, i7);
                this.f37933ab = Arrays.copyOf(this.f37933ab, i7);
            }
            System.arraycopy(this.f37934ac, 0, this.f37932aa, i, length2);
            System.arraycopy(this.f37935ad, 0, this.f37933ab, i, length2);
            this.f37950o.setAdGroupTimesMs(this.f37932aa, this.f37933ab, i7);
        }
        m20483k();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.google.android.exoplayer2.ui.h] */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
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
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r2v1, types: [long] */
    /* JADX WARN: Type inference failed for: r3v1, types: [long] */
    /* renamed from: k */
    public void m20483k() {
        ?? r13;
        if (!m20500c() || !this.f37919L) {
            return;
        }
        AbstractC10842ac abstractC10842ac = this.f37915H;
        ?? r11 = 0;
        if (abstractC10842ac != null) {
            r11 = this.f37936ae + abstractC10842ac.mo21181F();
            r13 = this.f37936ae + abstractC10842ac.mo21180G();
        } else {
            r13 = false;
        }
        TextView textView = this.f37949n;
        if (textView != null && !this.f37922O) {
            textView.setText(C11599af.m19967a(this.f37951p, this.f37952q, (long) r11));
        }
        ?? r0 = this.f37950o;
        if (r0 != 0) {
            r0.setPosition(r11);
            this.f37950o.setBufferedPosition(r13 == true ? 1L : 0L);
        }
        removeCallbacks(this.f37955t);
        int mo21122n = abstractC10842ac == null ? 1 : abstractC10842ac.mo21122n();
        if (abstractC10842ac == null || !abstractC10842ac.mo21938A_()) {
            if (mo21122n == 4 || mo21122n == 1) {
                return;
            }
            postDelayed(this.f37955t, 1000L);
            return;
        }
        AbstractC11509h abstractC11509h = this.f37950o;
        long min = Math.min((abstractC11509h != null ? abstractC11509h.mo20232a() : true) == true ? 1L : 0L, 1000 - (r11 % 1000));
        float f = abstractC10842ac.mo21114v().f34892b;
        ?? r112 = true;
        if (f > BitmapDescriptorFactory.HUE_RED) {
            r112 = ((float) min) / f;
        }
        postDelayed(this.f37955t, C11599af.m19993a(r112 == true ? 1L : 0L, this.f37923P, 1000L));
    }

    /* renamed from: l */
    private void m20481l() {
        View view;
        View view2;
        boolean m20479m = m20479m();
        if (!m20479m && (view2 = this.f37941f) != null) {
            view2.requestFocus();
        } else if (!m20479m || (view = this.f37942g) == null) {
        } else {
            view.requestFocus();
        }
    }

    /* renamed from: m */
    private boolean m20479m() {
        AbstractC10842ac abstractC10842ac = this.f37915H;
        return (abstractC10842ac == null || abstractC10842ac.mo21122n() == 4 || this.f37915H.mo21122n() == 1 || !this.f37915H.mo21118r()) ? false : true;
    }

    /* renamed from: a */
    public final void m20516a() {
        if (!m20500c()) {
            setVisibility(0);
            Iterator<AbstractC11454c> it2 = this.f37931a.iterator();
            while (it2.hasNext()) {
                getVisibility();
                it2.next().mo20437a();
            }
            m20495e();
            m20481l();
        }
        m20497d();
    }

    /* renamed from: a */
    public final void m20510a(AbstractC11454c abstractC11454c) {
        C11593a.m20020b(abstractC11454c);
        this.f37931a.add(abstractC11454c);
    }

    /* renamed from: a */
    public final boolean m20514a(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        AbstractC10842ac abstractC10842ac = this.f37915H;
        if (abstractC10842ac == null || !m20515a(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() != 0) {
            return true;
        }
        if (keyCode == 90) {
            if (abstractC10842ac.mo21122n() == 4) {
                return true;
            }
            this.f37916I.mo21359e(abstractC10842ac);
            return true;
        } else if (keyCode == 89) {
            this.f37916I.mo21360d(abstractC10842ac);
            return true;
        } else if (keyEvent.getRepeatCount() != 0) {
            return true;
        } else {
            if (keyCode == 79 || keyCode == 85) {
                m20513a(abstractC10842ac);
                return true;
            } else if (keyCode == 87) {
                this.f37916I.mo21361c(abstractC10842ac);
                return true;
            } else if (keyCode == 88) {
                this.f37916I.mo21363b(abstractC10842ac);
                return true;
            } else if (keyCode == 126) {
                m20503b(abstractC10842ac);
                return true;
            } else if (keyCode != 127) {
                return true;
            } else {
                m20499c(abstractC10842ac);
                return true;
            }
        }
    }

    /* renamed from: b */
    public void m20504b() {
        if (m20500c()) {
            setVisibility(8);
            Iterator<AbstractC11454c> it2 = this.f37931a.iterator();
            while (it2.hasNext()) {
                getVisibility();
                it2.next().mo20437a();
            }
            removeCallbacks(this.f37955t);
            removeCallbacks(this.f37956u);
            this.f37930W = -9223372036854775807L;
        }
    }

    /* renamed from: c */
    public final boolean m20500c() {
        return getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return m20514a(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            removeCallbacks(this.f37956u);
        } else if (motionEvent.getAction() == 1) {
            m20497d();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f37919L = true;
        long j = this.f37930W;
        if (j != -9223372036854775807L) {
            long uptimeMillis = j - SystemClock.uptimeMillis();
            if (uptimeMillis <= 0) {
                m20504b();
            } else {
                postDelayed(this.f37956u, uptimeMillis);
            }
        } else if (m20500c()) {
            m20497d();
        }
        m20495e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f37919L = false;
        removeCallbacks(this.f37955t);
        removeCallbacks(this.f37956u);
    }

    public void setControlDispatcher(AbstractC11159g abstractC11159g) {
        if (this.f37916I != abstractC11159g) {
            this.f37916I = abstractC11159g;
            m20491g();
        }
    }

    public void setExtraAdGroupMarkers(long[] jArr, boolean[] zArr) {
        boolean z = false;
        if (jArr == null) {
            this.f37934ac = new long[0];
            this.f37935ad = new boolean[0];
        } else {
            boolean[] zArr2 = (boolean[]) C11593a.m20020b(zArr);
            if (jArr.length == zArr2.length) {
                z = true;
            }
            C11593a.m20022a(z);
            this.f37934ac = jArr;
            this.f37935ad = zArr2;
        }
        m20485j();
    }

    @Deprecated
    public void setFastForwardIncrementMs(int i) {
        AbstractC11159g abstractC11159g = this.f37916I;
        if (abstractC11159g instanceof C11160h) {
            ((C11160h) abstractC11159g).f36545b = i;
            m20491g();
        }
    }

    @Deprecated
    public void setPlaybackPreparer(AbstractC10841ab abstractC10841ab) {
        this.f37918K = abstractC10841ab;
    }

    public void setPlayer(AbstractC10842ac abstractC10842ac) {
        C11593a.m20019b(Looper.myLooper() == Looper.getMainLooper());
        boolean z = true;
        if (abstractC10842ac != null) {
            z = abstractC10842ac.mo21123m() == Looper.getMainLooper();
        }
        C11593a.m20022a(z);
        AbstractC10842ac abstractC10842ac2 = this.f37915H;
        if (abstractC10842ac2 == abstractC10842ac) {
            return;
        }
        if (abstractC10842ac2 != null) {
            abstractC10842ac2.mo21144b(this.f37938c);
        }
        this.f37915H = abstractC10842ac;
        if (abstractC10842ac != null) {
            abstractC10842ac.mo21167a(this.f37938c);
        }
        m20495e();
    }

    public void setProgressUpdateListener(AbstractC11453b abstractC11453b) {
        this.f37917J = abstractC11453b;
    }

    public void setRepeatToggleModes(int i) {
        this.f37924Q = i;
        AbstractC10842ac abstractC10842ac = this.f37915H;
        if (abstractC10842ac != null) {
            int mo21117s = abstractC10842ac.mo21117s();
            if (i == 0 && mo21117s != 0) {
                this.f37916I.mo21369a(this.f37915H, 0);
            } else if (i == 1 && mo21117s == 2) {
                this.f37916I.mo21369a(this.f37915H, 1);
            } else if (i == 2 && mo21117s == 1) {
                this.f37916I.mo21369a(this.f37915H, 2);
            }
        }
        m20489h();
    }

    @Deprecated
    public void setRewindIncrementMs(int i) {
        AbstractC11159g abstractC11159g = this.f37916I;
        if (abstractC11159g instanceof C11160h) {
            ((C11160h) abstractC11159g).f36544a = i;
            m20491g();
        }
    }

    public void setShowFastForwardButton(boolean z) {
        this.f37926S = z;
        m20491g();
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        this.f37920M = z;
        m20485j();
    }

    public void setShowNextButton(boolean z) {
        this.f37928U = z;
        m20491g();
    }

    public void setShowPreviousButton(boolean z) {
        this.f37927T = z;
        m20491g();
    }

    public void setShowRewindButton(boolean z) {
        this.f37925R = z;
        m20491g();
    }

    public void setShowShuffleButton(boolean z) {
        this.f37929V = z;
        m20487i();
    }

    public void setShowTimeoutMs(int i) {
        this.f37937b = i;
        if (m20500c()) {
            m20497d();
        }
    }

    public void setShowVrButton(boolean z) {
        View view = this.f37947l;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
    }

    public void setTimeBarMinUpdateInterval(int i) {
        this.f37923P = C11599af.m19997a(i, 16, 1000);
    }

    public void setVrButtonListener(View.OnClickListener onClickListener) {
        View view = this.f37947l;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            View view2 = this.f37947l;
            boolean z = true;
            boolean z2 = view2 != null && view2.getVisibility() == 0;
            if (onClickListener == null) {
                z = false;
            }
            m20505a(z2, z, this.f37947l);
        }
    }
}
