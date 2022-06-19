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
import android.support.p008v4.media.MediaMetadataCompat;
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
import androidx.appcompat.app.DialogInterfaceC0196c;
import androidx.core.content.C0790b;
import androidx.core.view.C0926v;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.UriMediaItem;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.widget.C2572k;
import androidx.media2.widget.C2576l;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.Constants;
import io.objectbox.model.PropertyFlags;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Formatter;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView.class */
public class MediaControlView extends AbstractC2569i {

    /* renamed from: a */
    static final boolean f9452a = Log.isLoggable("MediaControlView", 3);

    /* renamed from: A */
    ViewGroup f9453A;

    /* renamed from: B */
    ImageButton f9454B;

    /* renamed from: C */
    SeekBar f9455C;

    /* renamed from: D */
    TextView f9456D;

    /* renamed from: E */
    ViewGroup f9457E;

    /* renamed from: F */
    ViewGroup f9458F;

    /* renamed from: G */
    ImageButton f9459G;

    /* renamed from: H */
    ImageButton f9460H;

    /* renamed from: I */
    C2522c f9461I;

    /* renamed from: J */
    C2523d f9462J;

    /* renamed from: K */
    List<String> f9463K;

    /* renamed from: L */
    List<String> f9464L;

    /* renamed from: M */
    int f9465M;

    /* renamed from: N */
    List<SessionPlayer.TrackInfo> f9466N;

    /* renamed from: O */
    List<SessionPlayer.TrackInfo> f9467O;

    /* renamed from: P */
    List<String> f9468P;

    /* renamed from: Q */
    List<String> f9469Q;

    /* renamed from: R */
    List<Integer> f9470R;

    /* renamed from: S */
    int f9471S;

    /* renamed from: T */
    AnimatorSet f9472T;

    /* renamed from: U */
    AnimatorSet f9473U;

    /* renamed from: V */
    AnimatorSet f9474V;

    /* renamed from: W */
    AnimatorSet f9475W;

    /* renamed from: aA */
    private StringBuilder f9476aA;

    /* renamed from: aB */
    private Formatter f9477aB;

    /* renamed from: aC */
    private TextView f9478aC;

    /* renamed from: aD */
    private ListView f9479aD;

    /* renamed from: aE */
    private PopupWindow f9480aE;

    /* renamed from: aF */
    private List<String> f9481aF;

    /* renamed from: aG */
    private List<Integer> f9482aG;

    /* renamed from: aH */
    private final Runnable f9483aH;

    /* renamed from: aI */
    private final SeekBar.OnSeekBarChangeListener f9484aI;

    /* renamed from: aJ */
    private final View.OnClickListener f9485aJ;

    /* renamed from: aK */
    private final View.OnClickListener f9486aK;

    /* renamed from: aL */
    private final View.OnClickListener f9487aL;

    /* renamed from: aM */
    private final View.OnClickListener f9488aM;

    /* renamed from: aN */
    private final View.OnClickListener f9489aN;

    /* renamed from: aO */
    private final View.OnClickListener f9490aO;

    /* renamed from: aP */
    private final View.OnClickListener f9491aP;

    /* renamed from: aQ */
    private final View.OnClickListener f9492aQ;

    /* renamed from: aR */
    private final View.OnClickListener f9493aR;

    /* renamed from: aS */
    private final View.OnClickListener f9494aS;

    /* renamed from: aT */
    private final AdapterView.OnItemClickListener f9495aT;

    /* renamed from: aU */
    private PopupWindow.OnDismissListener f9496aU;

    /* renamed from: aa */
    AnimatorSet f9497aa;

    /* renamed from: ab */
    ValueAnimator f9498ab;

    /* renamed from: ac */
    ValueAnimator f9499ac;

    /* renamed from: ad */
    final Runnable f9500ad;

    /* renamed from: ae */
    final Runnable f9501ae;

    /* renamed from: af */
    Runnable f9502af;

    /* renamed from: ag */
    final Runnable f9503ag;

    /* renamed from: ai */
    private AccessibilityManager f9504ai;

    /* renamed from: aj */
    private int f9505aj;

    /* renamed from: ak */
    private int f9506ak;

    /* renamed from: al */
    private int f9507al;

    /* renamed from: am */
    private int f9508am;

    /* renamed from: an */
    private View f9509an;

    /* renamed from: ao */
    private TextView f9510ao;

    /* renamed from: ap */
    private View f9511ap;

    /* renamed from: aq */
    private View f9512aq;

    /* renamed from: ar */
    private View f9513ar;

    /* renamed from: as */
    private View f9514as;

    /* renamed from: at */
    private ViewGroup f9515at;

    /* renamed from: au */
    private View f9516au;

    /* renamed from: av */
    private ViewGroup f9517av;

    /* renamed from: aw */
    private View f9518aw;

    /* renamed from: ax */
    private ViewGroup f9519ax;

    /* renamed from: ay */
    private TextView f9520ay;

    /* renamed from: az */
    private TextView f9521az;

    /* renamed from: b */
    boolean f9522b;

    /* renamed from: c */
    Resources f9523c;

    /* renamed from: d */
    C2572k f9524d;

    /* renamed from: e */
    AbstractC2519a f9525e;

    /* renamed from: f */
    int f9526f;

    /* renamed from: g */
    int f9527g;

    /* renamed from: h */
    int f9528h;

    /* renamed from: i */
    int f9529i;

    /* renamed from: j */
    int f9530j;

    /* renamed from: k */
    int f9531k;

    /* renamed from: l */
    long f9532l;

    /* renamed from: m */
    long f9533m;

    /* renamed from: n */
    long f9534n;

    /* renamed from: o */
    long f9535o;

    /* renamed from: p */
    boolean f9536p;

    /* renamed from: q */
    boolean f9537q;

    /* renamed from: r */
    boolean f9538r;

    /* renamed from: s */
    boolean f9539s;

    /* renamed from: t */
    boolean f9540t;

    /* renamed from: u */
    boolean f9541u;

    /* renamed from: v */
    boolean f9542v;

    /* renamed from: w */
    boolean f9543w;

    /* renamed from: x */
    boolean f9544x;

    /* renamed from: y */
    SparseArray<View> f9545y;

    /* renamed from: z */
    ViewGroup f9546z;

    /* renamed from: androidx.media2.widget.MediaControlView$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$a.class */
    public interface AbstractC2519a {
    }

    /* renamed from: androidx.media2.widget.MediaControlView$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$b.class */
    public final class C2520b extends C2572k.AbstractC2574b {
        C2520b() {
            MediaControlView.this = r4;
        }

        @Override // androidx.media2.widget.C2572k.AbstractC2574b
        /* renamed from: a */
        public final void mo40619a(C2572k c2572k) {
            if (c2572k != MediaControlView.this.f9524d) {
                return;
            }
            boolean z = MediaControlView.f9452a;
            MediaControlView.this.m40754b(true);
            MediaControlView.this.f9455C.setProgress(1000);
            TextView textView = MediaControlView.this.f9456D;
            MediaControlView mediaControlView = MediaControlView.this;
            textView.setText(mediaControlView.m40768a(mediaControlView.f9532l));
        }

        @Override // androidx.media2.widget.C2572k.AbstractC2574b
        /* renamed from: a */
        public final void mo40618a(C2572k c2572k, float f) {
            if (c2572k != MediaControlView.this.f9524d) {
                return;
            }
            int round = Math.round(f * 100.0f);
            if (MediaControlView.this.f9471S != -1) {
                MediaControlView mediaControlView = MediaControlView.this;
                mediaControlView.f9470R.remove(mediaControlView.f9471S);
                mediaControlView.f9469Q.remove(mediaControlView.f9471S);
                mediaControlView.f9471S = -1;
            }
            if (MediaControlView.this.f9470R.contains(Integer.valueOf(round))) {
                for (int i = 0; i < MediaControlView.this.f9470R.size(); i++) {
                    if (round == MediaControlView.this.f9470R.get(i).intValue()) {
                        MediaControlView mediaControlView2 = MediaControlView.this;
                        mediaControlView2.m40769a(i, mediaControlView2.f9469Q.get(i));
                        return;
                    }
                }
                return;
            }
            String string = MediaControlView.this.f9523c.getString(C2576l.C2583g.MediaControlView_custom_playback_speed_text, Float.valueOf(round / 100.0f));
            int i2 = 0;
            while (true) {
                if (i2 >= MediaControlView.this.f9470R.size()) {
                    break;
                } else if (round < MediaControlView.this.f9470R.get(i2).intValue()) {
                    MediaControlView.this.f9470R.add(i2, Integer.valueOf(round));
                    MediaControlView.this.f9469Q.add(i2, string);
                    MediaControlView.this.m40769a(i2, string);
                    break;
                } else {
                    if (i2 == MediaControlView.this.f9470R.size() - 1 && round > MediaControlView.this.f9470R.get(i2).intValue()) {
                        MediaControlView.this.f9470R.add(Integer.valueOf(round));
                        MediaControlView.this.f9469Q.add(string);
                        MediaControlView.this.m40769a(i2 + 1, string);
                    }
                    i2++;
                }
            }
            MediaControlView mediaControlView3 = MediaControlView.this;
            mediaControlView3.f9471S = mediaControlView3.f9529i;
        }

