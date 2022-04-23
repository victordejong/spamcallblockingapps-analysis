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
import android.support.v4.media.MediaMetadataCompat;
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
import androidx.appcompat.app.c;
import androidx.core.view.v;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.UriMediaItem;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.widget.k;
import androidx.media2.widget.l;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.Constants;
import io.objectbox.model.PropertyFlags;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Formatter;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView.class */
public class MediaControlView extends i {

    /* renamed from: a  reason: collision with root package name */
    static final boolean f5104a = Log.isLoggable("MediaControlView", 3);
    ViewGroup A;
    ImageButton B;
    SeekBar C;
    TextView D;
    ViewGroup E;
    ViewGroup F;
    ImageButton G;
    ImageButton H;
    c I;
    d J;
    List<String> K;
    List<String> L;
    int M;
    List<SessionPlayer.TrackInfo> N;
    List<SessionPlayer.TrackInfo> O;
    List<String> P;
    List<String> Q;
    List<Integer> R;
    int S;
    AnimatorSet T;
    AnimatorSet U;
    AnimatorSet V;
    AnimatorSet W;
    private StringBuilder aA;
    private Formatter aB;
    private TextView aC;
    private ListView aD;
    private PopupWindow aE;
    private List<String> aF;
    private List<Integer> aG;
    private final Runnable aH;
    private final SeekBar.OnSeekBarChangeListener aI;
    private final View.OnClickListener aJ;
    private final View.OnClickListener aK;
    private final View.OnClickListener aL;
    private final View.OnClickListener aM;
    private final View.OnClickListener aN;
    private final View.OnClickListener aO;
    private final View.OnClickListener aP;
    private final View.OnClickListener aQ;
    private final View.OnClickListener aR;
    private final View.OnClickListener aS;
    private final AdapterView.OnItemClickListener aT;
    private PopupWindow.OnDismissListener aU;
    AnimatorSet aa;
    ValueAnimator ab;
    ValueAnimator ac;
    final Runnable ad;
    final Runnable ae;
    Runnable af;
    final Runnable ag;
    private AccessibilityManager ai;
    private int aj;
    private int ak;
    private int al;
    private int am;
    private View an;
    private TextView ao;
    private View ap;
    private View aq;
    private View ar;
    private View as;
    private ViewGroup at;
    private View au;
    private ViewGroup av;
    private View aw;
    private ViewGroup ax;
    private TextView ay;
    private TextView az;

    /* renamed from: b  reason: collision with root package name */
    boolean f5105b;

    /* renamed from: c  reason: collision with root package name */
    Resources f5106c;

    /* renamed from: d  reason: collision with root package name */
    k f5107d;
    a e;
    int f;
    int g;
    int h;
    int i;
    int j;
    int k;
    long l;
    long m;
    long n;
    long o;
    boolean p;
    boolean q;
    boolean r;
    boolean s;
    boolean t;
    boolean u;
    boolean v;
    boolean w;
    boolean x;
    SparseArray<View> y;
    ViewGroup z;

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$a.class */
    public interface a {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$b.class */
    public final class b extends k.b {
        b() {
        }

        @Override // androidx.media2.widget.k.b
        public final void a(k kVar) {
            if (kVar == MediaControlView.this.f5107d) {
                boolean z = MediaControlView.f5104a;
                MediaControlView.this.b(true);
                MediaControlView.this.C.setProgress(1000);
                TextView textView = MediaControlView.this.D;
                MediaControlView mediaControlView = MediaControlView.this;
                textView.setText(mediaControlView.a(mediaControlView.l));
            }
        }

        @Override // androidx.media2.widget.k.b
        public final void a(k kVar, float f) {
            if (kVar == MediaControlView.this.f5107d) {
                int round = Math.round(f * 100.0f);
                if (MediaControlView.this.S != -1) {
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.R.remove(mediaControlView.S);
                    mediaControlView.Q.remove(mediaControlView.S);
                    mediaControlView.S = -1;
                }
                int i = 0;
                if (MediaControlView.this.R.contains(Integer.valueOf(round))) {
                    for (int i2 = 0; i2 < MediaControlView.this.R.size(); i2++) {
                        if (round == MediaControlView.this.R.get(i2).intValue()) {
                            MediaControlView mediaControlView2 = MediaControlView.this;
                            mediaControlView2.a(i2, mediaControlView2.Q.get(i2));
                            return;
                        }
                    }
                    return;
                }
                String string = MediaControlView.this.f5106c.getString(l.g.MediaControlView_custom_playback_speed_text, Float.valueOf(round / 100.0f));
                while (true) {
                    if (i >= MediaControlView.this.R.size()) {
                        break;
                    } else if (round < MediaControlView.this.R.get(i).intValue()) {
                        MediaControlView.this.R.add(i, Integer.valueOf(round));
                        MediaControlView.this.Q.add(i, string);
                        MediaControlView.this.a(i, string);
                        break;
                    } else {
                        if (i == MediaControlView.this.R.size() - 1 && round > MediaControlView.this.R.get(i).intValue()) {
                            MediaControlView.this.R.add(Integer.valueOf(round));
                            MediaControlView.this.Q.add(string);
                            MediaControlView.this.a(i + 1, string);
                        }
                        i++;
                    }
                }
                MediaControlView mediaControlView3 = MediaControlView.this;
                mediaControlView3.S = mediaControlView3.i;
            }
        }

        @Override // androidx.media2.widget.k.b
        public final void a(k kVar, int i) {
            if (kVar == MediaControlView.this.f5107d) {
                if (MediaControlView.f5104a) {
                    StringBuilder sb = new StringBuilder("onPlayerStateChanged(state: ");
                    sb.append(i);
                    sb.append(")");
                }
                MediaControlView.this.a(kVar.l());
                if (i == 1) {
                    MediaControlView.this.b(1);
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.removeCallbacks(mediaControlView.ad);
                    MediaControlView mediaControlView2 = MediaControlView.this;
                    mediaControlView2.removeCallbacks(mediaControlView2.af);
                    MediaControlView mediaControlView3 = MediaControlView.this;
                    mediaControlView3.removeCallbacks(mediaControlView3.ag);
                    MediaControlView mediaControlView4 = MediaControlView.this;
                    mediaControlView4.post(mediaControlView4.ae);
                } else if (i == 2) {
                    MediaControlView mediaControlView5 = MediaControlView.this;
                    mediaControlView5.removeCallbacks(mediaControlView5.ad);
                    MediaControlView mediaControlView6 = MediaControlView.this;
                    mediaControlView6.post(mediaControlView6.ad);
                    MediaControlView.this.d();
                    MediaControlView.this.b(false);
                } else if (i == 3) {
                    MediaControlView.this.b(1);
                    MediaControlView mediaControlView7 = MediaControlView.this;
                    mediaControlView7.removeCallbacks(mediaControlView7.ad);
                    if (MediaControlView.this.getWindowToken() != null) {
                        c.a aVar = new c.a(MediaControlView.this.getContext());
                        int i2 = l.g.mcv2_playback_error_text;
                        aVar.f649a.h = aVar.f649a.f587a.getText(i2);
                        c.a positiveButton = aVar.setPositiveButton(l.g.mcv2_error_dialog_button, new DialogInterface.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.b.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i3) {
                                dialogInterface.dismiss();
                            }
                        });
                        positiveButton.f649a.r = true;
                        positiveButton.create().show();
                    }
                }
            }
        }

