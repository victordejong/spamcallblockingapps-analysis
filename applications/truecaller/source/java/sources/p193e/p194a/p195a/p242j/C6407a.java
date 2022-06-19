package p193e.p194a.p195a.p242j;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.transition.Transition;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.p070ui.DefaultTimeBar;
import com.google.android.exoplayer2.p070ui.PlayerControlView;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.android.truemoji.widget.EmojiTextView;
import com.truecaller.messaging.ForwardContentItem;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.conversation.ConversationMode;
import com.truecaller.messaging.conversation.richtext.TextDelimiterFormatter;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.ImForwardInfo;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.Mention;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TransportInfo;
import com.truecaller.messaging.data.types.VideoEntity;
import com.truecaller.messaging.mediamanager.MediaManagerActivity;
import com.truecaller.messaging.mediaviewer.InteractiveMediaView;
import com.truecaller.messaging.mediaviewer.MediaPosition;
import com.truecaller.messaging.newconversation.NewConversationActivity;
import com.truecaller.messaging.transport.p170im.ImTransportInfo;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.AbstractC24760q0;
import p193e.p1577m.p1578a.p1596c.AbstractC24861y0;
import p193e.p1577m.p1578a.p1596c.C24189b0;
import p193e.p1577m.p1578a.p1596c.C24652o0;
import p193e.p1577m.p1578a.p1596c.C24811r0;
import p193e.p1577m.p1578a.p1596c.p1631n1.C24648g;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1059m3.C18167j0;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.C19497e0;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p200c.C5678q5;
import p193e.p194a.p195a.p241i1.AbstractC6397d;
import p193e.p194a.p195a.p269n.AbstractC7004h;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.d0.i;
import s1.d0.j;
import s1.u.z;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��¬\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018�� \u007f2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002\u0080\u0001B\u0007¢\u0006\u0004\b~\u0010\u0019J\u001d\u0010\b\u001a\u00020\u0007*\u00020\u00042\b\b\u0001\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\f\u0010\rJ-\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00122\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001a\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001b\u0010\u0019J\u001f\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020\u0004H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0007H\u0016¢\u0006\u0004\b%\u0010\u0019J\u000f\u0010&\u001a\u00020\u0007H\u0016¢\u0006\u0004\b&\u0010\u0019J\u0017\u0010(\u001a\u00020\u00072\u0006\u0010'\u001a\u00020\"H\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010,\u001a\u00020\u00072\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b,\u0010-J\u0017\u00100\u001a\u00020\u00072\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b0\u00101J\u0017\u00104\u001a\u00020\u00072\u0006\u00103\u001a\u000202H\u0016¢\u0006\u0004\b4\u00105J)\u00108\u001a\u00020\u00072\u0006\u0010'\u001a\u00020\"2\b\u00106\u001a\u0004\u0018\u00010.2\u0006\u00107\u001a\u00020\"H\u0016¢\u0006\u0004\b8\u00109J\u0017\u0010;\u001a\u00020\u00072\u0006\u0010!\u001a\u00020:H\u0016¢\u0006\u0004\b;\u0010<J\u001f\u0010@\u001a\u00020\u00072\u0006\u0010>\u001a\u00020=2\u0006\u0010?\u001a\u00020.H\u0016¢\u0006\u0004\b@\u0010AJ\u001f\u0010B\u001a\u00020\"2\u0006\u0010>\u001a\u00020=2\u0006\u0010?\u001a\u00020.H\u0016¢\u0006\u0004\bB\u0010CJ\u0017\u0010F\u001a\u00020\u00072\u0006\u0010E\u001a\u00020DH\u0016¢\u0006\u0004\bF\u0010GJ\u001f\u0010K\u001a\u00020\u00072\u0006\u0010I\u001a\u00020H2\u0006\u0010J\u001a\u00020HH\u0016¢\u0006\u0004\bK\u0010LJ\u000f\u0010M\u001a\u00020\u0007H\u0016¢\u0006\u0004\bM\u0010\u0019J'\u0010Q\u001a\u00020\u00072\u0006\u0010O\u001a\u00020N2\u0006\u0010>\u001a\u00020=2\u0006\u0010P\u001a\u00020HH\u0016¢\u0006\u0004\bQ\u0010RJ\u000f\u0010S\u001a\u00020\u0007H\u0016¢\u0006\u0004\bS\u0010\u0019J/\u0010U\u001a\u00020\u00072\u0006\u0010O\u001a\u00020N2\u0006\u0010>\u001a\u00020=2\u0006\u0010T\u001a\u00020*2\u0006\u0010P\u001a\u00020HH\u0016¢\u0006\u0004\bU\u0010VJ\u000f\u0010W\u001a\u00020\u0007H\u0016¢\u0006\u0004\bW\u0010\u0019J\u000f\u0010X\u001a\u00020\u0007H\u0016¢\u0006\u0004\bX\u0010\u0019J\u000f\u0010Y\u001a\u00020\u0007H\u0016¢\u0006\u0004\bY\u0010\u0019J\u0017\u0010[\u001a\u00020\u00072\u0006\u0010Z\u001a\u00020HH\u0016¢\u0006\u0004\b[\u0010\\J\u000f\u0010]\u001a\u00020HH\u0016¢\u0006\u0004\b]\u0010^J\u0019\u0010`\u001a\u00020\u00072\b\b\u0001\u0010_\u001a\u00020\u0005H\u0016¢\u0006\u0004\b`\u0010aJ\u0017\u0010b\u001a\u00020\u00072\u0006\u0010'\u001a\u00020\"H\u0016¢\u0006\u0004\bb\u0010)J\u0017\u0010c\u001a\u00020\u00072\u0006\u0010'\u001a\u00020\"H\u0016¢\u0006\u0004\bc\u0010)J\u0017\u0010d\u001a\u00020\u00072\u0006\u0010O\u001a\u00020NH\u0016¢\u0006\u0004\bd\u0010eJ\u0017\u0010g\u001a\u00020\u00072\u0006\u0010f\u001a\u00020\"H\u0016¢\u0006\u0004\bg\u0010)J\u001f\u0010j\u001a\u00020\u00072\u0006\u0010h\u001a\u00020\"2\u0006\u0010i\u001a\u00020\u0005H\u0016¢\u0006\u0004\bj\u0010kR\u001d\u0010q\u001a\u00020l8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bm\u0010n\u001a\u0004\bo\u0010pR\u0018\u0010u\u001a\u0004\u0018\u00010r8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bs\u0010tR\"\u0010}\u001a\u00020v8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bw\u0010x\u001a\u0004\by\u0010z\"\u0004\b{\u0010|¨\u0006\u0081\u0001"}, d2 = {"Le/a/a/j/a;", "Landroidx/fragment/app/Fragment;", "Le/a/a/j/i;", "Le/m/a/c/q0$b;", "Landroid/view/MenuItem;", "", RemoteMessageConst.Notification.COLOR, "Ls1/s;", "RA", "(Landroid/view/MenuItem;I)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onStart", "()V", "onStop", "onDestroyView", "Landroid/view/Menu;", "menu", "Landroid/view/MenuInflater;", "onCreateOptionsMenu", "(Landroid/view/Menu;Landroid/view/MenuInflater;)V", "item", "", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "Gj", "yf", "visible", "l9", "(Z)V", "", "alpha", "hu", "(F)V", "", "title", "setTitle", "(Ljava/lang/String;)V", "", "subtitle", "t4", "(Ljava/lang/CharSequence;)V", "text", "formatDelimiters", "cl", "(ZLjava/lang/String;Z)V", "Lcom/truecaller/messaging/ForwardContentItem;", "wb", "(Lcom/truecaller/messaging/ForwardContentItem;)V", "Landroid/net/Uri;", "uri", "type", "hx", "(Landroid/net/Uri;Ljava/lang/String;)V", "Ia", "(Landroid/net/Uri;Ljava/lang/String;)Z", "Lcom/truecaller/messaging/data/types/Conversation;", "conversation", "l1", "(Lcom/truecaller/messaging/data/types/Conversation;)V", "", "conversationId", "messageId", "y3", "(JJ)V", "tA", "Lcom/truecaller/messaging/mediaviewer/MediaPosition;", "position", "entityId", "Nd", "(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Landroid/net/Uri;J)V", "mp", "aspectRatio", "Ih", "(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Landroid/net/Uri;FJ)V", "n3", "Ir", "qa", "millis", "Ne", "(J)V", "Po", "()J", "res", "z2", "(I)V", "r2", "KA", "Gp", "(Lcom/truecaller/messaging/mediaviewer/MediaPosition;)V", "sharedElementsTransition", "Y4", "playWhenReady", "playbackState", "G5", "(ZI)V", "Le/a/m3/j0;", C22021b.f61237c, "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/m3/j0;", "binding", "Ln3/b/a/a;", "QA", "()Ln3/b/a/a;", "supportActionBar", "Le/a/a/j/h;", "a", "Le/a/a/j/h;", "PA", "()Le/a/a/j/h;", "setPresenter", "(Le/a/a/j/h;)V", "presenter", "<init>", "d", AbstractC2405c.f7629a, "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.j.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/j/a.class */
public final class C6407a extends Fragment implements AbstractC6424i, AbstractC24760q0.AbstractC24762b {

    /* renamed from: c */
    public static final /* synthetic */ l[] f21327c = {C22128a.m8621g0(C6407a.class, "binding", "getBinding()Lcom/truecaller/databinding/FragmentMediaViewerBinding;", 0)};

    /* renamed from: d */
    public static final C6410c f21328d = new C6410c(null);
    @Inject

    /* renamed from: a */
    public AbstractC6423h f21329a;

    /* renamed from: b */
    public final ViewBindingProperty f21330b = new C19350a(new C6409b());

    /* renamed from: e.a.a.j.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a/j/a$a.class */
    public static final class View$OnClickListenerC6408a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f21331a;

        /* renamed from: b */
        public final /* synthetic */ Object f21332b;

        public View$OnClickListenerC6408a(int i, Object obj) {
            this.f21331a = i;
            this.f21332b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f21331a;
            if (i == 0) {
                C6427l c6427l = (C6427l) ((C6407a) this.f21332b).m31295PA();
                c6427l.m31250Kj(true ^ c6427l.f21361d);
            } else if (i != 1) {
                throw null;
            } else {
                C6427l c6427l2 = (C6427l) ((C6407a) this.f21332b).m31295PA();
                if (c6427l2.f21364g) {
                    AbstractC6424i abstractC6424i = (AbstractC6424i) c6427l2.f57683a;
                    if (abstractC6424i == null) {
                        return;
                    }
                    abstractC6424i.mo31266qa();
                    return;
                }
                AbstractC6424i abstractC6424i2 = (AbstractC6424i) c6427l2.f57683a;
                if (abstractC6424i2 != null) {
                    abstractC6424i2.mo31279Ir();
                }
                c6427l2.m31250Kj(false);
            }
        }
    }

    /* renamed from: e.a.a.j.a$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/j/a$b.class */
    public static final class C6409b extends m implements s1.z.b.l<C6407a, C18167j0> {
        public C6409b() {
            super(1);
        }

        /* renamed from: d */
        public Object m31292d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131362259;
            View findViewById = requireView.findViewById(2131362259);
            if (findViewById != null) {
                i = 2131362362;
                LinearLayout linearLayout = (LinearLayout) requireView.findViewById(C2752R.C2754id.bottomContatiner);
                if (linearLayout != null) {
                    i = 2131364772;
                    InteractiveMediaView interactiveMediaView = (InteractiveMediaView) requireView.findViewById(C2752R.C2754id.mediaView);
                    if (interactiveMediaView != null) {
                        i = 2131364792;
                        EmojiTextView emojiTextView = (EmojiTextView) requireView.findViewById(2131364792);
                        if (emojiTextView != null) {
                            i = 2131365186;
                            ImageButton imageButton = (ImageButton) requireView.findViewById(C2752R.C2754id.playbackButton);
                            if (imageButton != null) {
                                i = 2131365187;
                                PlayerControlView playerControlView = (PlayerControlView) requireView.findViewById(C2752R.C2754id.playerControlView);
                                if (playerControlView != null) {
                                    return new C18167j0((FrameLayout) requireView, findViewById, linearLayout, interactiveMediaView, emojiTextView, imageButton, playerControlView);
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.a.j.a$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/j/a$c.class */
    public static final class C6410c {
        public C6410c(f fVar) {
        }
    }

    /* renamed from: e.a.a.j.a$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/j/a$d.class */
    public static final class C6411d implements AbstractC6431o {
        public C6411d() {
            C6407a.this = r4;
        }

        @Override // p193e.p194a.p195a.p242j.AbstractC6431o
        /* renamed from: a */
        public void mo31241a() {
            C6427l c6427l = (C6427l) C6407a.this.m31295PA();
            if (Math.abs(c6427l.f21362e) > c6427l.f21363f) {
                c6427l.f21365h = true;
                c6427l.finish();
            }
        }

        @Override // p193e.p194a.p195a.p242j.AbstractC6431o
        /* renamed from: b */
        public boolean mo31240b(float f) {
            C6427l c6427l = (C6427l) C6407a.this.m31295PA();
            AbstractC6424i abstractC6424i = (AbstractC6424i) c6427l.f57683a;
            if (abstractC6424i != null) {
                abstractC6424i.mo31272hu(1.0f - Math.min(0.5f, Math.abs(f) / c6427l.f21363f));
            }
            c6427l.f21362e = f;
            if (Math.abs(f) > c6427l.f21363f / 2) {
                AbstractC6424i abstractC6424i2 = (AbstractC6424i) c6427l.f57683a;
                if (abstractC6424i2 != null) {
                    abstractC6424i2.mo31266qa();
                }
                AbstractC6424i abstractC6424i3 = (AbstractC6424i) c6427l.f57683a;
                if (abstractC6424i3 != null) {
                    abstractC6424i3.mo31265r2(false);
                }
                AbstractC6424i abstractC6424i4 = (AbstractC6424i) c6427l.f57683a;
                if (abstractC6424i4 == null) {
                    return true;
                }
                abstractC6424i4.mo31269l9(false);
                return true;
            } else if (c6427l.f21365h) {
                return true;
            } else {
                AbstractC6424i abstractC6424i5 = (AbstractC6424i) c6427l.f57683a;
                if (abstractC6424i5 != null) {
                    boolean z = false;
                    if (c6427l.f21361d) {
                        z = false;
                        if (c6427l.f21373p.mo34892w()) {
                            z = true;
                        }
                    }
                    abstractC6424i5.mo31265r2(z);
                }
                AbstractC6424i abstractC6424i6 = (AbstractC6424i) c6427l.f57683a;
                if (abstractC6424i6 == null) {
                    return true;
                }
                abstractC6424i6.mo31269l9(c6427l.f21361d);
                return true;
            }
        }

        @Override // p193e.p194a.p195a.p242j.AbstractC6431o
        /* renamed from: c */
        public boolean mo31239c(float f) {
            return false;
        }
    }

    /* renamed from: e.a.a.j.a$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/j/a$e.class */
    public static final class C6412e extends C6432p {
        public C6412e() {
            C6407a.this = r4;
        }

        @Override // p193e.p194a.p195a.p242j.C6432p, android.transition.Transition.TransitionListener
        public void onTransitionStart(Transition transition) {
            s1.z.c.l.e(transition, "transition");
            AbstractC6424i abstractC6424i = (AbstractC6424i) ((C6427l) C6407a.this.m31295PA()).f57683a;
            if (abstractC6424i != null) {
                abstractC6424i.mo31268mp();
            }
            transition.removeListener(this);
        }
    }

    /* renamed from: e.a.a.j.a$f */
    /* loaded from: classes7-dex2jar.jar:e/a/a/j/a$f.class */
    public static final class C6413f extends C6432p {
        public C6413f() {
            C6407a.this = r4;
        }

        @Override // p193e.p194a.p195a.p242j.C6432p, android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            s1.z.c.l.e(transition, "transition");
            C6407a c6407a = C6407a.this;
            l[] lVarArr = C6407a.f21327c;
            Drawable drawable = c6407a.m31296OA().f51269d.f13568t.f21345a.getDrawable();
            if (drawable != null) {
                drawable.setVisible(true, false);
            }
            AbstractC6424i abstractC6424i = (AbstractC6424i) ((C6427l) C6407a.this.m31295PA()).f57683a;
            if (abstractC6424i != null) {
                abstractC6424i.mo31279Ir();
            }
            transition.removeListener(this);
            n3.r.a.l activity = C6407a.this.getActivity();
            if (activity != null) {
                activity.setRequestedOrientation(2);
            }
        }
    }

    /* renamed from: e.a.a.j.a$g */
    /* loaded from: classes7-dex2jar.jar:e/a/a/j/a$g.class */
    public static final class DialogInterface$OnClickListenerC6414g implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC6414g() {
            C6407a.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C6427l c6427l = (C6427l) C6407a.this.m31295PA();
            Objects.requireNonNull(c6427l);
            d.w2(c6427l, (s1.w.f) null, (j0) null, new C6426k(c6427l, null), 3, (Object) null);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: A0 */
    public /* synthetic */ void mo4655A0() {
        C24811r0.m4490i(this);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: G5 */
    public void mo4654G5(boolean z, int i) {
        AbstractC6423h abstractC6423h = this.f21329a;
        if (abstractC6423h != null) {
            ((C6427l) abstractC6423h).m31248pc(z, i == 4);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: Gj */
    public void mo31283Gj() {
        Window window;
        View decorView;
        n3.r.a.l activity = getActivity();
        if (activity != null && (window = activity.getWindow()) != null && (decorView = window.getDecorView()) != null) {
            decorView.setSystemUiVisibility(1536);
        }
        AbstractC25393a m31294QA = m31294QA();
        if (m31294QA != null) {
            m31294QA.mo3568A();
        }
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: Gp */
    public void mo31282Gp(MediaPosition mediaPosition) {
        s1.z.c.l.e(mediaPosition, "position");
        InteractiveMediaView interactiveMediaView = m31296OA().f51269d;
        Objects.requireNonNull(interactiveMediaView);
        s1.z.c.l.e(mediaPosition, "position");
        C6420f m34964h = interactiveMediaView.m34964h(mediaPosition);
        m34964h.m31287d();
        m34964h.f21347c.setVisibility(0);
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: Ia */
    public boolean mo31281Ia(Uri uri, String str) {
        s1.z.c.l.e(uri, "uri");
        s1.z.c.l.e(str, "type");
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(uri, str);
        boolean z = true;
        intent.setFlags(1);
        try {
            startActivity(Intent.createChooser(intent, getString((int) C2752R.string.media_viewer_action_open_in)));
        } catch (ActivityNotFoundException e) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: Ih */
    public void mo31280Ih(MediaPosition mediaPosition, Uri uri, float f, long j) {
        s1.z.c.l.e(mediaPosition, "position");
        s1.z.c.l.e(uri, "uri");
        InteractiveMediaView interactiveMediaView = m31296OA().f51269d;
        Objects.requireNonNull(interactiveMediaView);
        s1.z.c.l.e(mediaPosition, "position");
        s1.z.c.l.e(uri, "uri");
        interactiveMediaView.m34964h(mediaPosition).m31286e(uri, f, j);
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: Ir */
    public void mo31279Ir() {
        m31296OA().f51269d.setPlayWhenReady(true);
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: KA */
    public void mo31278KA(boolean z) {
        if (z) {
            m31296OA().f51272g.m39201k();
        } else {
            m31296OA().f51272g.m39210b();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: N7 */
    public /* synthetic */ void mo4653N7(AbstractC24861y0 abstractC24861y0, int i) {
        C24811r0.m4488k(this, abstractC24861y0, i);
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: Nd */
    public void mo31277Nd(MediaPosition mediaPosition, Uri uri, long j) {
        s1.z.c.l.e(mediaPosition, "position");
        s1.z.c.l.e(uri, "uri");
        m31296OA().f51269d.m34959m(mediaPosition, uri, j);
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: Ne */
    public void mo31276Ne(long j) {
        SimpleExoPlayer simpleExoPlayer = m31296OA().f51269d.f13568t.f21353i;
        if (simpleExoPlayer != null) {
            simpleExoPlayer.seekTo(j);
        }
    }

    /* renamed from: OA */
    public final C18167j0 m31296OA() {
        return (C18167j0) this.f21330b.m34468b(this, f21327c[0]);
    }

    /* renamed from: PA */
    public final AbstractC6423h m31295PA() {
        AbstractC6423h abstractC6423h = this.f21329a;
        if (abstractC6423h != null) {
            return abstractC6423h;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: Pi */
    public /* synthetic */ void mo4652Pi(AbstractC24861y0 abstractC24861y0, Object obj, int i) {
        C24811r0.m4487l(this, abstractC24861y0, obj, i);
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: Po */
    public long mo31275Po() {
        return m31296OA().f51269d.getPlaybackPosition();
    }

    /* renamed from: QA */
    public final AbstractC25393a m31294QA() {
        n3.r.a.l activity = getActivity();
        if (!(activity instanceof h)) {
            activity = null;
        }
        h hVar = activity;
        AbstractC25393a abstractC25393a = null;
        if (hVar != null) {
            abstractC25393a = hVar.getSupportActionBar();
        }
        return abstractC25393a;
    }

    /* renamed from: RA */
    public final void m31293RA(MenuItem menuItem, int i) {
        Drawable mutate;
        Drawable icon = menuItem.getIcon();
        if (icon == null || (mutate = icon.mutate()) == null) {
            return;
        }
        s1.z.c.l.d(mutate, "icon?.mutate() ?: return");
        mutate.setTint(i);
        menuItem.setIcon(mutate);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: S8 */
    public /* synthetic */ void mo4651S8(boolean z) {
        C24811r0.m4489j(this, z);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: Xl */
    public /* synthetic */ void mo4650Xl(boolean z) {
        C24811r0.m4498a(this, z);
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: Y4 */
    public void mo31274Y4(boolean z) {
        if (z) {
            Resources resources = getResources();
            s1.z.c.l.d(resources, "resources");
            if (resources.getConfiguration().orientation == 1) {
                n3.r.a.l activity = getActivity();
                if (activity == null) {
                    return;
                }
                activity.finishAfterTransition();
                return;
            }
        }
        n3.r.a.l activity2 = getActivity();
        if (activity2 != null) {
            activity2.finish();
        }
        n3.r.a.l activity3 = getActivity();
        if (activity3 != null) {
            activity3.overridePendingTransition(0, 17432577);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: Zl */
    public /* synthetic */ void mo4649Zl(int i) {
        C24811r0.m4495d(this, i);
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: cl */
    public void mo31273cl(boolean z, String str, boolean z2) {
        EmojiTextView emojiTextView = m31296OA().f51270e;
        s1.z.c.l.d(emojiTextView, "binding.messageText");
        C19286f.m13683U(emojiTextView, z);
        EmojiTextView emojiTextView2 = m31296OA().f51270e;
        s1.z.c.l.d(emojiTextView2, "binding.messageText");
        emojiTextView2.setText(str);
        if (z2) {
            TextDelimiterFormatter textDelimiterFormatter = TextDelimiterFormatter.f13106b;
            EmojiTextView emojiTextView3 = m31296OA().f51270e;
            s1.z.c.l.d(emojiTextView3, "binding.messageText");
            TextDelimiterFormatter.m35099b(emojiTextView3, TextDelimiterFormatter.DelimiterVisibility.HIDE);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: fs */
    public /* synthetic */ void mo4648fs(TrackGroupArray trackGroupArray, C24648g c24648g) {
        C24811r0.m4486m(this, trackGroupArray, c24648g);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: h5 */
    public /* synthetic */ void mo4647h5(int i) {
        C24811r0.m4492g(this, i);
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: hu */
    public void mo31272hu(float f) {
        View view = m31296OA().f51267b;
        s1.z.c.l.d(view, "binding.background");
        view.setAlpha(f);
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: hx */
    public void mo31271hx(Uri uri, String str) {
        s1.z.c.l.e(uri, "uri");
        s1.z.c.l.e(str, "type");
        C8582g0.m28324Q(requireContext(), null, null, "", uri, str);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: hy */
    public /* synthetic */ void mo4646hy(int i) {
        C24811r0.m4491h(this, i);
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: l1 */
    public void mo31270l1(Conversation conversation) {
        s1.z.c.l.e(conversation, "conversation");
        MediaManagerActivity.C4224a c4224a = MediaManagerActivity.f13548a;
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        startActivity(c4224a.m34972a(requireContext, conversation, "mediaViewer", false));
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: l9 */
    public void mo31269l9(boolean z) {
        LinearLayout linearLayout = m31296OA().f51268c;
        s1.z.c.l.d(linearLayout, "binding.bottomContatiner");
        C19286f.m13683U(linearLayout, z);
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: mp */
    public void mo31268mp() {
        m31296OA().f51269d.m34957o();
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: n3 */
    public void mo31267n3() {
        PlayerControlView playerControlView = m31296OA().f51272g;
        s1.z.c.l.d(playerControlView, "binding.playerControlView");
        playerControlView.setPlayer(null);
        InteractiveMediaView interactiveMediaView = m31296OA().f51269d;
        interactiveMediaView.f13567s.m31289b();
        interactiveMediaView.f13568t.m31289b();
        interactiveMediaView.f13569u.m31289b();
    }

    public void onCreate(Bundle bundle) {
        C6407a.super.onCreate(bundle);
        Bundle arguments = getArguments();
        BinaryEntity binaryEntity = arguments != null ? (BinaryEntity) arguments.getParcelable("entity") : null;
        BinaryEntity binaryEntity2 = !(binaryEntity instanceof BinaryEntity) ? null : binaryEntity;
        if (binaryEntity2 != null) {
            Bundle arguments2 = getArguments();
            Message message = arguments2 != null ? (Message) arguments2.getParcelable("message") : null;
            Message message2 = !(message instanceof Message) ? null : message;
            if (message2 == null) {
                return;
            }
            Bundle arguments3 = getArguments();
            Conversation conversation = arguments3 != null ? (Conversation) arguments3.getParcelable("conversation") : null;
            if (!(conversation instanceof Conversation)) {
                conversation = null;
            }
            Bundle arguments4 = getArguments();
            boolean z = false;
            if (arguments4 != null) {
                z = arguments4.getBoolean("is_bubble_intent", false);
            }
            Context requireContext = requireContext();
            s1.z.c.l.d(requireContext, "requireContext()");
            Context applicationContext = requireContext.getApplicationContext();
            Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
            AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
            s1.z.c.l.d(mo10154s, "(requireContext().applic…GraphHolder).objectsGraph");
            Boolean valueOf = Boolean.valueOf(z);
            Objects.requireNonNull(valueOf);
            C25225a.m3846s(binaryEntity2, BinaryEntity.class);
            C25225a.m3846s(message2, Message.class);
            C25225a.m3846s(valueOf, Boolean.class);
            C25225a.m3846s(mo10154s, AbstractC15539j2.class);
            s1.w.f mo12378g = mo10154s.mo12378g();
            Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
            boolean booleanValue = valueOf.booleanValue();
            AbstractC18951b0 mo12399e7 = mo10154s.mo12399e7();
            Objects.requireNonNull(mo12399e7, "Cannot return null from a non-@Nullable component method");
            AbstractC19223c0 mo12349i = mo10154s.mo12349i();
            Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
            AbstractC19462a mo12776C4 = mo10154s.mo12776C4();
            Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
            C6422g c6422g = new C6422g(mo12776C4);
            AbstractC19222c mo11637k = mo10154s.mo11637k();
            Objects.requireNonNull(mo11637k, "Cannot return null from a non-@Nullable component method");
            AbstractC7004h mo12791B3 = mo10154s.mo12791B3();
            Objects.requireNonNull(mo12791B3, "Cannot return null from a non-@Nullable component method");
            Context mo12335j = mo10154s.mo12335j();
            Objects.requireNonNull(mo12335j, "Cannot return null from a non-@Nullable component method");
            s1.w.f mo12315k6 = mo10154s.mo12315k6();
            Objects.requireNonNull(mo12315k6, "Cannot return null from a non-@Nullable component method");
            C5678q5 c5678q5 = new C5678q5(mo12335j, mo12315k6);
            AbstractC6397d mo12362h1 = mo10154s.mo12362h1();
            Objects.requireNonNull(mo12362h1, "Cannot return null from a non-@Nullable component method");
            AbstractC6392i0 mo12565S = mo10154s.mo12565S();
            Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
            this.f21329a = new C6427l(mo12378g, booleanValue, binaryEntity2, message2, conversation, mo12399e7, mo12349i, c6422g, mo11637k, mo12791B3, c5678q5, mo12362h1, mo12565S);
            setHasOptionsMenu(true);
        }
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        s1.z.c.l.e(menu, "menu");
        s1.z.c.l.e(menuInflater, "inflater");
        C6407a.super.onCreateOptionsMenu(menu, menuInflater);
        AbstractC6423h abstractC6423h = this.f21329a;
        if (abstractC6423h == null) {
            s1.z.c.l.l("presenter");
            throw null;
        } else if (!C10480a.m25934l1(((C6427l) abstractC6423h).f21374q)) {
            menuInflater.inflate(C2752R.C2756menu.media_viewer, menu);
            Context requireContext = requireContext();
            Object obj = C26467a.f74235a;
            int m1787a = C26467a.C26471d.m1787a(requireContext, 2131101238);
            MenuItem findItem = menu.findItem(C2752R.C2754id.action_forward);
            s1.z.c.l.d(findItem, "menu.findItem(R.id.action_forward)");
            m31293RA(findItem, m1787a);
            MenuItem findItem2 = menu.findItem(2131362022);
            s1.z.c.l.d(findItem2, "menu.findItem(R.id.action_share)");
            m31293RA(findItem2, m1787a);
            int m13612L = C19291g.m13612L(requireContext(), 2130970255);
            MenuItem findItem3 = menu.findItem(C2752R.C2754id.action_open_in);
            s1.z.c.l.d(findItem3, "menu.findItem(R.id.action_open_in)");
            C19286f.m13673f(findItem3, Integer.valueOf(m13612L), null, 2);
            MenuItem findItem4 = menu.findItem(C2752R.C2754id.action_view_all_media);
            s1.z.c.l.d(findItem4, "menu.findItem(R.id.action_view_all_media)");
            C19286f.m13673f(findItem4, Integer.valueOf(m13612L), null, 2);
            MenuItem findItem5 = menu.findItem(C2752R.C2754id.action_show_in_chat);
            s1.z.c.l.d(findItem5, "menu.findItem(R.id.action_show_in_chat)");
            C19286f.m13673f(findItem5, Integer.valueOf(m13612L), null, 2);
            int m13612L2 = C19291g.m13612L(requireContext(), 2130969966);
            MenuItem findItem6 = menu.findItem(C2752R.C2754id.action_delete);
            s1.z.c.l.d(findItem6, "menu.findItem(R.id.action_delete)");
            C19286f.m13674e(findItem6, Integer.valueOf(m13612L2), Integer.valueOf(m13612L2));
            i j = j.j(0, menu.size());
            ArrayList<MenuItem> arrayList = new ArrayList(C25225a.m4004J(j, 10));
            z it = j.iterator();
            while (it.hasNext()) {
                arrayList.add(menu.getItem(it.a()));
            }
            for (MenuItem menuItem : arrayList) {
                s1.z.c.l.d(menuItem, "it");
                AbstractC6423h abstractC6423h2 = this.f21329a;
                if (abstractC6423h2 == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
                int itemId = menuItem.getItemId();
                C6427l c6427l = (C6427l) abstractC6423h2;
                menuItem.setVisible(!c6427l.f21372o ? !(itemId == 2131362023 ? c6427l.f21375r == null : itemId == 2131362035 && c6427l.f21375r == null) : itemId == 2131361975 || itemId == 2131362022);
            }
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.fragment_media_viewer, viewGroup, false);
    }

    public void onDestroyView() {
        AbstractC6423h abstractC6423h = this.f21329a;
        if (abstractC6423h == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C6427l) abstractC6423h).mo9806c();
        C6407a.super.onDestroyView();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        ImForwardInfo imForwardInfo;
        s1.z.c.l.e(menuItem, "item");
        switch (menuItem.getItemId()) {
            case 16908332:
                AbstractC6423h abstractC6423h = this.f21329a;
                if (abstractC6423h != null) {
                    ((C6427l) abstractC6423h).finish();
                    return true;
                }
                s1.z.c.l.l("presenter");
                throw null;
            case C2752R.C2754id.action_delete /* 2131361957 */:
                AbstractC6423h abstractC6423h2 = this.f21329a;
                if (abstractC6423h2 == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
                C6427l c6427l = (C6427l) abstractC6423h2;
                AbstractC6424i abstractC6424i = (AbstractC6424i) c6427l.f57683a;
                if (abstractC6424i != null) {
                    abstractC6424i.mo31263tA();
                }
                c6427l.f21378u.m31284b("Delete", c6427l.f21374q, c6427l.f21373p);
                return true;
            case C2752R.C2754id.action_forward /* 2131361975 */:
                AbstractC6423h abstractC6423h3 = this.f21329a;
                if (abstractC6423h3 == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
                C6427l c6427l2 = (C6427l) abstractC6423h3;
                Message message = c6427l2.f21374q;
                TransportInfo transportInfo = message.f13393n;
                if (!(transportInfo instanceof ImTransportInfo)) {
                    transportInfo = null;
                }
                if (transportInfo != null) {
                    ImTransportInfo imTransportInfo = (ImTransportInfo) transportInfo;
                    String str = imTransportInfo.f13729b;
                    String mo31078f = C10480a.m25874x1(message) ? c6427l2.f21383z.mo31078f() : c6427l2.f21374q.f13382c.f11570c;
                    Conversation conversation = c6427l2.f21375r;
                    String str2 = null;
                    if (conversation != null) {
                        ImGroupInfo imGroupInfo = conversation.f13224z;
                        str2 = null;
                        if (imGroupInfo != null) {
                            str2 = imGroupInfo.f13319a;
                        }
                    }
                    imForwardInfo = new ImForwardInfo(str, mo31078f, str2, imTransportInfo.f13742o);
                } else {
                    imForwardInfo = null;
                }
                AbstractC6424i abstractC6424i2 = (AbstractC6424i) c6427l2.f57683a;
                if (abstractC6424i2 == null) {
                    return true;
                }
                BinaryEntity binaryEntity = c6427l2.f21373p;
                Message message2 = c6427l2.f21374q;
                int i = message2.f13390k;
                Mention[] mentionArr = message2.f13395p;
                s1.z.c.l.d(mentionArr, "message.mentions");
                abstractC6424i2.mo31262wb(new ForwardContentItem("", false, binaryEntity, i, C25225a.m3897h3(mentionArr), imForwardInfo));
                return true;
            case C2752R.C2754id.action_open_in /* 2131362004 */:
                AbstractC6423h abstractC6423h4 = this.f21329a;
                if (abstractC6423h4 == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
                C6427l c6427l3 = (C6427l) abstractC6423h4;
                AbstractC6424i abstractC6424i3 = (AbstractC6424i) c6427l3.f57683a;
                if (abstractC6424i3 != null) {
                    BinaryEntity binaryEntity2 = c6427l3.f21373p;
                    Uri uri = binaryEntity2.f13173i;
                    String str3 = binaryEntity2.f13307b;
                    Locale locale = Locale.ENGLISH;
                    s1.z.c.l.d(locale, "Locale.ENGLISH");
                    Objects.requireNonNull(str3, "null cannot be cast to non-null type java.lang.String");
                    String lowerCase = str3.toLowerCase(locale);
                    s1.z.c.l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                    abstractC6424i3.mo31281Ia(uri, lowerCase);
                }
                c6427l3.f21378u.m31284b("OpenWith", c6427l3.f21374q, c6427l3.f21373p);
                return true;
            case 2131362022:
                AbstractC6423h abstractC6423h5 = this.f21329a;
                if (abstractC6423h5 == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
                C6427l c6427l4 = (C6427l) abstractC6423h5;
                AbstractC6424i abstractC6424i4 = (AbstractC6424i) c6427l4.f57683a;
                if (abstractC6424i4 == null) {
                    return true;
                }
                BinaryEntity binaryEntity3 = c6427l4.f21373p;
                Uri uri2 = binaryEntity3.f13173i;
                String str4 = binaryEntity3.f13307b;
                Locale locale2 = Locale.ENGLISH;
                s1.z.c.l.d(locale2, "Locale.ENGLISH");
                Objects.requireNonNull(str4, "null cannot be cast to non-null type java.lang.String");
                String lowerCase2 = str4.toLowerCase(locale2);
                s1.z.c.l.d(lowerCase2, "(this as java.lang.String).toLowerCase(locale)");
                abstractC6424i4.mo31271hx(uri2, lowerCase2);
                return true;
            case C2752R.C2754id.action_show_in_chat /* 2131362023 */:
                AbstractC6423h abstractC6423h6 = this.f21329a;
                if (abstractC6423h6 == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
                C6427l c6427l5 = (C6427l) abstractC6423h6;
                Conversation conversation2 = c6427l5.f21375r;
                if (conversation2 == null) {
                    return true;
                }
                AbstractC6424i abstractC6424i5 = (AbstractC6424i) c6427l5.f57683a;
                if (abstractC6424i5 != null) {
                    abstractC6424i5.mo31261y3(conversation2.f13199a, c6427l5.f21374q.f13380a);
                }
                c6427l5.f21378u.m31284b("ShowInChat", c6427l5.f21374q, c6427l5.f21373p);
                return true;
            case C2752R.C2754id.action_view_all_media /* 2131362035 */:
                AbstractC6423h abstractC6423h7 = this.f21329a;
                if (abstractC6423h7 == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
                C6427l c6427l6 = (C6427l) abstractC6423h7;
                Conversation conversation3 = c6427l6.f21375r;
                if (conversation3 == null) {
                    return true;
                }
                AbstractC6424i abstractC6424i6 = (AbstractC6424i) c6427l6.f57683a;
                if (abstractC6424i6 != null) {
                    abstractC6424i6.mo31270l1(conversation3);
                }
                c6427l6.f21378u.m31284b("ViewAllMedia", c6427l6.f21374q, c6427l6.f21373p);
                return true;
            default:
                return C6407a.super.onOptionsItemSelected(menuItem);
        }
    }

    public void onStart() {
        AbstractC6424i abstractC6424i;
        int i;
        C6407a.super.onStart();
        AbstractC6423h abstractC6423h = this.f21329a;
        if (abstractC6423h == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C6427l c6427l = (C6427l) abstractC6423h;
        BinaryEntity binaryEntity = c6427l.f21373p;
        if (binaryEntity instanceof VideoEntity) {
            VideoEntity videoEntity = (VideoEntity) binaryEntity;
            int i2 = videoEntity.f13480v;
            float f = (i2 <= 0 || (i = videoEntity.f13481w) <= 0) ? 1.0f : i2 / i;
            AbstractC6424i abstractC6424i2 = (AbstractC6424i) c6427l.f57683a;
            if (abstractC6424i2 != null) {
                MediaPosition mediaPosition = MediaPosition.CURRENT;
                Uri build = binaryEntity.f13173i.buildUpon().clearQuery().build();
                s1.z.c.l.d(build, "buildUpon().clearQuery().build()");
                abstractC6424i2.mo31280Ih(mediaPosition, build, f, binaryEntity.f13306a);
            }
            AbstractC6424i abstractC6424i3 = (AbstractC6424i) c6427l.f57683a;
            if (abstractC6424i3 != null) {
                abstractC6424i3.mo31276Ne(c6427l.f21366i);
            }
            if (C10480a.m25934l1(c6427l.f21374q) && (abstractC6424i = (AbstractC6424i) c6427l.f57683a) != null) {
                abstractC6424i.mo31279Ir();
            }
        }
        d.w2(c6427l, (s1.w.f) null, (j0) null, new C6425j(c6427l, null), 3, (Object) null);
        c6427l.f21367j = c6427l.f21379v.mo13821a();
    }

    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    public void onStop() {
        C6407a.super.onStop();
        AbstractC6423h abstractC6423h = this.f21329a;
        if (abstractC6423h == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C6427l c6427l = (C6427l) abstractC6423h;
        AbstractC6424i abstractC6424i = (AbstractC6424i) c6427l.f57683a;
        c6427l.f21366i = abstractC6424i != null ? abstractC6424i.mo31275Po() : (char) 0;
        AbstractC6424i abstractC6424i2 = (AbstractC6424i) c6427l.f57683a;
        if (abstractC6424i2 != null) {
            abstractC6424i2.mo31267n3();
        }
        C6422g c6422g = c6427l.f21378u;
        Message message = c6427l.f21374q;
        BinaryEntity binaryEntity = c6427l.f21373p;
        long mo13821a = c6427l.f21379v.mo13821a();
        long j = c6427l.f21367j;
        Objects.requireNonNull(c6422g);
        s1.z.c.l.e(message, "message");
        s1.z.c.l.e(binaryEntity, "entity");
        C19497e0 c19497e0 = new C19497e0("UseMediaViewer");
        c6422g.m31285a(c19497e0, message, binaryEntity);
        c19497e0.m13277e((mo13821a - j) / 1000.0d);
        c6422g.f21356a.mo13275a(c19497e0.m13281a());
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C6407a.super.onViewCreated(view, bundle);
        AbstractC6423h abstractC6423h = this.f21329a;
        if (abstractC6423h == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C6427l) abstractC6423h).mo9029Y0(this);
        InteractiveMediaView interactiveMediaView = m31296OA().f51269d;
        interactiveMediaView.setOnClickListener(new View$OnClickListenerC6408a(0, this));
        AbstractC6423h abstractC6423h2 = this.f21329a;
        if (abstractC6423h2 == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        interactiveMediaView.setOnImageSwipeListener(abstractC6423h2);
        interactiveMediaView.setPlayerEventListener(this);
        interactiveMediaView.setOnOverScrollListener(new C6411d());
        interactiveMediaView.setPlayerControlView(m31296OA().f51272g);
        m31296OA().f51271f.setOnClickListener(new View$OnClickListenerC6408a(1, this));
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        Window window = requireActivity.getWindow();
        s1.z.c.l.d(window, "requireActivity().window");
        Transition sharedElementReturnTransition = window.getSharedElementReturnTransition();
        if (sharedElementReturnTransition != null) {
            sharedElementReturnTransition.addListener(new C6412e());
        }
        n3.r.a.l requireActivity2 = requireActivity();
        s1.z.c.l.d(requireActivity2, "requireActivity()");
        Window window2 = requireActivity2.getWindow();
        s1.z.c.l.d(window2, "requireActivity().window");
        Transition sharedElementEnterTransition = window2.getSharedElementEnterTransition();
        if (sharedElementEnterTransition != null) {
            sharedElementEnterTransition.addListener(new C6413f());
        }
        DefaultTimeBar defaultTimeBar = (DefaultTimeBar) m31296OA().f51272g.findViewById(2131363576);
        if (defaultTimeBar == null) {
            return;
        }
        defaultTimeBar.setPlayedColor(C19291g.m13612L(requireContext(), C2752R.attr.tcx_mediaViewerProgressPlayedColor));
        defaultTimeBar.setScrubberColor(C19291g.m13612L(requireContext(), 2130970017));
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: qa */
    public void mo31266qa() {
        m31296OA().f51269d.setPlayWhenReady(false);
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: r2 */
    public void mo31265r2(boolean z) {
        ImageButton imageButton = m31296OA().f51271f;
        s1.z.c.l.d(imageButton, "binding.playbackButton");
        C19286f.m13683U(imageButton, z);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
    /* renamed from: rs */
    public /* synthetic */ void mo4645rs(C24652o0 c24652o0) {
        C24811r0.m4496c(this, c24652o0);
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    public void setTitle(String str) {
        s1.z.c.l.e(str, "title");
        AbstractC25393a m31294QA = m31294QA();
        if (m31294QA != null) {
            m31294QA.mo3542y(str);
        }
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: t4 */
    public void mo31264t4(CharSequence charSequence) {
        s1.z.c.l.e(charSequence, "subtitle");
        AbstractC25393a m31294QA = m31294QA();
        if (m31294QA != null) {
            m31294QA.mo3544w(charSequence);
        }
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: tA */
    public void mo31263tA() {
        g$a g_a = new g$a(requireContext());
        g_a.f70854a.f154d = getResources().getQuantityString(C2752R.plurals.media_manager_delete_confirmation_title, 1);
        g_a.f70854a.f156f = getResources().getQuantityString(C2752R.plurals.media_manager_delete_confirmation_message, 1, 1);
        g_a.m3662g(2131887867, null);
        g_a.m3660i(2131887879, new DialogInterface$OnClickListenerC6414g());
        g_a.m3652q();
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

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: wb */
    public void mo31262wb(ForwardContentItem forwardContentItem) {
        s1.z.c.l.e(forwardContentItem, "item");
        Intent intent = new Intent(requireContext(), NewConversationActivity.class);
        intent.setAction("android.intent.action.SEND");
        intent.putParcelableArrayListExtra("forward_content", s1.u.i.e(new ForwardContentItem[]{forwardContentItem}));
        startActivity(intent);
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: y3 */
    public void mo31261y3(long j, long j2) {
        Intent putExtra = new Intent(requireContext(), ConversationActivity.class).putExtra("conversation_id", j).putExtra("message_id", j2).putExtra("launch_source", "mediaViewer").putExtra(AnalyticsConstants.MODE, ConversationMode.DEFAULT);
        s1.z.c.l.d(putExtra, "Intent(requireContext(),…ConversationMode.DEFAULT)");
        startActivity(putExtra);
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: yf */
    public void mo31260yf() {
        Window window;
        View decorView;
        n3.r.a.l activity = getActivity();
        if (activity != null && (window = activity.getWindow()) != null && (decorView = window.getDecorView()) != null) {
            decorView.setSystemUiVisibility(4615);
        }
        AbstractC25393a m31294QA = m31294QA();
        if (m31294QA != null) {
            m31294QA.mo3557f();
        }
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6424i
    /* renamed from: z2 */
    public void mo31259z2(int i) {
        m31296OA().f51271f.setImageResource(i);
    }
}
