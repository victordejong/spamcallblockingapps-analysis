package androidx.media2.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.LinearInterpolator;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.UriMediaItem;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.session.SessionCommandGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Formatter;
import java.util.List;
import java.util.Locale;
import p012b.p016b.p017k.DialogInterfaceC0584a;
import p012b.p042i.p044i.C0869a;
import p012b.p076s.p118e.AbstractC1843h;
import p012b.p076s.p118e.C1804a;
import p012b.p076s.p118e.C1844i;
import p012b.p076s.p118e.C1848j;
import p012b.p076s.p118e.C1850l;
import p012b.p076s.p118e.C1851m;
import p012b.p076s.p118e.C1852n;
import p012b.p076s.p118e.C1853o;
import p012b.p076s.p118e.C1854p;
import p012b.p076s.p118e.C1873v;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView.class */
public class MediaControlView extends AbstractC1843h {

    /* renamed from: U0 */
    public static final boolean f2263U0 = Log.isLoggable("MediaControlView", 3);

    /* renamed from: A */
    public boolean f2264A;

    /* renamed from: A0 */
    public ValueAnimator f2265A0;

    /* renamed from: B */
    public boolean f2266B;

    /* renamed from: B0 */
    public ValueAnimator f2267B0;

    /* renamed from: C */
    public boolean f2268C;

    /* renamed from: C0 */
    public final Runnable f2269C0;

    /* renamed from: D */
    public SparseArray<View> f2270D;

    /* renamed from: D0 */
    public final Runnable f2271D0;

    /* renamed from: E */
    public View f2272E;

    /* renamed from: E0 */
    public final Runnable f2273E0;

    /* renamed from: F */
    public TextView f2274F;

    /* renamed from: F0 */
    public Runnable f2275F0;

    /* renamed from: G */
    public View f2276G;

    /* renamed from: G0 */
    public final Runnable f2277G0;

    /* renamed from: H */
    public ViewGroup f2278H;

    /* renamed from: H0 */
    public final SeekBar.OnSeekBarChangeListener f2279H0;

    /* renamed from: I */
    public View f2280I;

    /* renamed from: I0 */
    public final View.OnClickListener f2281I0;

    /* renamed from: J */
    public View f2282J;

    /* renamed from: J0 */
    public final View.OnClickListener f2283J0;

    /* renamed from: K */
    public View f2284K;

    /* renamed from: K0 */
    public final View.OnClickListener f2285K0;

    /* renamed from: L */
    public ViewGroup f2286L;

    /* renamed from: L0 */
    public final View.OnClickListener f2287L0;

    /* renamed from: M */
    public ImageButton f2288M;

    /* renamed from: M0 */
    public final View.OnClickListener f2289M0;

    /* renamed from: N */
    public ViewGroup f2290N;

    /* renamed from: N0 */
    public final View.OnClickListener f2291N0;

    /* renamed from: O */
    public SeekBar f2292O;

    /* renamed from: O0 */
    public final View.OnClickListener f2293O0;

    /* renamed from: P */
    public View f2294P;

    /* renamed from: P0 */
    public final View.OnClickListener f2295P0;

    /* renamed from: Q */
    public ViewGroup f2296Q;

    /* renamed from: Q0 */
    public final View.OnClickListener f2297Q0;

    /* renamed from: R */
    public View f2298R;

    /* renamed from: R0 */
    public final View.OnClickListener f2299R0;

    /* renamed from: S */
    public ViewGroup f2300S;

    /* renamed from: S0 */
    public final AdapterView.OnItemClickListener f2301S0;

    /* renamed from: T */
    public TextView f2302T;

    /* renamed from: T0 */
    public PopupWindow.OnDismissListener f2303T0;

    /* renamed from: U */
    public TextView f2304U;

    /* renamed from: V */
    public TextView f2305V;

    /* renamed from: W */
    public StringBuilder f2306W;

    /* renamed from: a0 */
    public Formatter f2307a0;

    /* renamed from: b */
    public boolean f2308b;

    /* renamed from: b0 */
    public ViewGroup f2309b0;

    /* renamed from: c */
    public Resources f2310c;

    /* renamed from: c0 */
    public ViewGroup f2311c0;

    /* renamed from: d */
    public C1844i f2312d;

    /* renamed from: d0 */
    public ImageButton f2313d0;

    /* renamed from: e */
    public AbstractC0453f0 f2314e;

    /* renamed from: e0 */
    public ImageButton f2315e0;

    /* renamed from: f */
    public AccessibilityManager f2316f;

    /* renamed from: f0 */
    public TextView f2317f0;

    /* renamed from: g */
    public int f2318g;

    /* renamed from: g0 */
    public ListView f2319g0;

    /* renamed from: h */
    public int f2320h;

    /* renamed from: h0 */
    public PopupWindow f2321h0;

    /* renamed from: i */
    public int f2322i;

    /* renamed from: i0 */
    public C0458h0 f2323i0;

    /* renamed from: j */
    public int f2324j;

    /* renamed from: j0 */
    public C0460i0 f2325j0;

    /* renamed from: k */
    public int f2326k;

    /* renamed from: k0 */
    public List<String> f2327k0;

    /* renamed from: l */
    public int f2328l;

    /* renamed from: l0 */
    public List<String> f2329l0;

    /* renamed from: m */
    public int f2330m;

    /* renamed from: m0 */
    public List<Integer> f2331m0;

    /* renamed from: n */
    public int f2332n;

    /* renamed from: n0 */
    public List<String> f2333n0;

    /* renamed from: o */
    public int f2334o;

    /* renamed from: o0 */
    public int f2335o0;

    /* renamed from: p */
    public int f2336p;

    /* renamed from: p0 */
    public List<SessionPlayer.TrackInfo> f2337p0;

    /* renamed from: q */
    public long f2338q;

    /* renamed from: q0 */
    public List<SessionPlayer.TrackInfo> f2339q0;

    /* renamed from: r */
    public long f2340r;

    /* renamed from: r0 */
    public List<String> f2341r0;

    /* renamed from: s */
    public long f2342s;

    /* renamed from: s0 */
    public List<String> f2343s0;

    /* renamed from: t */
    public long f2344t;

    /* renamed from: t0 */
    public List<Integer> f2345t0;

    /* renamed from: u */
    public boolean f2346u;

    /* renamed from: u0 */
    public int f2347u0;

    /* renamed from: v */
    public boolean f2348v;

    /* renamed from: v0 */
    public AnimatorSet f2349v0;

    /* renamed from: w */
    public boolean f2350w;

    /* renamed from: w0 */
    public AnimatorSet f2351w0;

    /* renamed from: x */
    public boolean f2352x;

    /* renamed from: x0 */
    public AnimatorSet f2353x0;

    /* renamed from: y */
    public boolean f2354y;

    /* renamed from: y0 */
    public AnimatorSet f2355y0;

    /* renamed from: z */
    public boolean f2356z;

    /* renamed from: z0 */
    public AnimatorSet f2357z0;

