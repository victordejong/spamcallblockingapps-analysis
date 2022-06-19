package p193e.p194a.p195a.p200c;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.media.audiofx.Visualizer;
import android.net.Uri;
import android.os.SystemClock;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.text.style.StyleSpan;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.RecyclerView;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.chip.Chip;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.mobileads.VastIconXmlManager;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.android.truemoji.widget.EmojiTextView;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.common.p156ui.tooltip.TooltipDirection;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.insights.models.pdo.ClassifierType;
import com.truecaller.insights.models.smartcards.CardFeedBackType;
import com.truecaller.insights.models.smartcards.FeedbackGivenState;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.smartcards.SmartCardCategory;
import com.truecaller.insights.smartcards.SmartCardStatus;
import com.truecaller.messaging.conversation.AttachmentType;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.conversation.ExpandableEmojiTextView;
import com.truecaller.messaging.conversation.GoogleAttribution;
import com.truecaller.messaging.conversation.LinkPreviewType;
import com.truecaller.messaging.conversation.richtext.TextDelimiterFormatter;
import com.truecaller.messaging.conversation.translation.RelativeSizeColorSpan;
import com.truecaller.messaging.conversation.voice_notes.CountDownChronometer;
import com.truecaller.messaging.conversation.voice_notes.PlayerVisualizerView;
import com.truecaller.messaging.data.types.AudioEntity;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Mention;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.QuickAction;
import com.truecaller.messaging.data.types.VCardEntity;
import com.truecaller.messaging.linkpreviews.LinkPreviewMessageView;
import com.truecaller.p183ui.view.TintedTextView;
import com.truecaller.utils.p185ui.LinkClickMovementMethod;
import e.m.f.a.j;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1812c.C26493a;
import p1727n3.p1807k.p1818g.p1819f.C26548b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1114o5.RunnableC18950b;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1136w0.C19348b;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p1406z3.C21853e;
import p193e.p194a.p195a.p200c.p201a.C5011a;
import p193e.p194a.p195a.p200c.p201a.C5036k;
import p193e.p194a.p195a.p200c.p201a.C5053t;
import p193e.p194a.p195a.p200c.p201a.View$OnClickListenerC5038l;
import p193e.p194a.p195a.p200c.p201a.View$OnClickListenerC5039m;
import p193e.p194a.p195a.p200c.p201a.View$OnClickListenerC5049q;
import p193e.p194a.p195a.p200c.p201a.View$OnClickListenerC5051r;
import p193e.p194a.p195a.p200c.p201a.View$OnClickListenerC5052s;
import p193e.p194a.p195a.p200c.p207j8.C5405a;
import p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5412d;
import p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j;
import p193e.p194a.p195a.p200c.p216n8.C5589a;
import p193e.p194a.p195a.p200c.p220q8.C5682a;
import p193e.p194a.p195a.p200c.p221r8.C5701c;
import p193e.p194a.p195a.p200c.p222s8.AbstractC5732i;
import p193e.p194a.p195a.p200c.p222s8.C5730g;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p430q.C8578e0;
import p193e.p194a.p372b0.p430q.C8603m0;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p372b0.p430q.C8606p;
import p193e.p194a.p437c.p438a.p442b.p443a.C8749v;
import p193e.p194a.p437c.p438a.p446c.p450g.C8834d;
import p193e.p194a.p437c.p438a.p446c.p451h.AbstractC8852j;
import p193e.p194a.p437c.p438a.p477g.C9054n0;
import p193e.p194a.p437c.p438a.p506o.View$OnClickListenerC9440c;
import p193e.p194a.p437c.p438a.p520r.C9589f;
import p193e.p194a.p437c.p525b0.C9711b;
import p193e.p194a.p437c.p531c0.RunnableC10012a0;
import p193e.p194a.p437c.p552i.p557e.C10328a;
import p193e.p194a.p437c.p552i.p557e.C10329b;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p589j.AbstractC10567a;
import p193e.p194a.p437c.p580r.p589j.AbstractC10597h;
import p193e.p194a.p437c.p580r.p589j.AbstractC10616p;
import p193e.p194a.p437c.p580r.p589j.C10583b0;
import p193e.p194a.p437c.p580r.p589j.C10612m;
import p193e.p194a.p437c.p580r.p589j.C10613n;
import p193e.p194a.p437c.p580r.p589j.C10635s;
import p193e.p194a.p437c.p580r.p592m.AbstractC10651b;
import p193e.p194a.p437c.p610y.AbstractC10876i;
import p193e.p194a.p437c.p610y.C10872f;
import p193e.p194a.p437c.p610y.C10885j;
import p193e.p194a.p437c.p610y.C10888l;
import p193e.p194a.p916i5.p917e.C15322a;
import s1.e0.j;
import s1.f0.f;
import s1.f0.h;
import s1.f0.j;
import s1.f0.r;
import s1.f0.v;
import s1.g;
import s1.i;
import s1.k;
import s1.n;
import s1.s;
import s1.u.z;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.c.d */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/d.class */
public final class ViewTreeObserver$OnPreDrawListenerC5184d extends RecyclerView.AbstractC0313c0 implements AbstractC5062a7, ViewTreeObserver.OnPreDrawListener {

    /* renamed from: j0 */
    public static final /* synthetic */ int f17783j0 = 0;

    /* renamed from: A */
    public final g f17784A;

    /* renamed from: B */
    public TintedTextView f17785B;

    /* renamed from: C */
    public String f17786C;

    /* renamed from: D */
    public boolean f17787D;

    /* renamed from: K */
    public int f17790K;

    /* renamed from: L */
    public int f17791L;

    /* renamed from: M */
    public final int f17792M;

    /* renamed from: N */
    public final int f17793N;

    /* renamed from: O */
    public final g f17794O;

    /* renamed from: P */
    public C8243a f17795P;

    /* renamed from: Q */
    public String f17796Q;

    /* renamed from: R */
    public int f17797R;

    /* renamed from: S */
    public float f17798S;

    /* renamed from: T */
    public int f17799T;

    /* renamed from: U */
    public int f17800U;

    /* renamed from: V */
    public final g f17801V;

    /* renamed from: W */
    public ValueAnimator f17802W;

    /* renamed from: X */
    public final g f17803X;

    /* renamed from: Y */
    public boolean f17804Y;

    /* renamed from: a */
    public final g f17806a;

    /* renamed from: b */
    public final g f17807b;

    /* renamed from: c */
    public final g f17808c;

    /* renamed from: d */
    public final g f17809d;

    /* renamed from: e */
    public final g f17810e;

    /* renamed from: f */
    public final g f17811f;

    /* renamed from: g */
    public final g f17812g;

    /* renamed from: g0 */
    public C5036k f17813g0;

    /* renamed from: h */
    public final g f17814h;

    /* renamed from: h0 */
    public C5589a f17815h0;

    /* renamed from: i */
    public final g f17816i;

    /* renamed from: i0 */
    public final AbstractC5418j f17817i0;

    /* renamed from: j */
    public final g f17818j;

    /* renamed from: k */
    public final g f17819k;

    /* renamed from: l */
    public final g f17820l;

    /* renamed from: m */
    public final g f17821m;

    /* renamed from: n */
    public final g f17822n;

    /* renamed from: o */
    public final g f17823o;

    /* renamed from: p */
    public final g f17824p;

    /* renamed from: q */
    public final g f17825q;

    /* renamed from: r */
    public final g f17826r;

    /* renamed from: s */
    public final g f17827s;

    /* renamed from: t */
    public final g f17828t;

    /* renamed from: u */
    public final g f17829u;

    /* renamed from: v */
    public final g f17830v;

    /* renamed from: w */
    public final g f17831w;

    /* renamed from: x */
    public final g f17832x;

    /* renamed from: y */
    public final g f17833y;

    /* renamed from: z */
    public final g f17834z;

    /* renamed from: E */
    public boolean f17788E = true;

    /* renamed from: J */
    public boolean f17789J = true;

    /* renamed from: Z */
    public final h f17805Z = new h("(\\btruecaller://[^\\s]+)");

    /* renamed from: e.a.a.c.d$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a/c/d$a.class */
    public static final class View$OnClickListenerC5185a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f17835a;

        /* renamed from: b */
        public final /* synthetic */ Object f17836b;

        /* renamed from: c */
        public final /* synthetic */ Object f17837c;