        @Override // androidx.media2.widget.C2572k.AbstractC2574b
        /* renamed from: a */
        public final void mo40617a(C2572k c2572k, int i) {
            if (c2572k != MediaControlView.this.f9524d) {
                return;
            }
            if (MediaControlView.f9452a) {
                StringBuilder sb = new StringBuilder("onPlayerStateChanged(state: ");
                sb.append(i);
                sb.append(")");
            }
            MediaControlView.this.m40763a(c2572k.m40641l());
            if (i == 1) {
                MediaControlView.this.m40757b(1);
                MediaControlView mediaControlView = MediaControlView.this;
                mediaControlView.removeCallbacks(mediaControlView.f9500ad);
                MediaControlView mediaControlView2 = MediaControlView.this;
                mediaControlView2.removeCallbacks(mediaControlView2.f9502af);
                MediaControlView mediaControlView3 = MediaControlView.this;
                mediaControlView3.removeCallbacks(mediaControlView3.f9503ag);
                MediaControlView mediaControlView4 = MediaControlView.this;
                mediaControlView4.post(mediaControlView4.f9501ae);
            } else if (i == 2) {
                MediaControlView mediaControlView5 = MediaControlView.this;
                mediaControlView5.removeCallbacks(mediaControlView5.f9500ad);
                MediaControlView mediaControlView6 = MediaControlView.this;
                mediaControlView6.post(mediaControlView6.f9500ad);
                MediaControlView.this.m40751d();
                MediaControlView.this.m40754b(false);
            } else if (i != 3) {
            } else {
                MediaControlView.this.m40757b(1);
                MediaControlView mediaControlView7 = MediaControlView.this;
                mediaControlView7.removeCallbacks(mediaControlView7.f9500ad);
                if (MediaControlView.this.getWindowToken() == null) {
                    return;
                }
                DialogInterfaceC0196c.C0197a c0197a = new DialogInterfaceC0196c.C0197a(MediaControlView.this.getContext());
                int i2 = C2576l.C2583g.mcv2_playback_error_text;
                c0197a.f515a.f365h = c0197a.f515a.f358a.getText(i2);
                DialogInterfaceC0196c.C0197a positiveButton = c0197a.setPositiveButton(C2576l.C2583g.mcv2_error_dialog_button, new DialogInterface.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.b.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        dialogInterface.dismiss();
                    }
                });
                positiveButton.f515a.f375r = true;
                positiveButton.create().show();
            }
        }

        @Override // androidx.media2.widget.C2572k.AbstractC2574b
        /* renamed from: a */
        public final void mo40616a(C2572k c2572k, long j) {
            if (c2572k != MediaControlView.this.f9524d) {
                return;
            }
            boolean z = MediaControlView.f9452a;
            MediaControlView.this.f9455C.setProgress(MediaControlView.this.f9532l <= 0 ? 0 : (int) ((1000 * j) / MediaControlView.this.f9532l));
            MediaControlView.this.f9456D.setText(MediaControlView.this.m40768a(j));
            if (MediaControlView.this.f9535o != -1) {
                MediaControlView mediaControlView = MediaControlView.this;
                mediaControlView.f9534n = mediaControlView.f9535o;
                c2572k.m40654a(MediaControlView.this.f9535o);
                MediaControlView.this.f9535o = -1L;
                return;
            }
            MediaControlView.this.f9534n = -1L;
            if (MediaControlView.this.f9536p) {
                return;
            }
            MediaControlView mediaControlView2 = MediaControlView.this;
            mediaControlView2.removeCallbacks(mediaControlView2.f9500ad);
            MediaControlView mediaControlView3 = MediaControlView.this;
            mediaControlView3.removeCallbacks(mediaControlView3.f9502af);
            MediaControlView mediaControlView4 = MediaControlView.this;
            mediaControlView4.post(mediaControlView4.f9500ad);
            MediaControlView mediaControlView5 = MediaControlView.this;
            mediaControlView5.m40759a(mediaControlView5.f9502af, MediaControlView.this.f9533m);
        }

        @Override // androidx.media2.widget.C2572k.AbstractC2574b
        /* renamed from: a */
        public final void mo40615a(C2572k c2572k, MediaItem mediaItem) {
            if (c2572k != MediaControlView.this.f9524d) {
                return;
            }
            if (MediaControlView.f9452a) {
                new StringBuilder("onCurrentMediaItemChanged(): ").append(mediaItem);
            }
            MediaControlView.this.m40763a(mediaItem);
            MediaControlView.this.m40755b(mediaItem);
            MediaControlView.this.m40756b(c2572k.m40637p(), c2572k.m40636q());
        }

        @Override // androidx.media2.widget.C2572k.AbstractC2574b
        /* renamed from: a */
        final void mo40614a(C2572k c2572k, SessionPlayer.TrackInfo trackInfo) {
            if (c2572k != MediaControlView.this.f9524d) {
                return;
            }
            if (MediaControlView.f9452a) {
                new StringBuilder("onTrackSelected(): ").append(trackInfo);
            }
            if (trackInfo.f5049b == 4) {
                for (int i = 0; i < MediaControlView.this.f9467O.size(); i++) {
                    if (MediaControlView.this.f9467O.get(i).equals(trackInfo)) {
                        MediaControlView.this.f9527g = i;
                        if (MediaControlView.this.f9526f == 2) {
                            MediaControlView.this.f9462J.f9585b = MediaControlView.this.f9527g + 1;
                        }
                        MediaControlView.this.f9459G.setImageDrawable(C0790b.m44502a(MediaControlView.this.getContext(), C2576l.C2580d.media2_widget_ic_subtitle_on));
                        MediaControlView.this.f9459G.setContentDescription(MediaControlView.this.f9523c.getString(C2576l.C2583g.mcv2_cc_is_on));
                        return;
                    }
                }
            } else if (trackInfo.f5049b == 2) {
                for (int i2 = 0; i2 < MediaControlView.this.f9466N.size(); i2++) {
                    if (MediaControlView.this.f9466N.get(i2).equals(trackInfo)) {
                        MediaControlView.this.f9528h = i2;
                        List<String> list = MediaControlView.this.f9463K;
                        C2523d c2523d = MediaControlView.this.f9462J;
                        int i3 = MediaControlView.this.f9528h;
                        list.set(0, (c2523d.f9584a == null || i3 >= c2523d.f9584a.size()) ? "" : c2523d.f9584a.get(i3));
                        return;
                    }
                }
            }
        }

        @Override // androidx.media2.widget.C2572k.AbstractC2574b
        /* renamed from: a */
        final void mo40612a(C2572k c2572k, VideoSize videoSize) {
            List<SessionPlayer.TrackInfo> m40638o;
            if (c2572k != MediaControlView.this.f9524d) {
                return;
            }
            if (MediaControlView.f9452a) {
                new StringBuilder("onVideoSizeChanged(): ").append(videoSize);
            }
            if (MediaControlView.this.f9465M != 0 || videoSize.f5067b <= 0 || videoSize.f5066a <= 0 || (m40638o = c2572k.m40638o()) == null) {
                return;
            }
            MediaControlView.this.m40760a(c2572k, m40638o);
        }

        @Override // androidx.media2.widget.C2572k.AbstractC2574b
        /* renamed from: a */
        final void mo40611a(C2572k c2572k, List<SessionPlayer.TrackInfo> list) {
            if (c2572k != MediaControlView.this.f9524d) {
                return;
            }
            if (MediaControlView.f9452a) {
                new StringBuilder("onTrackInfoChanged(): ").append(list);
            }
            MediaControlView.this.m40760a(c2572k, list);
            MediaControlView.this.m40763a(c2572k.m40641l());
            MediaControlView.this.m40755b(c2572k.m40641l());
        }

        @Override // androidx.media2.widget.C2572k.AbstractC2574b
        /* renamed from: a */
        final void mo40610a(C2572k c2572k, List<MediaItem> list, MediaMetadata mediaMetadata) {
            if (c2572k != MediaControlView.this.f9524d) {
                return;
            }
            if (MediaControlView.f9452a) {
                StringBuilder sb = new StringBuilder("onPlaylistChanged(): list: ");
                sb.append(list);
                sb.append(", metadata: ");
                sb.append(mediaMetadata);
            }
            MediaControlView.this.m40756b(c2572k.m40637p(), c2572k.m40636q());
        }

        @Override // androidx.media2.widget.C2572k.AbstractC2574b
        /* renamed from: b */
        public final void mo40609b(C2572k c2572k) {
            if (c2572k != MediaControlView.this.f9524d) {
                return;
            }
            MediaControlView mediaControlView = MediaControlView.this;
            mediaControlView.m40747h();
            C2572k c2572k2 = mediaControlView.f9524d;
            boolean z = true;
            boolean z2 = c2572k2.f9772e != null && c2572k2.f9772e.m41130a(10001);
            C2572k c2572k3 = mediaControlView.f9524d;
            boolean z3 = c2572k3.f9772e != null && c2572k3.f9772e.m41130a(40001);
            boolean m40646g = mediaControlView.f9524d.m40646g();
            C2572k c2572k4 = mediaControlView.f9524d;
            boolean z4 = c2572k4.f9772e != null && c2572k4.f9772e.m41130a(10008);
            C2572k c2572k5 = mediaControlView.f9524d;
            boolean z5 = c2572k5.f9772e != null && c2572k5.f9772e.m41130a(10009);
            C2572k c2572k6 = mediaControlView.f9524d;
            if (c2572k6.f9772e == null || !c2572k6.f9772e.m41130a(10003)) {
                z = false;
            }
            int size = mediaControlView.f9545y.size();
            for (int i = 0; i < size; i++) {
                int keyAt = mediaControlView.f9545y.keyAt(i);
                ImageButton m40770a = mediaControlView.m40770a(keyAt, C2576l.C2581e.pause);
                if (m40770a != null) {
                    m40770a.setVisibility(z2 ? 0 : 8);
                }
                ImageButton m40770a2 = mediaControlView.m40770a(keyAt, C2576l.C2581e.rew);
                if (m40770a2 != null) {
                    m40770a2.setVisibility(z3 ? 0 : 8);
                }
                ImageButton m40770a3 = mediaControlView.m40770a(keyAt, C2576l.C2581e.ffwd);
                if (m40770a3 != null) {
                    m40770a3.setVisibility(m40646g ? 0 : 8);
                }
                ImageButton m40770a4 = mediaControlView.m40770a(keyAt, C2576l.C2581e.prev);
                if (m40770a4 != null) {
                    m40770a4.setVisibility(z4 ? 0 : 8);
                }
                ImageButton m40770a5 = mediaControlView.m40770a(keyAt, C2576l.C2581e.next);
                if (m40770a5 != null) {
                    int i2 = 8;
                    if (z5) {
                        i2 = 0;
                    }
                    m40770a5.setVisibility(i2);
                }
            }
            mediaControlView.f9540t = z;
            mediaControlView.f9455C.setEnabled(z);
            mediaControlView.m40750e();
        }

        @Override // androidx.media2.widget.C2572k.AbstractC2574b
        /* renamed from: b */
        final void mo40608b(C2572k c2572k, SessionPlayer.TrackInfo trackInfo) {
            if (c2572k != MediaControlView.this.f9524d) {
                return;
            }
            if (MediaControlView.f9452a) {
                new StringBuilder("onTrackDeselected(): ").append(trackInfo);
            }
            if (trackInfo.f5049b != 4) {
                return;
            }
            for (int i = 0; i < MediaControlView.this.f9467O.size(); i++) {
                if (MediaControlView.this.f9467O.get(i).equals(trackInfo)) {
                    MediaControlView.this.f9527g = -1;
                    if (MediaControlView.this.f9526f == 2) {
                        MediaControlView.this.f9462J.f9585b = MediaControlView.this.f9527g + 1;
                    }
                    MediaControlView.this.f9459G.setImageDrawable(C0790b.m44502a(MediaControlView.this.getContext(), C2576l.C2580d.media2_widget_ic_subtitle_off));
                    MediaControlView.this.f9459G.setContentDescription(MediaControlView.this.f9523c.getString(C2576l.C2583g.mcv2_cc_is_off));
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.widget.MediaControlView$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$c.class */
    public final class C2522c extends BaseAdapter {

        /* renamed from: a */
        List<String> f9580a;

        /* renamed from: c */
        private List<Integer> f9582c;

        /* renamed from: d */
        private List<String> f9583d;

        C2522c(List<String> list, List<String> list2, List<Integer> list3) {
            MediaControlView.this = r4;
            this.f9583d = list;
            this.f9580a = list2;
            this.f9582c = list3;
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            List<String> list = this.f9583d;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            View m40766a = MediaControlView.m40766a(MediaControlView.this.getContext(), C2576l.C2582f.media2_widget_settings_list_item);
            TextView textView = (TextView) m40766a.findViewById(C2576l.C2581e.main_text);
            TextView textView2 = (TextView) m40766a.findViewById(C2576l.C2581e.sub_text);
            ImageView imageView = (ImageView) m40766a.findViewById(C2576l.C2581e.icon);
            textView.setText(this.f9583d.get(i));
            List<String> list = this.f9580a;
            if (list == null || "".equals(list.get(i))) {
                textView2.setVisibility(8);
            } else {
                textView2.setText(this.f9580a.get(i));
            }
            List<Integer> list2 = this.f9582c;
            if (list2 == null || list2.get(i).intValue() == -1) {
                imageView.setVisibility(8);
            } else {
                imageView.setImageDrawable(C0790b.m44502a(MediaControlView.this.getContext(), this.f9582c.get(i).intValue()));
            }
            return m40766a;
        }
    }

    /* renamed from: androidx.media2.widget.MediaControlView$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$d.class */
    public final class C2523d extends BaseAdapter {

        /* renamed from: a */
        List<String> f9584a;

        /* renamed from: b */
        int f9585b;

        C2523d(List<String> list, int i) {
            MediaControlView.this = r4;
            this.f9584a = list;
            this.f9585b = i;
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            List<String> list = this.f9584a;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            View m40766a = MediaControlView.m40766a(MediaControlView.this.getContext(), C2576l.C2582f.media2_widget_sub_settings_list_item);
            TextView textView = (TextView) m40766a.findViewById(C2576l.C2581e.text);
            ImageView imageView = (ImageView) m40766a.findViewById(C2576l.C2581e.check);
            textView.setText(this.f9584a.get(i));
            if (i != this.f9585b) {
                imageView.setVisibility(4);
            }
            return m40766a;
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
        this.f9522b = false;
        this.f9530j = -1;
        this.f9545y = new SparseArray<>();
        this.f9466N = new ArrayList();
        this.f9467O = new ArrayList();
        this.f9500ad = new Runnable() { // from class: androidx.media2.widget.MediaControlView.6
            @Override // java.lang.Runnable
            public final void run() {
                boolean z = MediaControlView.this.getVisibility() == 0;
                if (MediaControlView.this.f9536p || !z || MediaControlView.this.f9524d == null || !MediaControlView.this.f9524d.m40650c()) {
                    return;
                }
                long m40773a = MediaControlView.this.m40773a();
                MediaControlView mediaControlView = MediaControlView.this;
                mediaControlView.m40759a(mediaControlView.f9500ad, 1000 - (m40773a % 1000));
            }
        };
        this.f9501ae = new Runnable() { // from class: androidx.media2.widget.MediaControlView.7
            @Override // java.lang.Runnable
            public final void run() {
                int i2 = MediaControlView.this.f9531k;
                if (i2 == 1) {
                    MediaControlView.this.f9475W.start();
                } else if (i2 == 2) {
                    MediaControlView.this.f9497aa.start();
                } else if (i2 == 3) {
                    MediaControlView.this.f9543w = true;
                }
                if (MediaControlView.this.f9524d.m40650c()) {
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.m40759a(mediaControlView.f9502af, MediaControlView.this.f9533m);
                }
            }
        };
        this.f9483aH = new Runnable() { // from class: androidx.media2.widget.MediaControlView.8
            @Override // java.lang.Runnable
            public final void run() {
                if (MediaControlView.this.m40749f()) {
                    return;
                }
                MediaControlView.this.f9474V.start();
            }
        };
        this.f9502af = new Runnable() { // from class: androidx.media2.widget.MediaControlView.9
            @Override // java.lang.Runnable
            public final void run() {
                if (!MediaControlView.this.f9524d.m40650c() || MediaControlView.this.m40749f()) {
                    return;
                }
                MediaControlView.this.f9472T.start();
                MediaControlView mediaControlView = MediaControlView.this;
                mediaControlView.m40759a(mediaControlView.f9503ag, MediaControlView.this.f9533m);
            }
        };
        this.f9503ag = new Runnable() { // from class: androidx.media2.widget.MediaControlView.10
            @Override // java.lang.Runnable
            public final void run() {
                if (!MediaControlView.this.f9524d.m40650c() || MediaControlView.this.m40749f()) {
                    return;
                }
                MediaControlView.this.f9473U.start();
            }
        };
        SeekBar.OnSeekBarChangeListener onSeekBarChangeListener = new SeekBar.OnSeekBarChangeListener() { // from class: androidx.media2.widget.MediaControlView.11
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onProgressChanged(SeekBar seekBar, int i2, boolean z) {
                if (MediaControlView.this.f9524d == null || !MediaControlView.this.f9540t || !z || !MediaControlView.this.f9536p || MediaControlView.this.f9532l <= 0) {
                    return;
                }
                MediaControlView.this.m40767a((MediaControlView.this.f9532l * i2) / 1000, !MediaControlView.this.m40758b());
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStartTrackingTouch(SeekBar seekBar) {
                if (MediaControlView.this.f9524d == null || !MediaControlView.this.f9540t) {
                    return;
                }
                MediaControlView.this.f9536p = true;
                MediaControlView mediaControlView = MediaControlView.this;
                mediaControlView.removeCallbacks(mediaControlView.f9500ad);
                MediaControlView mediaControlView2 = MediaControlView.this;
                mediaControlView2.removeCallbacks(mediaControlView2.f9502af);
                MediaControlView mediaControlView3 = MediaControlView.this;
                mediaControlView3.removeCallbacks(mediaControlView3.f9503ag);
                if (MediaControlView.this.f9538r) {
                    MediaControlView.this.m40754b(false);
                }
                if (!MediaControlView.this.m40758b() || !MediaControlView.this.f9524d.m40650c()) {
                    return;
                }
                MediaControlView.this.f9544x = true;
                MediaControlView.this.f9524d.m40645h();
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStopTrackingTouch(SeekBar seekBar) {
                if (MediaControlView.this.f9524d == null || !MediaControlView.this.f9540t) {
                    return;
                }
                MediaControlView.this.f9536p = false;
                long m40748g = MediaControlView.this.m40748g();
                if (MediaControlView.this.m40758b()) {
                    MediaControlView.this.f9534n = -1L;
                    MediaControlView.this.f9535o = -1L;
                }
                MediaControlView.this.m40767a(m40748g, true);
                if (!MediaControlView.this.f9544x) {
                    return;
                }
                MediaControlView.this.f9544x = false;
                MediaControlView.this.f9524d.m40644i();
            }
        };
        this.f9484aI = onSeekBarChangeListener;
        this.f9485aJ = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaControlView.this.f9524d == null) {
                    return;
                }
                MediaControlView.this.m40751d();
                MediaControlView mediaControlView = MediaControlView.this;
                mediaControlView.m40747h();
                if (mediaControlView.f9524d.m40650c()) {
                    mediaControlView.f9524d.m40645h();
                    mediaControlView.m40757b(1);
                    return;
                }
                if (mediaControlView.f9538r) {
                    mediaControlView.f9524d.m40654a(0L);
                }
                mediaControlView.f9524d.m40644i();
                mediaControlView.m40757b(0);
            }
        };
        this.f9486aK = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.14
            /* JADX WARN: Type inference failed for: r0v24, types: [long] */
            /* JADX WARN: Type inference failed for: r0v26, types: [long] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaControlView.this.f9524d == null) {
                    return;
                }
                MediaControlView.this.m40751d();
                MediaControlView mediaControlView = MediaControlView.this;
                mediaControlView.removeCallbacks(mediaControlView.f9500ad);
                boolean z = MediaControlView.this.f9538r && MediaControlView.this.f9532l != 0;
                MediaControlView mediaControlView2 = MediaControlView.this;
                MediaControlView.this.m40767a(Math.max((z ? mediaControlView2.f9532l : mediaControlView2.m40748g()) - 10000, 0L), true);
                if (!z) {
                    return;
                }
                MediaControlView.this.m40754b(false);
            }
        };
        this.f9487aL = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaControlView.this.f9524d == null) {
                    return;
                }
                MediaControlView.this.m40751d();
                MediaControlView mediaControlView = MediaControlView.this;
                mediaControlView.removeCallbacks(mediaControlView.f9500ad);
                long m40748g = MediaControlView.this.m40748g();
                MediaControlView mediaControlView2 = MediaControlView.this;
                long j = m40748g + 30000;
                mediaControlView2.m40767a(Math.min(j, mediaControlView2.f9532l), true);
                if (j < MediaControlView.this.f9532l || MediaControlView.this.f9524d.m40650c()) {
                    return;
                }
                MediaControlView.this.m40754b(true);
            }
        };
        this.f9488aM = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.16
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaControlView.this.f9524d == null) {
                    return;
                }
                MediaControlView.this.m40751d();
                C2572k c2572k = MediaControlView.this.f9524d;
                if (c2572k.f9768a == null) {
                    if (c2572k.f9769b == null) {
                        return;
                    }
                    c2572k.f9769b.mo41340m();
                    return;
                }
                MediaController mediaController = c2572k.f9768a;
                if (mediaController.m41157b()) {
                    mediaController.mo41081a().mo41050m();
                } else {
                    MediaController.m41143n();
                }
            }
        };
        this.f9489aN = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaControlView.this.f9524d == null) {
                    return;
                }
                MediaControlView.this.m40751d();
                C2572k c2572k = MediaControlView.this.f9524d;
                if (c2572k.f9768a == null) {
                    if (c2572k.f9769b == null) {
                        return;
                    }
                    c2572k.f9769b.mo41341l();
                    return;
                }
                MediaController mediaController = c2572k.f9768a;
                if (mediaController.m41157b()) {
                    mediaController.mo41081a().mo41051l();
                } else {
                    MediaController.m41143n();
                }
            }
        };
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaControlView.this.f9524d == null) {
                    return;
                }
                MediaControlView mediaControlView = MediaControlView.this;
                mediaControlView.removeCallbacks(mediaControlView.f9502af);
                MediaControlView mediaControlView2 = MediaControlView.this;
                mediaControlView2.removeCallbacks(mediaControlView2.f9503ag);
                MediaControlView.this.f9526f = 2;
                MediaControlView.this.f9462J.f9584a = MediaControlView.this.f9464L;
                MediaControlView.this.f9462J.f9585b = MediaControlView.this.f9527g + 1;
                MediaControlView mediaControlView3 = MediaControlView.this;
                mediaControlView3.m40764a(mediaControlView3.f9462J);
            }
        };
        this.f9490aO = onClickListener;
        View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.19
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaControlView.this.f9525e == null) {
                    return;
                }
                boolean z = !MediaControlView.this.f9537q;
                if (z) {
                    MediaControlView.this.f9460H.setImageDrawable(C0790b.m44502a(MediaControlView.this.getContext(), C2576l.C2580d.media2_widget_ic_fullscreen_exit));
                    MediaControlView.this.f9454B.setImageDrawable(C0790b.m44502a(MediaControlView.this.getContext(), C2576l.C2580d.media2_widget_ic_fullscreen_exit));
                } else {
                    MediaControlView.this.f9460H.setImageDrawable(C0790b.m44502a(MediaControlView.this.getContext(), C2576l.C2580d.media2_widget_ic_fullscreen));
                    MediaControlView.this.f9454B.setImageDrawable(C0790b.m44502a(MediaControlView.this.getContext(), C2576l.C2580d.media2_widget_ic_fullscreen));
                }
                MediaControlView.this.f9537q = z;
            }
        };
        this.f9491aP = onClickListener2;
        View.OnClickListener onClickListener3 = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaControlView.this.f9524d == null) {
                    return;
                }
                MediaControlView.this.m40751d();
                MediaControlView.this.f9539s = true;
                MediaControlView.this.f9498ab.start();
            }
        };
        this.f9492aQ = onClickListener3;
        View.OnClickListener onClickListener4 = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.21
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaControlView.this.f9524d == null) {
                    return;
                }
                MediaControlView.this.m40751d();
                MediaControlView.this.f9539s = false;
                MediaControlView.this.f9499ac.start();
            }
        };
        this.f9493aR = onClickListener4;
        View.OnClickListener onClickListener5 = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.22
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaControlView.this.f9524d == null) {
                    return;
                }
                MediaControlView mediaControlView = MediaControlView.this;
                mediaControlView.removeCallbacks(mediaControlView.f9502af);
                MediaControlView mediaControlView2 = MediaControlView.this;
                mediaControlView2.removeCallbacks(mediaControlView2.f9503ag);
                MediaControlView.this.f9526f = 3;
                MediaControlView.this.f9461I.f9580a = MediaControlView.this.f9463K;
                MediaControlView mediaControlView3 = MediaControlView.this;
                mediaControlView3.m40764a(mediaControlView3.f9461I);
            }
        };
        this.f9494aS = onClickListener5;
        AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: androidx.media2.widget.MediaControlView.24
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                int i3 = MediaControlView.this.f9526f;
                if (i3 == 0) {
                    if (i2 != MediaControlView.this.f9528h && MediaControlView.this.f9466N.size() > 0) {
                        MediaControlView.this.f9524d.m40652a(MediaControlView.this.f9466N.get(i2));
                    }
                    MediaControlView.this.m40753c();
                } else if (i3 == 1) {
                    if (i2 != MediaControlView.this.f9529i) {
                        float intValue = MediaControlView.this.f9470R.get(i2).intValue() / 100.0f;
                        C2572k c2572k = MediaControlView.this.f9524d;
                        if (c2572k.f9768a != null) {
                            MediaController mediaController = c2572k.f9768a;
                            if (intValue == BitmapDescriptorFactory.HUE_RED) {
                                throw new IllegalArgumentException("speed must not be zero");
                            }
                            if (mediaController.m41157b()) {
                                mediaController.mo41081a().mo41070a(intValue);
                            } else {
                                MediaController.m41143n();
                            }
                        } else if (c2572k.f9769b != null) {
                            c2572k.f9769b.mo41387a(intValue);
                        }
                    }
                    MediaControlView.this.m40753c();
                } else if (i3 == 2) {
                    if (i2 != MediaControlView.this.f9527g + 1) {
                        if (i2 > 0) {
                            MediaControlView.this.f9524d.m40652a(MediaControlView.this.f9467O.get(i2 - 1));
                        } else {
                            C2572k c2572k2 = MediaControlView.this.f9524d;
                            SessionPlayer.TrackInfo trackInfo = MediaControlView.this.f9467O.get(MediaControlView.this.f9527g);
                            if (c2572k2.f9768a != null) {
                                MediaController mediaController2 = c2572k2.f9768a;
                                Objects.requireNonNull(trackInfo, "TrackInfo shouldn't be null");
                                if (mediaController2.m41157b()) {
                                    mediaController2.mo41081a().mo41061b(trackInfo);
                                } else {
                                    MediaController.m41143n();
                                }
                            } else if (c2572k2.f9769b != null) {
                                c2572k2.f9769b.mo41359b(trackInfo);
                            }
                        }
                    }
                    MediaControlView.this.m40753c();
                } else if (i3 != 3) {
                } else {
                    if (i2 == 0) {
                        MediaControlView.this.f9462J.f9584a = MediaControlView.this.f9468P;
                        MediaControlView.this.f9462J.f9585b = MediaControlView.this.f9528h;
                        MediaControlView.this.f9526f = 0;
                    } else if (i2 == 1) {
                        MediaControlView.this.f9462J.f9584a = MediaControlView.this.f9469Q;
                        MediaControlView.this.f9462J.f9585b = MediaControlView.this.f9529i;
                        MediaControlView.this.f9526f = 1;
                    }
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.m40764a(mediaControlView.f9462J);
                }
            }
        };
        this.f9495aT = onItemClickListener;
        this.f9496aU = new PopupWindow.OnDismissListener() { // from class: androidx.media2.widget.MediaControlView.25
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                if (MediaControlView.this.f9542v) {
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.m40759a(mediaControlView.f9502af, MediaControlView.this.f9533m);
                }
            }
        };
        this.f9523c = context.getResources();
        inflate(context, C2576l.C2582f.media2_widget_media_controller, this);
        this.f9509an = findViewById(C2576l.C2581e.title_bar);
        this.f9510ao = (TextView) findViewById(C2576l.C2581e.title_text);
        this.f9511ap = findViewById(C2576l.C2581e.ad_external_link);
        this.f9546z = (ViewGroup) findViewById(C2576l.C2581e.center_view);
        this.f9512aq = findViewById(C2576l.C2581e.center_view_background);
        this.f9513ar = m40752c(C2576l.C2581e.embedded_transport_controls);
        this.f9514as = m40752c(C2576l.C2581e.minimal_transport_controls);
        this.f9453A = (ViewGroup) findViewById(C2576l.C2581e.minimal_fullscreen_view);
        ImageButton imageButton = (ImageButton) findViewById(C2576l.C2581e.minimal_fullscreen);
        this.f9454B = imageButton;
        imageButton.setOnClickListener(onClickListener2);
        this.f9515at = (ViewGroup) findViewById(C2576l.C2581e.progress_bar);
        SeekBar seekBar = (SeekBar) findViewById(C2576l.C2581e.progress);
        this.f9455C = seekBar;
        seekBar.setOnSeekBarChangeListener(onSeekBarChangeListener);
        this.f9455C.setMax(1000);
        this.f9534n = -1L;
        this.f9535o = -1L;
        this.f9516au = findViewById(C2576l.C2581e.bottom_bar_background);
        this.f9517av = (ViewGroup) findViewById(C2576l.C2581e.bottom_bar_left);
        this.f9518aw = m40752c(C2576l.C2581e.full_transport_controls);
        this.f9519ax = (ViewGroup) findViewById(C2576l.C2581e.time);
        this.f9520ay = (TextView) findViewById(C2576l.C2581e.time_end);
        this.f9456D = (TextView) findViewById(C2576l.C2581e.time_current);
        this.f9521az = (TextView) findViewById(C2576l.C2581e.ad_skip_time);
        this.f9476aA = new StringBuilder();
        this.f9477aB = new Formatter(this.f9476aA, Locale.getDefault());
        this.f9457E = (ViewGroup) findViewById(C2576l.C2581e.basic_controls);
        this.f9458F = (ViewGroup) findViewById(C2576l.C2581e.extra_controls);
        ImageButton imageButton2 = (ImageButton) findViewById(C2576l.C2581e.subtitle);
        this.f9459G = imageButton2;
        imageButton2.setOnClickListener(onClickListener);
        ImageButton imageButton3 = (ImageButton) findViewById(C2576l.C2581e.fullscreen);
        this.f9460H = imageButton3;
        imageButton3.setOnClickListener(onClickListener2);
        ((ImageButton) findViewById(C2576l.C2581e.overflow_show)).setOnClickListener(onClickListener3);
        ((ImageButton) findViewById(C2576l.C2581e.overflow_hide)).setOnClickListener(onClickListener4);
        ((ImageButton) findViewById(C2576l.C2581e.settings)).setOnClickListener(onClickListener5);
        this.f9478aC = (TextView) findViewById(C2576l.C2581e.ad_remaining);
        m40744k();
        this.f9479aD = (ListView) m40766a(getContext(), C2576l.C2582f.media2_widget_settings_list);
        this.f9461I = new C2522c(this.f9481aF, this.f9463K, this.f9482aG);
        this.f9462J = new C2523d(null, 0);
        this.f9479aD.setAdapter((ListAdapter) this.f9461I);
        this.f9479aD.setChoiceMode(1);
        this.f9479aD.setOnItemClickListener(onItemClickListener);
        this.f9545y.append(0, this.f9513ar);
        this.f9545y.append(1, this.f9518aw);
        this.f9545y.append(2, this.f9514as);
        this.f9505aj = this.f9523c.getDimensionPixelSize(C2576l.C2579c.media2_widget_embedded_settings_width);
        this.f9506ak = this.f9523c.getDimensionPixelSize(C2576l.C2579c.media2_widget_full_settings_width);
        this.f9507al = this.f9523c.getDimensionPixelSize(C2576l.C2579c.media2_widget_settings_height);
        this.f9508am = this.f9523c.getDimensionPixelSize(C2576l.C2579c.media2_widget_settings_offset);
        PopupWindow popupWindow = new PopupWindow((View) this.f9479aD, this.f9505aj, -2, true);
        this.f9480aE = popupWindow;
        popupWindow.setBackgroundDrawable(new ColorDrawable());
        this.f9480aE.setOnDismissListener(this.f9496aU);
        float dimension = this.f9523c.getDimension(C2576l.C2579c.media2_widget_title_bar_height);
        float dimension2 = this.f9523c.getDimension(C2576l.C2579c.media2_widget_custom_progress_thumb_size);
        float dimension3 = this.f9523c.getDimension(C2576l.C2579c.media2_widget_bottom_bar_height);
        View[] viewArr = {this.f9516au, this.f9517av, this.f9519ax, this.f9457E, this.f9458F, this.f9515at};
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.media2.widget.MediaControlView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                MediaControlView.this.f9455C.getThumb().setLevel((int) ((MediaControlView.this.f9530j == 2 ? 0 : 10000) * floatValue));
                MediaControlView.this.f9546z.setAlpha(floatValue);
                MediaControlView.this.f9453A.setAlpha(floatValue);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.12
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                MediaControlView.this.f9546z.setVisibility(4);
                MediaControlView.this.f9453A.setVisibility(4);
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat2.setInterpolator(new LinearInterpolator());
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.media2.widget.MediaControlView.23
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                MediaControlView.this.f9455C.getThumb().setLevel((int) ((MediaControlView.this.f9530j == 2 ? 0 : 10000) * floatValue));
                MediaControlView.this.f9546z.setAlpha(floatValue);
                MediaControlView.this.f9453A.setAlpha(floatValue);
            }
        });
        ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.26
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                MediaControlView.this.f9546z.setVisibility(0);
                MediaControlView.this.f9453A.setVisibility(0);
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.f9472T = animatorSet;
        AnimatorSet.Builder play = animatorSet.play(ofFloat);
        float f = -dimension;
        play.with(C2530a.m40735a((float) BitmapDescriptorFactory.HUE_RED, f, this.f9509an)).with(C2530a.m40734a((float) BitmapDescriptorFactory.HUE_RED, dimension3, viewArr));
        this.f9472T.setDuration(250L);
        this.f9472T.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.27
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                MediaControlView.this.f9531k = 1;
                if (MediaControlView.this.f9543w) {
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.post(mediaControlView.f9501ae);
                    MediaControlView.this.f9543w = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                MediaControlView.this.f9531k = 3;
            }
        });
        float f2 = dimension2 + dimension3;
        AnimatorSet m40734a = C2530a.m40734a(dimension3, f2, viewArr);
        this.f9473U = m40734a;
        m40734a.setDuration(250L);
        this.f9473U.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.28
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                MediaControlView.this.f9531k = 2;
                if (MediaControlView.this.f9543w) {
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.post(mediaControlView.f9501ae);
                    MediaControlView.this.f9543w = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                MediaControlView.this.f9531k = 3;
            }
        });
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f9474V = animatorSet2;
        animatorSet2.play(ofFloat).with(C2530a.m40735a((float) BitmapDescriptorFactory.HUE_RED, f, this.f9509an)).with(C2530a.m40734a((float) BitmapDescriptorFactory.HUE_RED, f2, viewArr));
        this.f9474V.setDuration(250L);
        this.f9474V.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.29
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                MediaControlView.this.f9531k = 2;
                if (MediaControlView.this.f9543w) {
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.post(mediaControlView.f9501ae);
                    MediaControlView.this.f9543w = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                MediaControlView.this.f9531k = 3;
            }
        });
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.f9475W = animatorSet3;
        animatorSet3.play(ofFloat2).with(C2530a.m40735a(f, (float) BitmapDescriptorFactory.HUE_RED, this.f9509an)).with(C2530a.m40734a(dimension3, (float) BitmapDescriptorFactory.HUE_RED, viewArr));
        this.f9475W.setDuration(250L);
        this.f9475W.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.30
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                MediaControlView.this.f9531k = 0;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                MediaControlView.this.f9531k = 3;
            }
        });
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.f9497aa = animatorSet4;
        animatorSet4.play(ofFloat2).with(C2530a.m40735a(f, (float) BitmapDescriptorFactory.HUE_RED, this.f9509an)).with(C2530a.m40734a(f2, (float) BitmapDescriptorFactory.HUE_RED, viewArr));
        this.f9497aa.setDuration(250L);
        this.f9497aa.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.31
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                MediaControlView.this.f9531k = 0;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                MediaControlView.this.f9531k = 3;
            }
        });
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.f9498ab = ofFloat3;
        ofFloat3.setDuration(250L);
        this.f9498ab.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.media2.widget.MediaControlView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                MediaControlView.this.m40772a(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        this.f9498ab.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                int i2 = 4;
                MediaControlView.this.f9457E.setVisibility(4);
                ImageButton m40771a = MediaControlView.this.m40771a(C2576l.C2581e.ffwd);
                if (MediaControlView.this.f9524d == null || !MediaControlView.this.f9524d.m40646g()) {
                    i2 = 8;
                }
                m40771a.setVisibility(i2);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                MediaControlView.this.f9458F.setVisibility(0);
            }
        });
        ValueAnimator ofFloat4 = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
        this.f9499ac = ofFloat4;
        ofFloat4.setDuration(250L);
        this.f9499ac.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.media2.widget.MediaControlView.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                MediaControlView.this.m40772a(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        this.f9499ac.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                MediaControlView.this.f9458F.setVisibility(8);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                int i2 = 0;
                MediaControlView.this.f9457E.setVisibility(0);
                ImageButton m40771a = MediaControlView.this.m40771a(C2576l.C2581e.ffwd);
                if (MediaControlView.this.f9524d == null || !MediaControlView.this.f9524d.m40646g()) {
                    i2 = 8;
                }
                m40771a.setVisibility(i2);
            }
        });
        this.f9533m = 2000L;
        this.f9504ai = (AccessibilityManager) context.getSystemService("accessibility");
    }

    /* renamed from: a */
    static View m40766a(Context context, int i) {
        return ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(i, (ViewGroup) null);
    }

    /* renamed from: a */
    private static void m40765a(View view, int i, int i2) {
        view.layout(i, i2, view.getMeasuredWidth() + i, view.getMeasuredHeight() + i2);
    }

    /* renamed from: c */
    private View m40752c(int i) {
        View findViewById = findViewById(i);
        ImageButton imageButton = (ImageButton) findViewById.findViewById(C2576l.C2581e.pause);
        if (imageButton != null) {
            imageButton.setOnClickListener(this.f9485aJ);
        }
        ImageButton imageButton2 = (ImageButton) findViewById.findViewById(C2576l.C2581e.ffwd);
        if (imageButton2 != null) {
            imageButton2.setOnClickListener(this.f9487aL);
        }
        ImageButton imageButton3 = (ImageButton) findViewById.findViewById(C2576l.C2581e.rew);
        if (imageButton3 != null) {
            imageButton3.setOnClickListener(this.f9486aK);
        }
        ImageButton imageButton4 = (ImageButton) findViewById.findViewById(C2576l.C2581e.next);
        if (imageButton4 != null) {
            imageButton4.setOnClickListener(this.f9488aM);
        }
        ImageButton imageButton5 = (ImageButton) findViewById.findViewById(C2576l.C2581e.prev);
        if (imageButton5 != null) {
            imageButton5.setOnClickListener(this.f9489aN);
        }
        return findViewById;
    }

    /* renamed from: i */
    private void m40746i() {
        if (this.f9531k == 3) {
            return;
        }
        removeCallbacks(this.f9502af);
        removeCallbacks(this.f9503ag);
        post(this.f9501ae);
    }

    /* renamed from: j */
    private void m40745j() {
        if (m40749f() || this.f9531k == 3) {
            return;
        }
        removeCallbacks(this.f9502af);
        removeCallbacks(this.f9503ag);
        post(this.f9483aH);
    }

    /* renamed from: k */
    private void m40744k() {
        ArrayList arrayList = new ArrayList();
        this.f9481aF = arrayList;
        arrayList.add(this.f9523c.getString(C2576l.C2583g.MediaControlView_audio_track_text));
        this.f9481aF.add(this.f9523c.getString(C2576l.C2583g.MediaControlView_playback_speed_text));
        ArrayList arrayList2 = new ArrayList();
        this.f9463K = arrayList2;
        arrayList2.add(this.f9523c.getString(C2576l.C2583g.MediaControlView_audio_track_none_text));
        String string = this.f9523c.getString(C2576l.C2583g.MediaControlView_playback_speed_normal);
        this.f9463K.add(string);
        this.f9463K.add("");
        ArrayList arrayList3 = new ArrayList();
        this.f9482aG = arrayList3;
        arrayList3.add(Integer.valueOf(C2576l.C2580d.media2_widget_ic_audiotrack));
        this.f9482aG.add(Integer.valueOf(C2576l.C2580d.media2_widget_ic_speed));
        ArrayList arrayList4 = new ArrayList();
        this.f9468P = arrayList4;
        arrayList4.add(this.f9523c.getString(C2576l.C2583g.MediaControlView_audio_track_none_text));
        ArrayList arrayList5 = new ArrayList(Arrays.asList(this.f9523c.getStringArray(C2576l.C2577a.MediaControlView_playback_speeds)));
        this.f9469Q = arrayList5;
        arrayList5.add(3, string);
        this.f9529i = 3;
        this.f9470R = new ArrayList();
        for (int i : this.f9523c.getIntArray(C2576l.C2577a.media2_widget_speed_multiplied_by_100)) {
            this.f9470R.add(Integer.valueOf(i));
        }
        this.f9471S = -1;
    }

    /* renamed from: l */
    private boolean m40743l() {
        if (this.f9465M > 0) {
            return true;
        }
        VideoSize m40639n = this.f9524d.m40639n();
        if (m40639n.f5067b <= 0 || m40639n.f5066a <= 0) {
            return false;
        }
        Log.w("MediaControlView", "video track count is zero, but it renders video. size: ".concat(String.valueOf(m40639n)));
        return true;
    }

    /* renamed from: m */
    private boolean m40742m() {
        return !m40743l() && this.f9466N.size() > 0;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: a */
    final long m40773a() {
        m40747h();
        ?? m40649d = this.f9524d.m40649d();
        ?? r0 = this.f9532l;
        char c = m40649d;
        if (m40649d > r0) {
            c = r0;
        }
        int i = r0 > 0 ? (int) ((c * 1000) / r0) : 0;
        SeekBar seekBar = this.f9455C;
        if (seekBar != null && c != r0) {
            seekBar.setProgress(i);
            if (this.f9524d.m40648e() < 0) {
                this.f9455C.setSecondaryProgress(1000);
            } else {
                this.f9455C.setSecondaryProgress(((int) this.f9524d.m40648e()) * 10);
            }
        }
        TextView textView = this.f9520ay;
        if (textView != null) {
            textView.setText(m40768a(this.f9532l));
        }
        TextView textView2 = this.f9456D;
        if (textView2 != null) {
            textView2.setText(m40768a((long) c));
        }
        if (this.f9541u) {
            TextView textView3 = this.f9521az;
            if (textView3 != null) {
                if (c <= 5000) {
                    if (textView3.getVisibility() == 8) {
                        this.f9521az.setVisibility(0);
                    }
                    this.f9521az.setText(this.f9523c.getString(C2576l.C2583g.MediaControlView_ad_skip_wait_time, Long.valueOf(((5000 - c) / 1000) + 1)));
                } else if (textView3.getVisibility() == 0) {
                    this.f9521az.setVisibility(8);
                    m40771a(C2576l.C2581e.next).setEnabled(true);
                    m40771a(C2576l.C2581e.next).clearColorFilter();
                }
            }
            if (this.f9478aC != null) {
                long j = this.f9532l;
                this.f9478aC.setText(this.f9523c.getString(C2576l.C2583g.MediaControlView_ad_remaining_time, m40768a((long) (j - c < 0 ? (char) 0 : j - c))));
            }
        }
        return c;
    }

    /* renamed from: a */
    final ImageButton m40771a(int i) {
        ImageButton m40770a = m40770a(1, i);
        if (m40770a != null) {
            return m40770a;
        }
        throw new IllegalArgumentException("Couldn't find a view that has the given id");
    }

    /* renamed from: a */
    final ImageButton m40770a(int i, int i2) {
        View view = this.f9545y.get(i);
        if (view == null) {
            return null;
        }
        return (ImageButton) view.findViewById(i2);
    }

    /* renamed from: a */
    final String m40768a(long j) {
        long j2 = j / 1000;
        long j3 = j2 % 60;
        long j4 = (j2 / 60) % 60;
        long j5 = j2 / 3600;
        this.f9476aA.setLength(0);
        return j5 > 0 ? this.f9477aB.format("%d:%02d:%02d", Long.valueOf(j5), Long.valueOf(j4), Long.valueOf(j3)).toString() : this.f9477aB.format("%02d:%02d", Long.valueOf(j4), Long.valueOf(j3)).toString();
    }

    /* renamed from: a */
    final void m40772a(float f) {
        this.f9458F.setTranslationX(((int) (this.f9458F.getWidth() * f)) * (-1));
        float f2 = 1.0f - f;
        this.f9519ax.setAlpha(f2);
        this.f9457E.setAlpha(f2);
        this.f9518aw.setTranslationX(((int) (m40771a(C2576l.C2581e.pause).getLeft() * f)) * (-1));
        m40771a(C2576l.C2581e.ffwd).setAlpha(f2);
    }

    /* renamed from: a */
    final void m40769a(int i, String str) {
        this.f9529i = i;
        this.f9463K.set(1, str);
        this.f9462J.f9584a = this.f9469Q;
        this.f9462J.f9585b = this.f9529i;
    }

    /* renamed from: a */
    final void m40767a(long j, boolean z) {
        m40747h();
        long j2 = this.f9532l;
        this.f9455C.setProgress(j2 <= 0 ? 0 : (int) ((1000 * j) / j2));
        this.f9456D.setText(m40768a(j));
        if (this.f9534n != -1) {
            this.f9535o = j;
            return;
        }
        this.f9534n = j;
        if (!z) {
            return;
        }
        this.f9524d.m40654a(j);
    }

    /* renamed from: a */
    final void m40764a(BaseAdapter baseAdapter) {
        this.f9479aD.setAdapter((ListAdapter) baseAdapter);
        this.f9480aE.setWidth(this.f9530j == 0 ? this.f9505aj : this.f9506ak);
        int height = getHeight() - (this.f9508am * 2);
        int count = baseAdapter.getCount() * this.f9507al;
        int i = height;
        if (count < height) {
            i = count;
        }
        this.f9480aE.setHeight(i);
        this.f9542v = false;
        this.f9480aE.dismiss();
        if (i > 0) {
            this.f9480aE.showAsDropDown(this, (getWidth() - this.f9480aE.getWidth()) - this.f9508am, (-this.f9480aE.getHeight()) - this.f9508am);
            this.f9542v = true;
        }
    }

    /* renamed from: a */
    final void m40763a(MediaItem mediaItem) {
        if (mediaItem == null) {
            this.f9455C.setProgress(0);
            this.f9456D.setText(this.f9523c.getString(C2576l.C2583g.MediaControlView_time_placeholder));
            this.f9520ay.setText(this.f9523c.getString(C2576l.C2583g.MediaControlView_time_placeholder));
            return;
        }
        m40747h();
        long m40643j = this.f9524d.m40643j();
        if (m40643j <= 0) {
            return;
        }
        this.f9532l = m40643j;
        m40773a();
    }

    /* renamed from: a */
    public final void m40762a(SessionPlayer sessionPlayer) {
        C2572k c2572k = this.f9524d;
        if (c2572k != null) {
            c2572k.m40651b();
        }
        this.f9524d = new C2572k(sessionPlayer, C0790b.m44490e(getContext()), new C2520b());
        if (C0926v.m44154E(this)) {
            this.f9524d.m40656a();
        }
    }

    /* renamed from: a */
    public final void m40761a(MediaController mediaController) {
        C2572k c2572k = this.f9524d;
        if (c2572k != null) {
            c2572k.m40651b();
        }
        this.f9524d = new C2572k(mediaController, C0790b.m44490e(getContext()), new C2520b());
        if (C0926v.m44154E(this)) {
            this.f9524d.m40656a();
        }
    }

    /* renamed from: a */
    final void m40760a(C2572k c2572k, List<SessionPlayer.TrackInfo> list) {
        this.f9465M = 0;
        this.f9466N = new ArrayList();
        this.f9467O = new ArrayList();
        this.f9528h = 0;
        this.f9527g = -1;
        SessionPlayer.TrackInfo m40655a = c2572k.m40655a(2);
        SessionPlayer.TrackInfo m40655a2 = c2572k.m40655a(4);
        for (int i = 0; i < list.size(); i++) {
            int i2 = list.get(i).f5049b;
            if (i2 == 1) {
                this.f9465M++;
            } else if (i2 == 2) {
                if (list.get(i).equals(m40655a)) {
                    this.f9528h = this.f9466N.size();
                }
                this.f9466N.add(list.get(i));
            } else if (i2 == 4) {
                if (list.get(i).equals(m40655a2)) {
                    this.f9527g = this.f9467O.size();
                }
                this.f9467O.add(list.get(i));
            }
        }
        this.f9468P = new ArrayList();
        if (this.f9466N.isEmpty()) {
            this.f9468P.add(this.f9523c.getString(C2576l.C2583g.MediaControlView_audio_track_none_text));
        } else {
            int i3 = 0;
            while (i3 < this.f9466N.size()) {
                i3++;
                this.f9468P.add(this.f9523c.getString(C2576l.C2583g.MediaControlView_audio_track_number_text, Integer.valueOf(i3)));
            }
        }
        this.f9463K.set(0, this.f9468P.get(this.f9528h));
        this.f9464L = new ArrayList();
        if (!this.f9467O.isEmpty()) {
            this.f9464L.add(this.f9523c.getString(C2576l.C2583g.MediaControlView_subtitle_off_text));
            for (int i4 = 0; i4 < this.f9467O.size(); i4++) {
                SessionPlayer.TrackInfo trackInfo = this.f9467O.get(i4);
                String string = trackInfo.f5050c != null ? trackInfo.f5050c.getString("language") : null;
                String str = string;
                if (string == null) {
                    str = "und";
                }
                String iSO3Language = new Locale(str).getISO3Language();
                this.f9464L.add(iSO3Language.equals("und") ? this.f9523c.getString(C2576l.C2583g.MediaControlView_subtitle_track_number_text, Integer.valueOf(i4 + 1)) : this.f9523c.getString(C2576l.C2583g.MediaControlView_subtitle_track_number_and_lang_text, Integer.valueOf(i4 + 1), iSO3Language));
            }
        }
        m40750e();
    }

    /* renamed from: a */
    final void m40759a(Runnable runnable, long j) {
        if (j != -1) {
            postDelayed(runnable, j);
        }
    }

    @Override // androidx.media2.widget.AbstractC2569i
    /* renamed from: a */
    public final void mo40661a(boolean z) {
        super.mo40661a(z);
        if (this.f9524d == null) {
            return;
        }
        if (!z) {
            removeCallbacks(this.f9500ad);
            return;
        }
        removeCallbacks(this.f9500ad);
        post(this.f9500ad);
    }

    /* renamed from: b */
    final void m40757b(int i) {
        String str;
        Drawable drawable;
        ImageButton m40770a = m40770a(this.f9530j, C2576l.C2581e.pause);
        if (m40770a == null) {
            return;
        }
        if (i == 0) {
            drawable = C0790b.m44502a(getContext(), C2576l.C2580d.media2_widget_ic_pause_circle_filled);
            str = this.f9523c.getString(C2576l.C2583g.mcv2_pause_button_desc);
        } else if (i == 1) {
            drawable = C0790b.m44502a(getContext(), C2576l.C2580d.media2_widget_ic_play_circle_filled);
            str = this.f9523c.getString(C2576l.C2583g.mcv2_play_button_desc);
        } else if (i != 2) {
            throw new IllegalArgumentException("unknown type ".concat(String.valueOf(i)));
        } else {
            drawable = C0790b.m44502a(getContext(), C2576l.C2580d.media2_widget_ic_replay_circle_filled);
            str = this.f9523c.getString(C2576l.C2583g.mcv2_replay_button_desc);
        }
        m40770a.setImageDrawable(drawable);
        m40770a.setContentDescription(str);
    }

    /* renamed from: b */
    final void m40756b(int i, int i2) {
        int size = this.f9545y.size();
        for (int i3 = 0; i3 < size; i3++) {
            int keyAt = this.f9545y.keyAt(i3);
            ImageButton m40770a = m40770a(keyAt, C2576l.C2581e.prev);
            if (m40770a != null) {
                if (i >= 0) {
                    m40770a.setAlpha(1.0f);
                    m40770a.setEnabled(true);
                } else {
                    m40770a.setAlpha(0.5f);
                    m40770a.setEnabled(false);
                }
            }
            ImageButton m40770a2 = m40770a(keyAt, C2576l.C2581e.next);
            if (m40770a2 != null) {
                if (i2 >= 0) {
                    m40770a2.setAlpha(1.0f);
                    m40770a2.setEnabled(true);
                } else {
                    m40770a2.setAlpha(0.5f);
                    m40770a2.setEnabled(false);
                }
            }
        }
    }

    /* renamed from: b */
    final void m40755b(MediaItem mediaItem) {
        if (mediaItem == null) {
            this.f9510ao.setText((CharSequence) null);
        } else if (!m40742m()) {
            CharSequence m40642k = this.f9524d.m40642k();
            String str = m40642k;
            if (m40642k == null) {
                str = this.f9523c.getString(C2576l.C2583g.mcv2_non_music_title_unknown_text);
            }
            this.f9510ao.setText(str.toString());
        } else {
            CharSequence m40642k2 = this.f9524d.m40642k();
            String str2 = m40642k2;
            if (m40642k2 == null) {
                str2 = this.f9523c.getString(C2576l.C2583g.mcv2_music_title_unknown_text);
            }
            C2572k c2572k = this.f9524d;
            String str3 = null;
            if (c2572k.f9773f != null) {
                str3 = null;
                if (c2572k.f9773f.m43197a(MediaMetadataCompat.METADATA_KEY_ARTIST)) {
                    str3 = c2572k.f9773f.m43196b(MediaMetadataCompat.METADATA_KEY_ARTIST);
                }
            }
            String str4 = str3;
            if (str3 == null) {
                str4 = this.f9523c.getString(C2576l.C2583g.mcv2_music_artist_unknown_text);
            }
            this.f9510ao.setText(str2.toString() + " - " + str4.toString());
        }
    }

    /* renamed from: b */
    final void m40754b(boolean z) {
        ImageButton m40770a = m40770a(this.f9530j, C2576l.C2581e.ffwd);
        if (z) {
            this.f9538r = true;
            m40757b(2);
            if (m40770a == null) {
                return;
            }
            m40770a.setAlpha(0.5f);
            m40770a.setEnabled(false);
            return;
        }
        this.f9538r = false;
        C2572k c2572k = this.f9524d;
        if (c2572k == null || !c2572k.m40650c()) {
            m40757b(1);
        } else {
            m40757b(0);
        }
        if (m40770a == null) {
            return;
        }
        m40770a.setAlpha(1.0f);
        m40770a.setEnabled(true);
    }

    /* renamed from: b */
    final boolean m40758b() {
        String scheme;
        m40747h();
        MediaItem m40641l = this.f9524d.m40641l();
        if ((m40641l instanceof UriMediaItem) && (scheme = ((UriMediaItem) m40641l).f5060a.getScheme()) != null) {
            return scheme.equals("http") || scheme.equals(Constants.HTTPS) || scheme.equals("rtsp");
        }
        return false;
    }

    /* renamed from: c */
    final void m40753c() {
        this.f9542v = true;
        this.f9480aE.dismiss();
    }

    /* renamed from: d */
    final void m40751d() {
        removeCallbacks(this.f9502af);
        removeCallbacks(this.f9503ag);
        m40759a(this.f9502af, this.f9533m);
    }

    /* renamed from: e */
    final void m40750e() {
        C2572k c2572k = this.f9524d;
        if (!(c2572k.f9772e != null && c2572k.f9772e.m41130a(11001) && c2572k.f9772e.m41130a(11002)) || (this.f9465M == 0 && this.f9466N.isEmpty() && this.f9467O.isEmpty())) {
            this.f9459G.setVisibility(8);
            this.f9459G.setEnabled(false);
        } else if (!this.f9467O.isEmpty()) {
            this.f9459G.setVisibility(0);
            this.f9459G.setAlpha(1.0f);
            this.f9459G.setEnabled(true);
        } else if (m40742m()) {
            this.f9459G.setVisibility(8);
            this.f9459G.setEnabled(false);
        } else {
            this.f9459G.setVisibility(0);
            this.f9459G.setAlpha(0.5f);
            this.f9459G.setEnabled(false);
        }
    }

    /* renamed from: f */
    final boolean m40749f() {
        return (m40742m() && this.f9530j == 1) || this.f9504ai.isTouchExplorationEnabled() || this.f9524d.m40647f() == 3 || this.f9524d.m40647f() == 0;
    }

    /* renamed from: g */
    final long m40748g() {
        m40747h();
        long j = this.f9535o;
        if (j != -1) {
            return j;
        }
        long j2 = this.f9534n;
        return j2 != -1 ? j2 : this.f9524d.m40649d();
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.media2.widget.MediaControlView";
    }

    /* renamed from: h */
    final void m40747h() {
        if (this.f9524d != null) {
            return;
        }
        throw new IllegalStateException("mPlayer must not be null");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C2572k c2572k = this.f9524d;
        if (c2572k != null) {
            c2572k.m40656a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C2572k c2572k = this.f9524d;
        if (c2572k != null) {
            c2572k.m40651b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = ((i3 - i) - getPaddingLeft()) - getPaddingRight();
        int paddingTop = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        int i5 = (this.f9541u || ((this.f9517av.getMeasuredWidth() + this.f9519ax.getMeasuredWidth()) + this.f9457E.getMeasuredWidth() <= paddingLeft && (this.f9509an.getMeasuredHeight() + this.f9515at.getMeasuredHeight()) + this.f9516au.getMeasuredHeight() <= paddingTop)) ? 1 : (this.f9519ax.getMeasuredWidth() + this.f9457E.getMeasuredWidth() > paddingLeft || ((this.f9509an.getMeasuredHeight() + this.f9513ar.getMeasuredHeight()) + this.f9515at.getMeasuredHeight()) + this.f9516au.getMeasuredHeight() > paddingTop) ? 2 : 0;
        if (this.f9530j != i5) {
            this.f9530j = i5;
            if (i5 != 2) {
                this.f9455C.getThumb().setLevel(10000);
            } else {
                this.f9455C.getThumb().setLevel(0);
            }
            m40754b(this.f9538r);
        }
        this.f9509an.setVisibility(i5 != 2 ? 0 : 4);
        this.f9512aq.setVisibility(i5 != 1 ? 0 : 4);
        this.f9513ar.setVisibility(i5 == 0 ? 0 : 4);
        this.f9514as.setVisibility(i5 == 2 ? 0 : 4);
        this.f9516au.setVisibility(i5 != 2 ? 0 : 4);
        this.f9517av.setVisibility(i5 == 1 ? 0 : 4);
        this.f9519ax.setVisibility(i5 != 2 ? 0 : 4);
        this.f9457E.setVisibility(i5 != 2 ? 0 : 4);
        this.f9454B.setVisibility(i5 == 2 ? 0 : 4);
        int paddingLeft2 = getPaddingLeft();
        int i6 = paddingLeft + paddingLeft2;
        int paddingTop2 = getPaddingTop();
        int i7 = paddingTop + paddingTop2;
        m40765a(this.f9509an, paddingLeft2, paddingTop2);
        m40765a(this.f9546z, paddingLeft2, paddingTop2);
        View view = this.f9516au;
        m40765a(view, paddingLeft2, i7 - view.getMeasuredHeight());
        ViewGroup viewGroup = this.f9517av;
        m40765a(viewGroup, paddingLeft2, i7 - viewGroup.getMeasuredHeight());
        m40765a(this.f9519ax, i5 == 1 ? (i6 - this.f9457E.getMeasuredWidth()) - this.f9519ax.getMeasuredWidth() : paddingLeft2, i7 - this.f9519ax.getMeasuredHeight());
        ViewGroup viewGroup2 = this.f9457E;
        m40765a(viewGroup2, i6 - viewGroup2.getMeasuredWidth(), i7 - this.f9457E.getMeasuredHeight());
        ViewGroup viewGroup3 = this.f9458F;
        m40765a(viewGroup3, i6, i7 - viewGroup3.getMeasuredHeight());
        ViewGroup viewGroup4 = this.f9515at;
        m40765a(viewGroup4, paddingLeft2, i5 == 2 ? i7 - viewGroup4.getMeasuredHeight() : (i7 - viewGroup4.getMeasuredHeight()) - this.f9523c.getDimensionPixelSize(C2576l.C2579c.media2_widget_custom_progress_margin_bottom));
        ViewGroup viewGroup5 = this.f9453A;
        m40765a(viewGroup5, paddingLeft2, i7 - viewGroup5.getMeasuredHeight());
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int resolveSize = resolveSize(getSuggestedMinimumWidth(), i);
        int resolveSize2 = resolveSize(getSuggestedMinimumHeight(), i2);
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
            i4 = i3 | PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
            i5 = 0;
        }
        int childCount = getChildCount();
        int i6 = i4;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                childAt.measure(layoutParams.width == -1 ? View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824) : layoutParams.width == -2 ? View.MeasureSpec.makeMeasureSpec(paddingLeft, 0) : View.MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824), layoutParams.height == -1 ? View.MeasureSpec.makeMeasureSpec(i5, 1073741824) : layoutParams.height == -2 ? View.MeasureSpec.makeMeasureSpec(i5, 0) : View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824));
                i6 |= childAt.getMeasuredState();
            }
        }
        setMeasuredDimension(resolveSizeAndState(resolveSize, i, i6), resolveSizeAndState(resolveSize2, i2, i6 << 16));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f9524d == null) {
            return super.onTouchEvent(motionEvent);
        }
        if (motionEvent.getAction() != 1) {
            return true;
        }
        if (m40742m() && this.f9530j == 1) {
            return true;
        }
        if (this.f9531k == 0) {
            m40745j();
            return true;
        }
        m40746i();
        return true;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (this.f9524d == null) {
            return super.onTrackballEvent(motionEvent);
        }
        if (motionEvent.getAction() != 1) {
            return true;
        }
        if (m40742m() && this.f9530j == 1) {
            return true;
        }
        if (this.f9531k == 0) {
            m40745j();
            return true;
        }
        m40746i();
        return true;
    }

    @Override // androidx.media2.widget.AbstractC2569i, android.view.View
    public /* bridge */ /* synthetic */ void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
    }

    public void setMediaController(MediaController mediaController) {
        Objects.requireNonNull(mediaController, "controller must not be null");
        if (!this.f9522b) {
            m40761a(mediaController);
            return;
        }
        throw new IllegalStateException("It's attached to VideoView. Use VideoView's method.");
    }

    public void setOnFullScreenListener(AbstractC2519a abstractC2519a) {
        if (abstractC2519a == null) {
            this.f9525e = null;
            this.f9460H.setVisibility(8);
            return;
        }
        this.f9525e = abstractC2519a;
        this.f9460H.setVisibility(0);
    }

    public void setPlayer(SessionPlayer sessionPlayer) {
        Objects.requireNonNull(sessionPlayer, "player must not be null");
        if (!this.f9522b) {
            m40762a(sessionPlayer);
            return;
        }
        throw new IllegalStateException("It's attached to VideoView. Use VideoView's method.");
    }
}