    /* renamed from: androidx.media2.widget.MediaControlView$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$a.class */
    public class C0442a implements ValueAnimator.AnimatorUpdateListener {
        public C0442a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            MediaControlView.this.m37692a(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$a0 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$a0.class */
    public class C0443a0 extends AnimatorListenerAdapter {
        public C0443a0() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            MediaControlView mediaControlView = MediaControlView.this;
            mediaControlView.f2336p = 1;
            if (mediaControlView.f2266B) {
                mediaControlView.post(mediaControlView.f2271D0);
                MediaControlView.this.f2266B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            MediaControlView.this.f2336p = 3;
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$b.class */
    public class C0444b extends AnimatorListenerAdapter {
        public C0444b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            int i = 4;
            MediaControlView.this.f2309b0.setVisibility(4);
            ImageButton a = MediaControlView.this.m37691a(C1852n.ffwd);
            C1844i iVar = MediaControlView.this.f2312d;
            if (iVar == null || !iVar.m31930d()) {
                i = 8;
            }
            a.setVisibility(i);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            MediaControlView.this.f2311c0.setVisibility(0);
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$b0 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$b0.class */
    public class C0445b0 extends AnimatorListenerAdapter {
        public C0445b0() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            MediaControlView mediaControlView = MediaControlView.this;
            mediaControlView.f2336p = 2;
            if (mediaControlView.f2266B) {
                mediaControlView.post(mediaControlView.f2271D0);
                MediaControlView.this.f2266B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            MediaControlView.this.f2336p = 3;
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$c.class */
    public class C0446c implements ValueAnimator.AnimatorUpdateListener {
        public C0446c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            MediaControlView.this.m37692a(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$c0 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$c0.class */
    public class C0447c0 extends AnimatorListenerAdapter {
        public C0447c0() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            MediaControlView mediaControlView = MediaControlView.this;
            mediaControlView.f2336p = 2;
            if (mediaControlView.f2266B) {
                mediaControlView.post(mediaControlView.f2271D0);
                MediaControlView.this.f2266B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            MediaControlView.this.f2336p = 3;
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$d.class */
    public class C0448d extends AnimatorListenerAdapter {
        public C0448d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            MediaControlView.this.f2311c0.setVisibility(8);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            int i = 0;
            MediaControlView.this.f2309b0.setVisibility(0);
            ImageButton a = MediaControlView.this.m37691a(C1852n.ffwd);
            C1844i iVar = MediaControlView.this.f2312d;
            if (iVar == null || !iVar.m31930d()) {
                i = 8;
            }
            a.setVisibility(i);
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$d0 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$d0.class */
    public class C0449d0 extends AnimatorListenerAdapter {
        public C0449d0() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            MediaControlView.this.f2336p = 0;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            MediaControlView.this.f2336p = 3;
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$e */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$e.class */
    public class RunnableC0450e implements Runnable {
        public RunnableC0450e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C1844i iVar;
            boolean z = MediaControlView.this.getVisibility() == 0;
            MediaControlView mediaControlView = MediaControlView.this;
            if (!mediaControlView.f2346u && z && (iVar = mediaControlView.f2312d) != null && iVar.m31910x()) {
                long l = MediaControlView.this.m37664l();
                MediaControlView mediaControlView2 = MediaControlView.this;
                mediaControlView2.m37681a(mediaControlView2.f2269C0, 1000 - (l % 1000));
            }
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$e0 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$e0.class */
    public class C0451e0 extends AnimatorListenerAdapter {
        public C0451e0() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            MediaControlView.this.f2336p = 0;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            MediaControlView.this.f2336p = 3;
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$f */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$f.class */
    public class RunnableC0452f implements Runnable {
        public RunnableC0452f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MediaControlView mediaControlView = MediaControlView.this;
            int i = mediaControlView.f2336p;
            if (i == 1) {
                mediaControlView.f2355y0.start();
            } else if (i == 2) {
                mediaControlView.f2357z0.start();
            } else if (i == 3) {
                mediaControlView.f2266B = true;
            }
            if (MediaControlView.this.f2312d.m31910x()) {
                MediaControlView mediaControlView2 = MediaControlView.this;
                mediaControlView2.m37681a(mediaControlView2.f2275F0, mediaControlView2.f2340r);
            }
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$f0 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$f0.class */
    public interface AbstractC0453f0 {
        /* renamed from: a */
        void m37659a(View view, boolean z);
    }

    /* renamed from: androidx.media2.widget.MediaControlView$g */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$g.class */
    public class RunnableC0454g implements Runnable {
        public RunnableC0454g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!MediaControlView.this.m37663m()) {
                MediaControlView.this.f2353x0.start();
            }
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$g0 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$g0.class */
    public class C0455g0 extends C1844i.AbstractC1846b {

        /* renamed from: androidx.media2.widget.MediaControlView$g0$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$g0$a.class */
        public class DialogInterface$OnClickListenerC0456a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC0456a(C0455g0 g0Var) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }

        public C0455g0() {
        }

        @Override // p012b.p076s.p118e.C1844i.AbstractC1846b
        /* renamed from: a */
        public void mo31907a(C1844i iVar) {
            if (iVar == MediaControlView.this.f2312d) {
                if (MediaControlView.f2263U0) {
                    Log.d("MediaControlView", "onPlaybackCompleted()");
                }
                MediaControlView.this.m37676b(true);
                MediaControlView.this.f2292O.setProgress(1000);
                MediaControlView mediaControlView = MediaControlView.this;
                mediaControlView.f2304U.setText(mediaControlView.m37688a(mediaControlView.f2338q));
            }
        }

        @Override // p012b.p076s.p118e.C1844i.AbstractC1846b
        /* renamed from: a */
        public void mo31906a(C1844i iVar, float f) {
            if (iVar == MediaControlView.this.f2312d) {
                int round = Math.round(f * 100.0f);
                MediaControlView mediaControlView = MediaControlView.this;
                if (mediaControlView.f2347u0 != -1) {
                    mediaControlView.m37666j();
                }
                int i = 0;
                if (MediaControlView.this.f2345t0.contains(Integer.valueOf(round))) {
                    for (int i2 = 0; i2 < MediaControlView.this.f2345t0.size(); i2++) {
                        if (round == MediaControlView.this.f2345t0.get(i2).intValue()) {
                            MediaControlView mediaControlView2 = MediaControlView.this;
                            mediaControlView2.m37689a(i2, mediaControlView2.f2343s0.get(i2));
                            return;
                        }
                    }
                    return;
                }
                String string = MediaControlView.this.f2310c.getString(C1854p.MediaControlView_custom_playback_speed_text, Float.valueOf(round / 100.0f));
                while (true) {
                    if (i >= MediaControlView.this.f2345t0.size()) {
                        break;
                    } else if (round < MediaControlView.this.f2345t0.get(i).intValue()) {
                        MediaControlView.this.f2345t0.add(i, Integer.valueOf(round));
                        MediaControlView.this.f2343s0.add(i, string);
                        MediaControlView.this.m37689a(i, string);
                        break;
                    } else {
                        if (i == MediaControlView.this.f2345t0.size() - 1 && round > MediaControlView.this.f2345t0.get(i).intValue()) {
                            MediaControlView.this.f2345t0.add(Integer.valueOf(round));
                            MediaControlView.this.f2343s0.add(string);
                            MediaControlView.this.m37689a(i + 1, string);
                        }
                        i++;
                    }
                }
                MediaControlView mediaControlView3 = MediaControlView.this;
                mediaControlView3.f2347u0 = mediaControlView3.f2332n;
            }
        }

        @Override // p012b.p076s.p118e.C1844i.AbstractC1846b
        /* renamed from: a */
        public void mo31905a(C1844i iVar, int i) {
            if (iVar == MediaControlView.this.f2312d) {
                if (MediaControlView.f2263U0) {
                    Log.d("MediaControlView", "onPlayerStateChanged(state: " + i + ")");
                }
                MediaControlView.this.m37683a(iVar.m31921m());
                if (i == 1) {
                    MediaControlView.this.m37672d(1);
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.removeCallbacks(mediaControlView.f2269C0);
                    MediaControlView mediaControlView2 = MediaControlView.this;
                    mediaControlView2.removeCallbacks(mediaControlView2.f2275F0);
                    MediaControlView mediaControlView3 = MediaControlView.this;
                    mediaControlView3.removeCallbacks(mediaControlView3.f2277G0);
                    MediaControlView mediaControlView4 = MediaControlView.this;
                    mediaControlView4.post(mediaControlView4.f2271D0);
                } else if (i == 2) {
                    MediaControlView mediaControlView5 = MediaControlView.this;
                    mediaControlView5.removeCallbacks(mediaControlView5.f2269C0);
                    MediaControlView mediaControlView6 = MediaControlView.this;
                    mediaControlView6.post(mediaControlView6.f2269C0);
                    MediaControlView.this.m37665k();
                    MediaControlView.this.m37676b(false);
                } else if (i == 3) {
                    MediaControlView.this.m37672d(1);
                    MediaControlView mediaControlView7 = MediaControlView.this;
                    mediaControlView7.removeCallbacks(mediaControlView7.f2269C0);
                    if (MediaControlView.this.getWindowToken() != null) {
                        DialogInterfaceC0584a.C0585a aVar = new DialogInterfaceC0584a.C0585a(MediaControlView.this.getContext());
                        aVar.m36897a(C1854p.mcv2_playback_error_text);
                        aVar.m36896a(C1854p.mcv2_error_dialog_button, new DialogInterface$OnClickListenerC0456a(this));
                        aVar.m36889a(true);
                        aVar.m36887c();
                    }
                }
            }
        }

        @Override // p012b.p076s.p118e.C1844i.AbstractC1846b
        /* renamed from: a */
        public void mo31904a(C1844i iVar, long j) {
            if (iVar == MediaControlView.this.f2312d) {
                if (MediaControlView.f2263U0) {
                    Log.d("MediaControlView", "onSeekCompleted(): " + j);
                }
                long j2 = MediaControlView.this.f2338q;
                MediaControlView.this.f2292O.setProgress(j2 <= 0 ? 0 : (int) ((1000 * j) / j2));
                MediaControlView mediaControlView = MediaControlView.this;
                mediaControlView.f2304U.setText(mediaControlView.m37688a(j));
                MediaControlView mediaControlView2 = MediaControlView.this;
                long j3 = mediaControlView2.f2344t;
                if (j3 != -1) {
                    mediaControlView2.f2342s = j3;
                    iVar.m31936a(j3);
                    MediaControlView.this.f2344t = -1L;
                    return;
                }
                mediaControlView2.f2342s = -1L;
                if (!mediaControlView2.f2346u) {
                    mediaControlView2.removeCallbacks(mediaControlView2.f2269C0);
                    MediaControlView mediaControlView3 = MediaControlView.this;
                    mediaControlView3.removeCallbacks(mediaControlView3.f2275F0);
                    MediaControlView mediaControlView4 = MediaControlView.this;
                    mediaControlView4.post(mediaControlView4.f2269C0);
                    MediaControlView mediaControlView5 = MediaControlView.this;
                    mediaControlView5.m37681a(mediaControlView5.f2275F0, mediaControlView5.f2340r);
                }
            }
        }

        @Override // p012b.p076s.p118e.C1844i.AbstractC1846b
        /* renamed from: a */
        public void mo31903a(C1844i iVar, MediaItem mediaItem) {
            if (iVar == MediaControlView.this.f2312d) {
                if (MediaControlView.f2263U0) {
                    Log.d("MediaControlView", "onCurrentMediaItemChanged(): " + mediaItem);
                }
                MediaControlView.this.m37683a(mediaItem);
                MediaControlView.this.m37677b(mediaItem);
                MediaControlView.this.m37678b(iVar.m31915s(), iVar.m31918p());
            }
        }

        @Override // p012b.p076s.p118e.C1844i.AbstractC1846b
        /* renamed from: a */
        public void mo31901a(C1844i iVar, MediaItem mediaItem, VideoSize videoSize) {
            List<SessionPlayer.TrackInfo> u;
            if (iVar == MediaControlView.this.f2312d) {
                if (MediaControlView.f2263U0) {
                    Log.d("MediaControlView", "onVideoSizeChanged(): " + videoSize);
                }
                if (MediaControlView.this.f2335o0 == 0 && videoSize.m38197e() > 0 && videoSize.m38196f() > 0 && (u = iVar.m31913u()) != null) {
                    MediaControlView.this.m37682a(iVar, u);
                }
            }
        }

        @Override // p012b.p076s.p118e.C1844i.AbstractC1846b
        /* renamed from: a */
        public void mo31900a(C1844i iVar, SessionPlayer.TrackInfo trackInfo) {
            if (iVar == MediaControlView.this.f2312d) {
                if (MediaControlView.f2263U0) {
                    Log.d("MediaControlView", "onTrackDeselected(): " + trackInfo);
                }
                if (trackInfo.m38206k() == 4) {
                    for (int i = 0; i < MediaControlView.this.f2339q0.size(); i++) {
                        if (MediaControlView.this.f2339q0.get(i).equals(trackInfo)) {
                            MediaControlView mediaControlView = MediaControlView.this;
                            mediaControlView.f2328l = -1;
                            if (mediaControlView.f2326k == 2) {
                                mediaControlView.f2325j0.m37655b((-1) + 1);
                            }
                            MediaControlView mediaControlView2 = MediaControlView.this;
                            mediaControlView2.f2313d0.setImageDrawable(mediaControlView2.f2310c.getDrawable(C1851m.ic_subtitle_off));
                            MediaControlView mediaControlView3 = MediaControlView.this;
                            mediaControlView3.f2313d0.setContentDescription(mediaControlView3.f2310c.getString(C1854p.mcv2_cc_is_off));
                            return;
                        }
                    }
                }
            }
        }

        @Override // p012b.p076s.p118e.C1844i.AbstractC1846b
        /* renamed from: a */
        public void mo31899a(C1844i iVar, SessionCommandGroup sessionCommandGroup) {
            MediaControlView mediaControlView = MediaControlView.this;
            if (iVar == mediaControlView.f2312d) {
                mediaControlView.m37660p();
            }
        }

        @Override // p012b.p076s.p118e.C1844i.AbstractC1846b
        /* renamed from: a */
        public void mo31898a(C1844i iVar, List<SessionPlayer.TrackInfo> list) {
            if (iVar == MediaControlView.this.f2312d) {
                if (MediaControlView.f2263U0) {
                    Log.d("MediaControlView", "onTrackInfoChanged(): " + list);
                }
                MediaControlView.this.m37682a(iVar, list);
                MediaControlView.this.m37683a(iVar.m31921m());
                MediaControlView.this.m37677b(iVar.m31921m());
            }
        }

        @Override // p012b.p076s.p118e.C1844i.AbstractC1846b
        /* renamed from: a */
        public void mo31897a(C1844i iVar, List<MediaItem> list, MediaMetadata mediaMetadata) {
            if (iVar == MediaControlView.this.f2312d) {
                if (MediaControlView.f2263U0) {
                    Log.d("MediaControlView", "onPlaylistChanged(): list: " + list + ", metadata: " + mediaMetadata);
                }
                MediaControlView.this.m37678b(iVar.m31915s(), iVar.m31918p());
            }
        }

        @Override // p012b.p076s.p118e.C1844i.AbstractC1846b
        /* renamed from: b */
        public void mo31896b(C1844i iVar, SessionPlayer.TrackInfo trackInfo) {
            if (iVar == MediaControlView.this.f2312d) {
                if (MediaControlView.f2263U0) {
                    Log.d("MediaControlView", "onTrackSelected(): " + trackInfo);
                }
                if (trackInfo.m38206k() == 4) {
                    for (int i = 0; i < MediaControlView.this.f2339q0.size(); i++) {
                        if (MediaControlView.this.f2339q0.get(i).equals(trackInfo)) {
                            MediaControlView mediaControlView = MediaControlView.this;
                            mediaControlView.f2328l = i;
                            if (mediaControlView.f2326k == 2) {
                                mediaControlView.f2325j0.m37655b(i + 1);
                            }
                            MediaControlView mediaControlView2 = MediaControlView.this;
                            mediaControlView2.f2313d0.setImageDrawable(mediaControlView2.f2310c.getDrawable(C1851m.ic_subtitle_on));
                            MediaControlView mediaControlView3 = MediaControlView.this;
                            mediaControlView3.f2313d0.setContentDescription(mediaControlView3.f2310c.getString(C1854p.mcv2_cc_is_on));
                            return;
                        }
                    }
                } else if (trackInfo.m38206k() == 2) {
                    for (int i2 = 0; i2 < MediaControlView.this.f2337p0.size(); i2++) {
                        if (MediaControlView.this.f2337p0.get(i2).equals(trackInfo)) {
                            MediaControlView mediaControlView4 = MediaControlView.this;
                            mediaControlView4.f2330m = i2;
                            mediaControlView4.f2329l0.set(0, mediaControlView4.f2325j0.m37657a(i2));
                            return;
                        }
                    }
                }
            }
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$h */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$h.class */
    public class RunnableC0457h implements Runnable {
        public RunnableC0457h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MediaControlView.this.f2312d.m31910x() && !MediaControlView.this.m37663m()) {
                MediaControlView.this.f2349v0.start();
                MediaControlView mediaControlView = MediaControlView.this;
                mediaControlView.m37681a(mediaControlView.f2277G0, mediaControlView.f2340r);
            }
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$h0 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$h0.class */
    public class C0458h0 extends BaseAdapter {

        /* renamed from: a */
        public List<Integer> f2372a;

        /* renamed from: b */
        public List<String> f2373b;

        /* renamed from: c */
        public List<String> f2374c;

        public C0458h0(List<String> list, List<String> list2, List<Integer> list3) {
            this.f2373b = list;
            this.f2374c = list2;
            this.f2372a = list3;
        }

        /* renamed from: a */
        public void m37658a(List<String> list) {
            this.f2374c = list;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<String> list = this.f2373b;
            return list == null ? 0 : list.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View a = MediaControlView.m37686a(MediaControlView.this.getContext(), C1853o.settings_list_item);
            TextView textView = (TextView) a.findViewById(C1852n.main_text);
            TextView textView2 = (TextView) a.findViewById(C1852n.sub_text);
            ImageView imageView = (ImageView) a.findViewById(C1852n.icon);
            textView.setText(this.f2373b.get(i));
            List<String> list = this.f2374c;
            if (list == null || "".equals(list.get(i))) {
                textView2.setVisibility(8);
            } else {
                textView2.setText(this.f2374c.get(i));
            }
            List<Integer> list2 = this.f2372a;
            if (list2 == null || list2.get(i).intValue() == -1) {
                imageView.setVisibility(8);
            } else {
                imageView.setImageDrawable(MediaControlView.this.f2310c.getDrawable(this.f2372a.get(i).intValue()));
            }
            return a;
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$i */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$i.class */
    public class RunnableC0459i implements Runnable {
        public RunnableC0459i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MediaControlView.this.f2312d.m31910x() && !MediaControlView.this.m37663m()) {
                MediaControlView.this.f2351w0.start();
            }
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$i0 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$i0.class */
    public class C0460i0 extends BaseAdapter {

        /* renamed from: a */
        public List<String> f2377a;

        /* renamed from: b */
        public int f2378b;

        public C0460i0(List<String> list, int i) {
            this.f2377a = list;
            this.f2378b = i;
        }

        /* renamed from: a */
        public String m37657a(int i) {
            List<String> list = this.f2377a;
            return (list == null || i >= list.size()) ? "" : this.f2377a.get(i);
        }

        /* renamed from: a */
        public void m37656a(List<String> list) {
            this.f2377a = list;
        }

        /* renamed from: b */
        public void m37655b(int i) {
            this.f2378b = i;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<String> list = this.f2377a;
            return list == null ? 0 : list.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View a = MediaControlView.m37686a(MediaControlView.this.getContext(), C1853o.sub_settings_list_item);
            TextView textView = (TextView) a.findViewById(C1852n.text);
            ImageView imageView = (ImageView) a.findViewById(C1852n.check);
            textView.setText(this.f2377a.get(i));
            if (i != this.f2378b) {
                imageView.setVisibility(4);
            }
            return a;
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$j */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$j.class */
    public class C0461j implements SeekBar.OnSeekBarChangeListener {
        public C0461j() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            MediaControlView mediaControlView = MediaControlView.this;
            if (mediaControlView.f2312d != null && mediaControlView.f2354y && z && mediaControlView.f2346u) {
                long j = mediaControlView.f2338q;
                if (j > 0) {
                    MediaControlView.this.m37687a((j * i) / 1000, !mediaControlView.m37667i());
                }
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
            MediaControlView mediaControlView = MediaControlView.this;
            if (mediaControlView.f2312d != null && mediaControlView.f2354y) {
                mediaControlView.f2346u = true;
                mediaControlView.removeCallbacks(mediaControlView.f2269C0);
                MediaControlView mediaControlView2 = MediaControlView.this;
                mediaControlView2.removeCallbacks(mediaControlView2.f2275F0);
                MediaControlView mediaControlView3 = MediaControlView.this;
                mediaControlView3.removeCallbacks(mediaControlView3.f2277G0);
                MediaControlView mediaControlView4 = MediaControlView.this;
                if (mediaControlView4.f2350w) {
                    mediaControlView4.m37676b(false);
                }
                if (MediaControlView.this.m37667i() && MediaControlView.this.f2312d.m31910x()) {
                    MediaControlView mediaControlView5 = MediaControlView.this;
                    mediaControlView5.f2268C = true;
                    mediaControlView5.f2312d.m31908z();
                }
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            MediaControlView mediaControlView = MediaControlView.this;
            if (mediaControlView.f2312d != null && mediaControlView.f2354y) {
                mediaControlView.f2346u = false;
                long latestSeekPosition = mediaControlView.getLatestSeekPosition();
                if (MediaControlView.this.m37667i()) {
                    MediaControlView mediaControlView2 = MediaControlView.this;
                    mediaControlView2.f2342s = -1L;
                    mediaControlView2.f2344t = -1L;
                }
                MediaControlView.this.m37687a(latestSeekPosition, true);
                MediaControlView mediaControlView3 = MediaControlView.this;
                if (mediaControlView3.f2268C) {
                    mediaControlView3.f2268C = false;
                    mediaControlView3.f2312d.m31943A();
                }
            }
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$k */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$k.class */
    public class C0462k implements ValueAnimator.AnimatorUpdateListener {
        public C0462k() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            MediaControlView.this.f2292O.getThumb().setLevel((int) ((MediaControlView.this.f2334o == 2 ? 0 : 10000) * floatValue));
            MediaControlView.this.f2278H.setAlpha(floatValue);
            MediaControlView.this.f2286L.setAlpha(floatValue);
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$l */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$l.class */
    public class View$OnClickListenerC0463l implements View.OnClickListener {
        public View$OnClickListenerC0463l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MediaControlView mediaControlView = MediaControlView.this;
            if (mediaControlView.f2312d != null) {
                mediaControlView.m37665k();
                MediaControlView.this.m37661o();
            }
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$m */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$m.class */
    public class View$OnClickListenerC0464m implements View.OnClickListener {
        public View$OnClickListenerC0464m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MediaControlView mediaControlView = MediaControlView.this;
            if (mediaControlView.f2312d != null) {
                mediaControlView.m37665k();
                MediaControlView mediaControlView2 = MediaControlView.this;
                mediaControlView2.removeCallbacks(mediaControlView2.f2269C0);
                MediaControlView mediaControlView3 = MediaControlView.this;
                boolean z = mediaControlView3.f2350w && mediaControlView3.f2338q != 0;
                MediaControlView mediaControlView4 = MediaControlView.this;
                MediaControlView.this.m37687a(Math.max((z ? mediaControlView4.f2338q : mediaControlView4.getLatestSeekPosition()) - 10000, 0L), true);
                if (z) {
                    MediaControlView.this.m37676b(false);
                }
            }
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$n */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$n.class */
    public class View$OnClickListenerC0465n implements View.OnClickListener {
        public View$OnClickListenerC0465n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MediaControlView mediaControlView = MediaControlView.this;
            if (mediaControlView.f2312d != null) {
                mediaControlView.m37665k();
                MediaControlView mediaControlView2 = MediaControlView.this;
                mediaControlView2.removeCallbacks(mediaControlView2.f2269C0);
                long latestSeekPosition = MediaControlView.this.getLatestSeekPosition();
                MediaControlView mediaControlView3 = MediaControlView.this;
                long j = latestSeekPosition + 30000;
                mediaControlView3.m37687a(Math.min(j, mediaControlView3.f2338q), true);
                MediaControlView mediaControlView4 = MediaControlView.this;
                if (j >= mediaControlView4.f2338q && !mediaControlView4.f2312d.m31910x()) {
                    MediaControlView.this.m37676b(true);
                }
            }
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$o */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$o.class */
    public class View$OnClickListenerC0466o implements View.OnClickListener {
        public View$OnClickListenerC0466o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MediaControlView mediaControlView = MediaControlView.this;
            if (mediaControlView.f2312d != null) {
                mediaControlView.m37665k();
                MediaControlView.this.f2312d.m31942B();
            }
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$p */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$p.class */
    public class View$OnClickListenerC0467p implements View.OnClickListener {
        public View$OnClickListenerC0467p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MediaControlView mediaControlView = MediaControlView.this;
            if (mediaControlView.f2312d != null) {
                mediaControlView.m37665k();
                MediaControlView.this.f2312d.m31941C();
            }
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$q */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$q.class */
    public class View$OnClickListenerC0468q implements View.OnClickListener {
        public View$OnClickListenerC0468q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MediaControlView mediaControlView = MediaControlView.this;
            if (mediaControlView.f2312d != null) {
                mediaControlView.removeCallbacks(mediaControlView.f2275F0);
                MediaControlView mediaControlView2 = MediaControlView.this;
                mediaControlView2.removeCallbacks(mediaControlView2.f2277G0);
                MediaControlView mediaControlView3 = MediaControlView.this;
                mediaControlView3.f2326k = 2;
                mediaControlView3.f2325j0.m37656a(mediaControlView3.f2333n0);
                MediaControlView mediaControlView4 = MediaControlView.this;
                mediaControlView4.f2325j0.m37655b(mediaControlView4.f2328l + 1);
                MediaControlView mediaControlView5 = MediaControlView.this;
                mediaControlView5.m37684a(mediaControlView5.f2325j0);
            }
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$r */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$r.class */
    public class View$OnClickListenerC0469r implements View.OnClickListener {
        public View$OnClickListenerC0469r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MediaControlView mediaControlView = MediaControlView.this;
            if (mediaControlView.f2314e != null) {
                boolean z = !mediaControlView.f2348v;
                if (z) {
                    mediaControlView.f2315e0.setImageDrawable(mediaControlView.f2310c.getDrawable(C1851m.ic_fullscreen_exit));
                    MediaControlView mediaControlView2 = MediaControlView.this;
                    mediaControlView2.f2288M.setImageDrawable(mediaControlView2.f2310c.getDrawable(C1851m.ic_fullscreen_exit));
                } else {
                    mediaControlView.f2315e0.setImageDrawable(mediaControlView.f2310c.getDrawable(C1851m.ic_fullscreen));
                    MediaControlView mediaControlView3 = MediaControlView.this;
                    mediaControlView3.f2288M.setImageDrawable(mediaControlView3.f2310c.getDrawable(C1851m.ic_fullscreen));
                }
                MediaControlView mediaControlView4 = MediaControlView.this;
                mediaControlView4.f2348v = z;
                mediaControlView4.f2314e.m37659a(mediaControlView4, z);
            }
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$s */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$s.class */
    public class View$OnClickListenerC0470s implements View.OnClickListener {
        public View$OnClickListenerC0470s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MediaControlView mediaControlView = MediaControlView.this;
            if (mediaControlView.f2312d != null) {
                mediaControlView.m37665k();
                MediaControlView mediaControlView2 = MediaControlView.this;
                mediaControlView2.f2352x = true;
                mediaControlView2.f2265A0.start();
            }
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$t */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$t.class */
    public class View$OnClickListenerC0471t implements View.OnClickListener {
        public View$OnClickListenerC0471t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MediaControlView mediaControlView = MediaControlView.this;
            if (mediaControlView.f2312d != null) {
                mediaControlView.m37665k();
                MediaControlView mediaControlView2 = MediaControlView.this;
                mediaControlView2.f2352x = false;
                mediaControlView2.f2267B0.start();
            }
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$u */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$u.class */
    public class View$OnClickListenerC0472u implements View.OnClickListener {
        public View$OnClickListenerC0472u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MediaControlView mediaControlView = MediaControlView.this;
            if (mediaControlView.f2312d != null) {
                mediaControlView.removeCallbacks(mediaControlView.f2275F0);
                MediaControlView mediaControlView2 = MediaControlView.this;
                mediaControlView2.removeCallbacks(mediaControlView2.f2277G0);
                MediaControlView mediaControlView3 = MediaControlView.this;
                mediaControlView3.f2326k = 3;
                mediaControlView3.f2323i0.m37658a(mediaControlView3.f2329l0);
                MediaControlView mediaControlView4 = MediaControlView.this;
                mediaControlView4.m37684a(mediaControlView4.f2323i0);
            }
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$v */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$v.class */
    public class C0473v extends AnimatorListenerAdapter {
        public C0473v() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            MediaControlView.this.f2278H.setVisibility(4);
            MediaControlView.this.f2286L.setVisibility(4);
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$w */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$w.class */
    public class C0474w implements AdapterView.OnItemClickListener {
        public C0474w() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            MediaControlView mediaControlView = MediaControlView.this;
            int i2 = mediaControlView.f2326k;
            if (i2 == 0) {
                if (i != mediaControlView.f2330m && mediaControlView.f2337p0.size() > 0) {
                    MediaControlView mediaControlView2 = MediaControlView.this;
                    mediaControlView2.f2312d.m31932b(mediaControlView2.f2337p0.get(i));
                }
                MediaControlView.this.m37680b();
            } else if (i2 == 1) {
                if (i != mediaControlView.f2332n) {
                    MediaControlView.this.f2312d.m31938a(mediaControlView.f2345t0.get(i).intValue() / 100.0f);
                }
                MediaControlView.this.m37680b();
            } else if (i2 == 2) {
                int i3 = mediaControlView.f2328l;
                if (i != i3 + 1) {
                    if (i > 0) {
                        mediaControlView.f2312d.m31932b(mediaControlView.f2339q0.get(i - 1));
                    } else {
                        mediaControlView.f2312d.m31934a(mediaControlView.f2339q0.get(i3));
                    }
                }
                MediaControlView.this.m37680b();
            } else if (i2 == 3) {
                if (i == 0) {
                    mediaControlView.f2325j0.m37656a(mediaControlView.f2341r0);
                    MediaControlView mediaControlView3 = MediaControlView.this;
                    mediaControlView3.f2325j0.m37655b(mediaControlView3.f2330m);
                    MediaControlView.this.f2326k = 0;
                } else if (i == 1) {
                    mediaControlView.f2325j0.m37656a(mediaControlView.f2343s0);
                    MediaControlView mediaControlView4 = MediaControlView.this;
                    mediaControlView4.f2325j0.m37655b(mediaControlView4.f2332n);
                    MediaControlView.this.f2326k = 1;
                }
                MediaControlView mediaControlView5 = MediaControlView.this;
                mediaControlView5.m37684a(mediaControlView5.f2325j0);
            }
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$x */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$x.class */
    public class C0475x implements PopupWindow.OnDismissListener {
        public C0475x() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            MediaControlView mediaControlView = MediaControlView.this;
            if (mediaControlView.f2264A) {
                mediaControlView.m37681a(mediaControlView.f2275F0, mediaControlView.f2340r);
            }
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$y */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$y.class */
    public class C0476y implements ValueAnimator.AnimatorUpdateListener {
        public C0476y() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            MediaControlView.this.f2292O.getThumb().setLevel((int) ((MediaControlView.this.f2334o == 2 ? 0 : 10000) * floatValue));
            MediaControlView.this.f2278H.setAlpha(floatValue);
            MediaControlView.this.f2286L.setAlpha(floatValue);
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$z */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$z.class */
    public class C0477z extends AnimatorListenerAdapter {
        public C0477z() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            MediaControlView.this.f2278H.setVisibility(0);
            MediaControlView.this.f2286L.setVisibility(0);
        }
    }

    public MediaControlView(Context context) {
        this(context, null);
    }

    public MediaControlView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MediaControlView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2308b = false;
        this.f2334o = -1;
        this.f2270D = new SparseArray<>();
        this.f2337p0 = new ArrayList();
        this.f2339q0 = new ArrayList();
        this.f2269C0 = new RunnableC0450e();
        this.f2271D0 = new RunnableC0452f();
        this.f2273E0 = new RunnableC0454g();
        this.f2275F0 = new RunnableC0457h();
        this.f2277G0 = new RunnableC0459i();
        this.f2279H0 = new C0461j();
        this.f2281I0 = new View$OnClickListenerC0463l();
        this.f2283J0 = new View$OnClickListenerC0464m();
        this.f2285K0 = new View$OnClickListenerC0465n();
        this.f2287L0 = new View$OnClickListenerC0466o();
        this.f2289M0 = new View$OnClickListenerC0467p();
        this.f2291N0 = new View$OnClickListenerC0468q();
        this.f2293O0 = new View$OnClickListenerC0469r();
        this.f2295P0 = new View$OnClickListenerC0470s();
        this.f2297Q0 = new View$OnClickListenerC0471t();
        this.f2299R0 = new View$OnClickListenerC0472u();
        this.f2301S0 = new C0474w();
        this.f2303T0 = new C0475x();
        this.f2310c = context.getResources();
        ViewGroup.inflate(context, C1853o.media_controller, this);
        m37670f();
        this.f2340r = 2000L;
        this.f2316f = (AccessibilityManager) context.getSystemService("accessibility");
    }

    /* renamed from: a */
    public static View m37686a(Context context, int i) {
        return ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(i, (ViewGroup) null);
    }

    /* renamed from: a */
    public ImageButton m37691a(int i) {
        ImageButton a = m37690a(1, i);
        if (a != null) {
            return a;
        }
        throw new IllegalArgumentException("Couldn't find a view that has the given id");
    }

    /* renamed from: a */
    public ImageButton m37690a(int i, int i2) {
        View view = this.f2270D.get(i);
        if (view == null) {
            return null;
        }
        return (ImageButton) view.findViewById(i2);
    }

    /* renamed from: a */
    public String m37688a(long j) {
        long j2 = j / 1000;
        long j3 = j2 % 60;
        long j4 = (j2 / 60) % 60;
        long j5 = j2 / 3600;
        this.f2306W.setLength(0);
        return j5 > 0 ? this.f2307a0.format("%d:%02d:%02d", Long.valueOf(j5), Long.valueOf(j4), Long.valueOf(j3)).toString() : this.f2307a0.format("%02d:%02d", Long.valueOf(j4), Long.valueOf(j3)).toString();
    }

    /* renamed from: a */
    public void m37692a(float f) {
        this.f2311c0.setTranslationX(((int) (this.f2311c0.getWidth() * f)) * (-1));
        float f2 = 1.0f - f;
        this.f2300S.setAlpha(f2);
        this.f2309b0.setAlpha(f2);
        this.f2298R.setTranslationX(((int) (m37691a(C1852n.pause).getLeft() * f)) * (-1));
        m37691a(C1852n.ffwd).setAlpha(f2);
    }

    /* renamed from: a */
    public void m37689a(int i, String str) {
        this.f2332n = i;
        this.f2329l0.set(1, str);
        this.f2325j0.m37656a(this.f2343s0);
        this.f2325j0.m37655b(this.f2332n);
    }

    /* renamed from: a */
    public void m37687a(long j, boolean z) {
        m37675c();
        long j2 = this.f2338q;
        this.f2292O.setProgress(j2 <= 0 ? 0 : (int) ((1000 * j) / j2));
        this.f2304U.setText(m37688a(j));
        if (this.f2342s == -1) {
            this.f2342s = j;
            if (z) {
                this.f2312d.m31936a(j);
                return;
            }
            return;
        }
        this.f2344t = j;
    }

    /* renamed from: a */
    public final void m37685a(View view, int i, int i2) {
        view.layout(i, i2, view.getMeasuredWidth() + i, view.getMeasuredHeight() + i2);
    }

    /* renamed from: a */
    public void m37684a(BaseAdapter baseAdapter) {
        this.f2319g0.setAdapter((ListAdapter) baseAdapter);
        this.f2321h0.setWidth(this.f2334o == 0 ? this.f2318g : this.f2320h);
        int measuredHeight = getMeasuredHeight() + (this.f2324j * 2);
        int count = baseAdapter.getCount() * this.f2322i;
        int i = measuredHeight;
        if (count < measuredHeight) {
            i = count;
        }
        this.f2321h0.setHeight(i);
        this.f2264A = false;
        this.f2321h0.dismiss();
        if (i > 0) {
            PopupWindow popupWindow = this.f2321h0;
            int i2 = this.f2324j;
            popupWindow.showAsDropDown(this, i2, i2 - i, 85);
            this.f2264A = true;
        }
    }

    /* renamed from: a */
    public void m37683a(MediaItem mediaItem) {
        if (mediaItem == null) {
            this.f2292O.setProgress(0);
            this.f2304U.setText(this.f2310c.getString(C1854p.MediaControlView_time_placeholder));
            this.f2302T.setText(this.f2310c.getString(C1854p.MediaControlView_time_placeholder));
            return;
        }
        m37675c();
        long o = this.f2312d.m31919o();
        if (o > 0) {
            this.f2338q = o;
            m37664l();
        }
    }

    /* renamed from: a */
    public void m37682a(C1844i iVar, List<SessionPlayer.TrackInfo> list) {
        this.f2335o0 = 0;
        this.f2337p0 = new ArrayList();
        this.f2339q0 = new ArrayList();
        this.f2330m = 0;
        this.f2328l = -1;
        SessionPlayer.TrackInfo a = iVar.m31937a(2);
        SessionPlayer.TrackInfo a2 = iVar.m31937a(4);
        for (int i = 0; i < list.size(); i++) {
            int k = list.get(i).m38206k();
            if (k == 1) {
                this.f2335o0++;
            } else if (k == 2) {
                if (list.get(i).equals(a)) {
                    this.f2330m = this.f2337p0.size();
                }
                this.f2337p0.add(list.get(i));
            } else if (k == 4) {
                if (list.get(i).equals(a2)) {
                    this.f2328l = this.f2339q0.size();
                }
                this.f2339q0.add(list.get(i));
            }
        }
        this.f2341r0 = new ArrayList();
        if (this.f2337p0.isEmpty()) {
            this.f2341r0.add(this.f2310c.getString(C1854p.MediaControlView_audio_track_none_text));
        } else {
            int i2 = 0;
            while (i2 < this.f2337p0.size()) {
                i2++;
                this.f2341r0.add(this.f2310c.getString(C1854p.MediaControlView_audio_track_number_text, Integer.valueOf(i2)));
            }
        }
        this.f2329l0.set(0, this.f2341r0.get(this.f2330m));
        this.f2333n0 = new ArrayList();
        if (!this.f2339q0.isEmpty()) {
            this.f2333n0.add(this.f2310c.getString(C1854p.MediaControlView_subtitle_off_text));
            for (int i3 = 0; i3 < this.f2339q0.size(); i3++) {
                String iSO3Language = this.f2339q0.get(i3).m38208i().getISO3Language();
                this.f2333n0.add(iSO3Language.equals("und") ? this.f2310c.getString(C1854p.MediaControlView_subtitle_track_number_text, Integer.valueOf(i3 + 1)) : this.f2310c.getString(C1854p.MediaControlView_subtitle_track_number_and_lang_text, Integer.valueOf(i3 + 1), iSO3Language));
            }
            this.f2313d0.setVisibility(0);
            this.f2313d0.setAlpha(1.0f);
            this.f2313d0.setEnabled(true);
        } else if (m37668h()) {
            this.f2313d0.setVisibility(8);
        } else {
            this.f2313d0.setVisibility(0);
            this.f2313d0.setAlpha(0.5f);
            this.f2313d0.setEnabled(false);
        }
    }

    /* renamed from: a */
    public void m37681a(Runnable runnable, long j) {
        if (j != -1) {
            postDelayed(runnable, j);
        }
    }

    @Override // p012b.p076s.p118e.AbstractC1843h
    /* renamed from: a */
    public void mo31944a(boolean z) {
        super.mo31944a(z);
        if (this.f2312d != null) {
            if (z) {
                removeCallbacks(this.f2269C0);
                post(this.f2269C0);
                return;
            }
            removeCallbacks(this.f2269C0);
        }
    }

    /* renamed from: b */
    public final View m37679b(int i) {
        View findViewById = findViewById(i);
        ImageButton imageButton = (ImageButton) findViewById.findViewById(C1852n.pause);
        if (imageButton != null) {
            imageButton.setOnClickListener(this.f2281I0);
        }
        ImageButton imageButton2 = (ImageButton) findViewById.findViewById(C1852n.ffwd);
        if (imageButton2 != null) {
            imageButton2.setOnClickListener(this.f2285K0);
        }
        ImageButton imageButton3 = (ImageButton) findViewById.findViewById(C1852n.rew);
        if (imageButton3 != null) {
            imageButton3.setOnClickListener(this.f2283J0);
        }
        ImageButton imageButton4 = (ImageButton) findViewById.findViewById(C1852n.next);
        if (imageButton4 != null) {
            imageButton4.setOnClickListener(this.f2287L0);
        }
        ImageButton imageButton5 = (ImageButton) findViewById.findViewById(C1852n.prev);
        if (imageButton5 != null) {
            imageButton5.setOnClickListener(this.f2289M0);
        }
        return findViewById;
    }

    /* renamed from: b */
    public void m37680b() {
        this.f2264A = true;
        this.f2321h0.dismiss();
    }

    /* renamed from: b */
    public void m37678b(int i, int i2) {
        int size = this.f2270D.size();
        for (int i3 = 0; i3 < size; i3++) {
            int keyAt = this.f2270D.keyAt(i3);
            ImageButton a = m37690a(keyAt, C1852n.prev);
            if (a != null) {
                if (i > -1) {
                    a.setAlpha(1.0f);
                    a.setEnabled(true);
                } else {
                    a.setAlpha(0.5f);
                    a.setEnabled(false);
                }
            }
            ImageButton a2 = m37690a(keyAt, C1852n.next);
            if (a2 != null) {
                if (i2 > -1) {
                    a2.setAlpha(1.0f);
                    a2.setEnabled(true);
                } else {
                    a2.setAlpha(0.5f);
                    a2.setEnabled(false);
                }
            }
        }
    }

    /* renamed from: b */
    public void m37677b(MediaItem mediaItem) {
        if (mediaItem == null) {
            this.f2274F.setText((CharSequence) null);
        } else if (!m37668h()) {
            CharSequence t = this.f2312d.m31914t();
            String str = t;
            if (t == null) {
                str = this.f2310c.getString(C1854p.mcv2_non_music_title_unknown_text);
            }
            this.f2274F.setText(str.toString());
        } else {
            CharSequence t2 = this.f2312d.m31914t();
            String str2 = t2;
            if (t2 == null) {
                str2 = this.f2310c.getString(C1854p.mcv2_music_title_unknown_text);
            }
            CharSequence k = this.f2312d.m31923k();
            String str3 = k;
            if (k == null) {
                str3 = this.f2310c.getString(C1854p.mcv2_music_artist_unknown_text);
            }
            TextView textView = this.f2274F;
            textView.setText(str2.toString() + " - " + str3.toString());
        }
    }

    /* renamed from: b */
    public void m37676b(boolean z) {
        ImageButton a = m37690a(this.f2334o, C1852n.ffwd);
        if (z) {
            this.f2350w = true;
            m37672d(2);
            if (a != null) {
                a.setAlpha(0.5f);
                a.setEnabled(false);
                return;
            }
            return;
        }
        this.f2350w = false;
        C1844i iVar = this.f2312d;
        if (iVar == null || !iVar.m31910x()) {
            m37672d(1);
        } else {
            m37672d(0);
        }
        if (a != null) {
            a.setAlpha(1.0f);
            a.setEnabled(true);
        }
    }

    /* renamed from: c */
    public void m37675c() {
        if (this.f2312d == null) {
            throw new IllegalStateException("mPlayer must not be null");
        }
    }

    /* renamed from: c */
    public final void m37674c(int i) {
        if (i == 0 || i == 1) {
            this.f2292O.getThumb().setLevel(10000);
        } else if (i == 2) {
            this.f2292O.getThumb().setLevel(0);
        }
        m37676b(this.f2350w);
    }

    /* renamed from: d */
    public void m37672d(int i) {
        String str;
        Drawable drawable;
        ImageButton a = m37690a(this.f2334o, C1852n.pause);
        if (a != null) {
            if (i == 0) {
                drawable = this.f2310c.getDrawable(C1851m.ic_pause_circle_filled);
                str = this.f2310c.getString(C1854p.mcv2_pause_button_desc);
            } else if (i == 1) {
                drawable = this.f2310c.getDrawable(C1851m.ic_play_circle_filled);
                str = this.f2310c.getString(C1854p.mcv2_play_button_desc);
            } else if (i == 2) {
                drawable = this.f2310c.getDrawable(C1851m.ic_replay_circle_filled);
                str = this.f2310c.getString(C1854p.mcv2_replay_button_desc);
            } else {
                throw new IllegalArgumentException("unknown type " + i);
            }
            a.setImageDrawable(drawable);
            a.setContentDescription(str);
        }
    }

    /* renamed from: d */
    public final boolean m37673d() {
        if (this.f2335o0 > 0) {
            return true;
        }
        VideoSize v = this.f2312d.m31912v();
        if (v.m38197e() <= 0 || v.m38196f() <= 0) {
            return false;
        }
        Log.w("MediaControlView", "video track count is zero, but it renders video. size: " + v);
        return true;
    }

    /* renamed from: e */
    public final void m37671e() {
        if (!m37663m() && this.f2336p != 3) {
            removeCallbacks(this.f2275F0);
            removeCallbacks(this.f2277G0);
            post(this.f2273E0);
        }
    }

    /* renamed from: f */
    public final void m37670f() {
        this.f2272E = findViewById(C1852n.title_bar);
        this.f2274F = (TextView) findViewById(C1852n.title_text);
        this.f2276G = findViewById(C1852n.ad_external_link);
        this.f2278H = (ViewGroup) findViewById(C1852n.center_view);
        this.f2280I = findViewById(C1852n.center_view_background);
        this.f2282J = m37679b(C1852n.embedded_transport_controls);
        this.f2284K = m37679b(C1852n.minimal_transport_controls);
        this.f2286L = (ViewGroup) findViewById(C1852n.minimal_fullscreen_view);
        ImageButton imageButton = (ImageButton) findViewById(C1852n.minimal_fullscreen);
        this.f2288M = imageButton;
        imageButton.setOnClickListener(this.f2293O0);
        this.f2290N = (ViewGroup) findViewById(C1852n.progress_bar);
        SeekBar seekBar = (SeekBar) findViewById(C1852n.progress);
        this.f2292O = seekBar;
        seekBar.setOnSeekBarChangeListener(this.f2279H0);
        this.f2292O.setMax(1000);
        this.f2342s = -1L;
        this.f2344t = -1L;
        this.f2294P = findViewById(C1852n.bottom_bar_background);
        this.f2296Q = (ViewGroup) findViewById(C1852n.bottom_bar_left);
        this.f2298R = m37679b(C1852n.full_transport_controls);
        this.f2300S = (ViewGroup) findViewById(C1852n.time);
        this.f2302T = (TextView) findViewById(C1852n.time_end);
        this.f2304U = (TextView) findViewById(C1852n.time_current);
        this.f2305V = (TextView) findViewById(C1852n.ad_skip_time);
        this.f2306W = new StringBuilder();
        this.f2307a0 = new Formatter(this.f2306W, Locale.getDefault());
        this.f2309b0 = (ViewGroup) findViewById(C1852n.basic_controls);
        this.f2311c0 = (ViewGroup) findViewById(C1852n.extra_controls);
        ImageButton imageButton2 = (ImageButton) findViewById(C1852n.subtitle);
        this.f2313d0 = imageButton2;
        imageButton2.setOnClickListener(this.f2291N0);
        ImageButton imageButton3 = (ImageButton) findViewById(C1852n.fullscreen);
        this.f2315e0 = imageButton3;
        imageButton3.setOnClickListener(this.f2293O0);
        ((ImageButton) findViewById(C1852n.overflow_show)).setOnClickListener(this.f2295P0);
        ((ImageButton) findViewById(C1852n.overflow_hide)).setOnClickListener(this.f2297Q0);
        ((ImageButton) findViewById(C1852n.settings)).setOnClickListener(this.f2299R0);
        this.f2317f0 = (TextView) findViewById(C1852n.ad_remaining);
        m37669g();
        this.f2319g0 = (ListView) m37686a(getContext(), C1853o.settings_list);
        this.f2323i0 = new C0458h0(this.f2327k0, this.f2329l0, this.f2331m0);
        this.f2325j0 = new C0460i0(null, 0);
        this.f2319g0.setAdapter((ListAdapter) this.f2323i0);
        this.f2319g0.setChoiceMode(1);
        this.f2319g0.setOnItemClickListener(this.f2301S0);
        this.f2270D.append(0, this.f2282J);
        this.f2270D.append(1, this.f2298R);
        this.f2270D.append(2, this.f2284K);
        this.f2318g = this.f2310c.getDimensionPixelSize(C1850l.mcv2_embedded_settings_width);
        this.f2320h = this.f2310c.getDimensionPixelSize(C1850l.mcv2_full_settings_width);
        this.f2322i = this.f2310c.getDimensionPixelSize(C1850l.mcv2_settings_height);
        this.f2324j = this.f2310c.getDimensionPixelSize(C1850l.mcv2_settings_offset) * (-1);
        PopupWindow popupWindow = new PopupWindow((View) this.f2319g0, this.f2318g, -2, true);
        this.f2321h0 = popupWindow;
        popupWindow.setBackgroundDrawable(new ColorDrawable());
        this.f2321h0.setOnDismissListener(this.f2303T0);
        float dimension = this.f2310c.getDimension(C1850l.mcv2_title_bar_height);
        float dimension2 = this.f2310c.getDimension(C1850l.mcv2_custom_progress_thumb_size);
        float dimension3 = this.f2310c.getDimension(C1850l.mcv2_bottom_bar_height);
        View[] viewArr = {this.f2294P, this.f2296Q, this.f2300S, this.f2309b0, this.f2311c0, this.f2290N};
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.addUpdateListener(new C0462k());
        ofFloat.addListener(new C0473v());
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat2.setInterpolator(new LinearInterpolator());
        ofFloat2.addUpdateListener(new C0476y());
        ofFloat2.addListener(new C0477z());
        AnimatorSet animatorSet = new AnimatorSet();
        this.f2349v0 = animatorSet;
        AnimatorSet.Builder play = animatorSet.play(ofFloat);
        float f = -dimension;
        play.with(C1804a.m32073a(0.0f, f, this.f2272E)).with(C1804a.m32072a(0.0f, dimension3, viewArr));
        this.f2349v0.setDuration(250L);
        this.f2349v0.addListener(new C0443a0());
        float f2 = dimension2 + dimension3;
        AnimatorSet a = C1804a.m32072a(dimension3, f2, viewArr);
        this.f2351w0 = a;
        a.setDuration(250L);
        this.f2351w0.addListener(new C0445b0());
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f2353x0 = animatorSet2;
        animatorSet2.play(ofFloat).with(C1804a.m32073a(0.0f, f, this.f2272E)).with(C1804a.m32072a(0.0f, f2, viewArr));
        this.f2353x0.setDuration(250L);
        this.f2353x0.addListener(new C0447c0());
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.f2355y0 = animatorSet3;
        animatorSet3.play(ofFloat2).with(C1804a.m32073a(f, 0.0f, this.f2272E)).with(C1804a.m32072a(dimension3, 0.0f, viewArr));
        this.f2355y0.setDuration(250L);
        this.f2355y0.addListener(new C0449d0());
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.f2357z0 = animatorSet4;
        animatorSet4.play(ofFloat2).with(C1804a.m32073a(f, 0.0f, this.f2272E)).with(C1804a.m32072a(f2, 0.0f, viewArr));
        this.f2357z0.setDuration(250L);
        this.f2357z0.addListener(new C0451e0());
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f2265A0 = ofFloat3;
        ofFloat3.setDuration(250L);
        this.f2265A0.addUpdateListener(new C0442a());
        this.f2265A0.addListener(new C0444b());
        ValueAnimator ofFloat4 = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.f2267B0 = ofFloat4;
        ofFloat4.setDuration(250L);
        this.f2267B0.addUpdateListener(new C0446c());
        this.f2267B0.addListener(new C0448d());
    }

    /* renamed from: g */
    public final void m37669g() {
        ArrayList arrayList = new ArrayList();
        this.f2327k0 = arrayList;
        arrayList.add(this.f2310c.getString(C1854p.MediaControlView_audio_track_text));
        this.f2327k0.add(this.f2310c.getString(C1854p.MediaControlView_playback_speed_text));
        ArrayList arrayList2 = new ArrayList();
        this.f2329l0 = arrayList2;
        arrayList2.add(this.f2310c.getString(C1854p.MediaControlView_audio_track_none_text));
        String string = this.f2310c.getString(C1854p.MediaControlView_playback_speed_normal);
        this.f2329l0.add(string);
        this.f2329l0.add("");
        ArrayList arrayList3 = new ArrayList();
        this.f2331m0 = arrayList3;
        arrayList3.add(Integer.valueOf(C1851m.ic_audiotrack));
        this.f2331m0.add(Integer.valueOf(C1851m.ic_speed));
        ArrayList arrayList4 = new ArrayList();
        this.f2341r0 = arrayList4;
        arrayList4.add(this.f2310c.getString(C1854p.MediaControlView_audio_track_none_text));
        ArrayList arrayList5 = new ArrayList(Arrays.asList(this.f2310c.getStringArray(C1848j.MediaControlView_playback_speeds)));
        this.f2343s0 = arrayList5;
        arrayList5.add(3, string);
        this.f2332n = 3;
        this.f2345t0 = new ArrayList();
        for (int i : this.f2310c.getIntArray(C1848j.speed_multiplied_by_100)) {
            this.f2345t0.add(Integer.valueOf(i));
        }
        this.f2347u0 = -1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.media2.widget.MediaControlView";
    }

    public long getLatestSeekPosition() {
        m37675c();
        long j = this.f2344t;
        if (j != -1) {
            return j;
        }
        long j2 = this.f2342s;
        return j2 != -1 ? j2 : this.f2312d.m31920n();
    }

    /* renamed from: h */
    public final boolean m37668h() {
        return !m37673d() && this.f2337p0.size() > 0;
    }

    /* renamed from: i */
    public boolean m37667i() {
        m37675c();
        MediaItem m = this.f2312d.m31921m();
        if (!(m instanceof UriMediaItem)) {
            return false;
        }
        return C1873v.m31848a(((UriMediaItem) m).m38202k());
    }

    /* renamed from: j */
    public void m37666j() {
        this.f2345t0.remove(this.f2347u0);
        this.f2343s0.remove(this.f2347u0);
        this.f2347u0 = -1;
    }

    /* renamed from: k */
    public void m37665k() {
        removeCallbacks(this.f2275F0);
        removeCallbacks(this.f2277G0);
        m37681a(this.f2275F0, this.f2340r);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m37664l() {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.widget.MediaControlView.m37664l():long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r3.f2334o != 1) goto L_0x0015;
     */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m37663m() {
        /*
            r3 = this;
            r0 = r3
            boolean r0 = r0.m37668h()
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0015
            r0 = r5
            r4 = r0
            r0 = r3
            int r0 = r0.f2334o
            r1 = 1
            if (r0 == r1) goto L_0x003f
        L_0x0015:
            r0 = r5
            r4 = r0
            r0 = r3
            android.view.accessibility.AccessibilityManager r0 = r0.f2316f
            boolean r0 = r0.isTouchExplorationEnabled()
            if (r0 != 0) goto L_0x003f
            r0 = r5
            r4 = r0
            r0 = r3
            b.s.e.i r0 = r0.f2312d
            int r0 = r0.m31916r()
            r1 = 3
            if (r0 == r1) goto L_0x003f
            r0 = r3
            b.s.e.i r0 = r0.f2312d
            int r0 = r0.m31916r()
            if (r0 != 0) goto L_0x003d
            r0 = r5
            r4 = r0
            goto L_0x003f
        L_0x003d:
            r0 = 0
            r4 = r0
        L_0x003f:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.widget.MediaControlView.m37663m():boolean");
    }

    /* renamed from: n */
    public final void m37662n() {
        if (this.f2336p != 3) {
            removeCallbacks(this.f2275F0);
            removeCallbacks(this.f2277G0);
            post(this.f2271D0);
        }
    }

    /* renamed from: o */
    public void m37661o() {
        m37675c();
        if (this.f2312d.m31910x()) {
            this.f2312d.m31908z();
            m37672d(1);
            return;
        }
        if (this.f2350w) {
            this.f2312d.m31936a(0L);
        }
        this.f2312d.m31943A();
        m37672d(0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C1844i iVar = this.f2312d;
        if (iVar != null) {
            iVar.m31939a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C1844i iVar = this.f2312d;
        if (iVar != null) {
            iVar.m31925i();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = ((i3 - i) - getPaddingLeft()) - getPaddingRight();
        int paddingTop = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        int i5 = 0;
        int i6 = (this.f2356z || ((this.f2296Q.getMeasuredWidth() + this.f2300S.getMeasuredWidth()) + this.f2309b0.getMeasuredWidth() <= paddingLeft && (this.f2272E.getMeasuredHeight() + this.f2290N.getMeasuredHeight()) + this.f2294P.getMeasuredHeight() <= paddingTop)) ? 1 : (this.f2300S.getMeasuredWidth() + this.f2309b0.getMeasuredWidth() > paddingLeft || ((this.f2272E.getMeasuredHeight() + this.f2282J.getMeasuredHeight()) + this.f2290N.getMeasuredHeight()) + this.f2294P.getMeasuredHeight() > paddingTop) ? 2 : 0;
        if (this.f2334o != i6) {
            this.f2334o = i6;
            m37674c(i6);
        }
        this.f2272E.setVisibility(i6 != 2 ? 0 : 4);
        this.f2280I.setVisibility(i6 != 1 ? 0 : 4);
        this.f2282J.setVisibility(i6 == 0 ? 0 : 4);
        this.f2284K.setVisibility(i6 == 2 ? 0 : 4);
        this.f2294P.setVisibility(i6 != 2 ? 0 : 4);
        this.f2296Q.setVisibility(i6 == 1 ? 0 : 4);
        this.f2300S.setVisibility(i6 != 2 ? 0 : 4);
        this.f2309b0.setVisibility(i6 != 2 ? 0 : 4);
        ImageButton imageButton = this.f2288M;
        if (i6 != 2) {
            i5 = 4;
        }
        imageButton.setVisibility(i5);
        int paddingLeft2 = getPaddingLeft();
        int i7 = paddingLeft + paddingLeft2;
        int paddingTop2 = getPaddingTop();
        int i8 = paddingTop + paddingTop2;
        m37685a(this.f2272E, paddingLeft2, paddingTop2);
        m37685a(this.f2278H, paddingLeft2, paddingTop2);
        View view = this.f2294P;
        m37685a(view, paddingLeft2, i8 - view.getMeasuredHeight());
        ViewGroup viewGroup = this.f2296Q;
        m37685a(viewGroup, paddingLeft2, i8 - viewGroup.getMeasuredHeight());
        m37685a(this.f2300S, i6 == 1 ? (i7 - this.f2309b0.getMeasuredWidth()) - this.f2300S.getMeasuredWidth() : paddingLeft2, i8 - this.f2300S.getMeasuredHeight());
        ViewGroup viewGroup2 = this.f2309b0;
        m37685a(viewGroup2, i7 - viewGroup2.getMeasuredWidth(), i8 - this.f2309b0.getMeasuredHeight());
        ViewGroup viewGroup3 = this.f2311c0;
        m37685a(viewGroup3, i7, i8 - viewGroup3.getMeasuredHeight());
        ViewGroup viewGroup4 = this.f2290N;
        m37685a(viewGroup4, paddingLeft2, i6 == 2 ? i8 - viewGroup4.getMeasuredHeight() : (i8 - viewGroup4.getMeasuredHeight()) - this.f2310c.getDimensionPixelSize(C1850l.mcv2_custom_progress_margin_bottom));
        ViewGroup viewGroup5 = this.f2286L;
        m37685a(viewGroup5, paddingLeft2, i8 - viewGroup5.getMeasuredHeight());
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int resolveSize = ViewGroup.resolveSize(getSuggestedMinimumWidth(), i);
        int resolveSize2 = ViewGroup.resolveSize(getSuggestedMinimumHeight(), i2);
        int paddingLeft = (resolveSize - getPaddingLeft()) - getPaddingRight();
        int paddingTop = (resolveSize2 - getPaddingTop()) - getPaddingBottom();
        if (paddingLeft < 0) {
            i3 = 16777216;
            paddingLeft = 0;
        } else {
            i3 = 0;
        }
        int i4 = i3;
        int i5 = paddingTop;
        if (paddingTop < 0) {
            i4 = i3 | 256;
            i5 = 0;
        }
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                int i7 = layoutParams.width;
                int makeMeasureSpec = i7 == -1 ? View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824) : i7 == -2 ? View.MeasureSpec.makeMeasureSpec(paddingLeft, 0) : View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
                int i8 = layoutParams.height;
                childAt.measure(makeMeasureSpec, i8 == -1 ? View.MeasureSpec.makeMeasureSpec(i5, 1073741824) : i8 == -2 ? View.MeasureSpec.makeMeasureSpec(i5, 0) : View.MeasureSpec.makeMeasureSpec(i8, 1073741824));
                i4 |= childAt.getMeasuredState();
            }
        }
        setMeasuredDimension(ViewGroup.resolveSizeAndState(resolveSize, i, i4), ViewGroup.resolveSizeAndState(resolveSize2, i2, i4 << 16));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f2312d == null) {
            return super.onTouchEvent(motionEvent);
        }
        if (motionEvent.getAction() != 1) {
            return true;
        }
        if (m37668h() && this.f2334o == 1) {
            return true;
        }
        if (this.f2336p == 0) {
            m37671e();
            return true;
        }
        m37662n();
        return true;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (this.f2312d == null) {
            return super.onTrackballEvent(motionEvent);
        }
        if (motionEvent.getAction() != 1) {
            return true;
        }
        if (m37668h() && this.f2334o == 1) {
            return true;
        }
        if (this.f2336p == 0) {
            m37671e();
            return true;
        }
        m37662n();
        return true;
    }

    /* renamed from: p */
    public void m37660p() {
        m37675c();
        boolean b = this.f2312d.m31933b();
        boolean c = this.f2312d.m31931c();
        boolean d = this.f2312d.m31930d();
        boolean h = this.f2312d.m31926h();
        boolean g = this.f2312d.m31927g();
        int size = this.f2270D.size();
        int i = 0;
        while (true) {
            int i2 = 8;
            if (i >= size) {
                break;
            }
            int keyAt = this.f2270D.keyAt(i);
            ImageButton a = m37690a(keyAt, C1852n.pause);
            if (a != null) {
                a.setVisibility(b ? 0 : 8);
            }
            ImageButton a2 = m37690a(keyAt, C1852n.rew);
            if (a2 != null) {
                a2.setVisibility(c ? 0 : 8);
            }
            ImageButton a3 = m37690a(keyAt, C1852n.ffwd);
            if (a3 != null) {
                a3.setVisibility(d ? 0 : 8);
            }
            ImageButton a4 = m37690a(keyAt, C1852n.prev);
            if (a4 != null) {
                a4.setVisibility(h ? 0 : 8);
            }
            ImageButton a5 = m37690a(keyAt, C1852n.next);
            if (a5 != null) {
                if (g) {
                    i2 = 0;
                }
                a5.setVisibility(i2);
            }
            i++;
        }
        if (this.f2312d.m31929e()) {
            this.f2354y = true;
            this.f2292O.setEnabled(true);
        }
        if (this.f2312d.m31928f()) {
            this.f2313d0.setVisibility(0);
        } else {
            this.f2313d0.setVisibility(8);
        }
    }

    public void setAttachedToVideoView(boolean z) {
        this.f2308b = z;
    }

    public void setDelayedAnimationInterval(long j) {
        this.f2340r = j;
    }

    public void setMediaController(MediaController mediaController) {
        if (mediaController == null) {
            throw new NullPointerException("controller must not be null");
        } else if (!this.f2308b) {
            setMediaControllerInternal(mediaController);
        } else {
            throw new IllegalStateException("It's attached to VideoView. Use VideoView's method.");
        }
    }

    public void setMediaControllerInternal(MediaController mediaController) {
        C1844i iVar = this.f2312d;
        if (iVar != null) {
            iVar.m31925i();
        }
        this.f2312d = new C1844i(mediaController, C0869a.m35685c(getContext()), new C0455g0());
        if (isAttachedToWindow()) {
            this.f2312d.m31939a();
        }
    }

    public void setOnFullScreenListener(AbstractC0453f0 f0Var) {
        if (f0Var == null) {
            this.f2314e = null;
            this.f2315e0.setVisibility(8);
            return;
        }
        this.f2314e = f0Var;
        this.f2315e0.setVisibility(0);
    }

    public void setPlayer(SessionPlayer sessionPlayer) {
        if (sessionPlayer == null) {
            throw new NullPointerException("player must not be null");
        } else if (!this.f2308b) {
            setPlayerInternal(sessionPlayer);
        } else {
            throw new IllegalStateException("It's attached to VideoView. Use VideoView's method.");
        }
    }

    public void setPlayerInternal(SessionPlayer sessionPlayer) {
        C1844i iVar = this.f2312d;
        if (iVar != null) {
            iVar.m31925i();
        }
        this.f2312d = new C1844i(sessionPlayer, C0869a.m35685c(getContext()), new C0455g0());
        if (isAttachedToWindow()) {
            this.f2312d.m31939a();
        }
    }
}