        @Override // androidx.media2.widget.k.b
        public final void a(k kVar, long j) {
            if (kVar == MediaControlView.this.f5107d) {
                boolean z = MediaControlView.f5104a;
                MediaControlView.this.C.setProgress(MediaControlView.this.l <= 0 ? 0 : (int) ((1000 * j) / MediaControlView.this.l));
                MediaControlView.this.D.setText(MediaControlView.this.a(j));
                if (MediaControlView.this.o != -1) {
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.n = mediaControlView.o;
                    kVar.a(MediaControlView.this.o);
                    MediaControlView.this.o = -1L;
                    return;
                }
                MediaControlView.this.n = -1L;
                if (!MediaControlView.this.p) {
                    MediaControlView mediaControlView2 = MediaControlView.this;
                    mediaControlView2.removeCallbacks(mediaControlView2.ad);
                    MediaControlView mediaControlView3 = MediaControlView.this;
                    mediaControlView3.removeCallbacks(mediaControlView3.af);
                    MediaControlView mediaControlView4 = MediaControlView.this;
                    mediaControlView4.post(mediaControlView4.ad);
                    MediaControlView mediaControlView5 = MediaControlView.this;
                    mediaControlView5.a(mediaControlView5.af, MediaControlView.this.m);
                }
            }
        }

        @Override // androidx.media2.widget.k.b
        public final void a(k kVar, MediaItem mediaItem) {
            if (kVar == MediaControlView.this.f5107d) {
                if (MediaControlView.f5104a) {
                    new StringBuilder("onCurrentMediaItemChanged(): ").append(mediaItem);
                }
                MediaControlView.this.a(mediaItem);
                MediaControlView.this.b(mediaItem);
                MediaControlView.this.b(kVar.p(), kVar.q());
            }
        }

        @Override // androidx.media2.widget.k.b
        final void a(k kVar, SessionPlayer.TrackInfo trackInfo) {
            if (kVar == MediaControlView.this.f5107d) {
                if (MediaControlView.f5104a) {
                    new StringBuilder("onTrackSelected(): ").append(trackInfo);
                }
                if (trackInfo.f2755b == 4) {
                    for (int i = 0; i < MediaControlView.this.O.size(); i++) {
                        if (MediaControlView.this.O.get(i).equals(trackInfo)) {
                            MediaControlView.this.g = i;
                            if (MediaControlView.this.f == 2) {
                                MediaControlView.this.J.f5146b = MediaControlView.this.g + 1;
                            }
                            MediaControlView.this.G.setImageDrawable(androidx.core.content.b.a(MediaControlView.this.getContext(), l.d.media2_widget_ic_subtitle_on));
                            MediaControlView.this.G.setContentDescription(MediaControlView.this.f5106c.getString(l.g.mcv2_cc_is_on));
                            return;
                        }
                    }
                } else if (trackInfo.f2755b == 2) {
                    for (int i2 = 0; i2 < MediaControlView.this.N.size(); i2++) {
                        if (MediaControlView.this.N.get(i2).equals(trackInfo)) {
                            MediaControlView.this.h = i2;
                            List<String> list = MediaControlView.this.K;
                            d dVar = MediaControlView.this.J;
                            int i3 = MediaControlView.this.h;
                            list.set(0, (dVar.f5145a == null || i3 >= dVar.f5145a.size()) ? "" : dVar.f5145a.get(i3));
                            return;
                        }
                    }
                }
            }
        }

        @Override // androidx.media2.widget.k.b
        final void a(k kVar, VideoSize videoSize) {
            List<SessionPlayer.TrackInfo> o;
            if (kVar == MediaControlView.this.f5107d) {
                if (MediaControlView.f5104a) {
                    new StringBuilder("onVideoSizeChanged(): ").append(videoSize);
                }
                if (MediaControlView.this.M == 0 && videoSize.f2771b > 0 && videoSize.f2770a > 0 && (o = kVar.o()) != null) {
                    MediaControlView.this.a(kVar, o);
                }
            }
        }

        @Override // androidx.media2.widget.k.b
        final void a(k kVar, List<SessionPlayer.TrackInfo> list) {
            if (kVar == MediaControlView.this.f5107d) {
                if (MediaControlView.f5104a) {
                    new StringBuilder("onTrackInfoChanged(): ").append(list);
                }
                MediaControlView.this.a(kVar, list);
                MediaControlView.this.a(kVar.l());
                MediaControlView.this.b(kVar.l());
            }
        }

        @Override // androidx.media2.widget.k.b
        final void a(k kVar, List<MediaItem> list, MediaMetadata mediaMetadata) {
            if (kVar == MediaControlView.this.f5107d) {
                if (MediaControlView.f5104a) {
                    StringBuilder sb = new StringBuilder("onPlaylistChanged(): list: ");
                    sb.append(list);
                    sb.append(", metadata: ");
                    sb.append(mediaMetadata);
                }
                MediaControlView.this.b(kVar.p(), kVar.q());
            }
        }

        @Override // androidx.media2.widget.k.b
        public final void b(k kVar) {
            if (kVar == MediaControlView.this.f5107d) {
                MediaControlView mediaControlView = MediaControlView.this;
                mediaControlView.h();
                k kVar2 = mediaControlView.f5107d;
                boolean z = true;
                boolean z2 = kVar2.e != null && kVar2.e.a(10001);
                k kVar3 = mediaControlView.f5107d;
                boolean z3 = kVar3.e != null && kVar3.e.a(40001);
                boolean g = mediaControlView.f5107d.g();
                k kVar4 = mediaControlView.f5107d;
                boolean z4 = kVar4.e != null && kVar4.e.a(10008);
                k kVar5 = mediaControlView.f5107d;
                boolean z5 = kVar5.e != null && kVar5.e.a(10009);
                k kVar6 = mediaControlView.f5107d;
                if (kVar6.e == null || !kVar6.e.a(10003)) {
                    z = false;
                }
                int size = mediaControlView.y.size();
                for (int i = 0; i < size; i++) {
                    int keyAt = mediaControlView.y.keyAt(i);
                    ImageButton a2 = mediaControlView.a(keyAt, l.e.pause);
                    int i2 = 8;
                    if (a2 != null) {
                        a2.setVisibility(z2 ? 0 : 8);
                    }
                    ImageButton a3 = mediaControlView.a(keyAt, l.e.rew);
                    if (a3 != null) {
                        a3.setVisibility(z3 ? 0 : 8);
                    }
                    ImageButton a4 = mediaControlView.a(keyAt, l.e.ffwd);
                    if (a4 != null) {
                        a4.setVisibility(g ? 0 : 8);
                    }
                    ImageButton a5 = mediaControlView.a(keyAt, l.e.prev);
                    if (a5 != null) {
                        a5.setVisibility(z4 ? 0 : 8);
                    }
                    ImageButton a6 = mediaControlView.a(keyAt, l.e.next);
                    if (a6 != null) {
                        if (z5) {
                            i2 = 0;
                        }
                        a6.setVisibility(i2);
                    }
                }
                mediaControlView.t = z;
                mediaControlView.C.setEnabled(z);
                mediaControlView.e();
            }
        }

