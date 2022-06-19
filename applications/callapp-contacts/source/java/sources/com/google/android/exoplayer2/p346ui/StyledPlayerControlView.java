package com.google.android.exoplayer2.p346ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.content.res.C0804f;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.AbstractC10841ab;
import com.google.android.exoplayer2.AbstractC10842ac;
import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.AbstractC11159g;
import com.google.android.exoplayer2.AbstractC11168m;
import com.google.android.exoplayer2.C10840aa;
import com.google.android.exoplayer2.C11158f;
import com.google.android.exoplayer2.C11160h;
import com.google.android.exoplayer2.C11257p;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.p346ui.AbstractC11509h;
import com.google.android.exoplayer2.p346ui.C11479c;
import com.google.android.exoplayer2.p346ui.StyledPlayerControlView;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.AbstractC11440e;
import com.google.android.exoplayer2.trackselection.AbstractC11442f;
import com.google.android.exoplayer2.trackselection.AbstractC11444h;
import com.google.android.exoplayer2.trackselection.C11443g;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11630w;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.sinch.verification.flashcall.initialization.FlashCallInitializationDetails;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: com.google.android.exoplayer2.ui.StyledPlayerControlView */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView.class */
public class StyledPlayerControlView extends FrameLayout {

    /* renamed from: A */
    private final String f37993A;

    /* renamed from: B */
    private final String f37994B;

    /* renamed from: C */
    private final Drawable f37995C;

    /* renamed from: D */
    private final Drawable f37996D;

    /* renamed from: E */
    private final float f37997E;

    /* renamed from: F */
    private final float f37998F;

    /* renamed from: G */
    private final String f37999G;

    /* renamed from: H */
    private final String f38000H;

    /* renamed from: I */
    private final Drawable f38001I;

    /* renamed from: J */
    private final Drawable f38002J;

    /* renamed from: K */
    private final String f38003K;

    /* renamed from: L */
    private final String f38004L;

    /* renamed from: M */
    private final Drawable f38005M;

    /* renamed from: N */
    private final Drawable f38006N;

    /* renamed from: O */
    private final String f38007O;

    /* renamed from: P */
    private final String f38008P;

    /* renamed from: Q */
    private AbstractC10842ac f38009Q;

    /* renamed from: R */
    private AbstractC11159g f38010R;

    /* renamed from: S */
    private AbstractC11461e f38011S;

    /* renamed from: T */
    private AbstractC10841ab f38012T;

    /* renamed from: U */
    private AbstractC11459c f38013U;

    /* renamed from: V */
    private boolean f38014V;

    /* renamed from: W */
    private boolean f38015W;

    /* renamed from: a */
    final CopyOnWriteArrayList<AbstractC11468l> f38016a;

    /* renamed from: aA */
    private View f38017aA;

    /* renamed from: aB */
    private View f38018aB;

    /* renamed from: aC */
    private View f38019aC;

    /* renamed from: aa */
    private boolean f38020aa;

    /* renamed from: ab */
    private boolean f38021ab;

    /* renamed from: ac */
    private boolean f38022ac;

    /* renamed from: ad */
    private int f38023ad;

    /* renamed from: ae */
    private int f38024ae;

    /* renamed from: af */
    private long[] f38025af;

    /* renamed from: ag */
    private boolean[] f38026ag;

    /* renamed from: ah */
    private long[] f38027ah;

    /* renamed from: ai */
    private boolean[] f38028ai;

    /* renamed from: aj */
    private long f38029aj;

    /* renamed from: ak */
    private long f38030ak;

    /* renamed from: al */
    private long f38031al;

    /* renamed from: am */
    private Resources f38032am;

    /* renamed from: an */
    private RecyclerView f38033an;

    /* renamed from: ao */
    private C11463g f38034ao;

    /* renamed from: ap */
    private C11460d f38035ap;

    /* renamed from: aq */
    private PopupWindow f38036aq;

    /* renamed from: ar */
    private boolean f38037ar;

    /* renamed from: as */
    private int f38038as;

    /* renamed from: at */
    private DefaultTrackSelector f38039at;

    /* renamed from: au */
    private AbstractC11467k f38040au;

    /* renamed from: av */
    private AbstractC11467k f38041av;

    /* renamed from: aw */
    private AbstractC11511i f38042aw;

    /* renamed from: ax */
    private ImageView f38043ax;

    /* renamed from: ay */
    private ImageView f38044ay;

    /* renamed from: az */
    private ImageView f38045az;

    /* renamed from: b */
    int f38046b;

    /* renamed from: c */
    C11497e f38047c;

    /* renamed from: d */
    private final View$OnClickListenerC11458b f38048d;

    /* renamed from: e */
    private final View f38049e;

    /* renamed from: f */
    private final View f38050f;

    /* renamed from: g */
    private final View f38051g;

    /* renamed from: h */
    private final View f38052h;

    /* renamed from: i */
    private final View f38053i;

    /* renamed from: j */
    private final TextView f38054j;

    /* renamed from: k */
    private final TextView f38055k;

    /* renamed from: l */
    private final ImageView f38056l;

    /* renamed from: m */
    private final ImageView f38057m;

    /* renamed from: n */
    private final View f38058n;

    /* renamed from: o */
    private final TextView f38059o;

    /* renamed from: p */
    private final TextView f38060p;

    /* renamed from: q */
    private final AbstractC11509h f38061q;

    /* renamed from: r */
    private final StringBuilder f38062r;

    /* renamed from: s */
    private final Formatter f38063s;

    /* renamed from: t */
    private final AbstractC10864al.C10866a f38064t;

    /* renamed from: u */
    private final AbstractC10864al.C10867b f38065u;

    /* renamed from: v */
    private final Runnable f38066v;

    /* renamed from: w */
    private final Drawable f38067w;

    /* renamed from: x */
    private final Drawable f38068x;

    /* renamed from: y */
    private final Drawable f38069y;

    /* renamed from: z */
    private final String f38070z;

    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerControlView$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$a.class */
    public final class C11457a extends AbstractC11467k {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private C11457a() {
            super();
            StyledPlayerControlView.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ void m20360a(View view) {
            if (StyledPlayerControlView.this.f38039at != null) {
                DefaultTrackSelector.C11427c buildUpon = StyledPlayerControlView.this.f38039at.m20603a().buildUpon();
                for (int i = 0; i < this.f38093b.size(); i++) {
                    buildUpon = buildUpon.m20581a(this.f38093b.get(i).intValue());
                }
                ((DefaultTrackSelector) C11593a.m20020b(StyledPlayerControlView.this.f38039at)).m20594a(buildUpon);
            }
            StyledPlayerControlView.this.f38034ao.f38081a[1] = StyledPlayerControlView.this.getResources().getString(C11479c.C11489j.exo_track_selection_auto);
            StyledPlayerControlView.this.f38036aq.dismiss();
        }

