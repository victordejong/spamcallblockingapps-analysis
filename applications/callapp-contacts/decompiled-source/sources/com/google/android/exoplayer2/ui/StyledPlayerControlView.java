package com.google.android.exoplayer2.ui;

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
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.aa;
import com.google.android.exoplayer2.ab;
import com.google.android.exoplayer2.ac;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.m;
import com.google.android.exoplayer2.p;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.e;
import com.google.android.exoplayer2.ui.StyledPlayerControlView;
import com.google.android.exoplayer2.ui.c;
import com.google.android.exoplayer2.ui.h;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.w;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.sinch.verification.flashcall.initialization.FlashCallInitializationDetails;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Formatter;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView.class */
public class StyledPlayerControlView extends FrameLayout {
    private final String A;
    private final String B;
    private final Drawable C;
    private final Drawable D;
    private final float E;
    private final float F;
    private final String G;
    private final String H;
    private final Drawable I;
    private final Drawable J;
    private final String K;
    private final String L;
    private final Drawable M;
    private final Drawable N;
    private final String O;
    private final String P;
    private ac Q;
    private com.google.android.exoplayer2.g R;
    private e S;
    private ab T;
    private c U;
    private boolean V;
    private boolean W;

    /* renamed from: a  reason: collision with root package name */
    final CopyOnWriteArrayList<l> f21982a;
    private View aA;
    private View aB;
    private View aC;
    private boolean aa;
    private boolean ab;
    private boolean ac;
    private int ad;
    private int ae;
    private long[] af;
    private boolean[] ag;
    private long[] ah;
    private boolean[] ai;
    private long aj;
    private long ak;
    private long al;
    private Resources am;
    private RecyclerView an;
    private g ao;
    private d ap;
    private PopupWindow aq;
    private boolean ar;
    private int as;
    private DefaultTrackSelector at;
    private k au;
    private k av;
    private com.google.android.exoplayer2.ui.i aw;
    private ImageView ax;
    private ImageView ay;
    private ImageView az;

    /* renamed from: b  reason: collision with root package name */
    int f21983b;

    /* renamed from: c  reason: collision with root package name */
    com.google.android.exoplayer2.ui.e f21984c;