        @Override // androidx.media2.widget.k.b
        final void b(k kVar, SessionPlayer.TrackInfo trackInfo) {
            if (kVar == MediaControlView.this.f5107d) {
                if (MediaControlView.f5104a) {
                    new StringBuilder("onTrackDeselected(): ").append(trackInfo);
                }
                if (trackInfo.f2755b == 4) {
                    for (int i = 0; i < MediaControlView.this.O.size(); i++) {
                        if (MediaControlView.this.O.get(i).equals(trackInfo)) {
                            MediaControlView.this.g = -1;
                            if (MediaControlView.this.f == 2) {
                                MediaControlView.this.J.f5146b = MediaControlView.this.g + 1;
                            }
                            MediaControlView.this.G.setImageDrawable(androidx.core.content.b.a(MediaControlView.this.getContext(), l.d.media2_widget_ic_subtitle_off));
                            MediaControlView.this.G.setContentDescription(MediaControlView.this.f5106c.getString(l.g.mcv2_cc_is_off));
                            return;
                        }
                    }
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$c.class */
    final class c extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        List<String> f5141a;

        /* renamed from: c  reason: collision with root package name */
        private List<Integer> f5143c;

        /* renamed from: d  reason: collision with root package name */
        private List<String> f5144d;

        c(List<String> list, List<String> list2, List<Integer> list3) {
            this.f5144d = list;
            this.f5141a = list2;
            this.f5143c = list3;
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            List<String> list = this.f5144d;
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
            View a2 = MediaControlView.a(MediaControlView.this.getContext(), l.f.media2_widget_settings_list_item);
            TextView textView = (TextView) a2.findViewById(l.e.main_text);
            TextView textView2 = (TextView) a2.findViewById(l.e.sub_text);
            ImageView imageView = (ImageView) a2.findViewById(l.e.icon);
            textView.setText(this.f5144d.get(i));
            List<String> list = this.f5141a;
            if (list == null || "".equals(list.get(i))) {
                textView2.setVisibility(8);
            } else {
                textView2.setText(this.f5141a.get(i));
            }
            List<Integer> list2 = this.f5143c;
            if (list2 == null || list2.get(i).intValue() == -1) {
                imageView.setVisibility(8);
            } else {
                imageView.setImageDrawable(androidx.core.content.b.a(MediaControlView.this.getContext(), this.f5143c.get(i).intValue()));
            }
            return a2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$d.class */
    public final class d extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        List<String> f5145a;

        /* renamed from: b  reason: collision with root package name */
        int f5146b;

        d(List<String> list, int i) {
            this.f5145a = list;
            this.f5146b = i;
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            List<String> list = this.f5145a;
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
            View a2 = MediaControlView.a(MediaControlView.this.getContext(), l.f.media2_widget_sub_settings_list_item);
            TextView textView = (TextView) a2.findViewById(l.e.text);
            ImageView imageView = (ImageView) a2.findViewById(l.e.check);
            textView.setText(this.f5145a.get(i));
            if (i != this.f5146b) {
                imageView.setVisibility(4);
            }
            return a2;
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
        this.f5105b = false;
        this.j = -1;
        this.y = new SparseArray<>();
        this.N = new ArrayList();
        this.O = new ArrayList();
        this.ad = new Runnable() { // from class: androidx.media2.widget.MediaControlView.6
            @Override // java.lang.Runnable
            public final void run() {
                boolean z = MediaControlView.this.getVisibility() == 0;
                if (!MediaControlView.this.p && z && MediaControlView.this.f5107d != null && MediaControlView.this.f5107d.c()) {
                    long a2 = MediaControlView.this.a();
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.a(mediaControlView.ad, 1000 - (a2 % 1000));
                }
            }
        };
        this.ae = new Runnable() { // from class: androidx.media2.widget.MediaControlView.7
            @Override // java.lang.Runnable
            public final void run() {
                int i2 = MediaControlView.this.k;
                if (i2 == 1) {
                    MediaControlView.this.W.start();
                } else if (i2 == 2) {
                    MediaControlView.this.aa.start();
                } else if (i2 == 3) {
                    MediaControlView.this.w = true;
                }
                if (MediaControlView.this.f5107d.c()) {
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.a(mediaControlView.af, MediaControlView.this.m);
                }
            }
        };
        this.aH = new Runnable() { // from class: androidx.media2.widget.MediaControlView.8
            @Override // java.lang.Runnable
            public final void run() {
                if (!MediaControlView.this.f()) {
                    MediaControlView.this.V.start();
                }
            }
        };
        this.af = new Runnable() { // from class: androidx.media2.widget.MediaControlView.9
            @Override // java.lang.Runnable
            public final void run() {
                if (MediaControlView.this.f5107d.c() && !MediaControlView.this.f()) {
                    MediaControlView.this.T.start();
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.a(mediaControlView.ag, MediaControlView.this.m);
                }
            }
        };
        this.ag = new Runnable() { // from class: androidx.media2.widget.MediaControlView.10
            @Override // java.lang.Runnable
            public final void run() {
                if (MediaControlView.this.f5107d.c() && !MediaControlView.this.f()) {
                    MediaControlView.this.U.start();
                }
            }
        };
        SeekBar.OnSeekBarChangeListener onSeekBarChangeListener = new SeekBar.OnSeekBarChangeListener() { // from class: androidx.media2.widget.MediaControlView.11
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onProgressChanged(SeekBar seekBar, int i2, boolean z) {
                if (MediaControlView.this.f5107d != null && MediaControlView.this.t && z && MediaControlView.this.p && MediaControlView.this.l > 0) {
                    MediaControlView.this.a((MediaControlView.this.l * i2) / 1000, !MediaControlView.this.b());
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStartTrackingTouch(SeekBar seekBar) {
                if (MediaControlView.this.f5107d != null && MediaControlView.this.t) {
                    MediaControlView.this.p = true;
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.removeCallbacks(mediaControlView.ad);
                    MediaControlView mediaControlView2 = MediaControlView.this;
                    mediaControlView2.removeCallbacks(mediaControlView2.af);
                    MediaControlView mediaControlView3 = MediaControlView.this;
                    mediaControlView3.removeCallbacks(mediaControlView3.ag);
                    if (MediaControlView.this.r) {
                        MediaControlView.this.b(false);
                    }
                    if (MediaControlView.this.b() && MediaControlView.this.f5107d.c()) {
                        MediaControlView.this.x = true;
                        MediaControlView.this.f5107d.h();
                    }
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStopTrackingTouch(SeekBar seekBar) {
                if (MediaControlView.this.f5107d != null && MediaControlView.this.t) {
                    MediaControlView.this.p = false;
                    long g = MediaControlView.this.g();
                    if (MediaControlView.this.b()) {
                        MediaControlView.this.n = -1L;
                        MediaControlView.this.o = -1L;
                    }
                    MediaControlView.this.a(g, true);
                    if (MediaControlView.this.x) {
                        MediaControlView.this.x = false;
                        MediaControlView.this.f5107d.i();
                    }
                }
            }
        };
        this.aI = onSeekBarChangeListener;
        this.aJ = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaControlView.this.f5107d != null) {
                    MediaControlView.this.d();
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.h();
                    if (mediaControlView.f5107d.c()) {
                        mediaControlView.f5107d.h();
                        mediaControlView.b(1);
                        return;
                    }
                    if (mediaControlView.r) {
                        mediaControlView.f5107d.a(0L);
                    }
                    mediaControlView.f5107d.i();
                    mediaControlView.b(0);
                }
            }
        };
        this.aK = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaControlView.this.f5107d != null) {
                    MediaControlView.this.d();
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.removeCallbacks(mediaControlView.ad);
                    boolean z = MediaControlView.this.r && MediaControlView.this.l != 0;
                    MediaControlView mediaControlView2 = MediaControlView.this;
                    MediaControlView.this.a(Math.max((z ? mediaControlView2.l : mediaControlView2.g()) - 10000, 0L), true);
                    if (z) {
                        MediaControlView.this.b(false);
                    }
                }
            }
        };
        this.aL = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaControlView.this.f5107d != null) {
                    MediaControlView.this.d();
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.removeCallbacks(mediaControlView.ad);
                    long g = MediaControlView.this.g();
                    MediaControlView mediaControlView2 = MediaControlView.this;
                    long j = g + 30000;
                    mediaControlView2.a(Math.min(j, mediaControlView2.l), true);
                    if (j >= MediaControlView.this.l && !MediaControlView.this.f5107d.c()) {
                        MediaControlView.this.b(true);
                    }
                }
            }
        };
        this.aM = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.16
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaControlView.this.f5107d != null) {
                    MediaControlView.this.d();
                    k kVar = MediaControlView.this.f5107d;
                    if (kVar.f5254a != null) {
                        MediaController mediaController = kVar.f5254a;
                        if (mediaController.b()) {
                            mediaController.a().m();
                        } else {
                            MediaController.n();
                        }
                    } else if (kVar.f5255b != null) {
                        kVar.f5255b.m();
                    }
                }
            }
        };
        this.aN = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaControlView.this.f5107d != null) {
                    MediaControlView.this.d();
                    k kVar = MediaControlView.this.f5107d;
                    if (kVar.f5254a != null) {
                        MediaController mediaController = kVar.f5254a;
                        if (mediaController.b()) {
                            mediaController.a().l();
                        } else {
                            MediaController.n();
                        }
                    } else if (kVar.f5255b != null) {
                        kVar.f5255b.l();
                    }
                }
            }
        };
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaControlView.this.f5107d != null) {
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.removeCallbacks(mediaControlView.af);
                    MediaControlView mediaControlView2 = MediaControlView.this;
                    mediaControlView2.removeCallbacks(mediaControlView2.ag);
                    MediaControlView.this.f = 2;
                    MediaControlView.this.J.f5145a = MediaControlView.this.L;
                    MediaControlView.this.J.f5146b = MediaControlView.this.g + 1;
                    MediaControlView mediaControlView3 = MediaControlView.this;
                    mediaControlView3.a(mediaControlView3.J);
                }
            }
        };
        this.aO = onClickListener;
        View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.19
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaControlView.this.e != null) {
                    boolean z = !MediaControlView.this.q;
                    if (z) {
                        MediaControlView.this.H.setImageDrawable(androidx.core.content.b.a(MediaControlView.this.getContext(), l.d.media2_widget_ic_fullscreen_exit));
                        MediaControlView.this.B.setImageDrawable(androidx.core.content.b.a(MediaControlView.this.getContext(), l.d.media2_widget_ic_fullscreen_exit));
                    } else {
                        MediaControlView.this.H.setImageDrawable(androidx.core.content.b.a(MediaControlView.this.getContext(), l.d.media2_widget_ic_fullscreen));
                        MediaControlView.this.B.setImageDrawable(androidx.core.content.b.a(MediaControlView.this.getContext(), l.d.media2_widget_ic_fullscreen));
                    }
                    MediaControlView.this.q = z;
                }
            }
        };
        this.aP = onClickListener2;
        View.OnClickListener onClickListener3 = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaControlView.this.f5107d != null) {
                    MediaControlView.this.d();
                    MediaControlView.this.s = true;
                    MediaControlView.this.ab.start();
                }
            }
        };
        this.aQ = onClickListener3;
        View.OnClickListener onClickListener4 = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.21
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaControlView.this.f5107d != null) {
                    MediaControlView.this.d();
                    MediaControlView.this.s = false;
                    MediaControlView.this.ac.start();
                }
            }
        };
        this.aR = onClickListener4;
        View.OnClickListener onClickListener5 = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.22
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaControlView.this.f5107d != null) {
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.removeCallbacks(mediaControlView.af);
                    MediaControlView mediaControlView2 = MediaControlView.this;
                    mediaControlView2.removeCallbacks(mediaControlView2.ag);
                    MediaControlView.this.f = 3;
                    MediaControlView.this.I.f5141a = MediaControlView.this.K;
                    MediaControlView mediaControlView3 = MediaControlView.this;
                    mediaControlView3.a(mediaControlView3.I);
                }
            }
        };
        this.aS = onClickListener5;
        AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: androidx.media2.widget.MediaControlView.24
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                int i3 = MediaControlView.this.f;
                if (i3 == 0) {
                    if (i2 != MediaControlView.this.h && MediaControlView.this.N.size() > 0) {
                        MediaControlView.this.f5107d.a(MediaControlView.this.N.get(i2));
                    }
                    MediaControlView.this.c();
                } else if (i3 == 1) {
                    if (i2 != MediaControlView.this.i) {
                        float intValue = MediaControlView.this.R.get(i2).intValue() / 100.0f;
                        k kVar = MediaControlView.this.f5107d;
                        if (kVar.f5254a != null) {
                            MediaController mediaController = kVar.f5254a;
                            if (intValue == BitmapDescriptorFactory.HUE_RED) {
                                throw new IllegalArgumentException("speed must not be zero");
                            } else if (mediaController.b()) {
                                mediaController.a().a(intValue);
                            } else {
                                MediaController.n();
                            }
                        } else if (kVar.f5255b != null) {
                            kVar.f5255b.a(intValue);
                        }
                    }
                    MediaControlView.this.c();
                } else if (i3 == 2) {
                    if (i2 != MediaControlView.this.g + 1) {
                        if (i2 > 0) {
                            MediaControlView.this.f5107d.a(MediaControlView.this.O.get(i2 - 1));
                        } else {
                            k kVar2 = MediaControlView.this.f5107d;
                            SessionPlayer.TrackInfo trackInfo = MediaControlView.this.O.get(MediaControlView.this.g);
                            if (kVar2.f5254a != null) {
                                MediaController mediaController2 = kVar2.f5254a;
                                Objects.requireNonNull(trackInfo, "TrackInfo shouldn't be null");
                                if (mediaController2.b()) {
                                    mediaController2.a().b(trackInfo);
                                } else {
                                    MediaController.n();
                                }
                            } else if (kVar2.f5255b != null) {
                                kVar2.f5255b.b(trackInfo);
                            }
                        }
                    }
                    MediaControlView.this.c();
                } else if (i3 == 3) {
                    if (i2 == 0) {
                        MediaControlView.this.J.f5145a = MediaControlView.this.P;
                        MediaControlView.this.J.f5146b = MediaControlView.this.h;
                        MediaControlView.this.f = 0;
                    } else if (i2 == 1) {
                        MediaControlView.this.J.f5145a = MediaControlView.this.Q;
                        MediaControlView.this.J.f5146b = MediaControlView.this.i;
                        MediaControlView.this.f = 1;
                    }
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.a(mediaControlView.J);
                }
            }
        };
        this.aT = onItemClickListener;
        this.aU = new PopupWindow.OnDismissListener() { // from class: androidx.media2.widget.MediaControlView.25
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                if (MediaControlView.this.v) {
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.a(mediaControlView.af, MediaControlView.this.m);
                }
            }
        };
        this.f5106c = context.getResources();
        inflate(context, l.f.media2_widget_media_controller, this);
        this.an = findViewById(l.e.title_bar);
        this.ao = (TextView) findViewById(l.e.title_text);
        this.ap = findViewById(l.e.ad_external_link);
        this.z = (ViewGroup) findViewById(l.e.center_view);
        this.aq = findViewById(l.e.center_view_background);
        this.ar = c(l.e.embedded_transport_controls);
        this.as = c(l.e.minimal_transport_controls);
        this.A = (ViewGroup) findViewById(l.e.minimal_fullscreen_view);
        ImageButton imageButton = (ImageButton) findViewById(l.e.minimal_fullscreen);
        this.B = imageButton;
        imageButton.setOnClickListener(onClickListener2);
        this.at = (ViewGroup) findViewById(l.e.progress_bar);
        SeekBar seekBar = (SeekBar) findViewById(l.e.progress);
        this.C = seekBar;
        seekBar.setOnSeekBarChangeListener(onSeekBarChangeListener);
        this.C.setMax(1000);
        this.n = -1L;
        this.o = -1L;
        this.au = findViewById(l.e.bottom_bar_background);
        this.av = (ViewGroup) findViewById(l.e.bottom_bar_left);
        this.aw = c(l.e.full_transport_controls);
        this.ax = (ViewGroup) findViewById(l.e.time);
        this.ay = (TextView) findViewById(l.e.time_end);
        this.D = (TextView) findViewById(l.e.time_current);
        this.az = (TextView) findViewById(l.e.ad_skip_time);
        this.aA = new StringBuilder();
        this.aB = new Formatter(this.aA, Locale.getDefault());
        this.E = (ViewGroup) findViewById(l.e.basic_controls);
        this.F = (ViewGroup) findViewById(l.e.extra_controls);
        ImageButton imageButton2 = (ImageButton) findViewById(l.e.subtitle);
        this.G = imageButton2;
        imageButton2.setOnClickListener(onClickListener);
        ImageButton imageButton3 = (ImageButton) findViewById(l.e.fullscreen);
        this.H = imageButton3;
        imageButton3.setOnClickListener(onClickListener2);
        ((ImageButton) findViewById(l.e.overflow_show)).setOnClickListener(onClickListener3);
        ((ImageButton) findViewById(l.e.overflow_hide)).setOnClickListener(onClickListener4);
        ((ImageButton) findViewById(l.e.settings)).setOnClickListener(onClickListener5);
        this.aC = (TextView) findViewById(l.e.ad_remaining);
        k();
        this.aD = (ListView) a(getContext(), l.f.media2_widget_settings_list);
        this.I = new c(this.aF, this.K, this.aG);
        this.J = new d(null, 0);
        this.aD.setAdapter((ListAdapter) this.I);
        this.aD.setChoiceMode(1);
        this.aD.setOnItemClickListener(onItemClickListener);
        this.y.append(0, this.ar);
        this.y.append(1, this.aw);
        this.y.append(2, this.as);
        this.aj = this.f5106c.getDimensionPixelSize(l.c.media2_widget_embedded_settings_width);
        this.ak = this.f5106c.getDimensionPixelSize(l.c.media2_widget_full_settings_width);
        this.al = this.f5106c.getDimensionPixelSize(l.c.media2_widget_settings_height);
        this.am = this.f5106c.getDimensionPixelSize(l.c.media2_widget_settings_offset);
        PopupWindow popupWindow = new PopupWindow((View) this.aD, this.aj, -2, true);
        this.aE = popupWindow;
        popupWindow.setBackgroundDrawable(new ColorDrawable());
        this.aE.setOnDismissListener(this.aU);
        float dimension = this.f5106c.getDimension(l.c.media2_widget_title_bar_height);
        float dimension2 = this.f5106c.getDimension(l.c.media2_widget_custom_progress_thumb_size);
        float dimension3 = this.f5106c.getDimension(l.c.media2_widget_bottom_bar_height);
        View[] viewArr = {this.au, this.av, this.ax, this.E, this.F, this.at};
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.media2.widget.MediaControlView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                MediaControlView.this.C.getThumb().setLevel((int) ((MediaControlView.this.j == 2 ? 0 : 10000) * floatValue));
                MediaControlView.this.z.setAlpha(floatValue);
                MediaControlView.this.A.setAlpha(floatValue);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.12
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                MediaControlView.this.z.setVisibility(4);
                MediaControlView.this.A.setVisibility(4);
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat2.setInterpolator(new LinearInterpolator());
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.media2.widget.MediaControlView.23
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                MediaControlView.this.C.getThumb().setLevel((int) ((MediaControlView.this.j == 2 ? 0 : 10000) * floatValue));
                MediaControlView.this.z.setAlpha(floatValue);
                MediaControlView.this.A.setAlpha(floatValue);
            }
        });
        ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.26
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                MediaControlView.this.z.setVisibility(0);
                MediaControlView.this.A.setVisibility(0);
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.T = animatorSet;
        AnimatorSet.Builder play = animatorSet.play(ofFloat);
        float f = -dimension;
        play.with(androidx.media2.widget.a.a((float) BitmapDescriptorFactory.HUE_RED, f, this.an)).with(androidx.media2.widget.a.a((float) BitmapDescriptorFactory.HUE_RED, dimension3, viewArr));
        this.T.setDuration(250L);
        this.T.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.27
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                MediaControlView.this.k = 1;
                if (MediaControlView.this.w) {
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.post(mediaControlView.ae);
                    MediaControlView.this.w = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                MediaControlView.this.k = 3;
            }
        });
        float f2 = dimension2 + dimension3;
        AnimatorSet a2 = androidx.media2.widget.a.a(dimension3, f2, viewArr);
        this.U = a2;
        a2.setDuration(250L);
        this.U.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.28
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                MediaControlView.this.k = 2;
                if (MediaControlView.this.w) {
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.post(mediaControlView.ae);
                    MediaControlView.this.w = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                MediaControlView.this.k = 3;
            }
        });
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.V = animatorSet2;
        animatorSet2.play(ofFloat).with(androidx.media2.widget.a.a((float) BitmapDescriptorFactory.HUE_RED, f, this.an)).with(androidx.media2.widget.a.a((float) BitmapDescriptorFactory.HUE_RED, f2, viewArr));
        this.V.setDuration(250L);
        this.V.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.29
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                MediaControlView.this.k = 2;
                if (MediaControlView.this.w) {
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.post(mediaControlView.ae);
                    MediaControlView.this.w = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                MediaControlView.this.k = 3;
            }
        });
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.W = animatorSet3;
        animatorSet3.play(ofFloat2).with(androidx.media2.widget.a.a(f, (float) BitmapDescriptorFactory.HUE_RED, this.an)).with(androidx.media2.widget.a.a(dimension3, (float) BitmapDescriptorFactory.HUE_RED, viewArr));
        this.W.setDuration(250L);
        this.W.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.30
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                MediaControlView.this.k = 0;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                MediaControlView.this.k = 3;
            }
        });
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.aa = animatorSet4;
        animatorSet4.play(ofFloat2).with(androidx.media2.widget.a.a(f, (float) BitmapDescriptorFactory.HUE_RED, this.an)).with(androidx.media2.widget.a.a(f2, (float) BitmapDescriptorFactory.HUE_RED, viewArr));
        this.aa.setDuration(250L);
        this.aa.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.31
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                MediaControlView.this.k = 0;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                MediaControlView.this.k = 3;
            }
        });
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.ab = ofFloat3;
        ofFloat3.setDuration(250L);
        this.ab.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.media2.widget.MediaControlView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                MediaControlView.this.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        this.ab.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                int i2 = 4;
                MediaControlView.this.E.setVisibility(4);
                ImageButton a3 = MediaControlView.this.a(l.e.ffwd);
                if (MediaControlView.this.f5107d == null || !MediaControlView.this.f5107d.g()) {
                    i2 = 8;
                }
                a3.setVisibility(i2);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                MediaControlView.this.F.setVisibility(0);
            }
        });
        ValueAnimator ofFloat4 = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
        this.ac = ofFloat4;
        ofFloat4.setDuration(250L);
        this.ac.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.media2.widget.MediaControlView.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                MediaControlView.this.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        this.ac.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                MediaControlView.this.F.setVisibility(8);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                int i2 = 0;
                MediaControlView.this.E.setVisibility(0);
                ImageButton a3 = MediaControlView.this.a(l.e.ffwd);
                if (MediaControlView.this.f5107d == null || !MediaControlView.this.f5107d.g()) {
                    i2 = 8;
                }
                a3.setVisibility(i2);
            }
        });
        this.m = 2000L;
        this.ai = (AccessibilityManager) context.getSystemService("accessibility");
    }

    static View a(Context context, int i) {
        return ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(i, (ViewGroup) null);
    }

    private static void a(View view, int i, int i2) {
        view.layout(i, i2, view.getMeasuredWidth() + i, view.getMeasuredHeight() + i2);
    }

    private View c(int i) {
        View findViewById = findViewById(i);
        ImageButton imageButton = (ImageButton) findViewById.findViewById(l.e.pause);
        if (imageButton != null) {
            imageButton.setOnClickListener(this.aJ);
        }
        ImageButton imageButton2 = (ImageButton) findViewById.findViewById(l.e.ffwd);
        if (imageButton2 != null) {
            imageButton2.setOnClickListener(this.aL);
        }
        ImageButton imageButton3 = (ImageButton) findViewById.findViewById(l.e.rew);
        if (imageButton3 != null) {
            imageButton3.setOnClickListener(this.aK);
        }
        ImageButton imageButton4 = (ImageButton) findViewById.findViewById(l.e.next);
        if (imageButton4 != null) {
            imageButton4.setOnClickListener(this.aM);
        }
        ImageButton imageButton5 = (ImageButton) findViewById.findViewById(l.e.prev);
        if (imageButton5 != null) {
            imageButton5.setOnClickListener(this.aN);
        }
        return findViewById;
    }

    private void i() {
        if (this.k != 3) {
            removeCallbacks(this.af);
            removeCallbacks(this.ag);
            post(this.ae);
        }
    }

    private void j() {
        if (!f() && this.k != 3) {
            removeCallbacks(this.af);
            removeCallbacks(this.ag);
            post(this.aH);
        }
    }

    private void k() {
        ArrayList arrayList = new ArrayList();
        this.aF = arrayList;
        arrayList.add(this.f5106c.getString(l.g.MediaControlView_audio_track_text));
        this.aF.add(this.f5106c.getString(l.g.MediaControlView_playback_speed_text));
        ArrayList arrayList2 = new ArrayList();
        this.K = arrayList2;
        arrayList2.add(this.f5106c.getString(l.g.MediaControlView_audio_track_none_text));
        String string = this.f5106c.getString(l.g.MediaControlView_playback_speed_normal);
        this.K.add(string);
        this.K.add("");
        ArrayList arrayList3 = new ArrayList();
        this.aG = arrayList3;
        arrayList3.add(Integer.valueOf(l.d.media2_widget_ic_audiotrack));
        this.aG.add(Integer.valueOf(l.d.media2_widget_ic_speed));
        ArrayList arrayList4 = new ArrayList();
        this.P = arrayList4;
        arrayList4.add(this.f5106c.getString(l.g.MediaControlView_audio_track_none_text));
        ArrayList arrayList5 = new ArrayList(Arrays.asList(this.f5106c.getStringArray(l.a.MediaControlView_playback_speeds)));
        this.Q = arrayList5;
        arrayList5.add(3, string);
        this.i = 3;
        this.R = new ArrayList();
        for (int i : this.f5106c.getIntArray(l.a.media2_widget_speed_multiplied_by_100)) {
            this.R.add(Integer.valueOf(i));
        }
        this.S = -1;
    }

    private boolean l() {
        if (this.M > 0) {
            return true;
        }
        VideoSize n = this.f5107d.n();
        if (n.f2771b <= 0 || n.f2770a <= 0) {
            return false;
        }
        Log.w("MediaControlView", "video track count is zero, but it renders video. size: ".concat(String.valueOf(n)));
        return true;
    }

    private boolean m() {
        return !l() && this.N.size() > 0;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final long a() {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.widget.MediaControlView.a():long");
    }

    final ImageButton a(int i) {
        ImageButton a2 = a(1, i);
        if (a2 != null) {
            return a2;
        }
        throw new IllegalArgumentException("Couldn't find a view that has the given id");
    }

    final ImageButton a(int i, int i2) {
        View view = this.y.get(i);
        if (view == null) {
            return null;
        }
        return (ImageButton) view.findViewById(i2);
    }

    final String a(long j) {
        long j2 = j / 1000;
        long j3 = j2 % 60;
        long j4 = (j2 / 60) % 60;
        long j5 = j2 / 3600;
        this.aA.setLength(0);
        return j5 > 0 ? this.aB.format("%d:%02d:%02d", Long.valueOf(j5), Long.valueOf(j4), Long.valueOf(j3)).toString() : this.aB.format("%02d:%02d", Long.valueOf(j4), Long.valueOf(j3)).toString();
    }

    final void a(float f) {
        this.F.setTranslationX(((int) (this.F.getWidth() * f)) * (-1));
        float f2 = 1.0f - f;
        this.ax.setAlpha(f2);
        this.E.setAlpha(f2);
        this.aw.setTranslationX(((int) (a(l.e.pause).getLeft() * f)) * (-1));
        a(l.e.ffwd).setAlpha(f2);
    }

    final void a(int i, String str) {
        this.i = i;
        this.K.set(1, str);
        this.J.f5145a = this.Q;
        this.J.f5146b = this.i;
    }

    final void a(long j, boolean z) {
        h();
        long j2 = this.l;
        this.C.setProgress(j2 <= 0 ? 0 : (int) ((1000 * j) / j2));
        this.D.setText(a(j));
        if (this.n == -1) {
            this.n = j;
            if (z) {
                this.f5107d.a(j);
                return;
            }
            return;
        }
        this.o = j;
    }

    final void a(BaseAdapter baseAdapter) {
        this.aD.setAdapter((ListAdapter) baseAdapter);
        this.aE.setWidth(this.j == 0 ? this.aj : this.ak);
        int height = getHeight() - (this.am * 2);
        int count = baseAdapter.getCount() * this.al;
        int i = height;
        if (count < height) {
            i = count;
        }
        this.aE.setHeight(i);
        this.v = false;
        this.aE.dismiss();
        if (i > 0) {
            this.aE.showAsDropDown(this, (getWidth() - this.aE.getWidth()) - this.am, (-this.aE.getHeight()) - this.am);
            this.v = true;
        }
    }

    final void a(MediaItem mediaItem) {
        if (mediaItem == null) {
            this.C.setProgress(0);
            this.D.setText(this.f5106c.getString(l.g.MediaControlView_time_placeholder));
            this.ay.setText(this.f5106c.getString(l.g.MediaControlView_time_placeholder));
            return;
        }
        h();
        long j = this.f5107d.j();
        if (j > 0) {
            this.l = j;
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(SessionPlayer sessionPlayer) {
        k kVar = this.f5107d;
        if (kVar != null) {
            kVar.b();
        }
        this.f5107d = new k(sessionPlayer, androidx.core.content.b.e(getContext()), new b());
        if (v.E(this)) {
            this.f5107d.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(MediaController mediaController) {
        k kVar = this.f5107d;
        if (kVar != null) {
            kVar.b();
        }
        this.f5107d = new k(mediaController, androidx.core.content.b.e(getContext()), new b());
        if (v.E(this)) {
            this.f5107d.a();
        }
    }

    final void a(k kVar, List<SessionPlayer.TrackInfo> list) {
        this.M = 0;
        this.N = new ArrayList();
        this.O = new ArrayList();
        this.h = 0;
        this.g = -1;
        SessionPlayer.TrackInfo a2 = kVar.a(2);
        SessionPlayer.TrackInfo a3 = kVar.a(4);
        for (int i = 0; i < list.size(); i++) {
            int i2 = list.get(i).f2755b;
            if (i2 == 1) {
                this.M++;
            } else if (i2 == 2) {
                if (list.get(i).equals(a2)) {
                    this.h = this.N.size();
                }
                this.N.add(list.get(i));
            } else if (i2 == 4) {
                if (list.get(i).equals(a3)) {
                    this.g = this.O.size();
                }
                this.O.add(list.get(i));
            }
        }
        this.P = new ArrayList();
        if (this.N.isEmpty()) {
            this.P.add(this.f5106c.getString(l.g.MediaControlView_audio_track_none_text));
        } else {
            int i3 = 0;
            while (i3 < this.N.size()) {
                i3++;
                this.P.add(this.f5106c.getString(l.g.MediaControlView_audio_track_number_text, Integer.valueOf(i3)));
            }
        }
        this.K.set(0, this.P.get(this.h));
        this.L = new ArrayList();
        if (!this.O.isEmpty()) {
            this.L.add(this.f5106c.getString(l.g.MediaControlView_subtitle_off_text));
            for (int i4 = 0; i4 < this.O.size(); i4++) {
                SessionPlayer.TrackInfo trackInfo = this.O.get(i4);
                String string = trackInfo.f2756c != null ? trackInfo.f2756c.getString("language") : null;
                String str = string;
                if (string == null) {
                    str = "und";
                }
                String iSO3Language = new Locale(str).getISO3Language();
                this.L.add(iSO3Language.equals("und") ? this.f5106c.getString(l.g.MediaControlView_subtitle_track_number_text, Integer.valueOf(i4 + 1)) : this.f5106c.getString(l.g.MediaControlView_subtitle_track_number_and_lang_text, Integer.valueOf(i4 + 1), iSO3Language));
            }
        }
        e();
    }

    final void a(Runnable runnable, long j) {
        if (j != -1) {
            postDelayed(runnable, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.media2.widget.i
    public final void a(boolean z) {
        super.a(z);
        if (this.f5107d != null) {
            if (z) {
                removeCallbacks(this.ad);
                post(this.ad);
                return;
            }
            removeCallbacks(this.ad);
        }
    }

    final void b(int i) {
        String str;
        Drawable drawable;
        ImageButton a2 = a(this.j, l.e.pause);
        if (a2 != null) {
            if (i == 0) {
                drawable = androidx.core.content.b.a(getContext(), l.d.media2_widget_ic_pause_circle_filled);
                str = this.f5106c.getString(l.g.mcv2_pause_button_desc);
            } else if (i == 1) {
                drawable = androidx.core.content.b.a(getContext(), l.d.media2_widget_ic_play_circle_filled);
                str = this.f5106c.getString(l.g.mcv2_play_button_desc);
            } else if (i == 2) {
                drawable = androidx.core.content.b.a(getContext(), l.d.media2_widget_ic_replay_circle_filled);
                str = this.f5106c.getString(l.g.mcv2_replay_button_desc);
            } else {
                throw new IllegalArgumentException("unknown type ".concat(String.valueOf(i)));
            }
            a2.setImageDrawable(drawable);
            a2.setContentDescription(str);
        }
    }

    final void b(int i, int i2) {
        int size = this.y.size();
        for (int i3 = 0; i3 < size; i3++) {
            int keyAt = this.y.keyAt(i3);
            ImageButton a2 = a(keyAt, l.e.prev);
            if (a2 != null) {
                if (i >= 0) {
                    a2.setAlpha(1.0f);
                    a2.setEnabled(true);
                } else {
                    a2.setAlpha(0.5f);
                    a2.setEnabled(false);
                }
            }
            ImageButton a3 = a(keyAt, l.e.next);
            if (a3 != null) {
                if (i2 >= 0) {
                    a3.setAlpha(1.0f);
                    a3.setEnabled(true);
                } else {
                    a3.setAlpha(0.5f);
                    a3.setEnabled(false);
                }
            }
        }
    }

    final void b(MediaItem mediaItem) {
        if (mediaItem == null) {
            this.ao.setText((CharSequence) null);
        } else if (!m()) {
            CharSequence k = this.f5107d.k();
            String str = k;
            if (k == null) {
                str = this.f5106c.getString(l.g.mcv2_non_music_title_unknown_text);
            }
            this.ao.setText(str.toString());
        } else {
            CharSequence k2 = this.f5107d.k();
            String str2 = k2;
            if (k2 == null) {
                str2 = this.f5106c.getString(l.g.mcv2_music_title_unknown_text);
            }
            k kVar = this.f5107d;
            CharSequence charSequence = null;
            if (kVar.f != null) {
                charSequence = null;
                if (kVar.f.a(MediaMetadataCompat.METADATA_KEY_ARTIST)) {
                    charSequence = kVar.f.b(MediaMetadataCompat.METADATA_KEY_ARTIST);
                }
            }
            String str3 = charSequence;
            if (charSequence == null) {
                str3 = this.f5106c.getString(l.g.mcv2_music_artist_unknown_text);
            }
            this.ao.setText(str2.toString() + " - " + str3.toString());
        }
    }

    final void b(boolean z) {
        ImageButton a2 = a(this.j, l.e.ffwd);
        if (z) {
            this.r = true;
            b(2);
            if (a2 != null) {
                a2.setAlpha(0.5f);
                a2.setEnabled(false);
                return;
            }
            return;
        }
        this.r = false;
        k kVar = this.f5107d;
        if (kVar == null || !kVar.c()) {
            b(1);
        } else {
            b(0);
        }
        if (a2 != null) {
            a2.setAlpha(1.0f);
            a2.setEnabled(true);
        }
    }

    final boolean b() {
        String scheme;
        h();
        MediaItem l = this.f5107d.l();
        if ((l instanceof UriMediaItem) && (scheme = ((UriMediaItem) l).f2764a.getScheme()) != null) {
            return scheme.equals("http") || scheme.equals(Constants.HTTPS) || scheme.equals("rtsp");
        }
        return false;
    }

    final void c() {
        this.v = true;
        this.aE.dismiss();
    }

    final void d() {
        removeCallbacks(this.af);
        removeCallbacks(this.ag);
        a(this.af, this.m);
    }

    final void e() {
        k kVar = this.f5107d;
        if (!(kVar.e != null && kVar.e.a(11001) && kVar.e.a(11002)) || (this.M == 0 && this.N.isEmpty() && this.O.isEmpty())) {
            this.G.setVisibility(8);
            this.G.setEnabled(false);
        } else if (!this.O.isEmpty()) {
            this.G.setVisibility(0);
            this.G.setAlpha(1.0f);
            this.G.setEnabled(true);
        } else if (m()) {
            this.G.setVisibility(8);
            this.G.setEnabled(false);
        } else {
            this.G.setVisibility(0);
            this.G.setAlpha(0.5f);
            this.G.setEnabled(false);
        }
    }

    final boolean f() {
        return (m() && this.j == 1) || this.ai.isTouchExplorationEnabled() || this.f5107d.f() == 3 || this.f5107d.f() == 0;
    }

    final long g() {
        h();
        long j = this.o;
        if (j != -1) {
            return j;
        }
        long j2 = this.n;
        return j2 != -1 ? j2 : this.f5107d.d();
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.media2.widget.MediaControlView";
    }

    final void h() {
        if (this.f5107d == null) {
            throw new IllegalStateException("mPlayer must not be null");
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        k kVar = this.f5107d;
        if (kVar != null) {
            kVar.a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        k kVar = this.f5107d;
        if (kVar != null) {
            kVar.b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = ((i3 - i) - getPaddingLeft()) - getPaddingRight();
        int paddingTop = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        int i5 = 0;
        int i6 = (this.u || ((this.av.getMeasuredWidth() + this.ax.getMeasuredWidth()) + this.E.getMeasuredWidth() <= paddingLeft && (this.an.getMeasuredHeight() + this.at.getMeasuredHeight()) + this.au.getMeasuredHeight() <= paddingTop)) ? 1 : (this.ax.getMeasuredWidth() + this.E.getMeasuredWidth() > paddingLeft || ((this.an.getMeasuredHeight() + this.ar.getMeasuredHeight()) + this.at.getMeasuredHeight()) + this.au.getMeasuredHeight() > paddingTop) ? 2 : 0;
        if (this.j != i6) {
            this.j = i6;
            if (i6 != 2) {
                this.C.getThumb().setLevel(10000);
            } else {
                this.C.getThumb().setLevel(0);
            }
            b(this.r);
        }
        this.an.setVisibility(i6 != 2 ? 0 : 4);
        this.aq.setVisibility(i6 != 1 ? 0 : 4);
        this.ar.setVisibility(i6 == 0 ? 0 : 4);
        this.as.setVisibility(i6 == 2 ? 0 : 4);
        this.au.setVisibility(i6 != 2 ? 0 : 4);
        this.av.setVisibility(i6 == 1 ? 0 : 4);
        this.ax.setVisibility(i6 != 2 ? 0 : 4);
        this.E.setVisibility(i6 != 2 ? 0 : 4);
        ImageButton imageButton = this.B;
        if (i6 != 2) {
            i5 = 4;
        }
        imageButton.setVisibility(i5);
        int paddingLeft2 = getPaddingLeft();
        int i7 = paddingLeft + paddingLeft2;
        int paddingTop2 = getPaddingTop();
        int i8 = paddingTop + paddingTop2;
        a(this.an, paddingLeft2, paddingTop2);
        a(this.z, paddingLeft2, paddingTop2);
        View view = this.au;
        a(view, paddingLeft2, i8 - view.getMeasuredHeight());
        ViewGroup viewGroup = this.av;
        a(viewGroup, paddingLeft2, i8 - viewGroup.getMeasuredHeight());
        a(this.ax, i6 == 1 ? (i7 - this.E.getMeasuredWidth()) - this.ax.getMeasuredWidth() : paddingLeft2, i8 - this.ax.getMeasuredHeight());
        ViewGroup viewGroup2 = this.E;
        a(viewGroup2, i7 - viewGroup2.getMeasuredWidth(), i8 - this.E.getMeasuredHeight());
        ViewGroup viewGroup3 = this.F;
        a(viewGroup3, i7, i8 - viewGroup3.getMeasuredHeight());
        ViewGroup viewGroup4 = this.at;
        a(viewGroup4, paddingLeft2, i6 == 2 ? i8 - viewGroup4.getMeasuredHeight() : (i8 - viewGroup4.getMeasuredHeight()) - this.f5106c.getDimensionPixelSize(l.c.media2_widget_custom_progress_margin_bottom));
        ViewGroup viewGroup5 = this.A;
        a(viewGroup5, paddingLeft2, i8 - viewGroup5.getMeasuredHeight());
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int resolveSize = resolveSize(getSuggestedMinimumWidth(), i);
        int resolveSize2 = resolveSize(getSuggestedMinimumHeight(), i2);
        int paddingLeft = (resolveSize - getPaddingLeft()) - getPaddingRight();
        int paddingTop = (resolveSize2 - getPaddingTop()) - getPaddingBottom();
        if (paddingLeft < 0) {
            i3 = Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
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
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                childAt.measure(layoutParams.width == -1 ? View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824) : layoutParams.width == -2 ? View.MeasureSpec.makeMeasureSpec(paddingLeft, 0) : View.MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824), layoutParams.height == -1 ? View.MeasureSpec.makeMeasureSpec(i5, 1073741824) : layoutParams.height == -2 ? View.MeasureSpec.makeMeasureSpec(i5, 0) : View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824));
                i4 |= childAt.getMeasuredState();
            }
        }
        setMeasuredDimension(resolveSizeAndState(resolveSize, i, i4), resolveSizeAndState(resolveSize2, i2, i4 << 16));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f5107d == null) {
            return super.onTouchEvent(motionEvent);
        }
        if (motionEvent.getAction() != 1) {
            return true;
        }
        if (m() && this.j == 1) {
            return true;
        }
        if (this.k == 0) {
            j();
            return true;
        }
        i();
        return true;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (this.f5107d == null) {
            return super.onTrackballEvent(motionEvent);
        }
        if (motionEvent.getAction() != 1) {
            return true;
        }
        if (m() && this.j == 1) {
            return true;
        }
        if (this.k == 0) {
            j();
            return true;
        }
        i();
        return true;
    }

    @Override // androidx.media2.widget.i, android.view.View
    public /* bridge */ /* synthetic */ void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
    }

    public void setMediaController(MediaController mediaController) {
        Objects.requireNonNull(mediaController, "controller must not be null");
        if (!this.f5105b) {
            a(mediaController);
            return;
        }
        throw new IllegalStateException("It's attached to VideoView. Use VideoView's method.");
    }

    public void setOnFullScreenListener(a aVar) {
        if (aVar == null) {
            this.e = null;
            this.H.setVisibility(8);
            return;
        }
        this.e = aVar;
        this.H.setVisibility(0);
    }

    public void setPlayer(SessionPlayer sessionPlayer) {
        Objects.requireNonNull(sessionPlayer, "player must not be null");
        if (!this.f5105b) {
            a(sessionPlayer);
            return;
        }
        throw new IllegalStateException("It's attached to VideoView. Use VideoView's method.");
    }
}