        @Override // com.google.android.exoplayer2.p346ui.StyledPlayerControlView.AbstractC11467k
        /* renamed from: a */
        public final void mo20351a(C11464h c11464h) {
            boolean z;
            c11464h.f38085r.setText(C11479c.C11489j.exo_track_selection_auto);
            DefaultTrackSelector.Parameters m20603a = ((DefaultTrackSelector) C11593a.m20020b(StyledPlayerControlView.this.f38039at)).m20603a();
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= this.f38093b.size()) {
                    z = false;
                    break;
                }
                int intValue = this.f38093b.get(i2).intValue();
                if (m20603a.hasSelectionOverride(intValue, ((AbstractC11440e.C11441a) C11593a.m20020b(this.f38095d)).f37823c[intValue])) {
                    z = true;
                    break;
                }
                i2++;
            }
            View view = c11464h.f38086s;
            if (z) {
                i = 4;
            }
            view.setVisibility(i);
            c11464h.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$StyledPlayerControlView$a$7V5Ei9jIKnf71jUKrok0q_d0fhg
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    StyledPlayerControlView.C11457a.this.m20360a(view2);
                }
            });
        }

        @Override // com.google.android.exoplayer2.p346ui.StyledPlayerControlView.AbstractC11467k
        /* renamed from: a */
        public final void mo20348a(String str) {
            StyledPlayerControlView.this.f38034ao.f38081a[1] = str;
        }

        @Override // com.google.android.exoplayer2.p346ui.StyledPlayerControlView.AbstractC11467k
        /* renamed from: a */
        public final void mo20347a(List<Integer> list, List<C11466j> list2, AbstractC11440e.C11441a c11441a) {
            boolean z;
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= list.size()) {
                    z = false;
                    break;
                }
                int intValue = list.get(i2).intValue();
                TrackGroupArray trackGroupArray = c11441a.f37823c[intValue];
                if (StyledPlayerControlView.this.f38039at != null && StyledPlayerControlView.this.f38039at.m20603a().hasSelectionOverride(intValue, trackGroupArray)) {
                    z = true;
                    break;
                }
                i2++;
            }
            if (!list2.isEmpty()) {
                if (z) {
                    while (true) {
                        if (i >= list2.size()) {
                            break;
                        }
                        C11466j c11466j = list2.get(i);
                        if (c11466j.f38092e) {
                            StyledPlayerControlView.this.f38034ao.f38081a[1] = c11466j.f38091d;
                            break;
                        }
                        i++;
                    }
                } else {
                    StyledPlayerControlView.this.f38034ao.f38081a[1] = StyledPlayerControlView.this.getResources().getString(C11479c.C11489j.exo_track_selection_auto);
                }
            } else {
                StyledPlayerControlView.this.f38034ao.f38081a[1] = StyledPlayerControlView.this.getResources().getString(C11479c.C11489j.exo_track_selection_none);
            }
            this.f38093b = list;
            this.f38094c = list2;
            this.f38095d = c11441a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerControlView$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$b.class */
    public final class View$OnClickListenerC11458b implements View.OnClickListener, PopupWindow.OnDismissListener, AbstractC10842ac.AbstractC10843a, AbstractC11509h.AbstractC11510a {
        private View$OnClickListenerC11458b() {
            StyledPlayerControlView.this = r4;
        }

        @Override // com.google.android.exoplayer2.p346ui.AbstractC11509h.AbstractC11510a
        /* renamed from: a */
        public final void mo20230a(long j) {
            StyledPlayerControlView.this.f38022ac = true;
            if (StyledPlayerControlView.this.f38060p != null) {
                StyledPlayerControlView.this.f38060p.setText(C11599af.m19967a(StyledPlayerControlView.this.f38062r, StyledPlayerControlView.this.f38063s, j));
            }
            StyledPlayerControlView.this.f38047c.m20249b();
        }

        @Override // com.google.android.exoplayer2.p346ui.AbstractC11509h.AbstractC11510a
        /* renamed from: a */
        public final void mo20229a(long j, boolean z) {
            StyledPlayerControlView.this.f38022ac = false;
            if (!z && StyledPlayerControlView.this.f38009Q != null) {
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                StyledPlayerControlView.m20406a(styledPlayerControlView, styledPlayerControlView.f38009Q, j);
            }
            StyledPlayerControlView.this.f38047c.m20258a();
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
                StyledPlayerControlView.this.m20395e();
            }
            if (c10844b.mo19838a(5, 6, 8)) {
                StyledPlayerControlView.this.m20377n();
            }
            if (c10844b.mo19839a(9)) {
                StyledPlayerControlView.this.m20387i();
            }
            if (c10844b.mo19839a(10)) {
                StyledPlayerControlView.this.m20385j();
            }
            if (c10844b.mo19838a(9, 10, 12, 0)) {
                StyledPlayerControlView.this.m20393f();
            }
            if (c10844b.mo19838a(12, 0)) {
                StyledPlayerControlView.this.m20379m();
            }
            if (c10844b.mo19839a(13)) {
                StyledPlayerControlView.this.m20375o();
            }
            if (c10844b.mo19839a(2)) {
                StyledPlayerControlView.this.m20383k();
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
            if (StyledPlayerControlView.this.f38060p != null) {
                StyledPlayerControlView.this.f38060p.setText(C11599af.m19967a(StyledPlayerControlView.this.f38062r, StyledPlayerControlView.this.f38063s, j));
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
            AbstractC10842ac abstractC10842ac = StyledPlayerControlView.this.f38009Q;
            if (abstractC10842ac == null) {
                return;
            }
            StyledPlayerControlView.this.f38047c.m20258a();
            if (StyledPlayerControlView.this.f38050f == view) {
                StyledPlayerControlView.this.f38010R.mo21361c(abstractC10842ac);
            } else if (StyledPlayerControlView.this.f38049e == view) {
                StyledPlayerControlView.this.f38010R.mo21363b(abstractC10842ac);
            } else if (StyledPlayerControlView.this.f38052h == view) {
                if (abstractC10842ac.mo21122n() == 4) {
                    return;
                }
                StyledPlayerControlView.this.f38010R.mo21359e(abstractC10842ac);
            } else if (StyledPlayerControlView.this.f38053i == view) {
                StyledPlayerControlView.this.f38010R.mo21360d(abstractC10842ac);
            } else if (StyledPlayerControlView.this.f38051g == view) {
                StyledPlayerControlView.this.m20416a(abstractC10842ac);
            } else if (StyledPlayerControlView.this.f38056l == view) {
                StyledPlayerControlView.this.f38010R.mo21369a(abstractC10842ac, C11630w.m19768a(abstractC10842ac.mo21117s(), StyledPlayerControlView.this.f38024ae));
            } else if (StyledPlayerControlView.this.f38057m == view) {
                StyledPlayerControlView.this.f38010R.mo21362b(abstractC10842ac, !abstractC10842ac.mo21116t());
            } else if (StyledPlayerControlView.this.f38017aA == view) {
                StyledPlayerControlView.this.f38047c.m20249b();
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                styledPlayerControlView.m20417a(styledPlayerControlView.f38034ao);
            } else if (StyledPlayerControlView.this.f38018aB == view) {
                StyledPlayerControlView.this.f38047c.m20249b();
                StyledPlayerControlView styledPlayerControlView2 = StyledPlayerControlView.this;
                styledPlayerControlView2.m20417a(styledPlayerControlView2.f38035ap);
            } else if (StyledPlayerControlView.this.f38019aC == view) {
                StyledPlayerControlView.this.f38047c.m20249b();
                StyledPlayerControlView styledPlayerControlView3 = StyledPlayerControlView.this;
                styledPlayerControlView3.m20417a(styledPlayerControlView3.f38041av);
            } else if (StyledPlayerControlView.this.f38043ax != view) {
            } else {
                StyledPlayerControlView.this.f38047c.m20249b();
                StyledPlayerControlView styledPlayerControlView4 = StyledPlayerControlView.this;
                styledPlayerControlView4.m20417a(styledPlayerControlView4.f38040au);
            }
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public final void onDismiss() {
            if (StyledPlayerControlView.this.f38037ar) {
                StyledPlayerControlView.this.f38047c.m20258a();
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

    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerControlView$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$c.class */
    public interface AbstractC11459c {
    }

    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerControlView$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$d.class */
    public final class C11460d extends RecyclerView.AbstractC2626a<C11464h> {

        /* renamed from: b */
        private final String[] f38074b;

        /* renamed from: c */
        private final int[] f38075c;

        /* renamed from: d */
        private int f38076d;

        public C11460d(String[] strArr, int[] iArr) {
            StyledPlayerControlView.this = r4;
            this.f38074b = strArr;
            this.f38075c = iArr;
        }

        /* renamed from: a */
        public /* synthetic */ void m20358a(int i, View view) {
            if (i != this.f38076d) {
                StyledPlayerControlView.m20410a(StyledPlayerControlView.this, this.f38075c[i] / 100.0f);
            }
            StyledPlayerControlView.this.f38036aq.dismiss();
        }

        /* renamed from: a */
        public final void m20359a(float f) {
            int round = Math.round(f * 100.0f);
            int i = 0;
            int i2 = 0;
            int i3 = Integer.MAX_VALUE;
            while (true) {
                int i4 = i3;
                int[] iArr = this.f38075c;
                if (i >= iArr.length) {
                    this.f38076d = i2;
                    return;
                }
                int abs = Math.abs(round - iArr[i]);
                int i5 = i4;
                if (abs < i4) {
                    i2 = i;
                    i5 = abs;
                }
                i++;
                i3 = i5;
            }
        }

        /* renamed from: b */
        public final String m20357b() {
            return this.f38074b[this.f38076d];
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public final int getItemCount() {
            return this.f38074b.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public final /* synthetic */ void onBindViewHolder(C11464h c11464h, final int i) {
            C11464h c11464h2 = c11464h;
            if (i < this.f38074b.length) {
                c11464h2.f38085r.setText(this.f38074b[i]);
            }
            c11464h2.f38086s.setVisibility(i == this.f38076d ? 0 : 4);
            c11464h2.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$StyledPlayerControlView$d$AjfN1NWBEocCIflyTm7klrm6pm4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StyledPlayerControlView.C11460d.this.m20358a(i, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public final /* synthetic */ C11464h onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new C11464h(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(C11479c.C11487h.exo_styled_sub_settings_list_item, (ViewGroup) null));
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerControlView$e */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$e.class */
    public interface AbstractC11461e {
    }

    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerControlView$f */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$f.class */
    public final class C11462f extends RecyclerView.AbstractC2657v {

        /* renamed from: s */
        private final TextView f38078s;

        /* renamed from: t */
        private final TextView f38079t;

        /* renamed from: u */
        private final ImageView f38080u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11462f(View view) {
            super(view);
            StyledPlayerControlView.this = r6;
            this.f38078s = (TextView) view.findViewById(C11479c.C11485f.exo_main_text);
            this.f38079t = (TextView) view.findViewById(C11479c.C11485f.exo_sub_text);
            this.f38080u = (ImageView) view.findViewById(C11479c.C11485f.exo_icon);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$StyledPlayerControlView$f$VP_OyqunfLgpgyuvXSLHi4sU7NY
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    StyledPlayerControlView.C11462f.this.m20356a(view2);
                }
            });
        }

        /* renamed from: a */
        public /* synthetic */ void m20356a(View view) {
            StyledPlayerControlView.m20409a(StyledPlayerControlView.this, getAdapterPosition());
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerControlView$g */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$g.class */
    public final class C11463g extends RecyclerView.AbstractC2626a<C11462f> {

        /* renamed from: a */
        final String[] f38081a;

        /* renamed from: c */
        private final String[] f38083c;

        /* renamed from: d */
        private final Drawable[] f38084d;

        public C11463g(String[] strArr, Drawable[] drawableArr) {
            StyledPlayerControlView.this = r4;
            this.f38083c = strArr;
            this.f38081a = new String[strArr.length];
            this.f38084d = drawableArr;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public final int getItemCount() {
            return this.f38083c.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public final long getItemId(int i) {
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public final /* synthetic */ void onBindViewHolder(C11462f c11462f, int i) {
            C11462f c11462f2 = c11462f;
            c11462f2.f38078s.setText(this.f38083c[i]);
            if (this.f38081a[i] == null) {
                c11462f2.f38079t.setVisibility(8);
            } else {
                c11462f2.f38079t.setText(this.f38081a[i]);
            }
            if (this.f38084d[i] == null) {
                c11462f2.f38080u.setVisibility(8);
            } else {
                c11462f2.f38080u.setImageDrawable(this.f38084d[i]);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public final /* synthetic */ C11462f onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new C11462f(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(C11479c.C11487h.exo_styled_settings_list_item, (ViewGroup) null));
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerControlView$h */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$h.class */
    public static final class C11464h extends RecyclerView.AbstractC2657v {

        /* renamed from: r */
        public final TextView f38085r;

        /* renamed from: s */
        public final View f38086s;

        public C11464h(View view) {
            super(view);
            this.f38085r = (TextView) view.findViewById(C11479c.C11485f.exo_text);
            this.f38086s = view.findViewById(C11479c.C11485f.exo_check);
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerControlView$i */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$i.class */
    public final class C11465i extends AbstractC11467k {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private C11465i() {
            super();
            StyledPlayerControlView.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ void m20352a(View view) {
            if (StyledPlayerControlView.this.f38039at != null) {
                DefaultTrackSelector.C11427c buildUpon = StyledPlayerControlView.this.f38039at.m20603a().buildUpon();
                for (int i = 0; i < this.f38093b.size(); i++) {
                    int intValue = this.f38093b.get(i).intValue();
                    buildUpon = buildUpon.m20581a(intValue).m20580a(intValue, true);
                }
                ((DefaultTrackSelector) C11593a.m20020b(StyledPlayerControlView.this.f38039at)).m20594a(buildUpon);
                StyledPlayerControlView.this.f38036aq.dismiss();
            }
        }

        @Override // com.google.android.exoplayer2.p346ui.StyledPlayerControlView.AbstractC11467k
        /* renamed from: a */
        public final void mo20351a(C11464h c11464h) {
            boolean z;
            c11464h.f38085r.setText(C11479c.C11489j.exo_track_selection_none);
            int i = 0;
            while (true) {
                if (i >= this.f38094c.size()) {
                    z = true;
                    break;
                } else if (this.f38094c.get(i).f38092e) {
                    z = false;
                    break;
                } else {
                    i++;
                }
            }
            c11464h.f38086s.setVisibility(z ? 0 : 4);
            c11464h.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$StyledPlayerControlView$i$Pq8Bsz2hfmZYaW0zw9SQh32yRnU
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StyledPlayerControlView.C11465i.this.m20352a(view);
                }
            });
        }

        @Override // com.google.android.exoplayer2.p346ui.StyledPlayerControlView.AbstractC11467k
        /* renamed from: a */
        public final void onBindViewHolder(C11464h c11464h, int i) {
            super.onBindViewHolder(c11464h, i);
            if (i > 0) {
                c11464h.f38086s.setVisibility(this.f38094c.get(i - 1).f38092e ? 0 : 4);
            }
        }

        @Override // com.google.android.exoplayer2.p346ui.StyledPlayerControlView.AbstractC11467k
        /* renamed from: a */
        public final void mo20348a(String str) {
        }

        @Override // com.google.android.exoplayer2.p346ui.StyledPlayerControlView.AbstractC11467k
        /* renamed from: a */
        public final void mo20347a(List<Integer> list, List<C11466j> list2, AbstractC11440e.C11441a c11441a) {
            boolean z;
            int i = 0;
            while (true) {
                z = false;
                if (i >= list2.size()) {
                    break;
                } else if (list2.get(i).f38092e) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            if (StyledPlayerControlView.this.f38043ax != null) {
                ImageView imageView = StyledPlayerControlView.this.f38043ax;
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                imageView.setImageDrawable(z ? styledPlayerControlView.f38001I : styledPlayerControlView.f38002J);
                StyledPlayerControlView.this.f38043ax.setContentDescription(z ? StyledPlayerControlView.this.f38003K : StyledPlayerControlView.this.f38004L);
            }
            this.f38093b = list;
            this.f38094c = list2;
            this.f38095d = c11441a;
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerControlView$j */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$j.class */
    public static final class C11466j {

        /* renamed from: a */
        public final int f38088a;

        /* renamed from: b */
        public final int f38089b;

        /* renamed from: c */
        public final int f38090c;

        /* renamed from: d */
        public final String f38091d;

        /* renamed from: e */
        public final boolean f38092e;

        public C11466j(int i, int i2, int i3, String str, boolean z) {
            this.f38088a = i;
            this.f38089b = i2;
            this.f38090c = i3;
            this.f38091d = str;
            this.f38092e = z;
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerControlView$k */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$k.class */
    public abstract class AbstractC11467k extends RecyclerView.AbstractC2626a<C11464h> {

        /* renamed from: b */
        protected List<Integer> f38093b = new ArrayList();

        /* renamed from: c */
        protected List<C11466j> f38094c = new ArrayList();

        /* renamed from: d */
        protected AbstractC11440e.C11441a f38095d = null;

        public AbstractC11467k() {
            StyledPlayerControlView.this = r5;
        }

        /* renamed from: a */
        public /* synthetic */ void m20349a(C11466j c11466j, View view) {
            DefaultTrackSelector.C11427c c11427c;
            if (this.f38095d == null || StyledPlayerControlView.this.f38039at == null) {
                return;
            }
            DefaultTrackSelector.C11427c buildUpon = StyledPlayerControlView.this.f38039at.m20603a().buildUpon();
            for (int i = 0; i < this.f38093b.size(); i++) {
                int intValue = this.f38093b.get(i).intValue();
                if (intValue == c11466j.f38088a) {
                    TrackGroupArray trackGroupArray = ((AbstractC11440e.C11441a) C11593a.m20020b(this.f38095d)).f37823c[intValue];
                    DefaultTrackSelector.SelectionOverride selectionOverride = new DefaultTrackSelector.SelectionOverride(c11466j.f38089b, c11466j.f38090c);
                    Map<TrackGroupArray, DefaultTrackSelector.SelectionOverride> map = buildUpon.f37746b.get(intValue);
                    HashMap hashMap = map;
                    if (map == null) {
                        hashMap = new HashMap();
                        buildUpon.f37746b.put(intValue, hashMap);
                    }
                    if (!hashMap.containsKey(trackGroupArray) || !C11599af.m19973a(hashMap.get(trackGroupArray), selectionOverride)) {
                        hashMap.put(trackGroupArray, selectionOverride);
                    }
                    c11427c = buildUpon.m20580a(intValue, false);
                } else {
                    c11427c = buildUpon.m20581a(intValue).m20580a(intValue, true);
                }
                buildUpon = c11427c;
            }
            ((DefaultTrackSelector) C11593a.m20020b(StyledPlayerControlView.this.f38039at)).m20594a(buildUpon);
            mo20348a(c11466j.f38091d);
            StyledPlayerControlView.this.f38036aq.dismiss();
        }

        /* renamed from: a */
        public abstract void mo20351a(C11464h c11464h);

        /* renamed from: a */
        public void onBindViewHolder(C11464h c11464h, int i) {
            if (StyledPlayerControlView.this.f38039at == null || this.f38095d == null) {
                return;
            }
            if (i == 0) {
                mo20351a(c11464h);
                return;
            }
            final C11466j c11466j = this.f38094c.get(i - 1);
            boolean z = ((DefaultTrackSelector) C11593a.m20020b(StyledPlayerControlView.this.f38039at)).m20603a().hasSelectionOverride(c11466j.f38088a, this.f38095d.f37823c[c11466j.f38088a]) && c11466j.f38092e;
            c11464h.f38085r.setText(c11466j.f38091d);
            c11464h.f38086s.setVisibility(z ? 0 : 4);
            c11464h.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$StyledPlayerControlView$k$D2_TB566K2AWpVcThMn_UJFYg9U
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StyledPlayerControlView.AbstractC11467k.this.m20349a(c11466j, view);
                }
            });
        }

        /* renamed from: a */
        public abstract void mo20348a(String str);

        /* renamed from: a */
        public abstract void mo20347a(List<Integer> list, List<C11466j> list2, AbstractC11440e.C11441a c11441a);

        /* renamed from: b */
        public final void m20346b() {
            this.f38094c = Collections.emptyList();
            this.f38095d = null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public int getItemCount() {
            if (this.f38094c.isEmpty()) {
                return 0;
            }
            return this.f38094c.size() + 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public /* synthetic */ C11464h onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new C11464h(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(C11479c.C11487h.exo_styled_sub_settings_list_item, (ViewGroup) null));
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerControlView$l */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$l.class */
    public interface AbstractC11468l {
        /* renamed from: a */
        void mo20312a();
    }

    static {
        C11257p.m21031a("goog.exo.ui");
    }

    public StyledPlayerControlView(Context context) {
        this(context, null);
    }

    public StyledPlayerControlView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StyledPlayerControlView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, attributeSet);
    }

    /* JADX WARN: Finally extract failed */
    public StyledPlayerControlView(Context context, AttributeSet attributeSet, int i, AttributeSet attributeSet2) {
        super(context, attributeSet, i);
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        Resources resources;
        int i2 = C11479c.C11487h.exo_styled_player_control_view;
        this.f38030ak = 5000L;
        this.f38031al = FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT;
        this.f38046b = 5000;
        this.f38024ae = 0;
        this.f38023ad = 200;
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, C11479c.C11491l.StyledPlayerControlView, 0, 0);
            try {
                this.f38030ak = obtainStyledAttributes.getInt(C11479c.C11491l.StyledPlayerControlView_rewind_increment, (int) this.f38030ak);
                this.f38031al = obtainStyledAttributes.getInt(C11479c.C11491l.StyledPlayerControlView_fastforward_increment, (int) this.f38031al);
                i2 = obtainStyledAttributes.getResourceId(C11479c.C11491l.StyledPlayerControlView_controller_layout_id, i2);
                this.f38046b = obtainStyledAttributes.getInt(C11479c.C11491l.StyledPlayerControlView_show_timeout, this.f38046b);
                this.f38024ae = obtainStyledAttributes.getInt(C11479c.C11491l.StyledPlayerControlView_repeat_toggle_modes, this.f38024ae);
                z8 = obtainStyledAttributes.getBoolean(C11479c.C11491l.StyledPlayerControlView_show_rewind_button, true);
                z7 = obtainStyledAttributes.getBoolean(C11479c.C11491l.StyledPlayerControlView_show_fastforward_button, true);
                boolean z9 = obtainStyledAttributes.getBoolean(C11479c.C11491l.StyledPlayerControlView_show_previous_button, true);
                boolean z10 = obtainStyledAttributes.getBoolean(C11479c.C11491l.StyledPlayerControlView_show_next_button, true);
                z5 = obtainStyledAttributes.getBoolean(C11479c.C11491l.StyledPlayerControlView_show_shuffle_button, false);
                z4 = obtainStyledAttributes.getBoolean(C11479c.C11491l.StyledPlayerControlView_show_subtitle_button, false);
                z3 = obtainStyledAttributes.getBoolean(C11479c.C11491l.StyledPlayerControlView_show_vr_button, false);
                setTimeBarMinUpdateInterval(obtainStyledAttributes.getInt(C11479c.C11491l.StyledPlayerControlView_time_bar_min_update_interval, this.f38023ad));
                z2 = obtainStyledAttributes.getBoolean(C11479c.C11491l.StyledPlayerControlView_animation_enabled, true);
                obtainStyledAttributes.recycle();
                z = z9;
                z6 = z10;
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            z2 = true;
            z3 = false;
            z8 = true;
            z7 = true;
            z = true;
            z6 = true;
            z5 = false;
            z4 = false;
        }
        LayoutInflater.from(context).inflate(i2, this);
        setDescendantFocusability(262144);
        View$OnClickListenerC11458b view$OnClickListenerC11458b = new View$OnClickListenerC11458b();
        this.f38048d = view$OnClickListenerC11458b;
        this.f38016a = new CopyOnWriteArrayList<>();
        this.f38064t = new AbstractC10864al.C10866a();
        this.f38065u = new AbstractC10864al.C10867b();
        StringBuilder sb = new StringBuilder();
        this.f38062r = sb;
        this.f38063s = new Formatter(sb, Locale.getDefault());
        this.f38025af = new long[0];
        this.f38026ag = new boolean[0];
        this.f38027ah = new long[0];
        this.f38028ai = new boolean[0];
        this.f38010R = new C11160h(this.f38031al, this.f38030ak);
        this.f38066v = new Runnable() { // from class: com.google.android.exoplayer2.ui._$$Lambda$StyledPlayerControlView$QwkDVaKWCzNhTXldMRFuihxzTMI
            @Override // java.lang.Runnable
            public final void run() {
                StyledPlayerControlView.this.m20377n();
            }
        };
        this.f38059o = (TextView) findViewById(C11479c.C11485f.exo_duration);
        this.f38060p = (TextView) findViewById(C11479c.C11485f.exo_position);
        ImageView imageView = (ImageView) findViewById(C11479c.C11485f.exo_subtitle);
        this.f38043ax = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(view$OnClickListenerC11458b);
        }
        ImageView imageView2 = (ImageView) findViewById(C11479c.C11485f.exo_fullscreen);
        this.f38044ay = imageView2;
        m20420a(imageView2, new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$StyledPlayerControlView$0v4f7A2pd7xlryo2ihtfzdIOYUI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StyledPlayerControlView.this.m20422a(view);
            }
        });
        ImageView imageView3 = (ImageView) findViewById(C11479c.C11485f.exo_minimal_fullscreen);
        this.f38045az = imageView3;
        m20420a(imageView3, new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$StyledPlayerControlView$0v4f7A2pd7xlryo2ihtfzdIOYUI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StyledPlayerControlView.this.m20422a(view);
            }
        });
        View findViewById = findViewById(C11479c.C11485f.exo_settings);
        this.f38017aA = findViewById;
        if (findViewById != null) {
            findViewById.setOnClickListener(view$OnClickListenerC11458b);
        }
        View findViewById2 = findViewById(C11479c.C11485f.exo_playback_speed);
        this.f38018aB = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(view$OnClickListenerC11458b);
        }
        View findViewById3 = findViewById(C11479c.C11485f.exo_audio_track);
        this.f38019aC = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(view$OnClickListenerC11458b);
        }
        AbstractC11509h abstractC11509h = (AbstractC11509h) findViewById(C11479c.C11485f.exo_progress);
        View findViewById4 = findViewById(C11479c.C11485f.exo_progress_placeholder);
        if (abstractC11509h != null) {
            this.f38061q = abstractC11509h;
        } else if (findViewById4 != null) {
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2, C11479c.C11490k.ExoStyledControls_TimeBar);
            defaultTimeBar.setId(C11479c.C11485f.exo_progress);
            defaultTimeBar.setLayoutParams(findViewById4.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById4.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById4);
            viewGroup.removeView(findViewById4);
            viewGroup.addView(defaultTimeBar, indexOfChild);
            this.f38061q = defaultTimeBar;
        } else {
            this.f38061q = null;
        }
        AbstractC11509h abstractC11509h2 = this.f38061q;
        if (abstractC11509h2 != null) {
            abstractC11509h2.mo20231a(view$OnClickListenerC11458b);
        }
        View findViewById5 = findViewById(C11479c.C11485f.exo_play_pause);
        this.f38051g = findViewById5;
        if (findViewById5 != null) {
            findViewById5.setOnClickListener(view$OnClickListenerC11458b);
        }
        View findViewById6 = findViewById(C11479c.C11485f.exo_prev);
        this.f38049e = findViewById6;
        if (findViewById6 != null) {
            findViewById6.setOnClickListener(view$OnClickListenerC11458b);
        }
        View findViewById7 = findViewById(C11479c.C11485f.exo_next);
        this.f38050f = findViewById7;
        if (findViewById7 != null) {
            findViewById7.setOnClickListener(view$OnClickListenerC11458b);
        }
        Typeface m44468a = C0804f.m44468a(context, C11479c.C11484e.roboto_medium_numbers);
        View findViewById8 = findViewById(C11479c.C11485f.exo_rew);
        TextView textView = findViewById8 == null ? (TextView) findViewById(C11479c.C11485f.exo_rew_with_amount) : null;
        this.f38055k = textView;
        if (textView != null) {
            textView.setTypeface(m44468a);
        }
        TextView textView2 = findViewById8 == null ? textView : findViewById8;
        this.f38053i = textView2;
        if (textView2 != null) {
            textView2.setOnClickListener(view$OnClickListenerC11458b);
        }
        View findViewById9 = findViewById(C11479c.C11485f.exo_ffwd);
        TextView textView3 = findViewById9 == null ? (TextView) findViewById(C11479c.C11485f.exo_ffwd_with_amount) : null;
        this.f38054j = textView3;
        if (textView3 != null) {
            textView3.setTypeface(m44468a);
        }
        TextView textView4 = findViewById9 == null ? textView3 : findViewById9;
        this.f38052h = textView4;
        if (textView4 != null) {
            textView4.setOnClickListener(view$OnClickListenerC11458b);
        }
        ImageView imageView4 = (ImageView) findViewById(C11479c.C11485f.exo_repeat_toggle);
        this.f38056l = imageView4;
        if (imageView4 != null) {
            imageView4.setOnClickListener(view$OnClickListenerC11458b);
        }
        ImageView imageView5 = (ImageView) findViewById(C11479c.C11485f.exo_shuffle);
        this.f38057m = imageView5;
        if (imageView5 != null) {
            imageView5.setOnClickListener(view$OnClickListenerC11458b);
        }
        this.f38032am = context.getResources();
        this.f37997E = resources.getInteger(C11479c.C11486g.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.f37998F = this.f38032am.getInteger(C11479c.C11486g.exo_media_button_opacity_percentage_disabled) / 100.0f;
        View findViewById10 = findViewById(C11479c.C11485f.exo_vr);
        this.f38058n = findViewById10;
        if (findViewById10 != null) {
            m20404a(false, findViewById10);
        }
        C11497e c11497e = new C11497e(this);
        this.f38047c = c11497e;
        c11497e.f38193m = z2;
        this.f38034ao = new C11463g(new String[]{this.f38032am.getString(C11479c.C11489j.exo_controls_playback_speed), this.f38032am.getString(C11479c.C11489j.exo_track_selection_title_audio)}, new Drawable[]{this.f38032am.getDrawable(C11479c.C11483d.exo_styled_controls_speed), this.f38032am.getDrawable(C11479c.C11483d.exo_styled_controls_audiotrack)});
        this.f38038as = this.f38032am.getDimensionPixelSize(C11479c.C11482c.exo_settings_offset);
        RecyclerView recyclerView = (RecyclerView) LayoutInflater.from(context).inflate(C11479c.C11487h.exo_styled_settings_list, (ViewGroup) null);
        this.f38033an = recyclerView;
        recyclerView.setAdapter(this.f38034ao);
        this.f38033an.setLayoutManager(new LinearLayoutManager(getContext()));
        this.f38036aq = new PopupWindow((View) this.f38033an, -2, -2, true);
        if (C11599af.f38648a < 23) {
            this.f38036aq.setBackgroundDrawable(new ColorDrawable(0));
        }
        this.f38036aq.setOnDismissListener(view$OnClickListenerC11458b);
        this.f38037ar = true;
        this.f38042aw = new C11477a(getResources());
        this.f38001I = this.f38032am.getDrawable(C11479c.C11483d.exo_styled_controls_subtitle_on);
        this.f38002J = this.f38032am.getDrawable(C11479c.C11483d.exo_styled_controls_subtitle_off);
        this.f38003K = this.f38032am.getString(C11479c.C11489j.exo_controls_cc_enabled_description);
        this.f38004L = this.f38032am.getString(C11479c.C11489j.exo_controls_cc_disabled_description);
        this.f38040au = new C11465i();
        this.f38041av = new C11457a();
        this.f38035ap = new C11460d(this.f38032am.getStringArray(C11479c.C11480a.exo_playback_speeds), this.f38032am.getIntArray(C11479c.C11480a.exo_speed_multiplied_by_100));
        this.f38005M = this.f38032am.getDrawable(C11479c.C11483d.exo_styled_controls_fullscreen_exit);
        this.f38006N = this.f38032am.getDrawable(C11479c.C11483d.exo_styled_controls_fullscreen_enter);
        this.f38067w = this.f38032am.getDrawable(C11479c.C11483d.exo_styled_controls_repeat_off);
        this.f38068x = this.f38032am.getDrawable(C11479c.C11483d.exo_styled_controls_repeat_one);
        this.f38069y = this.f38032am.getDrawable(C11479c.C11483d.exo_styled_controls_repeat_all);
        this.f37995C = this.f38032am.getDrawable(C11479c.C11483d.exo_styled_controls_shuffle_on);
        this.f37996D = this.f38032am.getDrawable(C11479c.C11483d.exo_styled_controls_shuffle_off);
        this.f38007O = this.f38032am.getString(C11479c.C11489j.exo_controls_fullscreen_exit_description);
        this.f38008P = this.f38032am.getString(C11479c.C11489j.exo_controls_fullscreen_enter_description);
        this.f38070z = this.f38032am.getString(C11479c.C11489j.exo_controls_repeat_off_description);
        this.f37993A = this.f38032am.getString(C11479c.C11489j.exo_controls_repeat_one_description);
        this.f37994B = this.f38032am.getString(C11479c.C11489j.exo_controls_repeat_all_description);
        this.f37999G = this.f38032am.getString(C11479c.C11489j.exo_controls_shuffle_on_description);
        this.f38000H = this.f38032am.getString(C11479c.C11489j.exo_controls_shuffle_off_description);
        this.f38047c.m20251a((View) ((ViewGroup) findViewById(C11479c.C11485f.exo_bottom_bar)), true);
        this.f38047c.m20251a(textView4, z7);
        this.f38047c.m20251a(textView2, z8);
        this.f38047c.m20251a(findViewById6, z);
        this.f38047c.m20251a(findViewById7, z6);
        this.f38047c.m20251a(imageView5, z5);
        this.f38047c.m20251a(this.f38043ax, z4);
        this.f38047c.m20251a(findViewById10, z3);
        this.f38047c.m20251a(imageView4, this.f38024ae != 0);
        addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$StyledPlayerControlView$Z8CAmE0M9TvE7xj30q_BKswlXO0
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                StyledPlayerControlView.this.m20421a(view, i3, i4, i5, i6, i7, i8, i9, i10);
            }
        });
    }

    /* renamed from: a */
    public void m20422a(View view) {
        if (this.f38013U == null) {
            return;
        }
        boolean z = !this.f38014V;
        this.f38014V = z;
        m20418a(this.f38044ay, z);
        m20418a(this.f38045az, this.f38014V);
    }

    /* renamed from: a */
    public void m20421a(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (!(i3 - i == i7 - i5 && i4 - i2 == i8 - i6) && this.f38036aq.isShowing()) {
            m20373p();
            int width = getWidth();
            int width2 = this.f38036aq.getWidth();
            this.f38036aq.update(view, (width - width2) - this.f38038as, (-this.f38036aq.getHeight()) - this.f38038as, -1, -1);
        }
    }

    /* renamed from: a */
    private static void m20420a(View view, View.OnClickListener onClickListener) {
        if (view == null) {
            return;
        }
        view.setVisibility(8);
        view.setOnClickListener(onClickListener);
    }

    /* renamed from: a */
    private static void m20419a(View view, boolean z) {
        if (view == null) {
            return;
        }
        if (z) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }

    /* renamed from: a */
    private void m20418a(ImageView imageView, boolean z) {
        if (imageView == null) {
            return;
        }
        if (z) {
            imageView.setImageDrawable(this.f38005M);
            imageView.setContentDescription(this.f38007O);
            return;
        }
        imageView.setImageDrawable(this.f38006N);
        imageView.setContentDescription(this.f38008P);
    }

    /* renamed from: a */
    public void m20417a(RecyclerView.AbstractC2626a<?> abstractC2626a) {
        this.f38033an.setAdapter(abstractC2626a);
        m20373p();
        this.f38037ar = false;
        this.f38036aq.dismiss();
        this.f38037ar = true;
        int width = getWidth();
        int width2 = this.f38036aq.getWidth();
        this.f38036aq.showAsDropDown(this, (width - width2) - this.f38038as, (-this.f38036aq.getHeight()) - this.f38038as);
    }

    /* renamed from: a */
    public void m20416a(AbstractC10842ac abstractC10842ac) {
        int mo21122n = abstractC10842ac.mo21122n();
        if (mo21122n == 1 || mo21122n == 4 || !abstractC10842ac.mo21118r()) {
            m20402b(abstractC10842ac);
        } else {
            m20399c(abstractC10842ac);
        }
    }

    /* renamed from: a */
    private void m20413a(AbstractC11440e.C11441a c11441a, int i, List<C11466j> list) {
        TrackGroupArray trackGroupArray = c11441a.f37823c[i];
        AbstractC11442f abstractC11442f = ((AbstractC10842ac) C11593a.m20020b(this.f38009Q)).mo21178I().f37829b[i];
        for (int i2 = 0; i2 < trackGroupArray.length; i2++) {
            TrackGroup trackGroup = trackGroupArray.get(i2);
            for (int i3 = 0; i3 < trackGroup.length; i3++) {
                Format format = trackGroup.getFormat(i3);
                if (c11441a.m20562a(i, i2, i3) == 4) {
                    list.add(new C11466j(i, i2, i3, this.f38042aw.mo20227a(format), (abstractC11442f == null || abstractC11442f.mo20560a(format) == -1) ? false : true));
                }
            }
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m20410a(StyledPlayerControlView styledPlayerControlView, float f) {
        AbstractC10842ac abstractC10842ac = styledPlayerControlView.f38009Q;
        if (abstractC10842ac != null) {
            styledPlayerControlView.f38010R.mo21366a(abstractC10842ac, abstractC10842ac.mo21114v().m22238a(f));
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m20409a(StyledPlayerControlView styledPlayerControlView, int i) {
        if (i == 0) {
            styledPlayerControlView.m20417a(styledPlayerControlView.f38035ap);
        } else if (i == 1) {
            styledPlayerControlView.m20417a(styledPlayerControlView.f38041av);
        } else {
            styledPlayerControlView.f38036aq.dismiss();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* renamed from: a */
    static /* synthetic */ void m20406a(StyledPlayerControlView styledPlayerControlView, AbstractC10842ac abstractC10842ac, long j) {
        char c;
        int i;
        AbstractC10864al mo21176K = abstractC10842ac.mo21176K();
        if (!styledPlayerControlView.f38021ab || mo21176K.m22178c()) {
            i = abstractC10842ac.mo21111y();
            c = j;
        } else {
            int mo20949a = mo21176K.mo20949a();
            int i2 = 0;
            char c2 = j;
            while (true) {
                ?? m21374a = C11158f.m21374a(mo21176K.mo20853a(i2, styledPlayerControlView.f38065u, 0L).f35021q);
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
        if (!styledPlayerControlView.m20415a(abstractC10842ac, i, c)) {
            styledPlayerControlView.m20377n();
        }
    }

    /* renamed from: a */
    private void m20404a(boolean z, View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z);
        view.setAlpha(z ? this.f37997E : this.f37998F);
    }

    /* renamed from: a */
    private static boolean m20424a(int i) {
        return i == 90 || i == 89 || i == 85 || i == 79 || i == 126 || i == 127 || i == 87 || i == 88;
    }

    /* renamed from: a */
    private boolean m20415a(AbstractC10842ac abstractC10842ac, int i, long j) {
        return this.f38010R.mo21368a(abstractC10842ac, i, j);
    }

    /* renamed from: a */
    private static boolean m20414a(AbstractC10864al abstractC10864al, AbstractC10864al.C10867b c10867b) {
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
    private void m20402b(AbstractC10842ac abstractC10842ac) {
        int mo21122n = abstractC10842ac.mo21122n();
        if (mo21122n == 1) {
            if (this.f38012T == null) {
                this.f38010R.mo21370a(abstractC10842ac);
            }
        } else if (mo21122n == 4) {
            m20415a(abstractC10842ac, abstractC10842ac.mo21111y(), -9223372036854775807L);
        }
        this.f38010R.mo21365a(abstractC10842ac, true);
    }

    /* renamed from: c */
    private void m20399c(AbstractC10842ac abstractC10842ac) {
        this.f38010R.mo21365a(abstractC10842ac, false);
    }

    /* renamed from: d */
    private void m20397d() {
        m20395e();
        m20393f();
        m20387i();
        m20385j();
        m20383k();
        m20375o();
        m20379m();
    }

    /* renamed from: e */
    public void m20395e() {
        if (!m20400c() || !this.f38015W || this.f38051g == null) {
            return;
        }
        if (m20371q()) {
            ((ImageView) this.f38051g).setImageDrawable(this.f38032am.getDrawable(C11479c.C11483d.exo_styled_controls_pause));
            this.f38051g.setContentDescription(this.f38032am.getString(C11479c.C11489j.exo_controls_pause_description));
            return;
        }
        ((ImageView) this.f38051g).setImageDrawable(this.f38032am.getDrawable(C11479c.C11483d.exo_styled_controls_play));
        this.f38051g.setContentDescription(this.f38032am.getString(C11479c.C11489j.exo_controls_play_description));
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m20393f() {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p346ui.StyledPlayerControlView.m20393f():void");
    }

    /* renamed from: g */
    private void m20391g() {
        AbstractC11159g abstractC11159g = this.f38010R;
        if (abstractC11159g instanceof C11160h) {
            this.f38030ak = ((C11160h) abstractC11159g).f36544a;
        }
        int i = (int) (this.f38030ak / 1000);
        TextView textView = this.f38055k;
        if (textView != null) {
            textView.setText(String.valueOf(i));
        }
        View view = this.f38053i;
        if (view != null) {
            view.setContentDescription(this.f38032am.getQuantityString(C11479c.C11488i.exo_controls_rewind_by_amount_description, i, Integer.valueOf(i)));
        }
    }

    /* renamed from: h */
    private void m20389h() {
        AbstractC11159g abstractC11159g = this.f38010R;
        if (abstractC11159g instanceof C11160h) {
            this.f38031al = ((C11160h) abstractC11159g).f36545b;
        }
        int i = (int) (this.f38031al / 1000);
        TextView textView = this.f38054j;
        if (textView != null) {
            textView.setText(String.valueOf(i));
        }
        View view = this.f38052h;
        if (view != null) {
            view.setContentDescription(this.f38032am.getQuantityString(C11479c.C11488i.exo_controls_fastforward_by_amount_description, i, Integer.valueOf(i)));
        }
    }

    /* renamed from: i */
    public void m20387i() {
        ImageView imageView;
        if (!m20400c() || !this.f38015W || (imageView = this.f38056l) == null) {
            return;
        }
        if (this.f38024ae == 0) {
            m20404a(false, (View) imageView);
            return;
        }
        AbstractC10842ac abstractC10842ac = this.f38009Q;
        if (abstractC10842ac == null) {
            m20404a(false, (View) imageView);
            this.f38056l.setImageDrawable(this.f38067w);
            this.f38056l.setContentDescription(this.f38070z);
            return;
        }
        m20404a(true, (View) imageView);
        int mo21117s = abstractC10842ac.mo21117s();
        if (mo21117s == 0) {
            this.f38056l.setImageDrawable(this.f38067w);
            this.f38056l.setContentDescription(this.f38070z);
        } else if (mo21117s == 1) {
            this.f38056l.setImageDrawable(this.f38068x);
            this.f38056l.setContentDescription(this.f37993A);
        } else if (mo21117s != 2) {
        } else {
            this.f38056l.setImageDrawable(this.f38069y);
            this.f38056l.setContentDescription(this.f37994B);
        }
    }

    /* renamed from: j */
    public void m20385j() {
        ImageView imageView;
        String str;
        ImageView imageView2;
        if (!m20400c() || !this.f38015W || (imageView = this.f38057m) == null) {
            return;
        }
        AbstractC10842ac abstractC10842ac = this.f38009Q;
        if (!this.f38047c.m20253a(imageView)) {
            m20404a(false, (View) this.f38057m);
            return;
        }
        if (abstractC10842ac == null) {
            m20404a(false, (View) this.f38057m);
            this.f38057m.setImageDrawable(this.f37996D);
            imageView2 = this.f38057m;
        } else {
            m20404a(true, (View) this.f38057m);
            this.f38057m.setImageDrawable(abstractC10842ac.mo21116t() ? this.f37995C : this.f37996D);
            ImageView imageView3 = this.f38057m;
            imageView2 = imageView3;
            if (abstractC10842ac.mo21116t()) {
                imageView2 = imageView3;
                str = this.f37999G;
                imageView2.setContentDescription(str);
            }
        }
        str = this.f38000H;
        imageView2.setContentDescription(str);
    }

    /* renamed from: k */
    public void m20383k() {
        m20381l();
        m20404a(this.f38040au.getItemCount() > 0, this.f38043ax);
    }

    /* renamed from: l */
    private void m20381l() {
        DefaultTrackSelector defaultTrackSelector;
        AbstractC11440e.C11441a c11441a;
        this.f38040au.m20346b();
        this.f38041av.m20346b();
        if (this.f38009Q == null || (defaultTrackSelector = this.f38039at) == null || (c11441a = ((AbstractC11440e) defaultTrackSelector).f37820a) == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (int i = 0; i < c11441a.f37821a; i++) {
            if (c11441a.f37822b[i] == 3 && this.f38047c.m20253a(this.f38043ax)) {
                m20413a(c11441a, i, arrayList);
                arrayList3.add(Integer.valueOf(i));
            } else if (c11441a.f37822b[i] == 1) {
                m20413a(c11441a, i, arrayList2);
                arrayList4.add(Integer.valueOf(i));
            }
        }
        this.f38040au.mo20347a(arrayList3, arrayList, c11441a);
        this.f38041av.mo20347a(arrayList4, arrayList2, c11441a);
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
    /* renamed from: m */
    public void m20379m() {
        int i;
        ?? r14;
        int i2;
        AbstractC10842ac abstractC10842ac = this.f38009Q;
        if (abstractC10842ac == null) {
            return;
        }
        this.f38021ab = this.f38020aa && m20414a(abstractC10842ac.mo21176K(), this.f38065u);
        this.f38029aj = 0L;
        AbstractC10864al mo21176K = abstractC10842ac.mo21176K();
        if (!mo21176K.m22178c()) {
            int mo21111y = abstractC10842ac.mo21111y();
            boolean z = this.f38021ab;
            int i3 = z ? 0 : mo21111y;
            int mo20949a = z ? mo21176K.mo20949a() - 1 : mo21111y;
            r14 = false;
            i = 0;
            while (true) {
                if (i3 > mo20949a) {
                    break;
                }
                if (i3 == mo21111y) {
                    this.f38029aj = C11158f.m21374a(r14 == true ? 1L : 0L);
                }
                mo21176K.mo20853a(i3, this.f38065u, 0L);
                if (this.f38065u.f35021q == -9223372036854775807L) {
                    C11593a.m20019b(!this.f38021ab);
                    break;
                }
                for (int i4 = this.f38065u.f35018n; i4 <= this.f38065u.f35019o; i4++) {
                    mo21176K.mo20947a(i4, this.f38064t, false);
                    int i5 = this.f38064t.f35003f.f37026c;
                    int i6 = 0;
                    while (i6 < i5) {
                        ?? m22177a = this.f38064t.m22177a(i6);
                        ?? r22 = m22177a;
                        if (m22177a == Long.MIN_VALUE) {
                            i2 = i;
                            if (this.f38064t.f35001d != -9223372036854775807L) {
                                r22 = this.f38064t.f35001d;
                            } else {
                                i6++;
                                i = i2;
                            }
                        }
                        long j = r22 + this.f38064t.f35002e;
                        i2 = i;
                        if (j >= 0) {
                            long[] jArr = this.f38025af;
                            if (i == jArr.length) {
                                int length = jArr.length == 0 ? 1 : jArr.length * 2;
                                this.f38025af = Arrays.copyOf(jArr, length);
                                this.f38026ag = Arrays.copyOf(this.f38026ag, length);
                            }
                            this.f38025af[i] = C11158f.m21374a((r14 == true ? 1L : 0L) + j);
                            this.f38026ag[i] = this.f38064t.m22169c(i6);
                            i2 = i + 1;
                        }
                        i6++;
                        i = i2;
                    }
                }
                r14 = (r14 == true ? 1L : 0L) + this.f38065u.f35021q;
                i3++;
            }
        } else {
            r14 = false;
            i = 0;
        }
        long m21374a = C11158f.m21374a(r14 == true ? 1L : 0L);
        TextView textView = this.f38059o;
        if (textView != null) {
            textView.setText(C11599af.m19967a(this.f38062r, this.f38063s, m21374a));
        }
        AbstractC11509h abstractC11509h = this.f38061q;
        if (abstractC11509h != null) {
            abstractC11509h.setDuration(m21374a);
            int length2 = this.f38027ah.length;
            int i7 = i + length2;
            long[] jArr2 = this.f38025af;
            if (i7 > jArr2.length) {
                this.f38025af = Arrays.copyOf(jArr2, i7);
                this.f38026ag = Arrays.copyOf(this.f38026ag, i7);
            }
            System.arraycopy(this.f38027ah, 0, this.f38025af, i, length2);
            System.arraycopy(this.f38028ai, 0, this.f38026ag, i, length2);
            this.f38061q.setAdGroupTimesMs(this.f38025af, this.f38026ag, i7);
        }
        m20377n();
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
    /* renamed from: n */
    public void m20377n() {
        ?? r13;
        if (!m20400c() || !this.f38015W) {
            return;
        }
        AbstractC10842ac abstractC10842ac = this.f38009Q;
        ?? r11 = 0;
        if (abstractC10842ac != null) {
            r11 = this.f38029aj + abstractC10842ac.mo21181F();
            r13 = this.f38029aj + abstractC10842ac.mo21180G();
        } else {
            r13 = false;
        }
        TextView textView = this.f38060p;
        if (textView != null && !this.f38022ac) {
            textView.setText(C11599af.m19967a(this.f38062r, this.f38063s, (long) r11));
        }
        ?? r0 = this.f38061q;
        if (r0 != 0) {
            r0.setPosition(r11);
            this.f38061q.setBufferedPosition(r13 == true ? 1L : 0L);
        }
        removeCallbacks(this.f38066v);
        int mo21122n = abstractC10842ac == null ? 1 : abstractC10842ac.mo21122n();
        if (abstractC10842ac == null || !abstractC10842ac.mo21938A_()) {
            if (mo21122n == 4 || mo21122n == 1) {
                return;
            }
            postDelayed(this.f38066v, 1000L);
            return;
        }
        AbstractC11509h abstractC11509h = this.f38061q;
        long min = Math.min((abstractC11509h != null ? abstractC11509h.mo20232a() : true) == true ? 1L : 0L, 1000 - (r11 % 1000));
        float f = abstractC10842ac.mo21114v().f34892b;
        ?? r112 = true;
        if (f > BitmapDescriptorFactory.HUE_RED) {
            r112 = ((float) min) / f;
        }
        postDelayed(this.f38066v, C11599af.m19993a(r112 == true ? 1L : 0L, this.f38023ad, 1000L));
    }

    /* renamed from: o */
    public void m20375o() {
        AbstractC10842ac abstractC10842ac = this.f38009Q;
        if (abstractC10842ac == null) {
            return;
        }
        this.f38035ap.m20359a(abstractC10842ac.mo21114v().f34892b);
        C11463g c11463g = this.f38034ao;
        c11463g.f38081a[0] = this.f38035ap.m20357b();
    }

    /* renamed from: p */
    private void m20373p() {
        this.f38033an.measure(0, 0);
        this.f38036aq.setWidth(Math.min(this.f38033an.getMeasuredWidth(), getWidth() - (this.f38038as * 2)));
        this.f38036aq.setHeight(Math.min(getHeight() - (this.f38038as * 2), this.f38033an.getMeasuredHeight()));
    }

    /* renamed from: q */
    private boolean m20371q() {
        AbstractC10842ac abstractC10842ac = this.f38009Q;
        return (abstractC10842ac == null || abstractC10842ac.mo21122n() == 4 || this.f38009Q.mo21122n() == 1 || !this.f38009Q.mo21118r()) ? false : true;
    }

    /* renamed from: a */
    public final void m20425a() {
        C11497e c11497e = this.f38047c;
        if (!c11497e.f38181a.m20400c()) {
            c11497e.f38181a.setVisibility(0);
            c11497e.f38181a.m20397d();
            View view = c11497e.f38181a.f38051g;
            if (view != null) {
                view.requestFocus();
            }
        }
        c11497e.m20243d();
    }

    /* renamed from: a */
    public final void m20412a(AbstractC11468l abstractC11468l) {
        C11593a.m20020b(abstractC11468l);
        this.f38016a.add(abstractC11468l);
    }

    /* renamed from: a */
    public final boolean m20423a(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        AbstractC10842ac abstractC10842ac = this.f38009Q;
        if (abstractC10842ac == null || !m20424a(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() != 0) {
            return true;
        }
        if (keyCode == 90) {
            if (abstractC10842ac.mo21122n() == 4) {
                return true;
            }
            this.f38010R.mo21359e(abstractC10842ac);
            return true;
        } else if (keyCode == 89) {
            this.f38010R.mo21360d(abstractC10842ac);
            return true;
        } else if (keyEvent.getRepeatCount() != 0) {
            return true;
        } else {
            if (keyCode == 79 || keyCode == 85) {
                m20416a(abstractC10842ac);
                return true;
            } else if (keyCode == 87) {
                this.f38010R.mo21361c(abstractC10842ac);
                return true;
            } else if (keyCode == 88) {
                this.f38010R.mo21363b(abstractC10842ac);
                return true;
            } else if (keyCode == 126) {
                m20402b(abstractC10842ac);
                return true;
            } else if (keyCode != 127) {
                return true;
            } else {
                m20399c(abstractC10842ac);
                return true;
            }
        }
    }

    /* renamed from: b */
    public final void m20403b() {
        C11497e c11497e = this.f38047c;
        if (c11497e.f38190j == 3 || c11497e.f38190j == 2) {
            return;
        }
        c11497e.m20249b();
        if (!c11497e.f38193m) {
            c11497e.m20237g();
        } else if (c11497e.f38190j == 1) {
            c11497e.m20238f();
        } else {
            c11497e.m20240e();
        }
    }

    /* renamed from: c */
    public final boolean m20400c() {
        return getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return m20423a(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C11497e c11497e = this.f38047c;
        c11497e.f38181a.addOnLayoutChangeListener(c11497e.f38189i);
        this.f38015W = true;
        if (this.f38047c.m20246c()) {
            this.f38047c.m20258a();
        }
        m20397d();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C11497e c11497e = this.f38047c;
        c11497e.f38181a.removeOnLayoutChangeListener(c11497e.f38189i);
        this.f38015W = false;
        removeCallbacks(this.f38066v);
        this.f38047c.m20249b();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C11497e c11497e = this.f38047c;
        if (c11497e.f38182b != null) {
            c11497e.f38182b.layout(0, 0, i3 - i, i4 - i2);
        }
    }

    public void setAnimationEnabled(boolean z) {
        this.f38047c.f38193m = z;
    }

    public void setControlDispatcher(AbstractC11159g abstractC11159g) {
        if (this.f38010R != abstractC11159g) {
            this.f38010R = abstractC11159g;
            m20393f();
        }
    }

    public void setExtraAdGroupMarkers(long[] jArr, boolean[] zArr) {
        boolean z = false;
        if (jArr == null) {
            this.f38027ah = new long[0];
            this.f38028ai = new boolean[0];
        } else {
            boolean[] zArr2 = (boolean[]) C11593a.m20020b(zArr);
            if (jArr.length == zArr2.length) {
                z = true;
            }
            C11593a.m20022a(z);
            this.f38027ah = jArr;
            this.f38028ai = zArr2;
        }
        m20379m();
    }

    public void setOnFullScreenModeChangedListener(AbstractC11459c abstractC11459c) {
        this.f38013U = abstractC11459c;
        m20419a((View) this.f38044ay, abstractC11459c != null);
        m20419a((View) this.f38045az, abstractC11459c != null);
    }

    @Deprecated
    public void setPlaybackPreparer(AbstractC10841ab abstractC10841ab) {
        this.f38012T = abstractC10841ab;
    }

    public void setPlayer(AbstractC10842ac abstractC10842ac) {
        C11593a.m20019b(Looper.myLooper() == Looper.getMainLooper());
        boolean z = true;
        if (abstractC10842ac != null) {
            z = abstractC10842ac.mo21123m() == Looper.getMainLooper();
        }
        C11593a.m20022a(z);
        AbstractC10842ac abstractC10842ac2 = this.f38009Q;
        if (abstractC10842ac2 == abstractC10842ac) {
            return;
        }
        if (abstractC10842ac2 != null) {
            abstractC10842ac2.mo21144b(this.f38048d);
        }
        this.f38009Q = abstractC10842ac;
        if (abstractC10842ac != null) {
            abstractC10842ac.mo21167a(this.f38048d);
        }
        if (abstractC10842ac instanceof AbstractC11168m) {
            AbstractC11444h mo21109z_ = ((AbstractC11168m) abstractC10842ac).mo21109z_();
            if (mo21109z_ instanceof DefaultTrackSelector) {
                this.f38039at = (DefaultTrackSelector) mo21109z_;
            }
        } else {
            this.f38039at = null;
        }
        m20397d();
    }

    public void setProgressUpdateListener(AbstractC11461e abstractC11461e) {
        this.f38011S = abstractC11461e;
    }

    public void setRepeatToggleModes(int i) {
        this.f38024ae = i;
        AbstractC10842ac abstractC10842ac = this.f38009Q;
        boolean z = false;
        if (abstractC10842ac != null) {
            int mo21117s = abstractC10842ac.mo21117s();
            if (i == 0 && mo21117s != 0) {
                this.f38010R.mo21369a(this.f38009Q, 0);
            } else if (i == 1 && mo21117s == 2) {
                this.f38010R.mo21369a(this.f38009Q, 1);
            } else if (i == 2 && mo21117s == 1) {
                this.f38010R.mo21369a(this.f38009Q, 2);
            }
        }
        C11497e c11497e = this.f38047c;
        ImageView imageView = this.f38056l;
        if (i != 0) {
            z = true;
        }
        c11497e.m20251a(imageView, z);
        m20387i();
    }

    public void setShowFastForwardButton(boolean z) {
        this.f38047c.m20251a(this.f38052h, z);
        m20393f();
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        this.f38020aa = z;
        m20379m();
    }

    public void setShowNextButton(boolean z) {
        this.f38047c.m20251a(this.f38050f, z);
        m20393f();
    }

    public void setShowPreviousButton(boolean z) {
        this.f38047c.m20251a(this.f38049e, z);
        m20393f();
    }

    public void setShowRewindButton(boolean z) {
        this.f38047c.m20251a(this.f38053i, z);
        m20393f();
    }

    public void setShowShuffleButton(boolean z) {
        this.f38047c.m20251a(this.f38057m, z);
        m20385j();
    }

    public void setShowSubtitleButton(boolean z) {
        this.f38047c.m20251a(this.f38043ax, z);
    }

    public void setShowTimeoutMs(int i) {
        this.f38046b = i;
        if (this.f38047c.m20246c()) {
            this.f38047c.m20258a();
        }
    }

    public void setShowVrButton(boolean z) {
        this.f38047c.m20251a(this.f38058n, z);
    }

    public void setTimeBarMinUpdateInterval(int i) {
        this.f38023ad = C11599af.m19997a(i, 16, 1000);
    }

    public void setVrButtonListener(View.OnClickListener onClickListener) {
        View view = this.f38058n;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            m20404a(onClickListener != null, this.f38058n);
        }
    }
}