        public View$OnClickListenerC5185a(int i, Object obj, Object obj2) {
            this.f17835a = i;
            this.f17836b = obj;
            this.f17837c = obj2;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f17835a;
            if (i == 0) {
                AbstractC5418j abstractC5418j = ((ViewTreeObserver$OnPreDrawListenerC5184d) this.f17836b).f17817i0;
                C5174c3 c5174c3 = (C5174c3) this.f17837c;
                abstractC5418j.mo33151q0(c5174c3.f17688c, c5174c3.f17689d);
            } else if (i != 1) {
                throw null;
            } else {
                AbstractC5418j abstractC5418j2 = ((ViewTreeObserver$OnPreDrawListenerC5184d) this.f17836b).f17817i0;
                C5174c3 c5174c32 = (C5174c3) this.f17837c;
                abstractC5418j2.mo33151q0(c5174c32.f17688c, c5174c32.f17689d);
            }
        }
    }

    /* renamed from: e.a.a.c.d$a0 */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$a0.class */
    public static final class C5186a0 extends m implements l<ExpandableEmojiTextView.LayoutState, s> {

        /* renamed from: b */
        public final /* synthetic */ ExpandableEmojiTextView f17838b;

        /* renamed from: c */
        public final /* synthetic */ ViewTreeObserver$OnPreDrawListenerC5184d f17839c;

        /* renamed from: d */
        public final /* synthetic */ Message f17840d;

        /* renamed from: e */
        public final /* synthetic */ ExpandableEmojiTextView.LayoutStyle f17841e;

        /* renamed from: f */
        public final /* synthetic */ EmojiTextView f17842f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5186a0(ExpandableEmojiTextView expandableEmojiTextView, ViewTreeObserver$OnPreDrawListenerC5184d viewTreeObserver$OnPreDrawListenerC5184d, Message message, ExpandableEmojiTextView.LayoutStyle layoutStyle, ExpandableEmojiTextView.LayoutState layoutState, Integer num, EmojiTextView emojiTextView) {
            super(1);
            this.f17838b = expandableEmojiTextView;
            this.f17839c = viewTreeObserver$OnPreDrawListenerC5184d;
            this.f17840d = message;
            this.f17841e = layoutStyle;
            this.f17842f = emojiTextView;
        }

        /* renamed from: d */
        public Object m33574d(Object obj) {
            ExpandableEmojiTextView.LayoutState layoutState = (ExpandableEmojiTextView.LayoutState) obj;
            s1.z.c.l.e(layoutState, "it");
            this.f17839c.m33585v5(this.f17838b);
            this.f17839c.m33593s5(this.f17841e, layoutState, this.f17840d, false);
            ((ExpandableEmojiTextView) this.f17842f).setTag(Long.valueOf(this.f17840d.f13380a));
            return s.a;
        }
    }

    /* renamed from: e.a.a.c.d$b */
    /* loaded from: classes3-dex2jar.jar:e/a/a/c/d$b.class */
    public static final class View$OnClickListenerC5187b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f17843a;

        /* renamed from: b */
        public final /* synthetic */ Object f17844b;

        /* renamed from: c */
        public final /* synthetic */ Object f17845c;

        public View$OnClickListenerC5187b(int i, Object obj, Object obj2) {
            this.f17843a = i;
            this.f17844b = obj;
            this.f17845c = obj2;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f17843a;
            if (i == 0) {
                AbstractC5418j abstractC5418j = ((ViewTreeObserver$OnPreDrawListenerC5184d) this.f17844b).f17817i0;
                C5174c3 c5174c3 = (C5174c3) this.f17845c;
                abstractC5418j.mo33151q0(c5174c3.f17688c, c5174c3.f17689d);
            } else if (i != 1) {
                throw null;
            } else {
                AbstractC5418j abstractC5418j2 = ((ViewTreeObserver$OnPreDrawListenerC5184d) this.f17844b).f17817i0;
                C5174c3 c5174c32 = (C5174c3) this.f17845c;
                abstractC5418j2.mo33159h1(c5174c32.f17689d, c5174c32.f17688c);
            }
        }
    }

    /* renamed from: e.a.a.c.d$b0 */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$b0.class */
    public static final class C5188b0 extends m implements a<Integer> {

        /* renamed from: b */
        public final /* synthetic */ View f17846b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5188b0(View view) {
            super(0);
            this.f17846b = view;
        }

        public Object invoke() {
            return Integer.valueOf(C19291g.m13612L(this.f17846b.getContext(), C2752R.attr.tcx_messageMarkedImportantBackgroundColor));
        }
    }

    /* renamed from: e.a.a.c.d$c0 */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$c0.class */
    public static final class C5189c0 extends m implements a<LinkClickMovementMethod> {

        /* renamed from: c */
        public final /* synthetic */ View f17848c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5189c0(View view) {
            super(0);
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
            this.f17848c = view;
        }

        public Object invoke() {
            Context context = this.f17848c.getContext();
            s1.z.c.l.d(context, "itemView.context");
            return new LinkClickMovementMethod(context, new C5181c7(this));
        }
    }

    /* renamed from: e.a.a.c.d$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$d.class */
    public static final class C5190d extends m implements a<Float> {

        /* renamed from: b */
        public final /* synthetic */ View f17849b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5190d(View view) {
            super(0);
            this.f17849b = view;
        }

        public Object invoke() {
            Context context = this.f17849b.getContext();
            s1.z.c.l.d(context, "itemView.context");
            Resources resources = context.getResources();
            s1.z.c.l.d(resources, "itemView.context.resources");
            Configuration configuration = resources.getConfiguration();
            s1.z.c.l.d(configuration, "res.configuration");
            return Float.valueOf((resources.getDimensionPixelSize(2131165612) + resources.getDimensionPixelSize(C2752R.dimen.icon_tcx_default_size)) * (configuration.getLayoutDirection() == 1 ? -1.0f : 1.0f));
        }
    }

    /* renamed from: e.a.a.c.d$d0 */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$d0.class */
    public static final class C5191d0 extends m implements l<Integer, Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5191d0(boolean z, String str, GoogleAttribution googleAttribution, Mention[] mentionArr, boolean z2) {
            super(1);
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
        }

        /* renamed from: d */
        public Object m33573d(Object obj) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33126h(((Number) obj).intValue());
            return Boolean.TRUE;
        }
    }

    /* renamed from: e.a.a.c.d$e */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$e.class */
    public static final class View$OnClickListenerC5192e implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C5174c3 f17852b;

        /* renamed from: c */
        public final /* synthetic */ PlayerVisualizerView f17853c;

        /* renamed from: d */
        public final /* synthetic */ View f17854d;

        /* renamed from: e */
        public final /* synthetic */ AppCompatImageView f17855e;

        /* renamed from: f */
        public final /* synthetic */ CountDownChronometer f17856f;

        /* renamed from: e.a.a.c.d$e$a */
        /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$e$a.class */
        public static final class C5193a implements AbstractC5732i {
            public C5193a() {
                View$OnClickListenerC5192e.this = r4;
            }

            @Override // p193e.p194a.p195a.p200c.p222s8.AbstractC5732i
            /* renamed from: C0 */
            public void mo30222C0(int i) {
            }

            @Override // p193e.p194a.p195a.p200c.p222s8.AbstractC5732i
            /* renamed from: a */
            public void mo30221a(int i) {
                if (i != 0) {
                    if (i != 2) {
                        View$OnClickListenerC5192e.this.f17855e.setImageResource(C2752R.C2753drawable.ic_voice_clip_play);
                        View$OnClickListenerC5192e.this.f17856f.stop();
                        return;
                    }
                    View$OnClickListenerC5192e.this.f17855e.setImageResource(C2752R.C2753drawable.ic_voice_clip_play);
                    View$OnClickListenerC5192e.this.f17856f.m35097a();
                    View$OnClickListenerC5192e view$OnClickListenerC5192e = View$OnClickListenerC5192e.this;
                    ViewTreeObserver$OnPreDrawListenerC5184d.m33664N4(ViewTreeObserver$OnPreDrawListenerC5184d.this, true, view$OnClickListenerC5192e.f17854d);
                    return;
                }
                View$OnClickListenerC5192e view$OnClickListenerC5192e2 = View$OnClickListenerC5192e.this;
                ViewTreeObserver$OnPreDrawListenerC5184d.m33663O4(ViewTreeObserver$OnPreDrawListenerC5184d.this, true, view$OnClickListenerC5192e2.f17854d);
                View$OnClickListenerC5192e.this.f17855e.setImageResource(C2752R.C2753drawable.ic_voice_clip_pause);
                CountDownChronometer countDownChronometer = View$OnClickListenerC5192e.this.f17856f;
                long elapsedRealtime = SystemClock.elapsedRealtime();
                TimeUnit timeUnit = TimeUnit.SECONDS;
                Entity entity = View$OnClickListenerC5192e.this.f17852b.f17689d;
                Objects.requireNonNull(entity, "null cannot be cast to non-null type com.truecaller.messaging.data.types.AudioEntity");
                countDownChronometer.setChronometerBase(timeUnit.toMillis(((AudioEntity) entity).f13170v) + elapsedRealtime);
                View$OnClickListenerC5192e.this.f17856f.start();
                View$OnClickListenerC5192e view$OnClickListenerC5192e3 = View$OnClickListenerC5192e.this;
                ViewTreeObserver$OnPreDrawListenerC5184d.m33664N4(ViewTreeObserver$OnPreDrawListenerC5184d.this, false, view$OnClickListenerC5192e3.f17854d);
            }

            @Override // p193e.p194a.p195a.p200c.p222s8.AbstractC5732i
            /* renamed from: b */
            public void mo30220b(int i) {
            }

            @Override // p193e.p194a.p195a.p200c.p222s8.AbstractC5732i
            /* renamed from: c */
            public void mo30219c() {
                ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33166K();
                PlayerVisualizerView playerVisualizerView = View$OnClickListenerC5192e.this.f17853c;
                s1.z.c.l.d(playerVisualizerView, "visualizerView");
                playerVisualizerView.setEnabled(false);
                View$OnClickListenerC5192e view$OnClickListenerC5192e = View$OnClickListenerC5192e.this;
                ViewTreeObserver$OnPreDrawListenerC5184d.m33663O4(ViewTreeObserver$OnPreDrawListenerC5184d.this, false, view$OnClickListenerC5192e.f17854d);
                View$OnClickListenerC5192e.this.f17856f.m35097a();
                View$OnClickListenerC5192e view$OnClickListenerC5192e2 = View$OnClickListenerC5192e.this;
                ViewTreeObserver$OnPreDrawListenerC5184d.m33664N4(ViewTreeObserver$OnPreDrawListenerC5184d.this, true, view$OnClickListenerC5192e2.f17854d);
            }
        }

        public View$OnClickListenerC5192e(C5174c3 c5174c3, PlayerVisualizerView playerVisualizerView, View view, AppCompatImageView appCompatImageView, CountDownChronometer countDownChronometer) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
            this.f17852b = c5174c3;
            this.f17853c = playerVisualizerView;
            this.f17854d = view;
            this.f17855e = appCompatImageView;
            this.f17856f = countDownChronometer;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC5418j abstractC5418j = ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0;
            Entity entity = this.f17852b.f17689d;
            PlayerVisualizerView playerVisualizerView = this.f17853c;
            s1.z.c.l.d(playerVisualizerView, "visualizerView");
            abstractC5418j.mo33157i1(entity, playerVisualizerView, new C5193a());
        }
    }

    /* renamed from: e.a.a.c.d$e0 */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$e0.class */
    public static final class C5194e0 extends m implements l<Integer, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5194e0() {
            super(1);
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
        }

        /* renamed from: d */
        public Object m33572d(Object obj) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33125n(((Number) obj).intValue());
            return s.a;
        }
    }

    /* renamed from: e.a.a.c.d$f */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$f.class */
    public static final class C5195f extends m implements l<Integer, Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5195f() {
            super(1);
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
        }

        /* renamed from: d */
        public Object m33571d(Object obj) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33126h(((Number) obj).intValue());
            return Boolean.TRUE;
        }
    }

    /* renamed from: e.a.a.c.d$f0 */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$f0.class */
    public static final class View$OnClickListenerC5196f0 implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ l f17861b;

        public View$OnClickListenerC5196f0(l lVar) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
            this.f17861b = lVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Integer valueOf = Integer.valueOf(ViewTreeObserver$OnPreDrawListenerC5184d.this.getAdapterPosition());
            if (valueOf.intValue() == -1) {
                valueOf = null;
            }
            if (valueOf != null) {
                this.f17861b.d(Integer.valueOf(valueOf.intValue()));
            }
        }
    }

    /* renamed from: e.a.a.c.d$g */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$g.class */
    public static final class C5197g extends m implements l<Integer, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5197g() {
            super(1);
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
        }

        /* renamed from: d */
        public Object m33570d(Object obj) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33125n(((Number) obj).intValue());
            return s.a;
        }
    }

    /* renamed from: e.a.a.c.d$g0 */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$g0.class */
    public static final class View$OnClickListenerC5198g0 implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C5174c3 f17864b;

        public View$OnClickListenerC5198g0(C5174c3 c5174c3) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
            this.f17864b = c5174c3;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC5418j abstractC5418j = ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0;
            C5174c3 c5174c3 = this.f17864b;
            abstractC5418j.mo33151q0(c5174c3.f17688c, c5174c3.f17689d);
        }
    }

    /* renamed from: e.a.a.c.d$h */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$h.class */
    public static final class C5199h extends m implements l<Integer, Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5199h() {
            super(1);
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
        }

        /* renamed from: d */
        public Object m33569d(Object obj) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33126h(((Number) obj).intValue());
            return Boolean.TRUE;
        }
    }

    /* renamed from: e.a.a.c.d$h0 */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$h0.class */
    public static final class View$OnClickListenerC5200h0 implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C5174c3 f17867b;

        /* renamed from: c */
        public final /* synthetic */ C10872f f17868c;

        public View$OnClickListenerC5200h0(C5174c3 c5174c3, C10872f c10872f) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
            this.f17867b = c5174c3;
            this.f17868c = c10872f;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Message message = this.f17867b.f17688c;
            if (message != null) {
                AbstractC5418j abstractC5418j = ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0;
                String str = message.f13382c.f11572e;
                s1.z.c.l.d(str, "participant.normalizedAddress");
                abstractC5418j.mo33132e(str, this.f17868c.f32284c.f32332m, "infocard");
                String m35025a = message.m35025a();
                s1.z.c.l.d(m35025a, "buildMessageText()");
                String str2 = message.f13382c.f11572e;
                C10872f c10872f = this.f17868c;
                C10328a c10328a = new C10328a(m35025a, str2, "non-spam", c10872f.f32288g, c10872f.f32289h, c10872f.f32284c.f32332m);
                C8749v.C8751b c8751b = C8749v.f26714k;
                List<C10328a> m3962T1 = C25225a.m3962T1(c10328a);
                String str3 = c10328a.f30674b;
                if (str3 == null) {
                    str3 = "";
                }
                C8749v m28089a = c8751b.m28089a(m3962T1, str3, c10328a.f30678f);
                View view2 = ViewTreeObserver$OnPreDrawListenerC5184d.this.itemView;
                s1.z.c.l.d(view2, "itemView");
                Context context = view2.getContext();
                Objects.requireNonNull(context, "null cannot be cast to non-null type com.truecaller.messaging.conversation.ConversationActivity");
                m28089a.show(((ConversationActivity) context).getSupportFragmentManager(), C8749v.f26713j);
            }
        }
    }

    /* renamed from: e.a.a.c.d$i */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$i.class */
    public static final class View$OnClickListenerC5201i implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ double f17870b;

        /* renamed from: c */
        public final /* synthetic */ double f17871c;

        /* renamed from: d */
        public final /* synthetic */ String f17872d;

        /* renamed from: e */
        public final /* synthetic */ int f17873e;

        public View$OnClickListenerC5201i(double d, double d2, String str, int i) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r5;
            this.f17870b = d;
            this.f17871c = d2;
            this.f17872d = str;
            this.f17873e = i;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33156k(this.f17870b, this.f17871c, this.f17872d, this.f17873e);
        }
    }

    /* renamed from: e.a.a.c.d$i0 */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$i0.class */
    public static final class C5202i0 extends m implements l<CardFeedBackType, s> {

        /* renamed from: b */
        public final /* synthetic */ C9711b f17874b;

        /* renamed from: c */
        public final /* synthetic */ ViewGroup f17875c;

        /* renamed from: d */
        public final /* synthetic */ ViewTreeObserver$OnPreDrawListenerC5184d f17876d;

        /* renamed from: e */
        public final /* synthetic */ AbstractC8852j f17877e;

        /* renamed from: f */
        public final /* synthetic */ AbstractC5418j.AbstractC5420b f17878f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5202i0(C9711b c9711b, ViewGroup viewGroup, ViewTreeObserver$OnPreDrawListenerC5184d viewTreeObserver$OnPreDrawListenerC5184d, C9711b c9711b2, Message message, AbstractC8852j abstractC8852j, AbstractC5418j.AbstractC5420b abstractC5420b, C5174c3 c5174c3) {
            super(1);
            this.f17874b = c9711b;
            this.f17875c = viewGroup;
            this.f17876d = viewTreeObserver$OnPreDrawListenerC5184d;
            this.f17877e = abstractC8852j;
            this.f17878f = abstractC5420b;
        }

        /* renamed from: d */
        public Object m33568d(Object obj) {
            FeedbackGivenState feedbackGivenState;
            CardFeedBackType cardFeedBackType = (CardFeedBackType) obj;
            s1.z.c.l.e(cardFeedBackType, "feedbackType");
            C9711b c9711b = this.f17874b;
            int ordinal = cardFeedBackType.getFeedbackSubclass().ordinal();
            if (ordinal == 0) {
                feedbackGivenState = FeedbackGivenState.POSITIVE;
            } else if (ordinal == 1) {
                this.f17876d.mo33673F1();
                feedbackGivenState = FeedbackGivenState.NEGATIVE;
            } else if (ordinal != 2) {
                throw new i();
            } else {
                feedbackGivenState = FeedbackGivenState.DISMISS;
            }
            Objects.requireNonNull(c9711b);
            s1.z.c.l.e(feedbackGivenState, "<set-?>");
            c9711b.f29341c = feedbackGivenState;
            return s.a;
        }
    }

    /* renamed from: e.a.a.c.d$j */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$j.class */
    public static final class View$OnClickListenerC5203j implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ String f17880b;

        public View$OnClickListenerC5203j(int i, String str) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
            this.f17880b = str;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33162S0(this.f17880b);
        }
    }

    /* renamed from: e.a.a.c.d$k */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$k.class */
    public static final class C5204k extends m implements l<Integer, s> {

        /* renamed from: b */
        public static final C5204k f17881b = new C5204k();

        public C5204k() {
            super(1);
        }

        /* renamed from: d */
        public Object m33567d(Object obj) {
            ((Number) obj).intValue();
            return s.a;
        }
    }

    /* renamed from: e.a.a.c.d$l */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$l.class */
    public static final class View$OnClickListenerC5205l implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ Message f17883b;

        public View$OnClickListenerC5205l(Message message) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
            this.f17883b = message;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33155k0(this.f17883b);
        }
    }

    /* renamed from: e.a.a.c.d$m */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$m.class */
    public static final class View$OnClickListenerC5206m implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ Message f17885b;

        public View$OnClickListenerC5206m(Message message) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
            this.f17885b = message;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33155k0(this.f17885b);
        }
    }

    /* renamed from: e.a.a.c.d$n */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$n.class */
    public static final class View$OnClickListenerC5207n implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ Message f17887b;

        public View$OnClickListenerC5207n(Message message) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
            this.f17887b = message;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33155k0(this.f17887b);
        }
    }

    /* renamed from: e.a.a.c.d$o */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$o.class */
    public static final class View$OnClickListenerC5208o implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C5174c3 f17889b;

        public View$OnClickListenerC5208o(C5174c3 c5174c3) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
            this.f17889b = c5174c3;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC5418j abstractC5418j = ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0;
            C5174c3 c5174c3 = this.f17889b;
            abstractC5418j.mo33159h1(c5174c3.f17689d, c5174c3.f17688c);
        }
    }

    /* renamed from: e.a.a.c.d$p */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$p.class */
    public static final class C5209p extends m implements l<Integer, Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5209p() {
            super(1);
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
        }

        /* renamed from: d */
        public Object m33566d(Object obj) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33126h(((Number) obj).intValue());
            return Boolean.TRUE;
        }
    }

    /* renamed from: e.a.a.c.d$q */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$q.class */
    public static final class C5210q extends m implements l<View, s> {

        /* renamed from: c */
        public final /* synthetic */ String f17892c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5210q(String str, String str2, Uri uri, LinkPreviewType linkPreviewType, String str3) {
            super(1);
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
            this.f17892c = str3;
        }

        /* renamed from: d */
        public Object m33565d(Object obj) {
            s1.z.c.l.e((View) obj, "it");
            ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33154k1(this.f17892c);
            return s.a;
        }
    }

    /* renamed from: e.a.a.c.d$r */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$r.class */
    public static final class View$OnClickListenerC5211r implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C5174c3 f17894b;

        public View$OnClickListenerC5211r(C5174c3 c5174c3) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
            this.f17894b = c5174c3;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC5418j abstractC5418j = ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0;
            C5174c3 c5174c3 = this.f17894b;
            abstractC5418j.mo33159h1(c5174c3.f17689d, c5174c3.f17688c);
        }
    }

    /* renamed from: e.a.a.c.d$s */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$s.class */
    public static final class C5212s extends m implements l<Integer, Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5212s() {
            super(1);
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
        }

        /* renamed from: d */
        public Object m33564d(Object obj) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33126h(((Number) obj).intValue());
            return Boolean.TRUE;
        }
    }

    /* renamed from: e.a.a.c.d$t */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$t.class */
    public static final class C5213t extends m implements l<Integer, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5213t() {
            super(1);
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
        }

        /* renamed from: d */
        public Object m33563d(Object obj) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33152q(((Number) obj).intValue());
            return s.a;
        }
    }

    /* renamed from: e.a.a.c.d$u */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$u.class */
    public static final class View$OnClickListenerC5214u implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ QuickAction f17897a;

        /* renamed from: b */
        public final /* synthetic */ ViewTreeObserver$OnPreDrawListenerC5184d f17898b;

        /* renamed from: c */
        public final /* synthetic */ Message f17899c;

        public View$OnClickListenerC5214u(QuickAction quickAction, LinearLayout linearLayout, ViewTreeObserver$OnPreDrawListenerC5184d viewTreeObserver$OnPreDrawListenerC5184d, QuickAction[] quickActionArr, Message message) {
            this.f17897a = quickAction;
            this.f17898b = viewTreeObserver$OnPreDrawListenerC5184d;
            this.f17899c = message;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f17898b.f17817i0.mo33158i(this.f17899c, this.f17897a.f13450d);
        }
    }

    /* renamed from: e.a.a.c.d$v */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$v.class */
    public static final class View$OnClickListenerC5215v implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ Message f17901b;

        public View$OnClickListenerC5215v(Message message, boolean z) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
            this.f17901b = message;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33149x(this.f17901b);
        }
    }

    /* renamed from: e.a.a.c.d$w */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$w.class */
    public static final class View$OnClickListenerC5216w implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ Message f17903b;

        public View$OnClickListenerC5216w(Message message) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
            this.f17903b = message;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33163Q0(this.f17903b);
        }
    }

    /* renamed from: e.a.a.c.d$x */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$x.class */
    public static final class C5217x extends m implements l<Integer, Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5217x() {
            super(1);
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
        }

        /* renamed from: d */
        public Object m33562d(Object obj) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33126h(((Number) obj).intValue());
            return Boolean.TRUE;
        }
    }

    /* renamed from: e.a.a.c.d$y */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$y.class */
    public static final class View$OnClickListenerC5218y implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C5174c3 f17906b;

        public View$OnClickListenerC5218y(C5174c3 c5174c3) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
            this.f17906b = c5174c3;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC5418j abstractC5418j = ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0;
            C5174c3 c5174c3 = this.f17906b;
            abstractC5418j.mo33159h1(c5174c3.f17689d, c5174c3.f17688c);
        }
    }

    /* renamed from: e.a.a.c.d$z */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d$z.class */
    public static final class C5219z extends m implements l<Integer, Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5219z() {
            super(1);
            ViewTreeObserver$OnPreDrawListenerC5184d.this = r4;
        }

        /* renamed from: d */
        public Object m33561d(Object obj) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33126h(((Number) obj).intValue());
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewTreeObserver$OnPreDrawListenerC5184d(View view, AbstractC5418j abstractC5418j) {
        super(view);
        s1.z.c.l.e(view, "itemView");
        s1.z.c.l.e(abstractC5418j, "listener");
        this.f17817i0 = abstractC5418j;
        this.f17806a = C19286f.m13660s(view, C2752R.C2754id.content_text);
        this.f17807b = C19286f.m13660s(view, C2752R.C2754id.content_bubble);
        this.f17808c = C19286f.m13660s(view, C2752R.C2754id.sender_text);
        g m13660s = C19286f.m13660s(view, C2752R.C2754id.sender_avatar);
        this.f17809d = m13660s;
        this.f17810e = C19286f.m13660s(view, C2752R.C2754id.button_message_undo);
        this.f17811f = C19286f.m13660s(view, C2752R.C2754id.forwardButton);
        this.f17812g = C19286f.m13660s(view, C2752R.C2754id.message_error);
        this.f17814h = C19286f.m13660s(view, C2752R.C2754id.views_container);
        this.f17816i = C19286f.m13660s(view, C2752R.C2754id.active_overlay);
        this.f17818j = C19286f.m13660s(view, C2752R.C2754id.reactions);
        this.f17819k = C19286f.m13660s(view, C2752R.C2754id.checkActionMode);
        this.f17820l = C19286f.m13660s(view, C2752R.C2754id.textMarkedImp);
        this.f17821m = C19286f.m13660s(view, C2752R.C2754id.neg_feedback_given);
        this.f17822n = C19286f.m13660s(view, 2131366275);
        this.f17823o = C19286f.m13660s(view, 2131366276);
        this.f17824p = C19286f.m13660s(view, C2752R.C2754id.bottom_action);
        this.f17825q = C19286f.m13660s(view, C2752R.C2754id.bottom_action_divider);
        this.f17826r = C19286f.m13660s(view, C2752R.C2754id.grouped_items_count);
        this.f17827s = C19286f.m13660s(view, C2752R.C2754id.grouped_items_icon);
        this.f17828t = C19286f.m13660s(view, C2752R.C2754id.history_status_icon);
        this.f17829u = C19286f.m13660s(view, C2752R.C2754id.history_timestamp);
        this.f17830v = C19286f.m13660s(view, C2752R.C2754id.history_type);
        this.f17831w = C19286f.m13660s(view, C2752R.C2754id.history_type_icon);
        this.f17832x = C19286f.m13660s(view, C2752R.C2754id.link_preview);
        this.f17833y = C19286f.m13660s(view, C2752R.C2754id.timestamp_sim_indicator);
        this.f17834z = C19286f.m13660s(view, C2752R.C2754id.textSendFeedback);
        this.f17784A = C19286f.m13660s(view, C2752R.C2754id.quickActionsContainer);
        this.f17785B = new TintedTextView(new ContextThemeWrapper(view.getContext(), (int) C2752R.style.Widget_Truecaller_TextView_TimestampSimIndicator));
        this.f17792M = C19291g.m13612L(view.getContext(), 2130969998);
        Context context = view.getContext();
        Object obj = C26467a.f74235a;
        this.f17793N = C26467a.C26471d.m1787a(context, 2131101237);
        this.f17794O = C25225a.m3978P1(new C5188b0(view));
        Context context2 = view.getContext();
        s1.z.c.l.d(context2, "itemView.context");
        this.f17795P = new C8243a(new C19235i0(context2));
        this.f17797R = view.getResources().getDimensionPixelOffset(C2752R.dimen.message_entity_spacing);
        this.f17798S = view.getResources().getDimension(C2752R.dimen.reaction_offset);
        this.f17799T = view.getResources().getDimensionPixelSize(2131165647);
        int dimensionPixelSize = view.getResources().getDimensionPixelSize(2131165623);
        int m28232h = C8605o.m28232h(view.getContext(), 14.0f);
        int i = this.f17799T;
        this.f17800U = (((i * 2) + m28232h) * 2) + dimensionPixelSize + i;
        n m3978P1 = C25225a.m3978P1(new C5189c0(view));
        this.f17801V = m3978P1;
        this.f17803X = C25225a.m3978P1(new C5190d(view));
        AvatarXView avatarXView = (AvatarXView) m13660s.getValue();
        if (avatarXView != null) {
            avatarXView.setPresenter(this.f17795P);
        }
        EmojiTextView m33641Y4 = m33641Y4();
        if (m33641Y4 != null) {
            m33641Y4.setMovementMethod((LinkClickMovementMethod) m3978P1.getValue());
        }
    }

    /* renamed from: N4 */
    public static final void m33664N4(ViewTreeObserver$OnPreDrawListenerC5184d viewTreeObserver$OnPreDrawListenerC5184d, boolean z, View view) {
        Objects.requireNonNull(viewTreeObserver$OnPreDrawListenerC5184d);
        View findViewById = view.findViewById(C2752R.C2754id.duration_indicator);
        s1.z.c.l.d(findViewById, "view.findViewById<View>(R.id.duration_indicator)");
        findViewById.setVisibility(z ? 0 : 4);
        viewTreeObserver$OnPreDrawListenerC5184d.m33590t5(view.findViewById(C2752R.C2754id.durationChronometer), !z);
    }

    /* renamed from: O4 */
    public static final void m33663O4(ViewTreeObserver$OnPreDrawListenerC5184d viewTreeObserver$OnPreDrawListenerC5184d, boolean z, View view) {
        Objects.requireNonNull(viewTreeObserver$OnPreDrawListenerC5184d);
        viewTreeObserver$OnPreDrawListenerC5184d.m33590t5(view.findViewById(C2752R.C2754id.visualizerView), z);
        viewTreeObserver$OnPreDrawListenerC5184d.m33590t5(view.findViewById(C2752R.C2754id.voiceClipSeekBar), !z);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: A1 */
    public void mo33680A1(l<? super Integer, s> lVar) {
        s1.z.c.l.e(lVar, "listener");
        TextView m33635a5 = m33635a5();
        if (m33635a5 != null) {
            m33635a5.setOnClickListener(new View$OnClickListenerC5196f0(lVar));
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: A3 */
    public void mo33679A3(String str, Uri uri, int i, int i2, C5174c3 c5174c3) {
        s1.z.c.l.e(uri, "previewUri");
        s1.z.c.l.e(c5174c3, "params");
        View view = c5174c3.f17686a.mo32614d(c5174c3.f17696k).f19150a;
        m33608m5(view, c5174c3);
        View findViewById = view.findViewById(C2752R.C2754id.duration_indicator);
        s1.z.c.l.d(findViewById, "frame.findViewById<TextV…(R.id.duration_indicator)");
        C19286f.m13687Q(findViewById);
        view.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        m33661P4(view);
        view.setOnClickListener(new View$OnClickListenerC5211r(c5174c3));
        view.setOnLongClickListener(new View$OnLongClickListenerC5281f7(this, new C5212s()));
        m33599p5(view, uri, i, i2, c5174c3);
        m33595r5(view, c5174c3);
    }

    @Override // p193e.p194a.p195a.p200c.C5475l.AbstractC5476b
    /* renamed from: B */
    public boolean mo33070B() {
        return this.f17787D;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: C0 */
    public void mo33678C0(String str) {
        s1.z.c.l.e(str, AnalyticsConstants.NAME);
        EmojiTextView m33623f5 = m33623f5();
        if (m33623f5 != null) {
            m33623f5.setText(str);
        }
        this.f17796Q = str;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: C3 */
    public void mo33677C3(boolean z) {
        m33590t5(m33619h5(), z);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: D0 */
    public void mo33676D0(boolean z) {
        int i;
        View view = this.itemView;
        if (z) {
            s1.z.c.l.d(view, "itemView");
            Context context = view.getContext();
            s1.z.c.l.d(context, "itemView.context");
            i = context.getResources().getDimensionPixelSize(C2752R.dimen.message_spacing);
        } else {
            i = 0;
        }
        view.setPaddingRelative(0, i, 0, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0033, code lost:
        if (r10 != null) goto L7;
     */
    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: D2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo33675D2(com.truecaller.messaging.data.types.ReplySnippet r7, java.lang.String r8, s1.z.b.l<? super java.lang.Integer, s1.s> r9) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "message"
            s1.z.c.l.e(r0, r1)
            r0 = r8
            java.lang.String r1 = "sender"
            s1.z.c.l.e(r0, r1)
            r0 = r9
            java.lang.String r1 = "listener"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            r1 = 1
            r0.mo33662P2(r1)
            r0 = r6
            android.view.ViewGroup r0 = r0.m33643X4()
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L39
            r0 = r10
            r1 = 2131366791(0x7f0a1387, float:1.8353486E38)
            android.view.View r0 = r0.findViewById(r1)
            com.truecaller.messaging.conversation.MessageSnippetView r0 = (com.truecaller.messaging.conversation.MessageSnippetView) r0
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L39
            goto L48
        L39:
            r0 = r6
            android.view.View r0 = r0.itemView
            r1 = 2131366791(0x7f0a1387, float:1.8353486E38)
            android.view.View r0 = r0.findViewById(r1)
            com.truecaller.messaging.conversation.MessageSnippetView r0 = (com.truecaller.messaging.conversation.MessageSnippetView) r0
            r10 = r0
        L48:
            r0 = r10
            if (r0 == 0) goto L68
            int r0 = com.truecaller.messaging.conversation.MessageSnippetView.f13034i
            r11 = r0
            r0 = r10
            r1 = r7
            r2 = r8
            r3 = 1
            r0.m35113e(r1, r2, r3)
            r0 = r10
            e.a.a.c.d$f0 r1 = new e.a.a.c.d$f0
            r2 = r1
            r3 = r6
            r4 = r9
            r2.<init>(r4)
            r0.setOnClickListener(r1)
        L68:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.ViewTreeObserver$OnPreDrawListenerC5184d.mo33675D2(com.truecaller.messaging.data.types.ReplySnippet, java.lang.String, s1.z.b.l):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x019a, code lost:
        if (r12.f17677C != false) goto L28;
     */
    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: D3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo33674D3(android.net.Uri r9, int r10, int r11, p193e.p194a.p195a.p200c.C5174c3 r12) {
        /*
            Method dump skipped, instructions count: 421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.ViewTreeObserver$OnPreDrawListenerC5184d.mo33674D3(android.net.Uri, int, int, e.a.a.c.c3):void");
    }

    @Override // p193e.p194a.p195a.p200c.C5475l.AbstractC5476b
    /* renamed from: F */
    public String mo33069F() {
        return this.f17786C;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: F1 */
    public void mo33673F1() {
        m33590t5(m33622g5(), false);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: F4 */
    public void mo33672F4(boolean z, boolean z2) {
        m33590t5((TextView) this.f17820l.getValue(), z);
        int intValue = z2 ? ((Number) this.f17794O.getValue()).intValue() : 0;
        this.f17790K = intValue;
        this.itemView.setBackgroundColor(C26493a.m1752g(this.f17791L, intValue));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: I0 */
    public void mo33671I0(boolean z) {
        m33590t5((View) this.f17821m.getValue(), z);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: I2 */
    public void mo33670I2(C5174c3 c5174c3, boolean z) {
        s1.z.c.l.e(c5174c3, "params");
        TextView m33619h5 = m33619h5();
        if (m33619h5 != null) {
            m33619h5.setText(m33657R4(c5174c3, z));
            m33619h5.setCompoundDrawablesRelativeWithIntrinsicBounds(c5174c3.f17701p, 0, 0, 0);
            m33619h5.setTextColor(c5174c3.f17695j);
            Drawable drawable = m33619h5.getCompoundDrawablesRelative()[0];
            if (drawable != null) {
                drawable.setTint(c5174c3.f17695j);
            }
        }
        TintedTextView tintedTextView = this.f17785B;
        tintedTextView.setText(m33657R4(c5174c3, true));
        tintedTextView.setTextColor(c5174c3.f17695j);
        tintedTextView.setCompoundDrawablesWithIntrinsicBounds(c5174c3.f17701p, 0, 0, 0);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: K0 */
    public void mo33669K0(C5174c3 c5174c3, String str, float f) {
        s1.z.c.l.e(c5174c3, "params");
        s1.z.c.l.e(str, "text");
        View view = c5174c3.f17686a.mo32613e(c5174c3.f17696k).f19150a;
        EmojiTextView emojiTextView = (EmojiTextView) view.findViewById(C2752R.C2754id.content_text);
        emojiTextView.setEmojiScale(f);
        s1.z.c.l.d(emojiTextView, "emojiTextView");
        emojiTextView.setText(C8578e0.m28344a(str));
        emojiTextView.setOnClickListener(new View$OnClickListenerC5196f0(new C5197g()));
        emojiTextView.setOnLongClickListener(new View$OnLongClickListenerC5281f7(this, new C5199h()));
        m33661P4(view);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: L1 */
    public void mo33668L1(C5485l6 c5485l6, Message message) {
        s1.z.c.l.e(c5485l6, "params");
        s1.z.c.l.e(message, "message");
        ImageView imageView = (ImageView) this.f17828t.getValue();
        if (imageView != null) {
            m33590t5(imageView, c5485l6.f18632a != null);
            imageView.setImageDrawable(c5485l6.f18632a);
        }
        ImageView imageView2 = (ImageView) this.f17831w.getValue();
        if (imageView2 != null) {
            m33590t5(imageView2, c5485l6.f18633b != null);
            imageView2.setImageDrawable(c5485l6.f18633b);
        }
        TextView textView = (TextView) this.f17830v.getValue();
        if (textView != null) {
            textView.setText(c5485l6.f18634c);
        }
        TextView textView2 = (TextView) this.f17829u.getValue();
        if (textView2 != null) {
            textView2.setText(c5485l6.f18635d);
        }
        ViewGroup m33639Z4 = m33639Z4();
        if (m33639Z4 != null) {
            m33639Z4.setOnClickListener(new View$OnClickListenerC5207n(message));
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: M2 */
    public void mo33667M2(double d, double d2, String str, int i) {
        TextView m33651U4 = m33651U4();
        if (m33651U4 != null) {
            m33651U4.setCompoundDrawablesRelativeWithIntrinsicBounds(C2752R.C2753drawable.tcx_icon_direction_22dp, 0, 0, 0);
            View view = this.itemView;
            s1.z.c.l.d(view, "itemView");
            m33651U4.setText(view.getContext().getString(C2752R.string.ConversationGetDirections));
            m33651U4.setOnClickListener(new View$OnClickListenerC5201i(d, d2, str, i));
            m33590t5(m33651U4, true);
        }
        m33590t5(m33648V4(), true);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: N1 */
    public void mo33666N1() {
        mo33671I0(false);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: N2 */
    public void mo33665N2() {
        m33590t5(m33651U4(), false);
        m33590t5(m33648V4(), false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
        if (r6 != null) goto L7;
     */
    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: P2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo33662P2(boolean r5) {
        /*
            r4 = this;
            r0 = r4
            android.view.ViewGroup r0 = r0.m33643X4()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L1b
            r0 = r6
            r1 = 2131366791(0x7f0a1387, float:1.8353486E38)
            android.view.View r0 = r0.findViewById(r1)
            com.truecaller.messaging.conversation.MessageSnippetView r0 = (com.truecaller.messaging.conversation.MessageSnippetView) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L1b
            goto L29
        L1b:
            r0 = r4
            android.view.View r0 = r0.itemView
            r1 = 2131366791(0x7f0a1387, float:1.8353486E38)
            android.view.View r0 = r0.findViewById(r1)
            com.truecaller.messaging.conversation.MessageSnippetView r0 = (com.truecaller.messaging.conversation.MessageSnippetView) r0
            r6 = r0
        L29:
            r0 = r6
            if (r0 == 0) goto L38
            r0 = r4
            r1 = r6
            r2 = r5
            r0.m33590t5(r1, r2)
            r0 = r6
            r1 = 0
            r0.setDismissActionVisible(r1)
        L38:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.ViewTreeObserver$OnPreDrawListenerC5184d.mo33662P2(boolean):void");
    }

    /* renamed from: P4 */
    public final void m33661P4(View view) {
        ViewGroup m33643X4 = m33643X4();
        if (m33643X4 != null) {
            m33643X4.addView(view);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.topMargin = this.f17797R;
            view.setLayoutParams(marginLayoutParams);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v97, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r3v9, types: [int[], int[][]] */
    /* renamed from: Q4 */
    public final void m33660Q4(View view, C5174c3 c5174c3, int i, int i2) {
        String str;
        String str2;
        m33608m5(view, c5174c3);
        AppCompatImageView appCompatImageView = (AppCompatImageView) view.findViewById(2131364203);
        appCompatImageView.setImageResource(c5174c3.f17687b.icon);
        if (c5174c3.f17687b.ordinal() != 4) {
            String str3 = c5174c3.f17675A;
            str = str3 == null || str3.length() == 0 ? view.getContext().getString(c5174c3.f17687b.title) : c5174c3.f17675A;
            s1.z.c.l.d(str, "if (params.fileTitle.isN…le) else params.fileTitle");
        } else {
            Entity entity = c5174c3.f17689d;
            Objects.requireNonNull(entity, "null cannot be cast to non-null type com.truecaller.messaging.data.types.VCardEntity");
            VCardEntity vCardEntity = (VCardEntity) entity;
            Context context = view.getContext();
            s1.z.c.l.d(context, "view.context");
            str = C10480a.m26010V0(vCardEntity, context);
        }
        View findViewById = view.findViewById(2131366469);
        Objects.requireNonNull(findViewById, "null cannot be cast to non-null type android.widget.TextView");
        ((TextView) findViewById).setText(str);
        if (c5174c3.f17696k) {
            View findViewById2 = view.findViewById(2131366469);
            Objects.requireNonNull(findViewById2, "null cannot be cast to non-null type android.widget.TextView");
            ((TextView) findViewById2).setTextColor(i2);
            s1.z.c.l.d(appCompatImageView, "iconView");
            Context context2 = appCompatImageView.getContext();
            Object obj = C26467a.f74235a;
            appCompatImageView.setBackground(C26467a.C26470c.m1789b(context2, C2752R.C2753drawable.white_circle_bg));
            appCompatImageView.setImageTintList(new ColorStateList(new int[]{new int[0]}, new int[]{c5174c3.f17692g}));
            appCompatImageView.setBackgroundTintList(ColorStateList.valueOf(c5174c3.f17693h));
        }
        view.setOnClickListener(new View$OnClickListenerC5218y(c5174c3));
        view.setOnLongClickListener(new View$OnLongClickListenerC5281f7(this, new C5219z()));
        TextView textView = (TextView) view.findViewById(C2752R.C2754id.size);
        if (textView != null) {
            textView.setVisibility((w3.c.a.a.a.h.j(c5174c3.f17676B) || c5174c3.f17687b == AttachmentType.VCARD) ? 8 : 0);
            textView.setText(c5174c3.f17676B);
            textView.setTextColor(i);
        }
        TextView textView2 = (TextView) view.findViewById(2131366682);
        if (textView2 != null) {
            textView2.setVisibility(w3.c.a.a.a.h.j(c5174c3.f17711z) ? 8 : 0);
            String str4 = c5174c3.f17711z;
            if (str4 != null) {
                Locale locale = Locale.ENGLISH;
                s1.z.c.l.d(locale, "Locale.ENGLISH");
                str2 = str4.toUpperCase(locale);
                s1.z.c.l.d(str2, "(this as java.lang.String).toUpperCase(locale)");
            } else {
                str2 = null;
            }
            textView2.setText(str2);
            textView2.setTextColor(i);
            if (w3.c.a.a.a.h.j(c5174c3.f17676B) || c5174c3.f17687b == AttachmentType.VCARD) {
                textView2.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
            } else {
                textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, C2752R.C2753drawable.ic_tcx_dot, 0);
            }
            if (textView == null || !C19286f.m13663p(textView)) {
                Context context3 = textView2.getContext();
                s1.z.c.l.d(context3, "typeView.context");
                textView2.setPaddingRelative(0, 0, context3.getResources().getDimensionPixelSize(C2752R.dimen.message_horizontal_padding), 0);
            } else {
                textView2.setPaddingRelative(0, 0, 0, 0);
            }
        }
        m33661P4(view);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: R2 */
    public void mo33659R2(Uri uri, int i, int i2, C5174c3 c5174c3) {
        s1.z.c.l.e(uri, "image");
        s1.z.c.l.e(c5174c3, "params");
        View view = c5174c3.f17686a.mo32614d(c5174c3.f17696k).f19150a;
        m33608m5(view, c5174c3);
        View findViewById = view.findViewById(C2752R.C2754id.duration_indicator);
        s1.z.c.l.d(findViewById, "frame.findViewById<TextV…(R.id.duration_indicator)");
        C19286f.m13687Q(findViewById);
        view.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        m33661P4(view);
        view.setOnClickListener(new View$OnClickListenerC5208o(c5174c3));
        view.setOnLongClickListener(new View$OnLongClickListenerC5281f7(this, new C5209p()));
        m33599p5(view, uri, i, i2, c5174c3);
        m33595r5(view, c5174c3);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: R3 */
    public void mo33658R3(int i) {
        EmojiTextView m33641Y4 = m33641Y4();
        if (m33641Y4 != null) {
            m33641Y4.setTextColor(i);
        }
    }

    /* renamed from: R4 */
    public final SpannableStringBuilder m33657R4(C5174c3 c5174c3, boolean z) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (z) {
            if (c5174c3.f17702q > 0) {
                View view = this.itemView;
                s1.z.c.l.d(view, "itemView");
                spannableStringBuilder.append((CharSequence) view.getContext().getString(c5174c3.f17702q)).append((CharSequence) " • ");
            }
            if (c5174c3.f17680F > 0) {
                View view2 = this.itemView;
                s1.z.c.l.d(view2, "itemView");
                spannableStringBuilder.append((CharSequence) view2.getContext().getString(c5174c3.f17680F));
                if (c5174c3.f17681G > 0) {
                    spannableStringBuilder.append((CharSequence) StringConstant.SPACE);
                    View view3 = this.itemView;
                    s1.z.c.l.d(view3, "itemView");
                    spannableStringBuilder.append((CharSequence) view3.getContext().getString(c5174c3.f17681G));
                }
                if (c5174c3.f17690e > 0) {
                    spannableStringBuilder.append((CharSequence) StringConstant.SPACE);
                    View view4 = this.itemView;
                    s1.z.c.l.d(view4, "itemView");
                    Context context = view4.getContext();
                    int i = c5174c3.f17690e;
                    Object obj = C26467a.f74235a;
                    Drawable m1789b = C26467a.C26470c.m1789b(context, i);
                    if (m1789b != null) {
                        C19291g.m13545i(m1789b, spannableStringBuilder, null, null, true, 6);
                    }
                }
                spannableStringBuilder.append((CharSequence) " • ");
            }
        } else if (c5174c3.f17690e > 0) {
            spannableStringBuilder.append((CharSequence) StringConstant.SPACE);
            View view5 = this.itemView;
            s1.z.c.l.d(view5, "itemView");
            Context context2 = view5.getContext();
            int i2 = c5174c3.f17690e;
            Object obj2 = C26467a.f74235a;
            Drawable m1789b2 = C26467a.C26470c.m1789b(context2, i2);
            if (m1789b2 != null) {
                C19291g.m13545i(m1789b2, spannableStringBuilder, null, null, true, 6);
            }
        }
        spannableStringBuilder.append((CharSequence) c5174c3.f17694i);
        return spannableStringBuilder;
    }

    /* renamed from: S4 */
    public final List<C5701c> m33656S4(Object obj) {
        return (obj == null || !(obj instanceof List)) ? s1.u.s.a : (List) obj;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: T0 */
    public void mo33655T0(float f) {
        EmojiTextView m33641Y4 = m33641Y4();
        if (m33641Y4 != null) {
            m33641Y4.setEmojiScale(f);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: T1 */
    public void mo33654T1(boolean z) {
        ViewGroup m33639Z4 = m33639Z4();
        if (m33639Z4 != null) {
            m33590t5(m33639Z4, z);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: T3 */
    public void mo33653T3(C5174c3 c5174c3, int i, int i2) {
        s1.z.c.l.e(c5174c3, "params");
        View view = c5174c3.f17686a.mo32611g(c5174c3.f17696k).f19150a;
        m33660Q4(view, c5174c3, i, i2);
        m33612k5(view, c5174c3);
        view.setOnClickListener(new View$OnClickListenerC5196f0(new C5213t()));
    }

    /* renamed from: T4 */
    public final FrameLayout m33652T4() {
        return (FrameLayout) this.f17816i.getValue();
    }

    /* renamed from: U4 */
    public final TextView m33651U4() {
        return (TextView) this.f17824p.getValue();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: V0 */
    public void mo33650V0(Uri uri, int i, C5174c3 c5174c3) {
        s1.z.c.l.e(uri, "image");
        s1.z.c.l.e(c5174c3, "params");
        mo33659R2(uri, i, i, c5174c3);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: V3 */
    public void mo33649V3(Message message, ExpandableEmojiTextView.LayoutStyle layoutStyle, ExpandableEmojiTextView.LayoutState layoutState, C10635s c10635s, Integer num) {
        s1.z.c.l.e(message, "message");
        s1.z.c.l.e(layoutStyle, "layoutStyle");
        s1.z.c.l.e(layoutState, "layoutState");
        EmojiTextView m33641Y4 = m33641Y4();
        if (m33641Y4 == null || !(m33641Y4 instanceof ExpandableEmojiTextView)) {
            return;
        }
        ExpandableEmojiTextView expandableEmojiTextView = (ExpandableEmojiTextView) m33641Y4;
        if (s1.z.c.l.a(expandableEmojiTextView.getTag(), Long.valueOf(message.f13380a))) {
            return;
        }
        expandableEmojiTextView.setItem(message);
        AbstractC5418j abstractC5418j = this.f17817i0;
        boolean mo33169g = abstractC5418j instanceof AbstractC5412d ? ((AbstractC5412d) abstractC5418j).mo33169g(message.f13380a) : false;
        expandableEmojiTextView.m35123h(layoutStyle, layoutState, mo33169g, num);
        m33585v5(expandableEmojiTextView);
        m33593s5(layoutStyle, layoutState, message, mo33169g);
        expandableEmojiTextView.setOnResizeClickListener(new C5186a0(expandableEmojiTextView, this, message, layoutStyle, layoutState, num, m33641Y4));
    }

    /* renamed from: V4 */
    public final View m33648V4() {
        return (View) this.f17825q.getValue();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: W3 */
    public void mo33647W3(l<? super Integer, s> lVar) {
        s1.z.c.l.e(lVar, "listener");
        FrameLayout m33652T4 = m33652T4();
        if (m33652T4 != null) {
            m33652T4.setOnClickListener(new View$OnClickListenerC5196f0(lVar));
        }
        View view = this.itemView;
        s1.z.c.l.d(view, "itemView");
        view.setOnClickListener(new View$OnClickListenerC5196f0(lVar));
    }

    /* renamed from: W4 */
    public final CheckBox m33646W4() {
        return (CheckBox) this.f17819k.getValue();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: X0 */
    public void mo33645X0(boolean z) {
        m33590t5(m33635a5(), z);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: X3 */
    public void mo33644X3(String str, String str2, Uri uri, LinkPreviewType linkPreviewType, String str3) {
        s1.z.c.l.e(str, "title");
        s1.z.c.l.e(str2, "description");
        s1.z.c.l.e(linkPreviewType, "type");
        s1.z.c.l.e(str3, "url");
        LinkPreviewMessageView linkPreviewMessageView = (LinkPreviewMessageView) this.f17832x.getValue();
        if (linkPreviewMessageView != null) {
            m33590t5(linkPreviewMessageView, true);
            linkPreviewMessageView.setTitle(str);
            linkPreviewMessageView.setDescription(str2);
            linkPreviewMessageView.m34973g1(uri, linkPreviewType);
            linkPreviewMessageView.setOnPlayButtonClickListener(new C5210q(str, str2, uri, linkPreviewType, str3));
        }
    }

    /* renamed from: X4 */
    public final ViewGroup m33643X4() {
        return (ViewGroup) this.f17814h.getValue();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: Y1 */
    public void mo33642Y1(Message message) {
        s1.z.c.l.e(message, "item");
        EmojiTextView m33641Y4 = m33641Y4();
        EmojiTextView emojiTextView = m33641Y4;
        if (!(m33641Y4 instanceof ExpandableEmojiTextView)) {
            emojiTextView = null;
        }
        ExpandableEmojiTextView expandableEmojiTextView = (ExpandableEmojiTextView) emojiTextView;
        if (expandableEmojiTextView != null) {
            expandableEmojiTextView.setItem(message);
            expandableEmojiTextView.invalidate();
        }
    }

    /* renamed from: Y4 */
    public final EmojiTextView m33641Y4() {
        return (EmojiTextView) this.f17806a.getValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0028, code lost:
        if (r11 != null) goto L7;
     */
    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: Z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo33640Z(java.lang.String r7, java.lang.String r8, android.net.Uri r9, int r10) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "title"
            s1.z.c.l.e(r0, r1)
            r0 = r8
            java.lang.String r1 = "text"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            android.view.ViewGroup r0 = r0.m33643X4()
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L2e
            r0 = r11
            r1 = 2131366791(0x7f0a1387, float:1.8353486E38)
            android.view.View r0 = r0.findViewById(r1)
            com.truecaller.messaging.conversation.MessageSnippetView r0 = (com.truecaller.messaging.conversation.MessageSnippetView) r0
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L2e
            goto L3d
        L2e:
            r0 = r6
            android.view.View r0 = r0.itemView
            r1 = 2131366791(0x7f0a1387, float:1.8353486E38)
            android.view.View r0 = r0.findViewById(r1)
            com.truecaller.messaging.conversation.MessageSnippetView r0 = (com.truecaller.messaging.conversation.MessageSnippetView) r0
            r11 = r0
        L3d:
            r0 = r11
            if (r0 == 0) goto L5a
            r0 = r6
            r1 = 1
            r0.mo33662P2(r1)
            r0 = r11
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r10
            r0.m35114d(r1, r2, r3, r4)
            r0 = r6
            r1 = r11
            e.a.a.c.d$k r2 = p193e.p194a.p195a.p200c.ViewTreeObserver$OnPreDrawListenerC5184d.C5204k.f17881b
            r0.m33597q5(r1, r2)
        L5a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.ViewTreeObserver$OnPreDrawListenerC5184d.mo33640Z(java.lang.String, java.lang.String, android.net.Uri, int):void");
    }

    /* renamed from: Z4 */
    public final ViewGroup m33639Z4() {
        return (ViewGroup) this.f17807b.getValue();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: a1 */
    public void mo33638a1(boolean z) {
        m33590t5(m33623f5(), z);
        m33590t5((AvatarXView) this.f17809d.getValue(), z);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: a2 */
    public void mo33637a2(int i) {
        EmojiTextView m33623f5 = m33623f5();
        if (m33623f5 != null) {
            m33623f5.setTextColor(i);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: a4 */
    public void mo33636a4(l<? super Integer, s> lVar) {
        s1.z.c.l.e(lVar, "listener");
        CheckBox m33646W4 = m33646W4();
        if (m33646W4 != null) {
            m33646W4.setOnClickListener(new View$OnClickListenerC5196f0(lVar));
        }
    }

    /* renamed from: a5 */
    public final TextView m33635a5() {
        return (TextView) this.f17812g.getValue();
    }

    /* renamed from: b5 */
    public final View m33634b5() {
        return (View) this.f17811f.getValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
        if (r11 != null) goto L7;
     */
    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: c2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo33633c2(boolean r8, boolean r9, int r10) {
        /*
            r7 = this;
            r0 = r7
            android.view.ViewGroup r0 = r0.m33643X4()
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L20
            r0 = r11
            r1 = 2131366783(0x7f0a137f, float:1.835347E38)
            android.view.View r0 = r0.findViewById(r1)
            android.widget.TextView r0 = (android.widget.TextView) r0
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L20
            goto L2f
        L20:
            r0 = r7
            android.view.View r0 = r0.itemView
            r1 = 2131366783(0x7f0a137f, float:1.835347E38)
            android.view.View r0 = r0.findViewById(r1)
            android.widget.TextView r0 = (android.widget.TextView) r0
            r11 = r0
        L2f:
            r0 = r11
            if (r0 == 0) goto L9d
            r0 = r7
            r1 = r11
            r2 = r8
            r0.m33590t5(r1, r2)
            r0 = r11
            r1 = r10
            r0.setTextColor(r1)
            r0 = r9
            if (r0 == 0) goto L4d
            r0 = 2131231489(0x7f080301, float:1.807906E38)
            r12 = r0
            goto L50
        L4d:
            r0 = 0
            r12 = r0
        L50:
            r0 = r11
            r1 = r12
            r0.setBackgroundResource(r1)
            r0 = r11
            r1 = r10
            android.content.res.ColorStateList r1 = android.content.res.ColorStateList.valueOf(r1)
            android.support.p001v4.media.session.MediaSessionCompat.m43212o1(r0, r1)
            r0 = r11
            int r0 = r0.getPaddingLeft()
            r13 = r0
            r0 = r11
            int r0 = r0.getPaddingTop()
            r12 = r0
            r0 = r11
            int r0 = r0.getPaddingRight()
            r14 = r0
            r0 = r11
            android.content.res.Resources r0 = r0.getResources()
            r15 = r0
            r0 = r9
            if (r0 == 0) goto L87
            r0 = 2131166432(0x7f0704e0, float:1.794711E38)
            r10 = r0
            goto L8b
        L87:
            r0 = 2131166403(0x7f0704c3, float:1.794705E38)
            r10 = r0
        L8b:
            r0 = r11
            r1 = r13
            r2 = r12
            r3 = r14
            r4 = r15
            r5 = r10
            float r4 = r4.getDimension(r5)
            int r4 = (int) r4
            r0.setPadding(r1, r2, r3, r4)
        L9d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.ViewTreeObserver$OnPreDrawListenerC5184d.mo33633c2(boolean, boolean, int):void");
    }

    /* renamed from: c5 */
    public final LinearLayout m33632c5() {
        return (LinearLayout) this.f17784A.getValue();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: d0 */
    public void mo33631d0(int i) {
        TextView m33635a5 = m33635a5();
        if (m33635a5 != null) {
            m33635a5.setText(i);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x01fd, code lost:
        if ((r11.length == 0) != false) goto L50;
     */
    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: d2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo33630d2(com.truecaller.messaging.data.types.Message r10, com.truecaller.messaging.data.types.Reaction[] r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 527
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.ViewTreeObserver$OnPreDrawListenerC5184d.mo33630d2(com.truecaller.messaging.data.types.Message, com.truecaller.messaging.data.types.Reaction[], boolean):void");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: d3 */
    public void mo33629d3(Message message) {
        s1.z.c.l.e(message, "message");
        ImageView imageView = (ImageView) this.f17827s.getValue();
        if (imageView != null) {
            imageView.setImageResource(C2752R.C2753drawable.ic_call_back);
        }
        TextView textView = (TextView) this.f17826r.getValue();
        if (textView != null) {
            View view = this.itemView;
            s1.z.c.l.d(view, "itemView");
            textView.setText(view.getContext().getString(C2752R.string.ConversationGroupedCallsCount, Integer.valueOf(message.f13368D)));
        }
        ViewGroup m33639Z4 = m33639Z4();
        if (m33639Z4 != null) {
            m33639Z4.setOnClickListener(new View$OnClickListenerC5205l(message));
        }
    }

    /* renamed from: d5 */
    public final LinearLayout m33628d5() {
        return (LinearLayout) this.f17818j.getValue();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: e0 */
    public void mo33627e0() {
        this.f17804Y = false;
        FrameLayout m33652T4 = m33652T4();
        if (m33652T4 != null) {
            m33652T4.setVisibility(8);
        }
        m33615j5(0.0f);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: e4 */
    public void mo33626e4() {
        LinearLayout m33628d5 = m33628d5();
        if (m33628d5 != null) {
            m33628d5.removeAllViews();
        }
    }

    /* renamed from: e5 */
    public final TextView m33625e5() {
        return (TextView) this.f17834z.getValue();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: f3 */
    public void mo33624f3(boolean z) {
        m33590t5((View) this.f17810e.getValue(), z);
    }

    /* renamed from: f5 */
    public final EmojiTextView m33623f5() {
        return (EmojiTextView) this.f17808c.getValue();
    }

    /* renamed from: g5 */
    public final ViewGroup m33622g5() {
        return (ViewGroup) this.f17823o.getValue();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: h1 */
    public void mo33621h1(String str, boolean z, boolean z2, boolean z3, GoogleAttribution googleAttribution, Mention[] mentionArr) {
        EmojiTextView m33641Y4;
        ViewTreeObserver viewTreeObserver;
        ViewTreeObserver viewTreeObserver2;
        s1.z.c.l.e(str, "contents");
        EmojiTextView m33641Y42 = m33641Y4();
        if (m33641Y42 != null) {
            if (!z) {
                m33641Y42.setText(str);
            } else {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
                C26548b.m1698c(spannableStringBuilder, 7);
                if (googleAttribution != GoogleAttribution.TRANSLATED_BY && mentionArr != null) {
                    for (Mention mention : mentionArr) {
                        if (mention.getOffset() > 0) {
                            if (mention.getLength() + mention.getOffset() <= str.length()) {
                                spannableStringBuilder.setSpan(new C19348b(C19291g.m13612L(m33641Y42.getContext(), 2130970017), null, 2), mention.getOffset() - 1, mention.getLength() + mention.getOffset(), 0);
                            }
                        }
                    }
                }
                h hVar = this.f17805Z;
                Objects.requireNonNull(hVar);
                s1.z.c.l.e(str, "input");
                if (str.length() < 0) {
                    StringBuilder m8720E = C22128a.m8720E("Start index out of bounds: ", 0, ", input length: ");
                    m8720E.append(str.length());
                    throw new IndexOutOfBoundsException(m8720E.toString());
                }
                s1.f0.i iVar = new s1.f0.i(hVar, str, 0);
                j jVar = j.j;
                s1.z.c.l.e(iVar, "seedFunction");
                s1.z.c.l.e(jVar, "nextFunction");
                j.a aVar = new j.a(new s1.e0.j(iVar, jVar));
                while (aVar.hasNext()) {
                    f fVar = (f) aVar.next();
                    spannableStringBuilder.setSpan(new C19348b(C19291g.m13612L(m33641Y42.getContext(), 2130970017), null, 2), ((s1.d0.g) fVar.a()).a, ((s1.d0.g) fVar.a()).b + 1, 0);
                }
                View view = this.itemView;
                s1.z.c.l.d(view, "itemView");
                if (view.getLayoutDirection() == 1) {
                    String str2 = C8578e0.f26395a;
                    if (spannableStringBuilder.length() != 0) {
                        e.m.f.a.j q = e.m.f.a.j.q();
                        Objects.requireNonNull(q);
                        e.m.f.a.g gVar = new e.m.f.a.g(q, spannableStringBuilder, (String) null, j.a.b, (long) RecyclerView.FOREVER_NS);
                        if (gVar.hasNext()) {
                            while (gVar.hasNext()) {
                                e.m.f.a.f fVar2 = (e.m.f.a.f) gVar.next();
                                int i = fVar2.a;
                                String str3 = C8578e0.f26395a;
                                spannableStringBuilder.insert(i, (CharSequence) str3);
                                spannableStringBuilder.insert(str3.length() + fVar2.a(), (CharSequence) C8578e0.f26396b);
                            }
                        }
                    }
                }
                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(spannableStringBuilder);
                if (googleAttribution != null) {
                    int ordinal = googleAttribution.ordinal();
                    if (ordinal == 0) {
                        Context context = m33641Y42.getContext();
                        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
                        s1.z.c.l.e(spannableStringBuilder2, "$this$addTranslationAvailable");
                        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
                        spannableStringBuilder2.append((CharSequence) "\n ");
                        int m13612L = C19291g.m13612L(context, 2130970255);
                        int m13612L2 = C19291g.m13612L(context, 2130970256);
                        Object obj = C26467a.f74235a;
                        Drawable m1789b = C26467a.C26470c.m1789b(context, C2752R.C2753drawable.ic_translate_google);
                        if (m1789b != null) {
                            m1789b.setTint(m13612L2);
                            m1789b.setBounds(0, 0, (int) (m1789b.getIntrinsicWidth() * 0.75f), (int) (m1789b.getIntrinsicHeight() * 0.75f));
                            spannableStringBuilder2.setSpan(new ImageSpan(m1789b, 0), spannableStringBuilder2.length() - 1, spannableStringBuilder2.length(), 17);
                            String string = context.getString(C2752R.string.ConversationTranslationAvailable);
                            s1.z.c.l.d(string, "context.getString(R.stri…tionTranslationAvailable)");
                            spannableStringBuilder2.append((CharSequence) "  ");
                            spannableStringBuilder2.append((CharSequence) string);
                            spannableStringBuilder2.setSpan(new RelativeSizeColorSpan(0.75f, m13612L), spannableStringBuilder2.length() - string.length(), spannableStringBuilder2.length(), 33);
                            spannableStringBuilder2.setSpan(new StyleSpan(1), spannableStringBuilder2.length() - string.length(), spannableStringBuilder2.length(), 33);
                        }
                    } else if (ordinal == 1) {
                        Context context2 = m33641Y42.getContext();
                        s1.z.c.l.d(context2, AnalyticsConstants.CONTEXT);
                        float textSize = m33641Y42.getTextSize();
                        s1.z.c.l.e(spannableStringBuilder2, "$this$addTranslatedByGoogle");
                        s1.z.c.l.e(context2, AnalyticsConstants.CONTEXT);
                        spannableStringBuilder2.append((CharSequence) "\n\n");
                        spannableStringBuilder2.append((CharSequence) StringConstant.SPACE);
                        Drawable m13600P = C19291g.m13600P(context2, C2752R.attr.tcx_translatedByGoogleIcon);
                        if (m13600P != null) {
                            float max = Math.max(m13600P.getIntrinsicHeight() / textSize, 1.0f);
                            m13600P.setBounds(0, 0, (int) (m13600P.getIntrinsicWidth() / max), (int) (m13600P.getIntrinsicHeight() / max));
                            spannableStringBuilder2.setSpan(new ImageSpan(m13600P, 0), spannableStringBuilder2.length() - 1, spannableStringBuilder2.length(), 17);
                            spannableStringBuilder2.setSpan(new C5682a(C19291g.m13612L(context2, 2130970072), C8605o.m28238b(context2, 2.0f), C8605o.m28238b(context2, 10.0f)), 0, spannableStringBuilder2.length(), 33);
                        }
                    }
                }
                m33641Y42.setText(spannableStringBuilder2);
                m33641Y42.setOnLongClickListener(new View$OnLongClickListenerC5281f7(this, new C5191d0(z, str, googleAttribution, mentionArr, z2)));
            }
            if (z2) {
                TextDelimiterFormatter textDelimiterFormatter = TextDelimiterFormatter.f13106b;
                TextDelimiterFormatter.m35099b(m33641Y42, TextDelimiterFormatter.DelimiterVisibility.HIDE);
            }
            m33641Y42.requestLayout();
        }
        EmojiTextView m33641Y43 = m33641Y4();
        if (m33641Y43 != null && (viewTreeObserver2 = m33641Y43.getViewTreeObserver()) != null) {
            viewTreeObserver2.removeOnPreDrawListener(this);
        }
        if (z3 && (m33641Y4 = m33641Y4()) != null && (viewTreeObserver = m33641Y4.getViewTreeObserver()) != null) {
            viewTreeObserver.addOnPreDrawListener(this);
        }
        ViewGroup m33639Z4 = m33639Z4();
        if (m33639Z4 != null) {
            m33639Z4.setOnClickListener(new View$OnClickListenerC5196f0(new C5194e0()));
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: h4 */
    public void mo33620h4(boolean z) {
        this.f17804Y = true;
        CheckBox m33646W4 = m33646W4();
        if (m33646W4 != null) {
            m33646W4.setChecked(z);
        }
        FrameLayout m33652T4 = m33652T4();
        int i = 0;
        if (m33652T4 != null) {
            m33652T4.setVisibility(0);
        }
        FrameLayout m33652T42 = m33652T4();
        if (m33652T42 != null) {
            if (z) {
                i = this.f17792M;
            }
            m33652T42.setBackgroundColor(i);
        }
        m33615j5(1.0f);
    }

    /* renamed from: h5 */
    public final TextView m33619h5() {
        return (TextView) this.f17833y.getValue();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: i4 */
    public void mo33618i4(int i, int i2, int i3) {
        ViewGroup m33639Z4 = m33639Z4();
        if (m33639Z4 != null) {
            View view = this.itemView;
            s1.z.c.l.d(view, "itemView");
            Resources resources = view.getResources();
            s1.z.c.l.d(resources, "itemView.resources");
            m33639Z4.setBackground(new C5788v6(resources, i, i2, i3));
        }
    }

    /* renamed from: i5 */
    public final void m33617i5(TextView textView, int i, String str) {
        SpannableString spannableString = new SpannableString(textView.getText());
        boolean z = false;
        Integer valueOf = Integer.valueOf(v.D(textView.getText().toString(), str, 0, true));
        if (valueOf.intValue() != -1) {
            z = true;
        }
        if (!z) {
            valueOf = null;
        }
        if (valueOf != null) {
            int intValue = valueOf.intValue();
            spannableString.setSpan(new BackgroundColorSpan(i), intValue, str.length() + intValue, 33);
            spannableString.setSpan(new ForegroundColorSpan(this.f17793N), intValue, str.length() + intValue, 33);
            textView.setText(spannableString);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: j3 */
    public void mo33616j3(C9711b c9711b, C5174c3 c5174c3, AbstractC8852j abstractC8852j, AbstractC5418j.AbstractC5420b abstractC5420b) {
        CardFeedBackType cardFeedBackType;
        ViewParent parent;
        s1.z.c.l.e(c9711b, "updateCategoryWithFeedback");
        s1.z.c.l.e(c5174c3, "params");
        s1.z.c.l.e(abstractC8852j, "toolTipController");
        s1.z.c.l.e(abstractC5420b, "listener");
        Message message = c5174c3.f17688c;
        if (message != null) {
            s1.z.c.l.d(message, "params.message ?: return");
            ViewGroup m33639Z4 = m33639Z4();
            if (m33639Z4 == null) {
                return;
            }
            l<? super CardFeedBackType, s> c5202i0 = new C5202i0(c9711b, m33639Z4, this, c9711b, message, abstractC8852j, abstractC5420b, c5174c3);
            if (!(c9711b.f29339a.f31741a.length() == 0)) {
                m33590t5(m33622g5(), true);
                TextView textView = (TextView) this.f17822n.getValue();
                if (textView != null) {
                    AbstractC10651b abstractC10651b = c9711b.f29339a;
                    View view = this.itemView;
                    s1.z.c.l.d(view, "itemView");
                    Context context = view.getContext();
                    s1.z.c.l.d(context, "itemView.context");
                    textView.setText(C9589f.m27406b(abstractC10651b, context));
                }
                if (c9711b.f29343e == ClassifierType.USER) {
                    View view2 = this.itemView;
                    s1.z.c.l.d(view2, "itemView");
                    Context context2 = view2.getContext();
                    Objects.requireNonNull(context2, "null cannot be cast to non-null type com.truecaller.messaging.conversation.ConversationActivity");
                    FragmentManager supportFragmentManager = ((ConversationActivity) context2).getSupportFragmentManager();
                    s1.z.c.l.d(supportFragmentManager, "(itemView.context as Con…y).supportFragmentManager");
                    AbstractC10597h abstractC10597h = c9711b.f29340b;
                    if (abstractC10597h != null && (cardFeedBackType = abstractC10597h.f31607a) != null) {
                        if (!abstractC5420b.mo32747A9()) {
                            ViewGroup m33622g5 = m33622g5();
                            if (m33622g5 != null && (parent = m33622g5.getParent()) != null) {
                                ViewGroup viewGroup = (ViewGroup) parent;
                                WeakReference weakReference = new WeakReference(viewGroup);
                                TooltipDirection tooltipDirection = TooltipDirection.RIGHT;
                                WeakReference weakReference2 = new WeakReference(m33622g5());
                                Context context3 = viewGroup.getContext();
                                s1.z.c.l.d(context3, "parent.context");
                                abstractC8852j.mo28004bj(new C8834d(weakReference, tooltipDirection, 2131890062, weakReference2, context3.getResources().getDimension(2131165616), 5000L, C5230d7.f17944b));
                                abstractC5420b.mo32707Z3();
                            }
                        }
                        ViewGroup m33622g52 = m33622g5();
                        if (m33622g52 != null) {
                            m33622g52.setOnClickListener(new View$OnClickListenerC5252e7(message, abstractC5420b, c9711b, c5202i0, cardFeedBackType, supportFragmentManager));
                        }
                    }
                }
            }
            if (c9711b.f29342d != null || c9711b.f29340b == null) {
                return;
            }
            FeedbackGivenState feedbackGivenState = c9711b.f29341c;
            FeedbackGivenState feedbackGivenState2 = FeedbackGivenState.NOT_GIVEN;
            if (feedbackGivenState != feedbackGivenState2) {
                return;
            }
            C5053t mo32617a = c5174c3.f17686a.mo32617a();
            s1.z.c.l.d(mo32617a, "params.viewProvider.acqu…datesFeedbackViewHolder()");
            s1.z.c.l.e(c9711b, "updateCategoryWithFeedback");
            s1.z.c.l.e(c5174c3, "attachmentParams");
            s1.z.c.l.e(c5202i0, "onFeedbackGiven");
            Message message2 = c5174c3.f17688c;
            if (message2 != null) {
                s1.z.c.l.d(message2, "attachmentParams.message ?: return");
                TextView textView2 = mo32617a.f17131k;
                if (textView2 != null) {
                    textView2.setText(2131889342);
                }
                AbstractC10597h abstractC10597h2 = c9711b.f29340b;
                if ((abstractC10597h2 != null ? abstractC10597h2.f31607a : null) == CardFeedBackType.IMPORTANT_MESSAGE_POSITIVE_FEEDBACK) {
                    View m34003b = mo32617a.m34003b();
                    if (m34003b != null) {
                        C19286f.m13684T(m34003b);
                    }
                    C10329b c10329b = c9711b.f29342d;
                    AbstractC10597h abstractC10597h3 = c9711b.f29340b;
                    AbstractC10616p.C10625i c10625i = new AbstractC10616p.C10625i(c9711b.f29339a.f31741a, ClassifierType.USER);
                    FeedbackGivenState feedbackGivenState3 = c9711b.f29341c;
                    if (c10329b == null && abstractC10597h3 != null && feedbackGivenState3 == feedbackGivenState2) {
                        TextView textView3 = mo32617a.f17131k;
                        if (textView3 != null) {
                            textView3.setText(mo32617a.f17134n.getContext().getText(2131889340));
                        }
                        String str = message2.f13382c.f11572e;
                        s1.z.c.l.d(str, "message.participant.normalizedAddress");
                        Participant participant = message2.f13382c;
                        s1.z.c.l.d(participant, "message.participant");
                        boolean m35448l = participant.m35448l();
                        TextView textView4 = mo32617a.f17128h;
                        if (textView4 != null) {
                            textView4.setOnClickListener(new View$OnClickListenerC5049q(mo32617a, str, m35448l, c5202i0, abstractC10597h3, message2, c10625i));
                        }
                        TextView textView5 = mo32617a.f17129i;
                        if (textView5 != null) {
                            textView5.setOnClickListener(new View$OnClickListenerC5051r(mo32617a, abstractC10597h3, c5202i0));
                        }
                        ImageView imageView = mo32617a.f17130j;
                        if (imageView != null) {
                            imageView.setOnClickListener(new View$OnClickListenerC5052s(mo32617a, c5202i0, abstractC10597h3, message2, c10625i));
                        }
                    } else {
                        View m34003b2 = mo32617a.m34003b();
                        if (m34003b2 != null) {
                            C19286f.m13689O(m34003b2);
                        }
                    }
                } else {
                    mo32617a.m34001d(c9711b.f29342d, abstractC10597h2, new AbstractC10616p.C10625i(c9711b.f29339a.f31741a, ClassifierType.MODEL), c9711b.f29341c, message2, c5202i0, null);
                }
            }
            ViewGroup viewGroup2 = (ViewGroup) m33639Z4.findViewById(C2752R.C2754id.smart_actions_container);
            if (viewGroup2 == null) {
                return;
            }
            viewGroup2.addView(mo32617a.f19150a);
            m33590t5(viewGroup2, true);
            viewGroup2.setTag(m33575y5(viewGroup2.getTag(), mo32617a));
        }
    }

    /* renamed from: j5 */
    public final void m33615j5(float f) {
        float f2;
        float f3;
        ValueAnimator valueAnimator = this.f17802W;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            this.f17802W = null;
            f2 = f;
        } else {
            Object animatedValue = valueAnimator.getAnimatedValue();
            Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
            f2 = ((Float) animatedValue).floatValue();
        }
        boolean z = false;
        if (getItemViewType() == 2131366861) {
            float floatValue = ((Number) this.f17803X.getValue()).floatValue();
            View view = this.itemView;
            Objects.requireNonNull(view, "null cannot be cast to non-null type android.view.ViewGroup");
            int childCount = ((ViewGroup) view).getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = ((ViewGroup) this.itemView).getChildAt(i);
                s1.z.c.l.d(childAt, "itemView.getChildAt(i)");
                if (childAt.getId() != 2131362750 && childAt.getId() != 2131362042 && childAt.getId() != 2131365343) {
                    childAt.setTranslationX(floatValue * f2);
                }
            }
            LinearLayout m33628d5 = m33628d5();
            if (m33628d5 != null) {
                if (f == 0.0f) {
                    LinearLayout m33628d52 = m33628d5();
                    Float tag = m33628d52 != null ? m33628d52.getTag() : null;
                    if (!(tag instanceof Float)) {
                        tag = null;
                    }
                    Float f4 = tag;
                    f3 = f4 != null ? f4.floatValue() : 0.0f;
                } else {
                    float floatValue2 = ((Number) this.f17803X.getValue()).floatValue();
                    LinearLayout m33628d53 = m33628d5();
                    Float tag2 = m33628d53 != null ? m33628d53.getTag() : null;
                    if (!(tag2 instanceof Float)) {
                        tag2 = null;
                    }
                    Float f5 = tag2;
                    f3 = (floatValue2 * f2) + (f5 != null ? f5.floatValue() : 0.0f);
                }
                m33628d5.setTranslationX(f3);
            }
        }
        CheckBox m33646W4 = m33646W4();
        if (f2 > 0.0f) {
            z = true;
        }
        m33590t5(m33646W4, z);
        CheckBox m33646W42 = m33646W4();
        if (m33646W42 != null) {
            m33646W42.setAlpha(f2);
        }
        View m33634b5 = m33634b5();
        if (m33634b5 != null) {
            m33634b5.setAlpha(1.0f - f2);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: k0 */
    public Iterable<C5701c> mo33614k0() {
        ViewGroup viewGroup;
        ArrayList arrayList = new ArrayList();
        ViewGroup m33643X4 = m33643X4();
        if (m33643X4 != null) {
            z it = s1.d0.j.j(0, m33643X4.getChildCount()).iterator();
            while (it.hasNext()) {
                View childAt = m33643X4.getChildAt(it.a());
                s1.z.c.l.d(childAt, "container.getChildAt(it)");
                Object tag = childAt.getTag();
                Objects.requireNonNull(tag, "null cannot be cast to non-null type com.truecaller.messaging.conversation.viewcache.ViewHolder");
                arrayList.add((C5701c) tag);
            }
            m33643X4.removeAllViews();
        }
        ViewGroup m33639Z4 = m33639Z4();
        if (m33639Z4 != null && (viewGroup = (ViewGroup) m33639Z4.findViewById(C2752R.C2754id.smart_actions_container)) != null) {
            viewGroup.removeAllViews();
            m33590t5(viewGroup, false);
            arrayList.addAll(m33656S4(viewGroup.getTag()));
            viewGroup.setTag(null);
        }
        return arrayList;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: k2 */
    public void mo33613k2(AvatarXConfig avatarXConfig) {
        s1.z.c.l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
        C8243a.m28739ok(this.f17795P, avatarXConfig, false, 2, null);
    }

    /* renamed from: k5 */
    public final void m33612k5(View view, C5174c3 c5174c3) {
        AppCompatImageView appCompatImageView = (AppCompatImageView) view.findViewById(2131364203);
        if (c5174c3.f17699n) {
            appCompatImageView.setImageResource(C2752R.C2753drawable.ic_attachment_expired_20dp);
            view.setOnClickListener(null);
        } else if (c5174c3.f17700o) {
            appCompatImageView.setImageResource(c5174c3.f17698m ? 2131231613 : 2131231611);
            view.setOnClickListener(new View$OnClickListenerC5187b(0, this, c5174c3));
        } else {
            if (c5174c3.f17687b == AttachmentType.VCARD) {
                Entity entity = c5174c3.f17689d;
                Objects.requireNonNull(entity, "null cannot be cast to non-null type com.truecaller.messaging.data.types.VCardEntity");
                VCardEntity vCardEntity = (VCardEntity) entity;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) view.findViewById(2131364203);
                if (vCardEntity.m34995y()) {
                    s1.z.c.l.d(appCompatImageView2, RemoteMessageConst.Notification.ICON);
                    Uri uri = vCardEntity.f13476x;
                    if (uri == null) {
                        uri = Uri.EMPTY;
                    }
                    s1.z.c.l.d(uri, "entity.thumbnailUri ?: Uri.EMPTY");
                    appCompatImageView2.setImageDrawable(null);
                    appCompatImageView2.clearColorFilter();
                    appCompatImageView2.setBackground(null);
                    appCompatImageView2.setBackgroundTintList(null);
                    appCompatImageView2.setImageTintList(null);
                    appCompatImageView2.invalidate();
                    View view2 = this.itemView;
                    s1.z.c.l.d(view2, "itemView");
                    C21852d c21852d = (C21852d) C17891a1.C17902k.m15664K1(view2.getContext()).mo8414k();
                    c21852d.f61767J = uri;
                    c21852d.f61771N = true;
                    c21852d.mo8102f().m8978f0(AbstractC22364k.f62127d).mo8097k(C2752R.C2753drawable.ic_attachment_vcard_20dp).m8427O(appCompatImageView2);
                } else {
                    appCompatImageView2.setImageResource(vCardEntity.f13475w > 1 ? 2131231616 : c5174c3.f17687b.icon);
                }
                if (!c5174c3.f17696k && !c5174c3.f17682H) {
                    TintedTextView tintedTextView = (TintedTextView) view.findViewById(C2752R.C2754id.saveContactTextView);
                    if (tintedTextView != null) {
                        m33590t5(tintedTextView, true);
                        m33590t5(view.findViewById(2131363364), true);
                        View view3 = this.itemView;
                        s1.z.c.l.d(view3, "itemView");
                        CharSequence quantityText = view3.getResources().getQuantityText(C2752R.plurals.ConversationSaveContacts, ((VCardEntity) c5174c3.f17689d).f13475w);
                        s1.z.c.l.d(quantityText, "itemView.resources.getQu…ams.entity.contactsCount)");
                        View view4 = this.itemView;
                        s1.z.c.l.d(view4, "itemView");
                        Context context = view4.getContext();
                        Object obj = C26467a.f74235a;
                        Drawable m1789b = C26467a.C26470c.m1789b(context, 2131232431);
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                        s1.z.c.l.c(m1789b);
                        Drawable mutate = m1789b.mutate();
                        s1.z.c.l.d(mutate, "drawable!!.mutate()");
                        View view5 = this.itemView;
                        s1.z.c.l.d(view5, "itemView");
                        C19291g.m13548h(mutate, spannableStringBuilder, Integer.valueOf(C19291g.m13612L(view5.getContext(), 2130970017)), null, true);
                        spannableStringBuilder.append((CharSequence) "  ");
                        spannableStringBuilder.append(quantityText);
                        spannableStringBuilder.setSpan(new AbsoluteSizeSpan(16, true), 0, spannableStringBuilder.length(), 33);
                        tintedTextView.setText(spannableStringBuilder);
                    }
                    if (!vCardEntity.m34995y()) {
                        s1.z.c.l.d(appCompatImageView2, RemoteMessageConst.Notification.ICON);
                        m33603n5(appCompatImageView2);
                    }
                }
            } else {
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) view.findViewById(2131364203);
                if (!c5174c3.f17696k) {
                    View view6 = (TintedTextView) view.findViewById(C2752R.C2754id.saveContactTextView);
                    if (view6 != null && C19286f.m13663p(view6)) {
                        m33590t5(view6, false);
                        m33590t5(view.findViewById(2131363364), false);
                    }
                    s1.z.c.l.d(appCompatImageView3, RemoteMessageConst.Notification.ICON);
                    m33603n5(appCompatImageView3);
                }
                appCompatImageView3.setImageResource(c5174c3.f17687b.icon);
            }
            view.setOnClickListener(new View$OnClickListenerC5187b(1, this, c5174c3));
        }
        s1.z.c.l.d(appCompatImageView, RemoteMessageConst.Notification.ICON);
        appCompatImageView.setVisibility(!c5174c3.f17697l ? 0 : 4);
        View findViewById = view.findViewById(C2752R.C2754id.attachment_loading_progress);
        if (findViewById != null) {
            m33590t5(findViewById, c5174c3.f17697l);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: l4 */
    public void mo33611l4(C5174c3 c5174c3, C10635s c10635s, AbstractC5418j.AbstractC5420b abstractC5420b) {
        s1.z.c.l.e(c5174c3, "params");
        s1.z.c.l.e(c10635s, "infoCardWithAction");
        s1.z.c.l.e(abstractC5420b, "actionListener");
        ViewGroup m33639Z4 = m33639Z4();
        if (m33639Z4 != null) {
            C5036k mo32615c = c5174c3.f17686a.mo32615c();
            s1.z.c.l.d(mo32615c, "params.viewProvider.acquireSmartCardViewHolder()");
            ViewGroup m33639Z42 = m33639Z4();
            if (m33639Z42 != null && c10635s.f31682j == FeedbackGivenState.NOT_GIVEN && c10635s.f31680h == null && c10635s.f31676d != null) {
                C5011a mo32609i = c5174c3.f17686a.mo32609i();
                s1.z.c.l.d(mo32609i, "params.viewProvider.acqu…icardFeedbackViewHolder()");
                C5327g7 c5327g7 = new C5327g7(this, mo32615c, c10635s);
                s1.z.c.l.e(c10635s, "infoCardWithAction");
                s1.z.c.l.e(abstractC5420b, "listener");
                s1.z.c.l.e(c5174c3, "attachmentParams");
                s1.z.c.l.e(c5327g7, "onFeedbackGiven");
                Message message = c5174c3.f17688c;
                if (message != null) {
                    s1.z.c.l.d(message, "attachmentParams.message ?: return");
                    AbstractC10597h abstractC10597h = c10635s.f31676d;
                    if (abstractC10597h != null) {
                        int ordinal = abstractC10597h.f31607a.getFeedbackClass().ordinal();
                        if (ordinal == 5) {
                            TextView textView = mo32609i.f17131k;
                            if (textView != null) {
                                textView.setText(2131889345);
                            }
                            TextView textView2 = mo32609i.f17128h;
                            if (textView2 != null) {
                                textView2.setText(2131889376);
                            }
                            TextView textView3 = mo32609i.f17129i;
                            if (textView3 != null) {
                                textView3.setText(2131889379);
                            }
                            CardFeedBackType cardFeedBackType = c10635s.f31679g.f31653a;
                            if (cardFeedBackType != null) {
                                c5327g7.m33284d(cardFeedBackType);
                            } else {
                                mo32609i.m34005f(c10635s.f31680h, abstractC10597h, c10635s.f31682j, message, abstractC5420b);
                            }
                        } else if (ordinal != 6) {
                            TextView textView4 = mo32609i.f17131k;
                            if (textView4 != null) {
                                textView4.setText(2131889341);
                            }
                            TextView textView5 = mo32609i.f17128h;
                            if (textView5 != null) {
                                textView5.setText(2131887941);
                            }
                            TextView textView6 = mo32609i.f17129i;
                            if (textView6 != null) {
                                textView6.setText(2131887903);
                            }
                            CardFeedBackType cardFeedBackType2 = c10635s.f31679g.f31653a;
                            if (cardFeedBackType2 != null) {
                                c5327g7.m33284d(cardFeedBackType2);
                            } else {
                                mo32609i.m34001d(c10635s.f31680h, abstractC10597h, c10635s.f31673a, c10635s.f31682j, message, c5327g7, c10635s);
                            }
                        } else {
                            TextView textView7 = mo32609i.f17131k;
                            if (textView7 != null) {
                                textView7.setText(2131889345);
                            }
                            TextView textView8 = mo32609i.f17128h;
                            if (textView8 != null) {
                                textView8.setText(2131887941);
                            }
                            TextView textView9 = mo32609i.f17129i;
                            if (textView9 != null) {
                                textView9.setText(2131889379);
                            }
                            CardFeedBackType cardFeedBackType3 = c10635s.f31679g.f31653a;
                            if (cardFeedBackType3 != null) {
                                c5327g7.m33284d(cardFeedBackType3);
                            } else {
                                mo32609i.m34005f(c10635s.f31680h, abstractC10597h, c10635s.f31682j, message, abstractC5420b);
                            }
                        }
                    }
                }
                ViewGroup viewGroup = (ViewGroup) m33639Z42.findViewById(C2752R.C2754id.smart_actions_container);
                if (viewGroup != null) {
                    viewGroup.addView(mo32609i.f19150a);
                    m33590t5(viewGroup, true);
                    viewGroup.setTag(m33575y5(viewGroup.getTag(), mo32609i));
                }
            }
            if (!s1.z.c.l.a(c10635s.f31673a, AbstractC10616p.C10622f.f31659b)) {
                s1.z.c.l.e(c10635s, "infoCardWithAction");
                s1.z.c.l.e(c5174c3, "params");
                s1.z.c.l.e(abstractC5420b, "listener");
                C10613n c10613n = c10635s.f31674b;
                mo32615c.f17266y = c5174c3.f17688c;
                mo32615c.f17267z = abstractC5420b;
                mo32615c.f17241A = c10635s;
                if (c10613n != null) {
                    int ordinal2 = c10613n.f31650l.ordinal();
                    if (ordinal2 == 0) {
                        ImageView imageView = (ImageView) mo32615c.f17254m.getValue();
                        Context context = imageView.getContext();
                        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
                        C10612m c10612m = c10613n.f31639a;
                        Drawable m16104N = C17422k.m16104N(context, c10612m.f31636a, c10612m.f31637b);
                        Context context2 = imageView.getContext();
                        s1.z.c.l.d(context2, AnalyticsConstants.CONTEXT);
                        imageView.setBackground(C17422k.m16104N(context2, 2131231369, c10613n.f31639a.f31638c));
                        imageView.setImageDrawable(m16104N);
                        TextView textView10 = (TextView) mo32615c.f17251j.getValue();
                        s1.z.c.l.d(textView10, "contentTitle");
                        textView10.setText(c10613n.f31640b);
                        TextView m33957c = mo32615c.m33957c();
                        s1.z.c.l.d(m33957c, "contentText");
                        m33957c.setVisibility(r.p(c10613n.f31641c) ? 8 : 0);
                        TextView m33957c2 = mo32615c.m33957c();
                        s1.z.c.l.d(m33957c2, "contentText");
                        TextView m33957c3 = mo32615c.m33957c();
                        s1.z.c.l.d(m33957c3, "contentText");
                        Context context3 = m33957c3.getContext();
                        s1.z.c.l.d(context3, "contentText.context");
                        String str = c10613n.f31641c;
                        List<C10583b0> list = c10613n.f31648j;
                        s1.z.c.l.e(context3, AnalyticsConstants.CONTEXT);
                        s1.z.c.l.e(str, "contentText");
                        s1.z.c.l.e(list, "contentTextColor");
                        SpannableString spannableString = new SpannableString(str);
                        for (C10583b0 c10583b0 : list) {
                            Integer num = c10583b0.f31572c;
                            if (num != null) {
                                spannableString.setSpan(new ForegroundColorSpan(C17422k.m16105M(context3, num.intValue())), c10583b0.f31570a, c10583b0.f31571b, 33);
                            }
                        }
                        m33957c2.setText(spannableString);
                        TextView m33958b = mo32615c.m33958b();
                        s1.z.c.l.d(m33958b, AnalyticsConstants.AMOUNT);
                        m33958b.setText(c10613n.f31642d);
                        Integer num2 = c10613n.f31643e;
                        if (num2 != null) {
                            int intValue = num2.intValue();
                            TextView m33958b2 = mo32615c.m33958b();
                            TextView m33958b3 = mo32615c.m33958b();
                            s1.z.c.l.d(m33958b3, AnalyticsConstants.AMOUNT);
                            Context context4 = m33958b3.getContext();
                            s1.z.c.l.d(context4, "amount.context");
                            m33958b2.setTextColor(C15322a.m18927a(context4, intValue));
                        }
                        if (c10613n.f31644f == null && c10613n.f31645g == null) {
                            View m33954f = mo32615c.m33954f();
                            s1.z.c.l.d(m33954f, "infoView");
                            C19286f.m13689O(m33954f);
                        }
                        if (c10613n.f31646h == null && c10613n.f31647i == null) {
                            View m33953g = mo32615c.m33953g();
                            s1.z.c.l.d(m33953g, "moreInfoView");
                            C19286f.m13689O(m33953g);
                        }
                        k<String, String> kVar = c10613n.f31644f;
                        if (kVar != null) {
                            View m33954f2 = mo32615c.m33954f();
                            s1.z.c.l.d(m33954f2, "infoView");
                            C19286f.m13684T(m33954f2);
                            TextView textView11 = (TextView) mo32615c.f17258q.getValue();
                            s1.z.c.l.d(textView11, "infoTypeLHS");
                            textView11.setText((CharSequence) kVar.a);
                            TextView textView12 = (TextView) mo32615c.f17260s.getValue();
                            s1.z.c.l.d(textView12, "infoValueLHS");
                            textView12.setText((CharSequence) kVar.b);
                        }
                        k<String, String> kVar2 = c10613n.f31645g;
                        if (kVar2 != null) {
                            View m33954f3 = mo32615c.m33954f();
                            s1.z.c.l.d(m33954f3, "infoView");
                            C19286f.m13684T(m33954f3);
                            TextView textView13 = (TextView) mo32615c.f17259r.getValue();
                            s1.z.c.l.d(textView13, "infoTypeRHS");
                            textView13.setText((CharSequence) kVar2.a);
                            TextView textView14 = (TextView) mo32615c.f17261t.getValue();
                            s1.z.c.l.d(textView14, "infoValueRHS");
                            textView14.setText((CharSequence) kVar2.b);
                        }
                        k<String, String> kVar3 = c10613n.f31646h;
                        if (kVar3 != null) {
                            View m33953g2 = mo32615c.m33953g();
                            s1.z.c.l.d(m33953g2, "moreInfoView");
                            C19286f.m13684T(m33953g2);
                            TextView textView15 = (TextView) mo32615c.f17262u.getValue();
                            s1.z.c.l.d(textView15, "moreInfoTypeLHS");
                            textView15.setText((CharSequence) kVar3.a);
                            TextView textView16 = (TextView) mo32615c.f17264w.getValue();
                            s1.z.c.l.d(textView16, "moreInfoValueLHS");
                            textView16.setText((CharSequence) kVar3.b);
                        }
                        k<String, String> kVar4 = c10613n.f31647i;
                        if (kVar4 != null) {
                            View m33953g3 = mo32615c.m33953g();
                            s1.z.c.l.d(m33953g3, "moreInfoView");
                            C19286f.m13684T(m33953g3);
                            TextView textView17 = (TextView) mo32615c.f17263v.getValue();
                            s1.z.c.l.d(textView17, "moreInfoTypeRHS");
                            textView17.setText((CharSequence) kVar4.a);
                            TextView textView18 = (TextView) mo32615c.f17265x.getValue();
                            s1.z.c.l.d(textView18, "moreInfoValueRHS");
                            textView18.setText((CharSequence) kVar4.b);
                        }
                        View view = (View) mo32615c.f17255n.getValue();
                        s1.z.c.l.d(view, "semicardArrow");
                        C19286f.m13687Q(view);
                        View m33956d = mo32615c.m33956d();
                        s1.z.c.l.d(m33956d, "defaultUiContainer");
                        C19286f.m13684T(m33956d);
                        View m33955e = mo32615c.m33955e();
                        s1.z.c.l.d(m33955e, "deliveryUiContainer");
                        C19286f.m13689O(m33955e);
                    } else if (ordinal2 == 1) {
                        TextView textView19 = (TextView) mo32615c.f17257p.getValue();
                        s1.z.c.l.d(textView19, "info");
                        textView19.setText(c10613n.f31641c);
                        ImageView imageView2 = (ImageView) mo32615c.f17256o.getValue();
                        Context context5 = imageView2.getContext();
                        s1.z.c.l.d(context5, AnalyticsConstants.CONTEXT);
                        C10612m c10612m2 = c10613n.f31639a;
                        Drawable m16104N2 = C17422k.m16104N(context5, c10612m2.f31636a, c10612m2.f31637b);
                        Context context6 = imageView2.getContext();
                        s1.z.c.l.d(context6, AnalyticsConstants.CONTEXT);
                        imageView2.setBackground(C17422k.m16104N(context6, 2131231369, c10613n.f31639a.f31638c));
                        imageView2.setImageDrawable(m16104N2);
                        View m33956d2 = mo32615c.m33956d();
                        s1.z.c.l.d(m33956d2, "defaultUiContainer");
                        C19286f.m13689O(m33956d2);
                        View m33955e2 = mo32615c.m33955e();
                        s1.z.c.l.d(m33955e2, "deliveryUiContainer");
                        C19286f.m13684T(m33955e2);
                    }
                } else {
                    View m33956d3 = mo32615c.m33956d();
                    s1.z.c.l.d(m33956d3, "defaultUiContainer");
                    C19286f.m13689O(m33956d3);
                    View m33955e3 = mo32615c.m33955e();
                    s1.z.c.l.d(m33955e3, "deliveryUiContainer");
                    C19286f.m13689O(m33955e3);
                }
                AbstractC10567a abstractC10567a = c10635s.f31675c;
                if (abstractC10567a != null) {
                    k kVar5 = new k(c10635s.f31678f, c10635s.f31673a);
                    Message message2 = c5174c3.f17688c;
                    boolean z = c10635s.f31683k;
                    if (abstractC10567a instanceof AbstractC10567a.AbstractC10568a.C10570b) {
                        mo32615c.m33952h(abstractC10567a.mo25780b());
                    } else if (abstractC10567a instanceof AbstractC10567a.AbstractC10575f) {
                        mo32615c.m33952h(abstractC10567a.mo25780b());
                    } else if (abstractC10567a instanceof AbstractC10567a.C10574e) {
                        mo32615c.m33952h(abstractC10567a.mo25780b());
                    } else if (abstractC10567a instanceof AbstractC10567a.C10571b) {
                        mo32615c.m33952h(abstractC10567a.mo25780b());
                    } else if (abstractC10567a instanceof AbstractC10567a.AbstractC10578h) {
                        mo32615c.m33952h(abstractC10567a.mo25780b());
                    }
                    mo32615c.m33959a().setOnClickListener(new View$OnClickListenerC5038l(abstractC5420b, abstractC10567a, message2, kVar5, z));
                    ((View) mo32615c.f17247f.getValue()).setOnClickListener(new View$OnClickListenerC5039m(message2, abstractC5420b, kVar5, z));
                } else {
                    Chip m33959a = mo32615c.m33959a();
                    if (m33959a != null) {
                        m33959a.setVisibility(8);
                    }
                }
                boolean z2 = c10635s.f31675c instanceof AbstractC10567a.AbstractC10575f;
                View view2 = (View) mo32615c.f17247f.getValue();
                s1.z.c.l.d(view2, "deleteButton");
                C19286f.m13683U(view2, z2);
                ViewGroup viewGroup2 = (ViewGroup) m33639Z4.findViewById(C2752R.C2754id.smart_actions_container);
                if (viewGroup2 != null) {
                    viewGroup2.addView(mo32615c.f19150a);
                    m33590t5(viewGroup2, true);
                    viewGroup2.setTag(m33575y5(viewGroup2.getTag(), mo32615c));
                }
            }
            this.f17813g0 = mo32615c;
        }
    }

    /* renamed from: l5 */
    public void m33610l5(int i) {
        this.f17791L = i;
        this.itemView.setBackgroundColor(C26493a.m1752g(i, this.f17790K));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: m0 */
    public void mo33609m0(l<? super Integer, s> lVar) {
        s1.z.c.l.e(lVar, "listener");
        ViewGroup m33639Z4 = m33639Z4();
        if (m33639Z4 != null) {
            m33639Z4.setOnLongClickListener(new View$OnLongClickListenerC5281f7(this, new c(0, lVar)));
        }
        View view = this.itemView;
        s1.z.c.l.d(view, "itemView");
        view.setOnLongClickListener(new View$OnLongClickListenerC5281f7(this, new c(1, lVar)));
    }

    /* renamed from: m5 */
    public final void m33608m5(View view, C5174c3 c5174c3) {
        View findViewById = view.findViewById(C2752R.C2754id.content_bubble);
        if (findViewById != null) {
            View view2 = this.itemView;
            s1.z.c.l.d(view2, "itemView");
            Resources resources = view2.getResources();
            s1.z.c.l.d(resources, "itemView.resources");
            findViewById.setBackground(new C5788v6(resources, c5174c3.f17703r, c5174c3.f17705t, c5174c3.f17683I));
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: n */
    public void mo33607n(String str) {
        this.f17786C = str;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: n1 */
    public void mo33606n1() {
        LinkPreviewMessageView linkPreviewMessageView = (LinkPreviewMessageView) this.f17832x.getValue();
        if (linkPreviewMessageView != null) {
            C19286f.m13689O(linkPreviewMessageView);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: n2 */
    public void mo33605n2(Uri uri, int i, C5174c3 c5174c3) {
        s1.z.c.l.e(uri, "videoFrame");
        s1.z.c.l.e(c5174c3, "params");
        mo33674D3(uri, i, i, c5174c3);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: n4 */
    public void mo33604n4(C5174c3 c5174c3, int i, int i2) {
        s1.z.c.l.e(c5174c3, "params");
        View view = c5174c3.f17686a.mo32611g(c5174c3.f17696k).f19150a;
        m33660Q4(view, c5174c3, i, i2);
        m33612k5(view, c5174c3);
    }

    /* renamed from: n5 */
    public final void m33603n5(AppCompatImageView appCompatImageView) {
        Context context = appCompatImageView.getContext();
        Object obj = C26467a.f74235a;
        appCompatImageView.setBackground(C26467a.C26470c.m1789b(context, C2752R.C2753drawable.white_circle_bg));
        appCompatImageView.setBackgroundTintList(C19291g.m13609M(appCompatImageView.getContext(), C2752R.attr.tcx_messageIncomingIconBackground));
        appCompatImageView.setImageTintList(C19291g.m13609M(appCompatImageView.getContext(), C2752R.attr.tcx_messageIncomingIcon));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: o4 */
    public void mo33602o4(boolean z) {
        m33590t5(m33634b5(), z);
    }

    /* renamed from: o5 */
    public final void m33601o5(View view, C5174c3 c5174c3) {
        TextView textView = (TextView) view.findViewById(C2752R.C2754id.duration_indicator);
        m33590t5(textView, true);
        textView.setTextColor(c5174c3.f17708w);
        s1.z.c.l.d(textView, VastIconXmlManager.DURATION);
        textView.setText(c5174c3.f17707v);
        textView.setCompoundDrawablesRelativeWithIntrinsicBounds(c5174c3.f17706u, 0, 0, 0);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        EmojiTextView m33641Y4 = m33641Y4();
        if ((m33641Y4 != null ? m33641Y4.getLayout() : null) == null) {
        }
        return true;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: p3 */
    public void mo33600p3(C5174c3 c5174c3, C5405a c5405a) {
        s1.z.c.l.e(c5174c3, "params");
        s1.z.c.l.e(c5405a, "emoji");
        View view = c5174c3.f17686a.mo32610h(c5174c3.f17696k).f19150a;
        m33661P4(view);
        C17891a1.C17902k.m15664K1(view.getContext()).m8965A(Integer.valueOf(c5405a.f18492b)).m8427O((ImageView) view.findViewById(2131364231));
    }

    /* renamed from: p5 */
    public final void m33599p5(View view, Uri uri, int i, int i2, C5174c3 c5174c3) {
        ImageView imageView = (ImageView) view.findViewById(2131364231);
        int color = view.getResources().getColor(C2752R.color.message_image_preview_overlay);
        s1.z.c.l.d(imageView, "imageView");
        boolean z = false;
        imageView.setVisibility(0);
        Context context = imageView.getContext();
        e.f.a.n.q.d.f c8603m0 = c5174c3.f17710y ? new C8603m0(color) : new C8606p();
        e.f.a.n.q.d.f iVar = new e.f.a.n.q.d.i();
        int i3 = c5174c3.f17683I;
        View view2 = this.itemView;
        s1.z.c.l.d(view2, "itemView");
        float dimension = view2.getResources().getDimension(C2752R.dimen.message_image_radius);
        View view3 = this.itemView;
        s1.z.c.l.d(view3, "itemView");
        float dimension2 = view3.getResources().getDimension(C2752R.dimen.message_image_sharp_radius);
        View view4 = this.itemView;
        s1.z.c.l.d(view4, "itemView");
        Context context2 = view4.getContext();
        s1.z.c.l.d(context2, "itemView.context");
        Resources resources = context2.getResources();
        s1.z.c.l.d(resources, "itemView.context.resources");
        Configuration configuration = resources.getConfiguration();
        s1.z.c.l.d(configuration, "itemView.context.resources.configuration");
        if (configuration.getLayoutDirection() == 1) {
            z = true;
        }
        float f = ((z ? 8 : 1) & i3) != 0 ? dimension2 : dimension;
        int i4 = 8;
        if (z) {
            i4 = 1;
        }
        float f2 = (i4 & i3) != 0 ? dimension2 : dimension;
        float f3 = ((z ? 2 : 4) & i3) != 0 ? dimension2 : dimension;
        if (((z ? 4 : 2) & i3) != 0) {
            dimension = dimension2;
        }
        List T = s1.u.i.T(new e.f.a.n.q.d.f[]{iVar, c8603m0, new e.f.a.n.q.d.s(f, f2, f3, dimension)});
        if (c5174c3.f17700o || c5174c3.f17699n || c5174c3.f17698m || c5174c3.f17697l) {
            i2 = Math.max(i2, this.f17800U);
        }
        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
        C5404j7 c5404j7 = new C5404j7(context, c5174c3.f17703r, c5174c3.f17691f, c5174c3.f17704s, i, i2, c5174c3.f17684J);
        C22234h mo8414k = ((C21853e) ComponentCallbacks2C22222c.m8446e(context)).mo8414k();
        C21852d c21852d = (C21852d) mo8414k;
        c21852d.f61767J = uri;
        c21852d.f61771N = true;
        C21852d m8970n0 = ((C21852d) mo8414k).m8968p0(c5404j7).m8970n0(i, i2);
        Entity entity = c5174c3.f17689d;
        ((C21852d) m8970n0.m8978f0((entity == null || !entity.mo34999h()) ? AbstractC22364k.f62127d : AbstractC22364k.f62126c).m8111C(new e.f.a.n.g(T), true)).m8427O(imageView);
        imageView.setTag(uri);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: q1 */
    public void mo33598q1(C5174c3 c5174c3, C10872f c10872f, AbstractC5418j.AbstractC5420b abstractC5420b) {
        s1.z.c.l.e(c5174c3, "params");
        s1.z.c.l.e(c10872f, "infoCardUiModel");
        s1.z.c.l.e(abstractC5420b, "actionListener");
        ViewGroup m33639Z4 = m33639Z4();
        if (m33639Z4 != null) {
            C5589a mo32608j = c5174c3.f17686a.mo32608j();
            s1.z.c.l.d(mo32608j, "params.viewProvider.acquireInfoCardViewHolder()");
            int absoluteAdapterPosition = getAbsoluteAdapterPosition();
            s1.z.c.l.e(c10872f, "infoCardUiModel");
            s1.z.c.l.e(c5174c3, "params");
            s1.z.c.l.e(abstractC5420b, "actionListener");
            mo32608j.f18836b = c5174c3.f17688c;
            mo32608j.f18837c = c10872f;
            mo32608j.f18838d = abstractC5420b;
            C9054n0 c9054n0 = mo32608j.f18839e.f51169b;
            s1.z.c.l.d(c9054n0, "viewInfocardBinding.smartCardContainer");
            C10888l c10888l = c10872f.f32284c;
            Message message = c5174c3.f17688c;
            ConstraintLayout constraintLayout = c9054n0.f27543a;
            s1.z.c.l.d(constraintLayout, "root");
            Context context = constraintLayout.getContext();
            s1.z.c.l.d(context, "root.context");
            s1.z.c.l.e(c9054n0, "$this$bindSmartCard");
            s1.z.c.l.e(c10888l, "smartCardUiModel");
            s1.z.c.l.e(abstractC5420b, "actionListener");
            s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
            ImageView imageView = c9054n0.f27548f;
            s1.z.c.l.d(imageView, "imageCategoryIcon");
            C10480a.m26080D2(imageView, Integer.valueOf(C9589f.m27407a(c10888l.f32320a)));
            TextView textView = c9054n0.f27549g;
            s1.z.c.l.d(textView, "textCategory");
            textView.setText(C9589f.m27405c(c10888l.f32320a, context));
            TextView textView2 = c9054n0.f27559q;
            s1.z.c.l.d(textView2, "textStatus");
            SmartCardStatus smartCardStatus = c10888l.f32321b;
            C10480a.m26068G2(textView2, smartCardStatus != null ? context.getString(smartCardStatus.getLabel()) : null, null);
            SmartCardStatus smartCardStatus2 = c10888l.f32321b;
            if (smartCardStatus2 != null) {
                TextView textView3 = c9054n0.f27559q;
                s1.z.c.l.d(textView3, "textStatus");
                textView3.setBackgroundTintList(ColorStateList.valueOf(C19291g.m13612L(context, smartCardStatus2.getColor())));
            }
            TextView textView4 = c9054n0.f27561s;
            s1.z.c.l.d(textView4, "textTitle");
            C10480a.m26068G2(textView4, c10888l.f32322c, c10888l.f32325f);
            if (c10888l.f32320a == SmartCardCategory.OTP) {
                c9054n0.f27561s.setTextSize(2, 24.0f);
            } else {
                c9054n0.f27561s.setTextSize(2, 16.0f);
            }
            TextView textView5 = c9054n0.f27560r;
            s1.z.c.l.d(textView5, "textSubtitle");
            C10480a.m26068G2(textView5, c10888l.f32326g, null);
            TextView textView6 = c9054n0.f27558p;
            s1.z.c.l.d(textView6, "textRightTitle");
            C10480a.m26068G2(textView6, c10888l.f32327h, null);
            Integer num = c10888l.f32328i;
            if (num != null) {
                int intValue = num.intValue();
                TextView textView7 = c9054n0.f27558p;
                Object obj = C26467a.f74235a;
                textView7.setTextColor(C26467a.C26471d.m1787a(context, intValue));
            }
            C10885j c10885j = (C10885j) s1.u.i.G(c10888l.f32330k, 0);
            C10885j c10885j2 = (C10885j) s1.u.i.G(c10888l.f32330k, 1);
            C10885j c10885j3 = (C10885j) s1.u.i.G(c10888l.f32330k, 2);
            C10885j c10885j4 = (C10885j) s1.u.i.G(c10888l.f32330k, 3);
            TextView textView8 = c9054n0.f27550h;
            s1.z.c.l.d(textView8, "textInfo1Name");
            C10480a.m26068G2(textView8, c10885j != null ? c10885j.f32313a : null, null);
            TextView textView9 = c9054n0.f27552j;
            s1.z.c.l.d(textView9, "textInfo2Name");
            C10480a.m26068G2(textView9, c10885j2 != null ? c10885j2.f32313a : null, null);
            TextView textView10 = c9054n0.f27554l;
            s1.z.c.l.d(textView10, "textInfo3Name");
            C10480a.m26068G2(textView10, c10885j3 != null ? c10885j3.f32313a : null, null);
            TextView textView11 = c9054n0.f27556n;
            s1.z.c.l.d(textView11, "textInfo4Name");
            C10480a.m26068G2(textView11, c10885j4 != null ? c10885j4.f32313a : null, null);
            TextView textView12 = c9054n0.f27551i;
            s1.z.c.l.d(textView12, "textInfo1Value");
            C10480a.m26068G2(textView12, c10885j != null ? c10885j.f32314b : null, null);
            TextView textView13 = c9054n0.f27553k;
            s1.z.c.l.d(textView13, "textInfo2Value");
            C10480a.m26068G2(textView13, c10885j2 != null ? c10885j2.f32314b : null, null);
            TextView textView14 = c9054n0.f27555m;
            s1.z.c.l.d(textView14, "textInfo3Value");
            C10480a.m26068G2(textView14, c10885j3 != null ? c10885j3.f32314b : null, null);
            TextView textView15 = c9054n0.f27557o;
            s1.z.c.l.d(textView15, "textInfo4Value");
            C10480a.m26068G2(textView15, c10885j4 != null ? c10885j4.f32314b : null, null);
            AbstractC10876i abstractC10876i = (AbstractC10876i) s1.u.i.G(c10888l.f32329j, 0);
            AbstractC10876i abstractC10876i2 = (AbstractC10876i) s1.u.i.G(c10888l.f32329j, 1);
            MaterialButton materialButton = c9054n0.f27544b;
            s1.z.c.l.d(materialButton, "buttonAction1");
            C10480a.m26092A2(materialButton, abstractC10876i, abstractC5420b, c10888l.f32333n, c10888l.f32332m, absoluteAdapterPosition);
            MaterialButton materialButton2 = c9054n0.f27545c;
            s1.z.c.l.d(materialButton2, "buttonAction2");
            C10480a.m26092A2(materialButton2, abstractC10876i2, abstractC5420b, c10888l.f32333n, c10888l.f32332m, absoluteAdapterPosition);
            ImageView imageView2 = c9054n0.f27546d;
            s1.z.c.l.d(imageView2, "buttonDelete");
            AbstractC10876i abstractC10876i3 = c10888l.f32331l;
            String str = c10888l.f32333n;
            boolean z = c10888l.f32332m;
            if (abstractC10876i3 == null || message == null) {
                C19286f.m13689O(imageView2);
            } else {
                C19286f.m13684T(imageView2);
                int dimensionPixelSize = imageView2.getResources().getDimensionPixelSize(C4078R.dimen.dp48);
                s1.z.c.l.e(imageView2, ViewAction.VIEW);
                imageView2.post(new RunnableC10012a0(imageView2, dimensionPixelSize, dimensionPixelSize));
                imageView2.setOnClickListener(new View$OnClickListenerC9440c(abstractC10876i3, abstractC5420b, message, str, z));
            }
            ViewGroup viewGroup = (ViewGroup) m33639Z4.findViewById(C2752R.C2754id.smart_actions_container);
            if (viewGroup != null) {
                viewGroup.addView(mo32608j.f19150a);
                m33590t5(viewGroup, true);
                viewGroup.setTag(m33575y5(viewGroup.getTag(), mo32608j));
            }
            View view = this.itemView;
            s1.z.c.l.d(view, "itemView");
            int dimensionPixelSize2 = view.getResources().getDimensionPixelSize(2131166346);
            View view2 = this.itemView;
            s1.z.c.l.d(view2, "itemView");
            int dimensionPixelSize3 = view2.getResources().getDimensionPixelSize(2131165969);
            TextView m33625e5 = m33625e5();
            if (m33625e5 != null) {
                int i = C19045j0.f53198b;
                m33625e5.post(new RunnableC18950b(m33625e5, dimensionPixelSize3, dimensionPixelSize2));
            }
            TextView m33625e52 = m33625e5();
            if (m33625e52 != null) {
                m33625e52.setOnClickListener(new View$OnClickListenerC5200h0(c5174c3, c10872f));
            }
            this.f17815h0 = mo32608j;
        }
    }

    /* renamed from: q5 */
    public final void m33597q5(View view, l<? super Integer, s> lVar) {
        view.setOnClickListener(new View$OnClickListenerC5196f0(lVar));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: r4 */
    public void mo33596r4(C5174c3 c5174c3) {
        s1.z.c.l.e(c5174c3, "params");
        View view = c5174c3.f17686a.mo32612f(c5174c3.f17696k).f19150a;
        m33608m5(view, c5174c3);
        if (!c5174c3.f17696k) {
            TextView textView = (TextView) view.findViewById(C2752R.C2754id.status_text);
            s1.z.c.l.d(textView, "statusText");
            textView.setText(c5174c3.f17709x);
            textView.setTextColor(c5174c3.f17691f);
        }
        m33601o5(view, c5174c3);
        CountDownChronometer countDownChronometer = (CountDownChronometer) view.findViewById(C2752R.C2754id.durationChronometer);
        countDownChronometer.setTextColor(c5174c3.f17708w);
        boolean z = false;
        m33590t5(countDownChronometer, false);
        countDownChronometer.m35097a();
        PlayerVisualizerView playerVisualizerView = (PlayerVisualizerView) view.findViewById(C2752R.C2754id.visualizerView);
        Visualizer visualizer = playerVisualizerView.f13117c;
        if (visualizer != null) {
            visualizer.setDataCaptureListener(null, Visualizer.getMaxCaptureRate(), true, true);
        }
        m33590t5(playerVisualizerView, false);
        AppCompatImageView appCompatImageView = (AppCompatImageView) view.findViewById(2131364203);
        if (c5174c3.f17699n) {
            m33582w5(false, view);
            appCompatImageView.setImageResource(C2752R.C2753drawable.ic_voice_clip_expired);
            view.setOnClickListener(null);
            appCompatImageView.setOnClickListener(null);
        } else if (c5174c3.f17700o) {
            m33582w5(false, view);
            appCompatImageView.setImageResource(c5174c3.f17698m ? 2131232836 : 2131232832);
            view.setOnClickListener(new View$OnClickListenerC5185a(0, this, c5174c3));
            appCompatImageView.setOnClickListener(new View$OnClickListenerC5185a(1, this, c5174c3));
        } else {
            playerVisualizerView.f13118d.add(new C5730g(C19291g.m13612L(view.getContext(), 2130970017)));
            m33582w5(!c5174c3.f17697l, view);
            appCompatImageView.setImageResource(C2752R.C2753drawable.ic_voice_clip_play);
            view.setOnClickListener(null);
            appCompatImageView.setOnClickListener(new View$OnClickListenerC5192e(c5174c3, playerVisualizerView, view, appCompatImageView, countDownChronometer));
        }
        s1.z.c.l.d(appCompatImageView, "iconView");
        appCompatImageView.setVisibility((c5174c3.f17697l || c5174c3.f17677C) ? 4 : 0);
        View findViewById = view.findViewById(C2752R.C2754id.attachment_loading_progress);
        if (findViewById != null) {
            if (c5174c3.f17697l || c5174c3.f17677C) {
                z = true;
            }
            m33590t5(findViewById, z);
        }
        view.setOnLongClickListener(new View$OnLongClickListenerC5281f7(this, new C5195f()));
        m33661P4(view);
    }

    /* renamed from: r5 */
    public final void m33595r5(View view, C5174c3 c5174c3) {
        Drawable drawable;
        View findViewById = view.findViewById(C2752R.C2754id.loading_progress);
        s1.z.c.l.d(findViewById, "frame.findViewById<View>(R.id.loading_progress)");
        findViewById.setVisibility(c5174c3.f17697l ? 0 : 8);
        View findViewById2 = view.findViewById(C2752R.C2754id.image_expired);
        s1.z.c.l.d(findViewById2, "frame.findViewById<View>(R.id.image_expired)");
        int i = 8;
        if (c5174c3.f17699n) {
            i = 0;
        }
        findViewById2.setVisibility(i);
        ImageButton imageButton = (ImageButton) view.findViewById(C2752R.C2754id.action_button);
        TextView textView = (TextView) view.findViewById(C2752R.C2754id.status_text);
        s1.z.c.l.d(textView, "imageStatusText");
        textView.setText(c5174c3.f17709x);
        if (!c5174c3.f17700o) {
            s1.z.c.l.d(imageButton, "button");
            imageButton.setVisibility(4);
            imageButton.setOnClickListener(null);
            return;
        }
        s1.z.c.l.d(imageButton, "button");
        Entity entity = c5174c3.f17689d;
        if (entity == null || !entity.mo34996o() || !c5174c3.f17696k) {
            Entity entity2 = c5174c3.f17689d;
            if (entity2 == null || !entity2.mo34996o() || c5174c3.f17696k) {
                Context context = view.getContext();
                Object obj = C26467a.f74235a;
                drawable = C26467a.C26470c.m1789b(context, C2752R.C2753drawable.conversation_image_action_background);
            } else {
                Context context2 = view.getContext();
                Object obj2 = C26467a.f74235a;
                drawable = C26467a.C26470c.m1789b(context2, C2752R.C2753drawable.conversation_incoming_location_action_background);
            }
        } else {
            Context context3 = view.getContext();
            Object obj3 = C26467a.f74235a;
            drawable = C26467a.C26470c.m1789b(context3, C2752R.C2753drawable.conversation_outgoing_location_action_background);
        }
        imageButton.setBackground(drawable);
        imageButton.setImageResource(c5174c3.f17698m ? 2131231613 : 2131231611);
        imageButton.setVisibility(0);
        imageButton.setOnClickListener(new View$OnClickListenerC5198g0(c5174c3));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: s4 */
    public void mo33594s4(l<? super Integer, s> lVar) {
        s1.z.c.l.e(lVar, "listener");
        View m33634b5 = m33634b5();
        if (m33634b5 != null) {
            m33634b5.setOnClickListener(new View$OnClickListenerC5196f0(lVar));
        }
    }

    /* renamed from: s5 */
    public final void m33593s5(ExpandableEmojiTextView.LayoutStyle layoutStyle, ExpandableEmojiTextView.LayoutState layoutState, Message message, boolean z) {
        m33590t5(m33625e5(), layoutStyle != ExpandableEmojiTextView.LayoutStyle.NORMAL && this.f17817i0.mo33130z(message) && (layoutState == ExpandableEmojiTextView.LayoutState.EXPANDED || z));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: t0 */
    public void mo33592t0(l<? super Integer, s> lVar) {
        s1.z.c.l.e(lVar, "listener");
        View view = (View) this.f17810e.getValue();
        if (view != null) {
            view.setOnClickListener(new View$OnClickListenerC5196f0(lVar));
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: t3 */
    public void mo33591t3(boolean z) {
        this.f17788E = z;
    }

    /* renamed from: t5 */
    public final void m33590t5(View view, boolean z) {
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
        if (r5 != null) goto L7;
     */
    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: u2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo33589u2() {
        /*
            r4 = this;
            r0 = r4
            android.view.ViewGroup r0 = r0.m33643X4()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L1b
            r0 = r5
            r1 = 2131366783(0x7f0a137f, float:1.835347E38)
            android.view.View r0 = r0.findViewById(r1)
            android.widget.TextView r0 = (android.widget.TextView) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L1b
            goto L29
        L1b:
            r0 = r4
            android.view.View r0 = r0.itemView
            r1 = 2131366783(0x7f0a137f, float:1.835347E38)
            android.view.View r0 = r0.findViewById(r1)
            android.widget.TextView r0 = (android.widget.TextView) r0
            r5 = r0
        L29:
            r0 = r5
            if (r0 == 0) goto L33
            r0 = r4
            r1 = r5
            r2 = 0
            r0.m33590t5(r1, r2)
        L33:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.ViewTreeObserver$OnPreDrawListenerC5184d.mo33589u2():void");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: u3 */
    public void mo33588u3(boolean z) {
        LinearLayout m33632c5 = m33632c5();
        if (m33632c5 != null) {
            m33590t5(m33632c5, z);
        }
    }

    /* renamed from: u5 */
    public void m33587u5(int i, String str) {
        TextView textView;
        s1.z.c.l.e(str, "word");
        EmojiTextView m33641Y4 = m33641Y4();
        if (m33641Y4 != null) {
            m33617i5(m33641Y4, i, str);
        }
        ViewGroup m33643X4 = m33643X4();
        if (m33643X4 == null || (textView = (TextView) m33643X4.findViewById(2131366469)) == null) {
            return;
        }
        m33617i5(textView, i, str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
        if (r4 != null) goto L7;
     */
    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo33586v2() {
        /*
            r3 = this;
            r0 = r3
            r1 = 1
            r0.mo33662P2(r1)
            r0 = r3
            android.view.ViewGroup r0 = r0.m33643X4()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L20
            r0 = r4
            r1 = 2131366791(0x7f0a1387, float:1.8353486E38)
            android.view.View r0 = r0.findViewById(r1)
            com.truecaller.messaging.conversation.MessageSnippetView r0 = (com.truecaller.messaging.conversation.MessageSnippetView) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L20
            goto L2e
        L20:
            r0 = r3
            android.view.View r0 = r0.itemView
            r1 = 2131366791(0x7f0a1387, float:1.8353486E38)
            android.view.View r0 = r0.findViewById(r1)
            com.truecaller.messaging.conversation.MessageSnippetView r0 = (com.truecaller.messaging.conversation.MessageSnippetView) r0
            r4 = r0
        L2e:
            r0 = r4
            if (r0 == 0) goto L36
            r0 = r4
            r0.m35116b()
        L36:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.ViewTreeObserver$OnPreDrawListenerC5184d.mo33586v2():void");
    }

    /* renamed from: v5 */
    public final void m33585v5(ExpandableEmojiTextView expandableEmojiTextView) {
        ViewGroup viewGroup;
        Object tag;
        Object obj;
        Object obj2;
        ViewGroup m33639Z4 = m33639Z4();
        if (m33639Z4 == null || (viewGroup = (ViewGroup) m33639Z4.findViewById(C2752R.C2754id.smart_actions_container)) == null || (tag = viewGroup.getTag()) == null) {
            return;
        }
        List<C5701c> m33656S4 = m33656S4(tag);
        Iterator<T> it = m33656S4.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((C5701c) obj) instanceof C5011a) {
                break;
            }
        }
        C5701c c5701c = (C5701c) obj;
        if (c5701c == null) {
            return;
        }
        Iterator<T> it2 = m33656S4.iterator();
        do {
            obj2 = null;
            if (!it2.hasNext()) {
                break;
            }
            obj2 = it2.next();
        } while (!(((C5701c) obj2) instanceof C5036k));
        C5701c c5701c2 = (C5701c) obj2;
        if (!(c5701c2 instanceof C5036k)) {
            return;
        }
        if (!(expandableEmojiTextView.f13026k == ExpandableEmojiTextView.LayoutStyle.EXPANDABLE) || !expandableEmojiTextView.m35119l()) {
            m33590t5(c5701c.f19150a, true);
            ((C5036k) c5701c2).m33951i(true);
            return;
        }
        C19286f.m13689O(c5701c.f19150a);
        ((C5036k) c5701c2).m33951i(false);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: w0 */
    public void mo33584w0(Message message, QuickAction[] quickActionArr) {
        s1.z.c.l.e(message, "message");
        s1.z.c.l.e(quickActionArr, "quickActions");
        LinearLayout m33632c5 = m33632c5();
        if (m33632c5 != null) {
            m33632c5.removeAllViews();
        }
        LinearLayout m33632c52 = m33632c5();
        if (m33632c52 != null) {
            for (QuickAction quickAction : quickActionArr) {
                View inflate = LayoutInflater.from(m33632c52.getContext()).inflate(C2752R.layout.item_message_quick_reply, (ViewGroup) m33632c52, false);
                Objects.requireNonNull(inflate, "null cannot be cast to non-null type android.widget.TextView");
                TextView textView = (TextView) inflate;
                textView.setText(quickAction.f13450d);
                textView.setOnClickListener(new View$OnClickListenerC5214u(quickAction, m33632c52, this, quickActionArr, message));
                m33632c52.addView(textView);
            }
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: w4 */
    public void mo33583w4(boolean z) {
        this.f17789J = z;
    }

    /* renamed from: w5 */
    public final void m33582w5(boolean z, View view) {
        m33590t5(view.findViewById(C2752R.C2754id.voiceClipSeekBar), z);
        m33590t5(view.findViewById(C2752R.C2754id.duration_indicator), z);
        boolean z2 = !z;
        m33590t5(view.findViewById(C2752R.C2754id.voiceClipTitle), z2);
        m33590t5(view.findViewById(C2752R.C2754id.status_text), z2);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: x2 */
    public void mo33581x2(boolean z) {
        this.f17787D = z;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: x3 */
    public void mo33580x3(Message message, boolean z) {
        s1.z.c.l.e(message, "message");
        LinearLayout m33628d5 = m33628d5();
        if (m33628d5 != null) {
            m33628d5.removeAllViews();
            Context context = m33628d5.getContext();
            s1.z.c.l.d(context, "reactionsView.context");
            m33628d5.addView(LayoutInflater.from(context).inflate(C2752R.layout.item_message_add_reaction, (ViewGroup) m33628d5, false));
            m33628d5.setOnClickListener(new View$OnClickListenerC5215v(message, z));
            m33578x5(message, z);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: x4 */
    public void mo33579x4(Message message) {
        s1.z.c.l.e(message, "message");
        ImageView imageView = (ImageView) this.f17827s.getValue();
        if (imageView != null) {
            imageView.setImageResource(C2752R.C2753drawable.ic_type_flash);
        }
        TextView textView = (TextView) this.f17826r.getValue();
        if (textView != null) {
            View view = this.itemView;
            s1.z.c.l.d(view, "itemView");
            textView.setText(view.getContext().getString(C2752R.string.ConversationGroupedFlashCount, Integer.valueOf(message.f13368D)));
        }
        ViewGroup m33639Z4 = m33639Z4();
        if (m33639Z4 != null) {
            m33639Z4.setOnClickListener(new View$OnClickListenerC5206m(message));
        }
    }

    /* renamed from: x5 */
    public final void m33578x5(Message message, boolean z) {
        int i = z ? 2131362948 : 2131366899;
        LinearLayout m33628d5 = m33628d5();
        if (m33628d5 != null) {
            LinearLayout m33628d52 = m33628d5();
            ConstraintLayout.C0111a layoutParams = m33628d52 != null ? m33628d52.getLayoutParams() : null;
            Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.C0111a c0111a = layoutParams;
            c0111a.f643k = i;
            if (C10480a.m25874x1(message)) {
                c0111a.f652r = i;
            } else {
                c0111a.f650p = i;
            }
            m33628d5.setLayoutParams(c0111a);
        }
        if (!this.f17804Y || !C10480a.m25899s1(message)) {
            boolean m25899s1 = C10480a.m25899s1(message);
            View view = this.itemView;
            s1.z.c.l.d(view, "itemView");
            Resources resources = view.getResources();
            s1.z.c.l.d(resources, "itemView.resources");
            Configuration configuration = resources.getConfiguration();
            s1.z.c.l.d(configuration, "itemView.resources.configuration");
            boolean z2 = true;
            if (configuration.getLayoutDirection() != 1) {
                z2 = false;
            }
            float f = m25899s1 == z2 ? this.f17798S : -this.f17798S;
            LinearLayout m33628d53 = m33628d5();
            if (m33628d53 != null) {
                m33628d53.setTranslationX(f);
            }
            LinearLayout m33628d54 = m33628d5();
            if (m33628d54 == null) {
                return;
            }
            m33628d54.setTag(Float.valueOf(f));
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: y3 */
    public void mo33577y3(String str, int i) {
        s1.z.c.l.e(str, "inviteKey");
        TextView m33651U4 = m33651U4();
        if (m33651U4 != null) {
            m33651U4.setCompoundDrawablesRelativeWithIntrinsicBounds(2131232547, 0, 0, 0);
            View view = this.itemView;
            s1.z.c.l.d(view, "itemView");
            m33651U4.setText(view.getContext().getString(C2752R.string.GroupInviteView));
            m33651U4.setTextColor(i);
            C19291g.m13519q1(m33651U4, i);
            m33651U4.setOnClickListener(new View$OnClickListenerC5203j(i, str));
            m33590t5(m33651U4, true);
        }
        m33590t5(m33648V4(), true);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5062a7
    /* renamed from: y4 */
    public void mo33576y4(Message message, String str, String str2) {
        s1.z.c.l.e(message, "message");
        s1.z.c.l.e(str, "statusText");
        s1.z.c.l.e(str2, "actionText");
        TextView m33619h5 = m33619h5();
        if (m33619h5 != null) {
            View view = this.itemView;
            s1.z.c.l.d(view, "itemView");
            int m13612L = C19291g.m13612L(view.getContext(), C2752R.attr.tcx_messageIncomingStatus);
            m33619h5.setTextColor(m13612L);
            Drawable drawable = m33619h5.getCompoundDrawablesRelative()[0];
            if (drawable != null) {
                drawable.setTint(m13612L);
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) str);
            spannableStringBuilder.append((CharSequence) " • ");
            spannableStringBuilder.append((CharSequence) str2);
            int length = str.length() + 3;
            int length2 = str2.length() + length;
            View view2 = this.itemView;
            s1.z.c.l.d(view2, "itemView");
            C19348b c19348b = new C19348b(C19291g.m13612L(view2.getContext(), 2130970017), new C5112b7(this, str, str2, message));
            spannableStringBuilder.setSpan(new StyleSpan(1), length, length2, 33);
            spannableStringBuilder.setSpan(c19348b, length, length2, 33);
            m33619h5.setText(spannableStringBuilder);
            m33619h5.setMovementMethod(LinkMovementMethod.getInstance());
        }
    }

    /* renamed from: y5 */
    public final List<C5701c> m33575y5(Object obj, C5701c c5701c) {
        List<C5701c> a1 = s1.u.i.a1(m33656S4(obj));
        ((ArrayList) a1).add(c5701c);
        return a1;
    }
}