    /* renamed from: d  reason: collision with root package name */
    private final b f21985d;
    private final View e;
    private final View f;
    private final View g;
    private final View h;
    private final View i;
    private final TextView j;
    private final TextView k;
    private final ImageView l;
    private final ImageView m;
    private final View n;
    private final TextView o;
    private final TextView p;
    private final com.google.android.exoplayer2.ui.h q;
    private final StringBuilder r;
    private final Formatter s;
    private final al.a t;
    private final al.b u;
    private final Runnable v;
    private final Drawable w;
    private final Drawable x;
    private final Drawable y;
    private final String z;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$a.class */
    final class a extends k {
        private a() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(View view) {
            if (StyledPlayerControlView.this.at != null) {
                DefaultTrackSelector.c buildUpon = StyledPlayerControlView.this.at.a().buildUpon();
                for (int i = 0; i < this.f22001b.size(); i++) {
                    buildUpon = buildUpon.a(this.f22001b.get(i).intValue());
                }
                ((DefaultTrackSelector) com.google.android.exoplayer2.util.a.b(StyledPlayerControlView.this.at)).a(buildUpon);
            }
            g gVar = StyledPlayerControlView.this.ao;
            gVar.f21992a[1] = StyledPlayerControlView.this.getResources().getString(c.j.exo_track_selection_auto);
            StyledPlayerControlView.this.aq.dismiss();
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.k
        public final void a(h hVar) {
            boolean z;
            hVar.r.setText(c.j.exo_track_selection_auto);
            DefaultTrackSelector.Parameters a2 = ((DefaultTrackSelector) com.google.android.exoplayer2.util.a.b(StyledPlayerControlView.this.at)).a();
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= this.f22001b.size()) {
                    z = false;
                    break;
                }
                int intValue = this.f22001b.get(i2).intValue();
                if (a2.hasSelectionOverride(intValue, ((e.a) com.google.android.exoplayer2.util.a.b(this.f22003d)).f21939c[intValue])) {
                    z = true;
                    break;
                }
                i2++;
            }
            View view = hVar.s;
            if (z) {
                i = 4;
            }
            view.setVisibility(i);
            hVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$StyledPlayerControlView$a$7V5Ei9jIKnf71jUKrok0q_d0fhg
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    StyledPlayerControlView.a.this.a(view2);
                }
            });
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.k
        public final void a(String str) {
            StyledPlayerControlView.this.ao.f21992a[1] = str;
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.k
        public final void a(List<Integer> list, List<j> list2, e.a aVar) {
            boolean z;
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= list.size()) {
                    z = false;
                    break;
                }
                int intValue = list.get(i2).intValue();
                TrackGroupArray trackGroupArray = aVar.f21939c[intValue];
                if (StyledPlayerControlView.this.at != null && StyledPlayerControlView.this.at.a().hasSelectionOverride(intValue, trackGroupArray)) {
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
                        j jVar = list2.get(i);
                        if (jVar.e) {
                            g gVar = StyledPlayerControlView.this.ao;
                            gVar.f21992a[1] = jVar.f22000d;
                            break;
                        }
                        i++;
                    }
                } else {
                    g gVar2 = StyledPlayerControlView.this.ao;
                    gVar2.f21992a[1] = StyledPlayerControlView.this.getResources().getString(c.j.exo_track_selection_auto);
                }
            } else {
                g gVar3 = StyledPlayerControlView.this.ao;
                gVar3.f21992a[1] = StyledPlayerControlView.this.getResources().getString(c.j.exo_track_selection_none);
            }
            this.f22001b = list;
            this.f22002c = list2;
            this.f22003d = aVar;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$b.class */
    final class b implements View.OnClickListener, PopupWindow.OnDismissListener, ac.a, h.a {
        private b() {
        }

        @Override // com.google.android.exoplayer2.ui.h.a
        public final void a(long j) {
            StyledPlayerControlView.this.ac = true;
            if (StyledPlayerControlView.this.p != null) {
                StyledPlayerControlView.this.p.setText(af.a(StyledPlayerControlView.this.r, StyledPlayerControlView.this.s, j));
            }
            StyledPlayerControlView.this.f21984c.b();
        }

        @Override // com.google.android.exoplayer2.ui.h.a
        public final void a(long j, boolean z) {
            StyledPlayerControlView.this.ac = false;
            if (!z && StyledPlayerControlView.this.Q != null) {
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                StyledPlayerControlView.a(styledPlayerControlView, styledPlayerControlView.Q, j);
            }
            StyledPlayerControlView.this.f21984c.a();
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
                StyledPlayerControlView.this.e();
            }
            if (bVar.a(5, 6, 8)) {
                StyledPlayerControlView.this.n();
            }
            if (bVar.a(9)) {
                StyledPlayerControlView.this.i();
            }
            if (bVar.a(10)) {
                StyledPlayerControlView.this.j();
            }
            if (bVar.a(9, 10, 12, 0)) {
                StyledPlayerControlView.this.f();
            }
            if (bVar.a(12, 0)) {
                StyledPlayerControlView.this.m();
            }
            if (bVar.a(13)) {
                StyledPlayerControlView.this.o();
            }
            if (bVar.a(2)) {
                StyledPlayerControlView.this.k();
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
            if (StyledPlayerControlView.this.p != null) {
                StyledPlayerControlView.this.p.setText(af.a(StyledPlayerControlView.this.r, StyledPlayerControlView.this.s, j));
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
            ac acVar = StyledPlayerControlView.this.Q;
            if (acVar != null) {
                StyledPlayerControlView.this.f21984c.a();
                if (StyledPlayerControlView.this.f == view) {
                    StyledPlayerControlView.this.R.c(acVar);
                } else if (StyledPlayerControlView.this.e == view) {
                    StyledPlayerControlView.this.R.b(acVar);
                } else if (StyledPlayerControlView.this.h == view) {
                    if (acVar.n() != 4) {
                        StyledPlayerControlView.this.R.e(acVar);
                    }
                } else if (StyledPlayerControlView.this.i == view) {
                    StyledPlayerControlView.this.R.d(acVar);
                } else if (StyledPlayerControlView.this.g == view) {
                    StyledPlayerControlView.this.a(acVar);
                } else if (StyledPlayerControlView.this.l == view) {
                    StyledPlayerControlView.this.R.a(acVar, w.a(acVar.s(), StyledPlayerControlView.this.ae));
                } else if (StyledPlayerControlView.this.m == view) {
                    StyledPlayerControlView.this.R.b(acVar, !acVar.t());
                } else if (StyledPlayerControlView.this.aA == view) {
                    StyledPlayerControlView.this.f21984c.b();
                    StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                    styledPlayerControlView.a(styledPlayerControlView.ao);
                } else if (StyledPlayerControlView.this.aB == view) {
                    StyledPlayerControlView.this.f21984c.b();
                    StyledPlayerControlView styledPlayerControlView2 = StyledPlayerControlView.this;
                    styledPlayerControlView2.a(styledPlayerControlView2.ap);
                } else if (StyledPlayerControlView.this.aC == view) {
                    StyledPlayerControlView.this.f21984c.b();
                    StyledPlayerControlView styledPlayerControlView3 = StyledPlayerControlView.this;
                    styledPlayerControlView3.a(styledPlayerControlView3.av);
                } else if (StyledPlayerControlView.this.ax == view) {
                    StyledPlayerControlView.this.f21984c.b();
                    StyledPlayerControlView styledPlayerControlView4 = StyledPlayerControlView.this;
                    styledPlayerControlView4.a(styledPlayerControlView4.au);
                }
            }
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public final void onDismiss() {
            if (StyledPlayerControlView.this.ar) {
                StyledPlayerControlView.this.f21984c.a();
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$c.class */
    public interface c {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$d.class */
    public final class d extends RecyclerView.a<h> {

        /* renamed from: b  reason: collision with root package name */
        private final String[] f21989b;

        /* renamed from: c  reason: collision with root package name */
        private final int[] f21990c;

        /* renamed from: d  reason: collision with root package name */
        private int f21991d;

        public d(String[] strArr, int[] iArr) {
            this.f21989b = strArr;
            this.f21990c = iArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(int i, View view) {
            if (i != this.f21991d) {
                StyledPlayerControlView.a(StyledPlayerControlView.this, this.f21990c[i] / 100.0f);
            }
            StyledPlayerControlView.this.aq.dismiss();
        }

        public final void a(float f) {
            int round = Math.round(f * 100.0f);
            int i = 0;
            int i2 = 0;
            int i3 = Integer.MAX_VALUE;
            while (true) {
                int[] iArr = this.f21990c;
                if (i < iArr.length) {
                    int abs = Math.abs(round - iArr[i]);
                    i3 = i3;
                    if (abs < i3) {
                        i2 = i;
                        i3 = abs;
                    }
                    i++;
                } else {
                    this.f21991d = i2;
                    return;
                }
            }
        }

        public final String b() {
            return this.f21989b[this.f21991d];
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public final int getItemCount() {
            return this.f21989b.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public final /* synthetic */ void onBindViewHolder(h hVar, final int i) {
            h hVar2 = hVar;
            if (i < this.f21989b.length) {
                hVar2.r.setText(this.f21989b[i]);
            }
            hVar2.s.setVisibility(i == this.f21991d ? 0 : 4);
            hVar2.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$StyledPlayerControlView$d$AjfN1NWBEocCIflyTm7klrm6pm4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StyledPlayerControlView.d.this.a(i, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public final /* synthetic */ h onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new h(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(c.h.exo_styled_sub_settings_list_item, (ViewGroup) null));
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$e.class */
    public interface e {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$f.class */
    final class f extends RecyclerView.v {
        private final TextView s;
        private final TextView t;
        private final ImageView u;

        public f(View view) {
            super(view);
            this.s = (TextView) view.findViewById(c.f.exo_main_text);
            this.t = (TextView) view.findViewById(c.f.exo_sub_text);
            this.u = (ImageView) view.findViewById(c.f.exo_icon);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$StyledPlayerControlView$f$VP_OyqunfLgpgyuvXSLHi4sU7NY
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    StyledPlayerControlView.f.this.a(view2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(View view) {
            StyledPlayerControlView.a(StyledPlayerControlView.this, getAdapterPosition());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$g.class */
    public final class g extends RecyclerView.a<f> {

        /* renamed from: a  reason: collision with root package name */
        final String[] f21992a;

        /* renamed from: c  reason: collision with root package name */
        private final String[] f21994c;

        /* renamed from: d  reason: collision with root package name */
        private final Drawable[] f21995d;

        public g(String[] strArr, Drawable[] drawableArr) {
            this.f21994c = strArr;
            this.f21992a = new String[strArr.length];
            this.f21995d = drawableArr;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public final int getItemCount() {
            return this.f21994c.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public final long getItemId(int i) {
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public final /* synthetic */ void onBindViewHolder(f fVar, int i) {
            f fVar2 = fVar;
            fVar2.s.setText(this.f21994c[i]);
            if (this.f21992a[i] == null) {
                fVar2.t.setVisibility(8);
            } else {
                fVar2.t.setText(this.f21992a[i]);
            }
            if (this.f21995d[i] == null) {
                fVar2.u.setVisibility(8);
            } else {
                fVar2.u.setImageDrawable(this.f21995d[i]);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public final /* synthetic */ f onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new f(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(c.h.exo_styled_settings_list_item, (ViewGroup) null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$h.class */
    public static final class h extends RecyclerView.v {
        public final TextView r;
        public final View s;

        public h(View view) {
            super(view);
            this.r = (TextView) view.findViewById(c.f.exo_text);
            this.s = view.findViewById(c.f.exo_check);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$i.class */
    final class i extends k {
        private i() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(View view) {
            if (StyledPlayerControlView.this.at != null) {
                DefaultTrackSelector.c buildUpon = StyledPlayerControlView.this.at.a().buildUpon();
                for (int i = 0; i < this.f22001b.size(); i++) {
                    int intValue = this.f22001b.get(i).intValue();
                    buildUpon = buildUpon.a(intValue).a(intValue, true);
                }
                ((DefaultTrackSelector) com.google.android.exoplayer2.util.a.b(StyledPlayerControlView.this.at)).a(buildUpon);
                StyledPlayerControlView.this.aq.dismiss();
            }
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.k
        public final void a(h hVar) {
            boolean z;
            hVar.r.setText(c.j.exo_track_selection_none);
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= this.f22002c.size()) {
                    z = true;
                    break;
                } else if (this.f22002c.get(i2).e) {
                    z = false;
                    break;
                } else {
                    i2++;
                }
            }
            View view = hVar.s;
            if (!z) {
                i = 4;
            }
            view.setVisibility(i);
            hVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$StyledPlayerControlView$i$Pq8Bsz2hfmZYaW0zw9SQh32yRnU
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    StyledPlayerControlView.i.this.a(view2);
                }
            });
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.k
        /* renamed from: a */
        public final void onBindViewHolder(h hVar, int i) {
            super.onBindViewHolder(hVar, i);
            if (i > 0) {
                hVar.s.setVisibility(this.f22002c.get(i - 1).e ? 0 : 4);
            }
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.k
        public final void a(String str) {
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.k
        public final void a(List<Integer> list, List<j> list2, e.a aVar) {
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= list2.size()) {
                    break;
                } else if (list2.get(i).e) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            if (StyledPlayerControlView.this.ax != null) {
                ImageView imageView = StyledPlayerControlView.this.ax;
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                imageView.setImageDrawable(z ? styledPlayerControlView.I : styledPlayerControlView.J);
                StyledPlayerControlView.this.ax.setContentDescription(z ? StyledPlayerControlView.this.K : StyledPlayerControlView.this.L);
            }
            this.f22001b = list;
            this.f22002c = list2;
            this.f22003d = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$j.class */
    public static final class j {

        /* renamed from: a  reason: collision with root package name */
        public final int f21997a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21998b;

        /* renamed from: c  reason: collision with root package name */
        public final int f21999c;

        /* renamed from: d  reason: collision with root package name */
        public final String f22000d;
        public final boolean e;

        public j(int i, int i2, int i3, String str, boolean z) {
            this.f21997a = i;
            this.f21998b = i2;
            this.f21999c = i3;
            this.f22000d = str;
            this.e = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$k.class */
    public abstract class k extends RecyclerView.a<h> {

        /* renamed from: b  reason: collision with root package name */
        protected List<Integer> f22001b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        protected List<j> f22002c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        protected e.a f22003d = null;

        public k() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(j jVar, View view) {
            if (!(this.f22003d == null || StyledPlayerControlView.this.at == null)) {
                DefaultTrackSelector.c buildUpon = StyledPlayerControlView.this.at.a().buildUpon();
                for (int i = 0; i < this.f22001b.size(); i++) {
                    int intValue = this.f22001b.get(i).intValue();
                    if (intValue == jVar.f21997a) {
                        TrackGroupArray trackGroupArray = ((e.a) com.google.android.exoplayer2.util.a.b(this.f22003d)).f21939c[intValue];
                        DefaultTrackSelector.SelectionOverride selectionOverride = new DefaultTrackSelector.SelectionOverride(jVar.f21998b, jVar.f21999c);
                        Map<TrackGroupArray, DefaultTrackSelector.SelectionOverride> map = buildUpon.f21909b.get(intValue);
                        Map<TrackGroupArray, DefaultTrackSelector.SelectionOverride> map2 = map;
                        if (map == null) {
                            map2 = new HashMap<>();
                            buildUpon.f21909b.put(intValue, map2);
                        }
                        if (!map2.containsKey(trackGroupArray) || !af.a(map2.get(trackGroupArray), selectionOverride)) {
                            map2.put(trackGroupArray, selectionOverride);
                        }
                        buildUpon = buildUpon.a(intValue, false);
                    } else {
                        buildUpon = buildUpon.a(intValue).a(intValue, true);
                    }
                }
                ((DefaultTrackSelector) com.google.android.exoplayer2.util.a.b(StyledPlayerControlView.this.at)).a(buildUpon);
                a(jVar.f22000d);
                StyledPlayerControlView.this.aq.dismiss();
            }
        }

        public abstract void a(h hVar);

        /* renamed from: a */
        public void onBindViewHolder(h hVar, int i) {
            if (StyledPlayerControlView.this.at != null && this.f22003d != null) {
                if (i == 0) {
                    a(hVar);
                    return;
                }
                boolean z = true;
                final j jVar = this.f22002c.get(i - 1);
                e.a aVar = this.f22003d;
                int i2 = 0;
                if (!((DefaultTrackSelector) com.google.android.exoplayer2.util.a.b(StyledPlayerControlView.this.at)).a().hasSelectionOverride(jVar.f21997a, aVar.f21939c[jVar.f21997a]) || !jVar.e) {
                    z = false;
                }
                hVar.r.setText(jVar.f22000d);
                View view = hVar.s;
                if (!z) {
                    i2 = 4;
                }
                view.setVisibility(i2);
                hVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$StyledPlayerControlView$k$D2_TB566K2AWpVcThMn_UJFYg9U
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        StyledPlayerControlView.k.this.a(jVar, view2);
                    }
                });
            }
        }

        public abstract void a(String str);

        public abstract void a(List<Integer> list, List<j> list2, e.a aVar);

        public final void b() {
            this.f22002c = Collections.emptyList();
            this.f22003d = null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public int getItemCount() {
            if (this.f22002c.isEmpty()) {
                return 0;
            }
            return this.f22002c.size() + 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public /* synthetic */ h onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new h(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(c.h.exo_styled_sub_settings_list_item, (ViewGroup) null));
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerControlView$l.class */
    public interface l {
        void a();
    }

    static {
        p.a("goog.exo.ui");
    }

    public StyledPlayerControlView(Context context) {
        this(context, null);
    }

    public StyledPlayerControlView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StyledPlayerControlView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, attributeSet);
    }

    public StyledPlayerControlView(Context context, AttributeSet attributeSet, int i2, AttributeSet attributeSet2) {
        super(context, attributeSet, i2);
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        int i3 = c.h.exo_styled_player_control_view;
        this.ak = 5000L;
        this.al = FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT;
        this.f21983b = 5000;
        this.ae = 0;
        this.ad = 200;
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, c.l.StyledPlayerControlView, 0, 0);
            try {
                this.ak = obtainStyledAttributes.getInt(c.l.StyledPlayerControlView_rewind_increment, (int) this.ak);
                this.al = obtainStyledAttributes.getInt(c.l.StyledPlayerControlView_fastforward_increment, (int) this.al);
                i3 = obtainStyledAttributes.getResourceId(c.l.StyledPlayerControlView_controller_layout_id, i3);
                this.f21983b = obtainStyledAttributes.getInt(c.l.StyledPlayerControlView_show_timeout, this.f21983b);
                this.ae = obtainStyledAttributes.getInt(c.l.StyledPlayerControlView_repeat_toggle_modes, this.ae);
                z8 = obtainStyledAttributes.getBoolean(c.l.StyledPlayerControlView_show_rewind_button, true);
                z7 = obtainStyledAttributes.getBoolean(c.l.StyledPlayerControlView_show_fastforward_button, true);
                z = obtainStyledAttributes.getBoolean(c.l.StyledPlayerControlView_show_previous_button, true);
                z6 = obtainStyledAttributes.getBoolean(c.l.StyledPlayerControlView_show_next_button, true);
                z5 = obtainStyledAttributes.getBoolean(c.l.StyledPlayerControlView_show_shuffle_button, false);
                z4 = obtainStyledAttributes.getBoolean(c.l.StyledPlayerControlView_show_subtitle_button, false);
                z3 = obtainStyledAttributes.getBoolean(c.l.StyledPlayerControlView_show_vr_button, false);
                setTimeBarMinUpdateInterval(obtainStyledAttributes.getInt(c.l.StyledPlayerControlView_time_bar_min_update_interval, this.ad));
                z2 = obtainStyledAttributes.getBoolean(c.l.StyledPlayerControlView_animation_enabled, true);
            } finally {
                obtainStyledAttributes.recycle();
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
        LayoutInflater.from(context).inflate(i3, this);
        setDescendantFocusability(262144);
        b bVar = new b();
        this.f21985d = bVar;
        this.f21982a = new CopyOnWriteArrayList<>();
        this.t = new al.a();
        this.u = new al.b();
        StringBuilder sb = new StringBuilder();
        this.r = sb;
        this.s = new Formatter(sb, Locale.getDefault());
        this.af = new long[0];
        this.ag = new boolean[0];
        this.ah = new long[0];
        this.ai = new boolean[0];
        this.R = new com.google.android.exoplayer2.h(this.al, this.ak);
        this.v = new Runnable() { // from class: com.google.android.exoplayer2.ui._$$Lambda$StyledPlayerControlView$QwkDVaKWCzNhTXldMRFuihxzTMI
            @Override // java.lang.Runnable
            public final void run() {
                StyledPlayerControlView.this.n();
            }
        };
        this.o = (TextView) findViewById(c.f.exo_duration);
        this.p = (TextView) findViewById(c.f.exo_position);
        ImageView imageView = (ImageView) findViewById(c.f.exo_subtitle);
        this.ax = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(bVar);
        }
        ImageView imageView2 = (ImageView) findViewById(c.f.exo_fullscreen);
        this.ay = imageView2;
        a(imageView2, new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$StyledPlayerControlView$0v4f7A2pd7xlryo2ihtfzdIOYUI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StyledPlayerControlView.this.a(view);
            }
        });
        ImageView imageView3 = (ImageView) findViewById(c.f.exo_minimal_fullscreen);
        this.az = imageView3;
        a(imageView3, new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$StyledPlayerControlView$0v4f7A2pd7xlryo2ihtfzdIOYUI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StyledPlayerControlView.this.a(view);
            }
        });
        View findViewById = findViewById(c.f.exo_settings);
        this.aA = findViewById;
        if (findViewById != null) {
            findViewById.setOnClickListener(bVar);
        }
        View findViewById2 = findViewById(c.f.exo_playback_speed);
        this.aB = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(bVar);
        }
        View findViewById3 = findViewById(c.f.exo_audio_track);
        this.aC = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(bVar);
        }
        com.google.android.exoplayer2.ui.h hVar = (com.google.android.exoplayer2.ui.h) findViewById(c.f.exo_progress);
        View findViewById4 = findViewById(c.f.exo_progress_placeholder);
        if (hVar != null) {
            this.q = hVar;
        } else if (findViewById4 != null) {
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2, c.k.ExoStyledControls_TimeBar);
            defaultTimeBar.setId(c.f.exo_progress);
            defaultTimeBar.setLayoutParams(findViewById4.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById4.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById4);
            viewGroup.removeView(findViewById4);
            viewGroup.addView(defaultTimeBar, indexOfChild);
            this.q = defaultTimeBar;
        } else {
            this.q = null;
        }
        com.google.android.exoplayer2.ui.h hVar2 = this.q;
        if (hVar2 != null) {
            hVar2.a(bVar);
        }
        View findViewById5 = findViewById(c.f.exo_play_pause);
        this.g = findViewById5;
        if (findViewById5 != null) {
            findViewById5.setOnClickListener(bVar);
        }
        View findViewById6 = findViewById(c.f.exo_prev);
        this.e = findViewById6;
        if (findViewById6 != null) {
            findViewById6.setOnClickListener(bVar);
        }
        View findViewById7 = findViewById(c.f.exo_next);
        this.f = findViewById7;
        if (findViewById7 != null) {
            findViewById7.setOnClickListener(bVar);
        }
        Typeface a2 = androidx.core.content.res.f.a(context, c.e.roboto_medium_numbers);
        View findViewById8 = findViewById(c.f.exo_rew);
        TextView textView = findViewById8 == null ? (TextView) findViewById(c.f.exo_rew_with_amount) : null;
        this.k = textView;
        if (textView != null) {
            textView.setTypeface(a2);
        }
        TextView textView2 = findViewById8 == null ? textView : findViewById8;
        this.i = textView2;
        if (textView2 != null) {
            textView2.setOnClickListener(bVar);
        }
        View findViewById9 = findViewById(c.f.exo_ffwd);
        TextView textView3 = findViewById9 == null ? (TextView) findViewById(c.f.exo_ffwd_with_amount) : null;
        this.j = textView3;
        if (textView3 != null) {
            textView3.setTypeface(a2);
        }
        TextView textView4 = findViewById9 == null ? textView3 : findViewById9;
        this.h = textView4;
        if (textView4 != null) {
            textView4.setOnClickListener(bVar);
        }
        ImageView imageView4 = (ImageView) findViewById(c.f.exo_repeat_toggle);
        this.l = imageView4;
        if (imageView4 != null) {
            imageView4.setOnClickListener(bVar);
        }
        ImageView imageView5 = (ImageView) findViewById(c.f.exo_shuffle);
        this.m = imageView5;
        if (imageView5 != null) {
            imageView5.setOnClickListener(bVar);
        }
        Resources resources = context.getResources();
        this.am = resources;
        this.E = resources.getInteger(c.g.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.F = this.am.getInteger(c.g.exo_media_button_opacity_percentage_disabled) / 100.0f;
        View findViewById10 = findViewById(c.f.exo_vr);
        this.n = findViewById10;
        if (findViewById10 != null) {
            a(false, findViewById10);
        }
        com.google.android.exoplayer2.ui.e eVar = new com.google.android.exoplayer2.ui.e(this);
        this.f21984c = eVar;
        eVar.m = z2;
        this.ao = new g(new String[]{this.am.getString(c.j.exo_controls_playback_speed), this.am.getString(c.j.exo_track_selection_title_audio)}, new Drawable[]{this.am.getDrawable(c.d.exo_styled_controls_speed), this.am.getDrawable(c.d.exo_styled_controls_audiotrack)});
        this.as = this.am.getDimensionPixelSize(c.C0444c.exo_settings_offset);
        RecyclerView recyclerView = (RecyclerView) LayoutInflater.from(context).inflate(c.h.exo_styled_settings_list, (ViewGroup) null);
        this.an = recyclerView;
        recyclerView.setAdapter(this.ao);
        this.an.setLayoutManager(new LinearLayoutManager(getContext()));
        this.aq = new PopupWindow((View) this.an, -2, -2, true);
        if (af.f22275a < 23) {
            this.aq.setBackgroundDrawable(new ColorDrawable(0));
        }
        this.aq.setOnDismissListener(bVar);
        this.ar = true;
        this.aw = new com.google.android.exoplayer2.ui.a(getResources());
        this.I = this.am.getDrawable(c.d.exo_styled_controls_subtitle_on);
        this.J = this.am.getDrawable(c.d.exo_styled_controls_subtitle_off);
        this.K = this.am.getString(c.j.exo_controls_cc_enabled_description);
        this.L = this.am.getString(c.j.exo_controls_cc_disabled_description);
        this.au = new i();
        this.av = new a();
        this.ap = new d(this.am.getStringArray(c.a.exo_playback_speeds), this.am.getIntArray(c.a.exo_speed_multiplied_by_100));
        this.M = this.am.getDrawable(c.d.exo_styled_controls_fullscreen_exit);
        this.N = this.am.getDrawable(c.d.exo_styled_controls_fullscreen_enter);
        this.w = this.am.getDrawable(c.d.exo_styled_controls_repeat_off);
        this.x = this.am.getDrawable(c.d.exo_styled_controls_repeat_one);
        this.y = this.am.getDrawable(c.d.exo_styled_controls_repeat_all);
        this.C = this.am.getDrawable(c.d.exo_styled_controls_shuffle_on);
        this.D = this.am.getDrawable(c.d.exo_styled_controls_shuffle_off);
        this.O = this.am.getString(c.j.exo_controls_fullscreen_exit_description);
        this.P = this.am.getString(c.j.exo_controls_fullscreen_enter_description);
        this.z = this.am.getString(c.j.exo_controls_repeat_off_description);
        this.A = this.am.getString(c.j.exo_controls_repeat_one_description);
        this.B = this.am.getString(c.j.exo_controls_repeat_all_description);
        this.G = this.am.getString(c.j.exo_controls_shuffle_on_description);
        this.H = this.am.getString(c.j.exo_controls_shuffle_off_description);
        this.f21984c.a((View) ((ViewGroup) findViewById(c.f.exo_bottom_bar)), true);
        this.f21984c.a(textView4, z7);
        this.f21984c.a(textView2, z8);
        this.f21984c.a(findViewById6, z);
        this.f21984c.a(findViewById7, z6);
        this.f21984c.a(imageView5, z5);
        this.f21984c.a(this.ax, z4);
        this.f21984c.a(findViewById10, z3);
        this.f21984c.a(imageView4, this.ae != 0);
        addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$StyledPlayerControlView$Z8CAmE0M9TvE7xj30q_BKswlXO0
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
                StyledPlayerControlView.this.a(view, i4, i5, i6, i7, i8, i9, i10, i11);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view) {
        if (this.U != null) {
            boolean z = !this.V;
            this.V = z;
            a(this.ay, z);
            a(this.az, this.V);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        if (!(i4 - i2 == i8 - i6 && i5 - i3 == i9 - i7) && this.aq.isShowing()) {
            p();
            int width = getWidth();
            int width2 = this.aq.getWidth();
            this.aq.update(view, (width - width2) - this.as, (-this.aq.getHeight()) - this.as, -1, -1);
        }
    }

    private static void a(View view, View.OnClickListener onClickListener) {
        if (view != null) {
            view.setVisibility(8);
            view.setOnClickListener(onClickListener);
        }
    }

    private static void a(View view, boolean z) {
        if (view != null) {
            if (z) {
                view.setVisibility(0);
            } else {
                view.setVisibility(8);
            }
        }
    }

    private void a(ImageView imageView, boolean z) {
        if (imageView != null) {
            if (z) {
                imageView.setImageDrawable(this.M);
                imageView.setContentDescription(this.O);
                return;
            }
            imageView.setImageDrawable(this.N);
            imageView.setContentDescription(this.P);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(RecyclerView.a<?> aVar) {
        this.an.setAdapter(aVar);
        p();
        this.ar = false;
        this.aq.dismiss();
        this.ar = true;
        int width = getWidth();
        int width2 = this.aq.getWidth();
        this.aq.showAsDropDown(this, (width - width2) - this.as, (-this.aq.getHeight()) - this.as);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ac acVar) {
        int n = acVar.n();
        if (n == 1 || n == 4 || !acVar.r()) {
            b(acVar);
        } else {
            c(acVar);
        }
    }

    private void a(e.a aVar, int i2, List<j> list) {
        TrackGroupArray trackGroupArray = aVar.f21939c[i2];
        com.google.android.exoplayer2.trackselection.f fVar = ((ac) com.google.android.exoplayer2.util.a.b(this.Q)).I().f21942b[i2];
        for (int i3 = 0; i3 < trackGroupArray.length; i3++) {
            TrackGroup trackGroup = trackGroupArray.get(i3);
            for (int i4 = 0; i4 < trackGroup.length; i4++) {
                Format format = trackGroup.getFormat(i4);
                if (aVar.a(i2, i3, i4) == 4) {
                    list.add(new j(i2, i3, i4, this.aw.a(format), (fVar == null || fVar.a(format) == -1) ? false : true));
                }
            }
        }
    }

    static /* synthetic */ void a(StyledPlayerControlView styledPlayerControlView, float f2) {
        ac acVar = styledPlayerControlView.Q;
        if (acVar != null) {
            styledPlayerControlView.R.a(acVar, acVar.v().a(f2));
        }
    }

    static /* synthetic */ void a(StyledPlayerControlView styledPlayerControlView, int i2) {
        if (i2 == 0) {
            styledPlayerControlView.a(styledPlayerControlView.ap);
        } else if (i2 == 1) {
            styledPlayerControlView.a(styledPlayerControlView.av);
        } else {
            styledPlayerControlView.aq.dismiss();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.google.android.exoplayer2.ui.StyledPlayerControlView] */
    /* JADX WARN: Type inference failed for: r8v0, types: [long] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ void a(com.google.android.exoplayer2.ui.StyledPlayerControlView r6, com.google.android.exoplayer2.ac r7, long r8) {
        /*
            r0 = r7
            com.google.android.exoplayer2.al r0 = r0.K()
            r10 = r0
            r0 = r6
            boolean r0 = r0.ab
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
            com.google.android.exoplayer2.al$b r2 = r2.u
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
            r0.n()
        L_0x007d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.StyledPlayerControlView.a(com.google.android.exoplayer2.ui.StyledPlayerControlView, com.google.android.exoplayer2.ac, long):void");
    }

    private void a(boolean z, View view) {
        if (view != null) {
            view.setEnabled(z);
            view.setAlpha(z ? this.E : this.F);
        }
    }

    private static boolean a(int i2) {
        return i2 == 90 || i2 == 89 || i2 == 85 || i2 == 79 || i2 == 126 || i2 == 127 || i2 == 87 || i2 == 88;
    }

    private boolean a(ac acVar, int i2, long j2) {
        return this.R.a(acVar, i2, j2);
    }

    private static boolean a(al alVar, al.b bVar) {
        if (alVar.a() > 100) {
            return false;
        }
        int a2 = alVar.a();
        for (int i2 = 0; i2 < a2; i2++) {
            if (alVar.a(i2, bVar, 0L).q == -9223372036854775807L) {
                return false;
            }
        }
        return true;
    }

    private void b(ac acVar) {
        int n = acVar.n();
        if (n == 1) {
            if (this.T == null) {
                this.R.a(acVar);
            }
        } else if (n == 4) {
            a(acVar, acVar.y(), -9223372036854775807L);
        }
        this.R.a(acVar, true);
    }

    private void c(ac acVar) {
        this.R.a(acVar, false);
    }

    private void d() {
        e();
        f();
        i();
        j();
        k();
        o();
        m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (c() && this.W && this.g != null) {
            if (q()) {
                ((ImageView) this.g).setImageDrawable(this.am.getDrawable(c.d.exo_styled_controls_pause));
                this.g.setContentDescription(this.am.getString(c.j.exo_controls_pause_description));
                return;
            }
            ((ImageView) this.g).setImageDrawable(this.am.getDrawable(c.d.exo_styled_controls_play));
            this.g.setContentDescription(this.am.getString(c.j.exo_controls_play_description));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void f() {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.StyledPlayerControlView.f():void");
    }

    private void g() {
        com.google.android.exoplayer2.g gVar = this.R;
        if (gVar instanceof com.google.android.exoplayer2.h) {
            this.ak = ((com.google.android.exoplayer2.h) gVar).f21363a;
        }
        int i2 = (int) (this.ak / 1000);
        TextView textView = this.k;
        if (textView != null) {
            textView.setText(String.valueOf(i2));
        }
        View view = this.i;
        if (view != null) {
            view.setContentDescription(this.am.getQuantityString(c.i.exo_controls_rewind_by_amount_description, i2, Integer.valueOf(i2)));
        }
    }

    private void h() {
        com.google.android.exoplayer2.g gVar = this.R;
        if (gVar instanceof com.google.android.exoplayer2.h) {
            this.al = ((com.google.android.exoplayer2.h) gVar).f21364b;
        }
        int i2 = (int) (this.al / 1000);
        TextView textView = this.j;
        if (textView != null) {
            textView.setText(String.valueOf(i2));
        }
        View view = this.h;
        if (view != null) {
            view.setContentDescription(this.am.getQuantityString(c.i.exo_controls_fastforward_by_amount_description, i2, Integer.valueOf(i2)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        ImageView imageView;
        if (c() && this.W && (imageView = this.l) != null) {
            if (this.ae == 0) {
                a(false, (View) imageView);
                return;
            }
            ac acVar = this.Q;
            if (acVar == null) {
                a(false, (View) imageView);
                this.l.setImageDrawable(this.w);
                this.l.setContentDescription(this.z);
                return;
            }
            a(true, (View) imageView);
            int s = acVar.s();
            if (s == 0) {
                this.l.setImageDrawable(this.w);
                this.l.setContentDescription(this.z);
            } else if (s == 1) {
                this.l.setImageDrawable(this.x);
                this.l.setContentDescription(this.A);
            } else if (s == 2) {
                this.l.setImageDrawable(this.y);
                this.l.setContentDescription(this.B);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        ImageView imageView;
        String str;
        ImageView imageView2;
        if (c() && this.W && (imageView = this.m) != null) {
            ac acVar = this.Q;
            if (!this.f21984c.a(imageView)) {
                a(false, (View) this.m);
                return;
            }
            if (acVar == null) {
                a(false, (View) this.m);
                this.m.setImageDrawable(this.D);
                imageView2 = this.m;
            } else {
                a(true, (View) this.m);
                this.m.setImageDrawable(acVar.t() ? this.C : this.D);
                ImageView imageView3 = this.m;
                imageView2 = imageView3;
                if (acVar.t()) {
                    str = this.G;
                    imageView2 = imageView3;
                    imageView2.setContentDescription(str);
                }
            }
            str = this.H;
            imageView2.setContentDescription(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        l();
        a(this.au.getItemCount() > 0, this.ax);
    }

    private void l() {
        DefaultTrackSelector defaultTrackSelector;
        e.a aVar;
        this.au.b();
        this.av.b();
        if (!(this.Q == null || (defaultTrackSelector = this.at) == null || (aVar = ((com.google.android.exoplayer2.trackselection.e) defaultTrackSelector).f21936a) == null)) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            for (int i2 = 0; i2 < aVar.f21937a; i2++) {
                if (aVar.f21938b[i2] == 3 && this.f21984c.a(this.ax)) {
                    a(aVar, i2, arrayList);
                    arrayList3.add(Integer.valueOf(i2));
                } else if (aVar.f21938b[i2] == 1) {
                    a(aVar, i2, arrayList2);
                    arrayList4.add(Integer.valueOf(i2));
                }
            }
            this.au.a(arrayList3, arrayList, aVar);
            this.av.a(arrayList4, arrayList2, aVar);
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
    public void m() {
        /*
            Method dump skipped, instructions count: 593
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.StyledPlayerControlView.m():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        long j2;
        if (c() && this.W) {
            ac acVar = this.Q;
            long j3 = 0;
            if (acVar != null) {
                j3 = this.aj + acVar.F();
                j2 = this.aj + acVar.G();
            } else {
                j2 = 0;
            }
            TextView textView = this.p;
            if (textView != null && !this.ac) {
                textView.setText(af.a(this.r, this.s, j3));
            }
            com.google.android.exoplayer2.ui.h hVar = this.q;
            if (hVar != null) {
                hVar.setPosition(j3);
                this.q.setBufferedPosition(j2);
            }
            removeCallbacks(this.v);
            int n = acVar == null ? 1 : acVar.n();
            long j4 = 1000;
            if (acVar != null && acVar.A_()) {
                com.google.android.exoplayer2.ui.h hVar2 = this.q;
                long min = Math.min(hVar2 != null ? hVar2.a() : 1000L, 1000 - (j3 % 1000));
                float f2 = acVar.v().f20647b;
                if (f2 > BitmapDescriptorFactory.HUE_RED) {
                    j4 = ((float) min) / f2;
                }
                postDelayed(this.v, af.a(j4, this.ad, 1000L));
            } else if (n != 4 && n != 1) {
                postDelayed(this.v, 1000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        ac acVar = this.Q;
        if (acVar != null) {
            this.ap.a(acVar.v().f20647b);
            g gVar = this.ao;
            gVar.f21992a[0] = this.ap.b();
        }
    }

    private void p() {
        this.an.measure(0, 0);
        this.aq.setWidth(Math.min(this.an.getMeasuredWidth(), getWidth() - (this.as * 2)));
        this.aq.setHeight(Math.min(getHeight() - (this.as * 2), this.an.getMeasuredHeight()));
    }

    private boolean q() {
        ac acVar = this.Q;
        return (acVar == null || acVar.n() == 4 || this.Q.n() == 1 || !this.Q.r()) ? false : true;
    }

    public final void a() {
        com.google.android.exoplayer2.ui.e eVar = this.f21984c;
        if (!eVar.f22039a.c()) {
            eVar.f22039a.setVisibility(0);
            eVar.f22039a.d();
            View view = eVar.f22039a.g;
            if (view != null) {
                view.requestFocus();
            }
        }
        eVar.d();
    }

    public final void a(l lVar) {
        com.google.android.exoplayer2.util.a.b(lVar);
        this.f21982a.add(lVar);
    }

    public final boolean a(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        ac acVar = this.Q;
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
            this.R.e(acVar);
            return true;
        } else if (keyCode == 89) {
            this.R.d(acVar);
            return true;
        } else if (keyEvent.getRepeatCount() != 0) {
            return true;
        } else {
            if (keyCode == 79 || keyCode == 85) {
                a(acVar);
                return true;
            } else if (keyCode == 87) {
                this.R.c(acVar);
                return true;
            } else if (keyCode == 88) {
                this.R.b(acVar);
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

    public final void b() {
        com.google.android.exoplayer2.ui.e eVar = this.f21984c;
        if (eVar.j != 3 && eVar.j != 2) {
            eVar.b();
            if (!eVar.m) {
                eVar.g();
            } else if (eVar.j == 1) {
                eVar.f();
            } else {
                eVar.e();
            }
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
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.google.android.exoplayer2.ui.e eVar = this.f21984c;
        eVar.f22039a.addOnLayoutChangeListener(eVar.i);
        this.W = true;
        if (this.f21984c.c()) {
            this.f21984c.a();
        }
        d();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.google.android.exoplayer2.ui.e eVar = this.f21984c;
        eVar.f22039a.removeOnLayoutChangeListener(eVar.i);
        this.W = false;
        removeCallbacks(this.v);
        this.f21984c.b();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        com.google.android.exoplayer2.ui.e eVar = this.f21984c;
        if (eVar.f22040b != null) {
            eVar.f22040b.layout(0, 0, i4 - i2, i5 - i3);
        }
    }

    public void setAnimationEnabled(boolean z) {
        this.f21984c.m = z;
    }

    public void setControlDispatcher(com.google.android.exoplayer2.g gVar) {
        if (this.R != gVar) {
            this.R = gVar;
            f();
        }
    }

    public void setExtraAdGroupMarkers(long[] jArr, boolean[] zArr) {
        boolean z = false;
        if (jArr == null) {
            this.ah = new long[0];
            this.ai = new boolean[0];
        } else {
            boolean[] zArr2 = (boolean[]) com.google.android.exoplayer2.util.a.b(zArr);
            if (jArr.length == zArr2.length) {
                z = true;
            }
            com.google.android.exoplayer2.util.a.a(z);
            this.ah = jArr;
            this.ai = zArr2;
        }
        m();
    }

    public void setOnFullScreenModeChangedListener(c cVar) {
        this.U = cVar;
        boolean z = true;
        a((View) this.ay, cVar != null);
        ImageView imageView = this.az;
        if (cVar == null) {
            z = false;
        }
        a((View) imageView, z);
    }

    @Deprecated
    public void setPlaybackPreparer(ab abVar) {
        this.T = abVar;
    }

    public void setPlayer(ac acVar) {
        com.google.android.exoplayer2.util.a.b(Looper.myLooper() == Looper.getMainLooper());
        boolean z = true;
        if (acVar != null) {
            z = acVar.m() == Looper.getMainLooper();
        }
        com.google.android.exoplayer2.util.a.a(z);
        ac acVar2 = this.Q;
        if (acVar2 != acVar) {
            if (acVar2 != null) {
                acVar2.b(this.f21985d);
            }
            this.Q = acVar;
            if (acVar != null) {
                acVar.a(this.f21985d);
            }
            if (acVar instanceof m) {
                com.google.android.exoplayer2.trackselection.h z_ = ((m) acVar).z_();
                if (z_ instanceof DefaultTrackSelector) {
                    this.at = (DefaultTrackSelector) z_;
                }
            } else {
                this.at = null;
            }
            d();
        }
    }

    public void setProgressUpdateListener(e eVar) {
        this.S = eVar;
    }

    public void setRepeatToggleModes(int i2) {
        this.ae = i2;
        ac acVar = this.Q;
        boolean z = false;
        if (acVar != null) {
            int s = acVar.s();
            if (i2 == 0 && s != 0) {
                this.R.a(this.Q, 0);
            } else if (i2 == 1 && s == 2) {
                this.R.a(this.Q, 1);
            } else if (i2 == 2 && s == 1) {
                this.R.a(this.Q, 2);
            }
        }
        com.google.android.exoplayer2.ui.e eVar = this.f21984c;
        ImageView imageView = this.l;
        if (i2 != 0) {
            z = true;
        }
        eVar.a(imageView, z);
        i();
    }

    public void setShowFastForwardButton(boolean z) {
        this.f21984c.a(this.h, z);
        f();
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        this.aa = z;
        m();
    }

    public void setShowNextButton(boolean z) {
        this.f21984c.a(this.f, z);
        f();
    }

    public void setShowPreviousButton(boolean z) {
        this.f21984c.a(this.e, z);
        f();
    }

    public void setShowRewindButton(boolean z) {
        this.f21984c.a(this.i, z);
        f();
    }

    public void setShowShuffleButton(boolean z) {
        this.f21984c.a(this.m, z);
        j();
    }

    public void setShowSubtitleButton(boolean z) {
        this.f21984c.a(this.ax, z);
    }

    public void setShowTimeoutMs(int i2) {
        this.f21983b = i2;
        if (this.f21984c.c()) {
            this.f21984c.a();
        }
    }

    public void setShowVrButton(boolean z) {
        this.f21984c.a(this.n, z);
    }

    public void setTimeBarMinUpdateInterval(int i2) {
        this.ad = af.a(i2, 16, 1000);
    }

    public void setVrButtonListener(View.OnClickListener onClickListener) {
        View view = this.n;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            a(onClickListener != null, this.n);
        }
    }
}
