package com.truecaller.voip.p192ui;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.Chronometer;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.google.android.material.snackbar.Snackbar;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.tooltip.TooltipDirection;
import com.truecaller.log.AssertionUtil;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.p192ui.util.drawable.RingDrawableState;
import com.truecaller.voip.p192ui.util.view.VoipHeaderView;
import com.truecaller.voip.p192ui.util.view.tile.VoipContactTileGroupView;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p373a.p383e0.C8301a;
import p193e.p194a.p372b0.p373a.p383e0.C8304c;
import p193e.p194a.p619d.p628c.AbstractC11295e;
import p193e.p194a.p619d.p628c.AbstractC11296f;
import p193e.p194a.p619d.p628c.AbstractC11301k;
import p193e.p194a.p619d.p628c.AbstractC11302l;
import p193e.p194a.p619d.p628c.C11325t;
import p193e.p194a.p619d.p628c.C11327u;
import p193e.p194a.p619d.p628c.C11328v;
import p193e.p194a.p619d.p628c.View$OnClickListenerC11299i;
import p193e.p194a.p619d.p628c.p629a.AbstractC11194n;
import p193e.p194a.p619d.p628c.p629a.AbstractC11198o;
import p193e.p194a.p619d.p628c.p629a.C11179b;
import p193e.p194a.p619d.p628c.p629a.C11180c;
import p193e.p194a.p619d.p628c.p629a.C11191k;
import p193e.p194a.p619d.p628c.p629a.C11192l;
import p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11202d;
import p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11203e;
import p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11206h;
import p193e.p194a.p619d.p628c.p633a0.C11249b;
import p193e.p194a.p619d.p628c.p635b.C11268a;
import p193e.p194a.p619d.p637c0.AbstractC11421j1;
import p193e.p194a.p619d.p654s.C11785a;
import p193e.p194a.p619d.p657v.AbstractC11824d;
import p193e.p194a.p619d.p661w.AbstractC12093b;
import p193e.p194a.p619d.p661w.AbstractC12095d;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.f0.r;
import s1.g;
import s1.h;
import s1.i;
import s1.s;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��°\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n��\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0001\u0018�� \u0091\u00012\u00020\u00012\u00020\u0002:\u0004\u0092\u0001\u0093\u0001B\b¢\u0006\u0005\b\u0090\u0001\u0010\rJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\n\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u000e\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000f\u0010\rJ)\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0016\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0016\u0010\u0007J\u0017\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0005H\u0016¢\u0006\u0004\b#\u0010\rJ\u000f\u0010$\u001a\u00020\u0005H\u0016¢\u0006\u0004\b$\u0010\rJ\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010\rJ\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\rJ\u000f\u0010'\u001a\u00020\u0005H\u0016¢\u0006\u0004\b'\u0010\rJ\u000f\u0010(\u001a\u00020\u0005H\u0016¢\u0006\u0004\b(\u0010\rJ\u000f\u0010)\u001a\u00020\u0005H\u0016¢\u0006\u0004\b)\u0010\rJ\u000f\u0010*\u001a\u00020\u0005H\u0016¢\u0006\u0004\b*\u0010\rJ\u000f\u0010+\u001a\u00020\u0005H\u0016¢\u0006\u0004\b+\u0010\rJ\u000f\u0010,\u001a\u00020\u0005H\u0016¢\u0006\u0004\b,\u0010\rJ\u000f\u0010-\u001a\u00020\u0005H\u0016¢\u0006\u0004\b-\u0010\rJ\u001d\u00101\u001a\u00020\u00052\f\u00100\u001a\b\u0012\u0004\u0012\u00020/0.H\u0016¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\u0005H\u0016¢\u0006\u0004\b3\u0010\rJ\u0019\u00105\u001a\u00020\u00052\b\b\u0001\u00104\u001a\u00020\u0010H\u0016¢\u0006\u0004\b5\u00106J#\u00109\u001a\u00020\u00052\b\b\u0001\u00107\u001a\u00020\u00102\b\b\u0001\u00108\u001a\u00020\u0010H\u0016¢\u0006\u0004\b9\u0010:J\u001f\u0010?\u001a\u00020\u00052\u0006\u0010<\u001a\u00020;2\u0006\u0010>\u001a\u00020=H\u0016¢\u0006\u0004\b?\u0010@J\u0017\u0010B\u001a\u00020\u00052\u0006\u0010A\u001a\u00020;H\u0016¢\u0006\u0004\bB\u0010CJ\u000f\u0010D\u001a\u00020\u0005H\u0016¢\u0006\u0004\bD\u0010\rJ\u0017\u0010G\u001a\u00020\u00052\u0006\u0010F\u001a\u00020EH\u0016¢\u0006\u0004\bG\u0010HJ\u0017\u0010J\u001a\u00020\u00052\u0006\u0010I\u001a\u00020\u0010H\u0016¢\u0006\u0004\bJ\u00106J\u000f\u0010K\u001a\u00020\u0005H\u0016¢\u0006\u0004\bK\u0010\rJ\u000f\u0010L\u001a\u00020;H\u0016¢\u0006\u0004\bL\u0010MJ\u0017\u0010P\u001a\u00020\u00052\u0006\u0010O\u001a\u00020NH\u0016¢\u0006\u0004\bP\u0010QJ\u0017\u0010S\u001a\u00020\u00052\u0006\u0010R\u001a\u00020/H\u0016¢\u0006\u0004\bS\u0010TJ\u0017\u0010V\u001a\u00020\u00052\u0006\u0010U\u001a\u00020/H\u0016¢\u0006\u0004\bV\u0010TJ%\u0010Z\u001a\u00020\u00052\u0006\u0010W\u001a\u00020\u00102\u0006\u0010X\u001a\u00020\u00102\u0006\u0010Y\u001a\u00020;¢\u0006\u0004\bZ\u0010[R\"\u0010c\u001a\u00020\\8��@��X\u0081.¢\u0006\u0012\n\u0004\b]\u0010^\u001a\u0004\b_\u0010`\"\u0004\ba\u0010bR\"\u0010j\u001a\u00020d8��@��X\u0081.¢\u0006\u0012\n\u0004\b5\u0010e\u001a\u0004\bf\u0010g\"\u0004\bh\u0010iR\"\u0010o\u001a\u000e\u0012\u0004\u0012\u00020l\u0012\u0004\u0012\u00020\u00050k8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bm\u0010nR\u0016\u0010I\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010qR\"\u0010y\u001a\u00020r8��@��X\u0081.¢\u0006\u0012\n\u0004\bs\u0010t\u001a\u0004\bu\u0010v\"\u0004\bw\u0010xR$\u0010\u0081\u0001\u001a\u00020z8��@��X\u0081.¢\u0006\u0013\n\u0004\b{\u0010|\u001a\u0004\b}\u0010~\"\u0005\b\u007f\u0010\u0080\u0001R#\u0010\u0087\u0001\u001a\u00030\u0082\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0083\u0001\u0010\u0084\u0001\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001R\u001c\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u0088\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0001\u0010\u008a\u0001R\u001a\u0010\u008f\u0001\u001a\u00030\u008c\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u008e\u0001¨\u0006\u0094\u0001"}, d2 = {"Lcom/truecaller/voip/ui/VoipActivity;", "Ln3/b/a/h;", "Le/a/d/c/l;", "Landroid/content/Intent;", "intent", "Ls1/s;", "qa", "(Landroid/content/Intent;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "()V", "onDestroy", "onBackPressed", "", "requestCode", "resultCode", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "onNewIntent", "Le/a/d/c/a/n;", "logoType", "f1", "(Le/a/d/c/a/n;)V", "Le/a/d/c/a/o;", "voipUserBadgeTheme", "D", "(Le/a/d/c/a/o;)V", "Le/a/d/c/a/p/a/d;", "updateListener", "l3", "(Le/a/d/c/a/p/a/d;)V", "x9", "B4", "c3", "X2", "a3", "Z2", "n9", "h3", "G8", "t", "Y2", "", "", "peersInTheCall", "G3", "(Ljava/util/Set;)V", "V7", "errorRes", "d", "(I)V", "statusRes", "statusColorRes", "v3", "(II)V", "", AnalyticsConstants.SHOW, "", "chronometerBase", "u3", "(ZJ)V", "enabled", "A8", "(Z)V", "b3", "Lcom/truecaller/voip/ui/util/drawable/RingDrawableState;", "state", "setRingState", "(Lcom/truecaller/voip/ui/util/drawable/RingDrawableState;)V", "streamType", "J5", "s0", "R0", "()Z", "Le/a/d/c/f;", "listener", "d3", "(Le/a/d/c/f;)V", "number", "V2", "(Ljava/lang/String;)V", "text", "W2", "centerDummy", "centerAddPeers", "ongoing", "ra", "(IIZ)V", "Le/a/d/w/d;", "g", "Le/a/d/w/d;", "getInvitationManager$voip_release", "()Le/a/d/w/d;", "setInvitationManager$voip_release", "(Le/a/d/w/d;)V", "invitationManager", "Le/a/d/c/k;", "Le/a/d/c/k;", "getPresenter$voip_release", "()Le/a/d/c/k;", "setPresenter$voip_release", "(Le/a/d/c/k;)V", "presenter", "Lkotlin/Function1;", "Landroid/view/View;", "l", "Ls1/z/b/l;", "buttonAddPeersClickListener", "k", "I", "Le/a/d/c0/j1;", "e", "Le/a/d/c0/j1;", "getSupport$voip_release", "()Le/a/d/c0/j1;", "setSupport$voip_release", "(Le/a/d/c0/j1;)V", "support", "Le/a/d/v/d;", "f", "Le/a/d/v/d;", "getGroupCallManager$voip_release", "()Le/a/d/v/d;", "setGroupCallManager$voip_release", "(Le/a/d/v/d;)V", "groupCallManager", "Le/a/d/s/a;", "h", "Ls1/g;", "pa", "()Le/a/d/s/a;", "binding", "Lcom/truecaller/voip/ui/VoipActivity$c;", "j", "Lcom/truecaller/voip/ui/VoipActivity$c;", "phoneUnlockedReceiver", "Le/a/p5/i0;", "i", "Le/a/p5/i0;", "themedResourceProviderImpl", "<init>", "m", C22021b.f61237c, AbstractC2405c.f7629a, "voip_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.voip.ui.VoipActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/ui/VoipActivity.class */
public final class VoipActivity extends AbstractC11295e implements AbstractC11302l {

    /* renamed from: m */
    public static final C4839b f16434m = new C4839b(null);
    @Inject

    /* renamed from: d */
    public AbstractC11301k f16435d;
    @Inject

    /* renamed from: e */
    public AbstractC11421j1 f16436e;
    @Inject

    /* renamed from: f */
    public AbstractC11824d f16437f;
    @Inject

    /* renamed from: g */
    public AbstractC12095d f16438g;

    /* renamed from: i */
    public C19235i0 f16440i;

    /* renamed from: j */
    public C4840c f16441j;

    /* renamed from: k */
    public int f16442k;

    /* renamed from: h */
    public final g f16439h = C25225a.m3982O1(h.c, new C4838a(this));

    /* renamed from: l */
    public final l<View, s> f16443l = new C4841d();

    /* renamed from: com.truecaller.voip.ui.VoipActivity$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/ui/VoipActivity$a.class */
    public static final class C4838a extends m implements a<C11785a> {

        /* renamed from: b */
        public final /* synthetic */ n3.b.a.h f16444b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4838a(n3.b.a.h hVar) {
            super(0);
            this.f16444b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f16444b.getLayoutInflater();
            s1.z.c.l.d(layoutInflater, "layoutInflater");
            View inflate = layoutInflater.inflate(C4781R.layout.activity_voip, (ViewGroup) null, false);
            int i = C4781R.C4783id.addPeerBadge;
            TextView textView = (TextView) inflate.findViewById(i);
            if (textView != null) {
                i = C4781R.C4783id.buttonAddPeers;
                ImageButton imageButton = (ImageButton) inflate.findViewById(i);
                if (imageButton != null) {
                    i = C4781R.C4783id.buttonDummy;
                    ImageButton imageButton2 = (ImageButton) inflate.findViewById(i);
                    if (imageButton2 != null) {
                        i = C4781R.C4783id.calledSaidFrame;
                        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(i);
                        if (frameLayout != null) {
                            i = C4781R.C4783id.calledSaidGroup;
                            Group group = (Group) inflate.findViewById(i);
                            if (group != null) {
                                i = C4781R.C4783id.chronometer;
                                Chronometer chronometer = (Chronometer) inflate.findViewById(i);
                                if (chronometer != null) {
                                    i = C4781R.C4783id.contactTileGroup;
                                    VoipContactTileGroupView voipContactTileGroupView = (VoipContactTileGroupView) inflate.findViewById(i);
                                    if (voipContactTileGroupView != null) {
                                        i = C4781R.C4783id.containerView;
                                        FrameLayout frameLayout2 = (FrameLayout) inflate.findViewById(i);
                                        if (frameLayout2 != null) {
                                            i = C4781R.C4783id.credBackground;
                                            ImageView imageView = (ImageView) inflate.findViewById(i);
                                            if (imageView != null) {
                                                i = C4781R.C4783id.headerView;
                                                VoipHeaderView voipHeaderView = (VoipHeaderView) inflate.findViewById(i);
                                                if (voipHeaderView != null) {
                                                    i = C4781R.C4783id.labelCallerSaid;
                                                    TextView textView2 = (TextView) inflate.findViewById(i);
                                                    if (textView2 != null) {
                                                        i = C4781R.C4783id.statusContainer;
                                                        FrameLayout frameLayout3 = (FrameLayout) inflate.findViewById(i);
                                                        if (frameLayout3 != null) {
                                                            i = C4781R.C4783id.textCallerSaid;
                                                            TextView textView3 = (TextView) inflate.findViewById(i);
                                                            if (textView3 != null) {
                                                                i = C4781R.C4783id.textSizeInfo;
                                                                TextView textView4 = (TextView) inflate.findViewById(i);
                                                                if (textView4 != null) {
                                                                    i = C4781R.C4783id.textStatusVoip;
                                                                    TextView textView5 = (TextView) inflate.findViewById(i);
                                                                    if (textView5 != null) {
                                                                        i = C4781R.C4783id.textUnknownPhone;
                                                                        TextView textView6 = (TextView) inflate.findViewById(i);
                                                                        if (textView6 != null) {
                                                                            ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
                                                                            return new C11785a(constraintLayout, textView, imageButton, imageButton2, frameLayout, group, chronometer, voipContactTileGroupView, frameLayout2, imageView, voipHeaderView, textView2, frameLayout3, textView3, textView4, textView5, textView6, constraintLayout);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    /* renamed from: com.truecaller.voip.ui.VoipActivity$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/ui/VoipActivity$b.class */
    public static final class C4839b {
        public C4839b(f fVar) {
        }

        /* renamed from: a */
        public final Intent m34293a(Context context, boolean z) {
            s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
            Intent intent = new Intent(context, VoipActivity.class);
            intent.setFlags(268435456);
            if (z) {
                intent.setAction("AcceptInvitation");
            }
            return intent;
        }
    }

    /* renamed from: com.truecaller.voip.ui.VoipActivity$c */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/ui/VoipActivity$c.class */
    public static final class C4840c extends BroadcastReceiver {

        /* renamed from: a */
        public final AbstractC11296f f16445a;

        public C4840c(AbstractC11296f abstractC11296f) {
            s1.z.c.l.e(abstractC11296f, "listener");
            this.f16445a = abstractC11296f;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
            Object systemService = context.getSystemService("keyguard");
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.KeyguardManager");
            if (!((KeyguardManager) systemService).isKeyguardLocked()) {
                this.f16445a.mo24821a();
            }
        }
    }

    /* renamed from: com.truecaller.voip.ui.VoipActivity$d */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/ui/VoipActivity$d.class */
    public static final class C4841d extends m implements l<View, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4841d() {
            super(1);
            VoipActivity.this = r4;
        }

        /* renamed from: d */
        public Object m34292d(Object obj) {
            s1.z.c.l.e((View) obj, "<anonymous parameter 0>");
            AbstractC11301k abstractC11301k = VoipActivity.this.f16435d;
            if (abstractC11301k != null) {
                ((C11325t) abstractC11301k).m24824Lj();
                return s.a;
            }
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    /* renamed from: com.truecaller.voip.ui.VoipActivity$e */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/ui/VoipActivity$e.class */
    public static final class RunnableC4842e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C11785a f16447a;

        public RunnableC4842e(C11785a c11785a) {
            this.f16447a = c11785a;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ImageButton imageButton = this.f16447a.f34614c;
            s1.z.c.l.d(imageButton, "buttonAddPeers");
            ViewParent parent = imageButton.getParent();
            Objects.requireNonNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup = (ViewGroup) parent;
            s1.z.c.l.e(viewGroup, "parent");
            Object tag = viewGroup.getTag();
            Object obj = tag;
            if (!(tag instanceof C8304c)) {
                obj = null;
            }
            C8304c c8304c = (C8304c) obj;
            if (c8304c != null) {
                viewGroup.removeOnLayoutChangeListener(c8304c.f25583b);
                viewGroup.removeView(c8304c.f25582a);
                viewGroup.setTag(null);
                try {
                    Context context = viewGroup.getContext();
                    s1.z.c.l.d(context, "parent.context");
                    C19291g.m13529n0(context).removeView(c8304c.f25584c);
                } catch (Exception e) {
                    AssertionUtil.reportThrowableButNeverCrash(e);
                }
            }
        }
    }

    /* renamed from: com.truecaller.voip.ui.VoipActivity$f */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/ui/VoipActivity$f.class */
    public static final class KeyguardManager$KeyguardDismissCallbackC4843f extends KeyguardManager.KeyguardDismissCallback {

        /* renamed from: a */
        public final /* synthetic */ AbstractC11296f f16448a;

        public KeyguardManager$KeyguardDismissCallbackC4843f(AbstractC11296f abstractC11296f) {
            this.f16448a = abstractC11296f;
        }

        @Override // android.app.KeyguardManager.KeyguardDismissCallback
        public void onDismissSucceeded() {
            super.onDismissSucceeded();
            this.f16448a.mo24821a();
        }
    }

    /* renamed from: com.truecaller.voip.ui.VoipActivity$g */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/ui/VoipActivity$g.class */
    public static final class View$OnClickListenerC4844g implements View.OnClickListener {
        public View$OnClickListenerC4844g() {
            VoipActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC11301k abstractC11301k = VoipActivity.this.f16435d;
            if (abstractC11301k == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            AbstractC11302l abstractC11302l = (AbstractC11302l) ((C11325t) abstractC11301k).f57683a;
            if (abstractC11302l == null) {
                return;
            }
            abstractC11302l.mo24870t();
        }
    }

    /* renamed from: com.truecaller.voip.ui.VoipActivity$h */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/ui/VoipActivity$h.class */
    public static final class ViewTreeObserver$OnGlobalLayoutListenerC4845h implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ View f16450a;

        /* renamed from: b */
        public final /* synthetic */ C11785a f16451b;

        /* renamed from: c */
        public final /* synthetic */ VoipActivity f16452c;

        public ViewTreeObserver$OnGlobalLayoutListenerC4845h(View view, C11785a c11785a, VoipActivity voipActivity) {
            this.f16450a = view;
            this.f16451b = c11785a;
            this.f16452c = voipActivity;
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [android.app.Activity, com.truecaller.voip.ui.VoipActivity] */
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            this.f16450a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = this.f16452c.getWindowManager();
            s1.z.c.l.d(windowManager, "windowManager");
            windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
            Resources resources = this.f16452c.getResources();
            s1.z.c.l.d(resources, "resources");
            float f = resources.getDisplayMetrics().density;
            ConstraintLayout constraintLayout = this.f16451b.f34628q;
            s1.z.c.l.d(constraintLayout, "voipContainer");
            int m4001J2 = C25225a.m4001J2(constraintLayout.getHeight() / f);
            int m4001J22 = C25225a.m4001J2(displayMetrics.heightPixels / f);
            int m4001J23 = C25225a.m4001J2(displayMetrics.widthPixels / f);
            TextView textView = this.f16451b.f34625n;
            C19286f.m13684T(textView);
            textView.setText(m4001J23 + "dp x " + m4001J22 + "dp (usable height: " + m4001J2 + "dp)");
        }
    }

    /* renamed from: com.truecaller.voip.ui.VoipActivity$i */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/ui/VoipActivity$i.class */
    public static final class RunnableC4846i implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C11785a f16453a;

        /* renamed from: b */
        public final /* synthetic */ VoipActivity f16454b;

        public RunnableC4846i(C11785a c11785a, VoipActivity voipActivity) {
            this.f16453a = c11785a;
            this.f16454b = voipActivity;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C8301a c8301a = C8301a.f25570a;
            ImageButton imageButton = this.f16453a.f34614c;
            s1.z.c.l.d(imageButton, "buttonAddPeers");
            ViewParent parent = imageButton.getParent();
            Objects.requireNonNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup = (ViewGroup) parent;
            TooltipDirection tooltipDirection = TooltipDirection.TOP_END;
            int i = C4781R.string.voip_add_peer_tooltip;
            ImageButton imageButton2 = this.f16453a.f34614c;
            float dimension = this.f16454b.getResources().getDimension(C4781R.dimen.voip_half_spacing);
            ImageButton imageButton3 = this.f16453a.f34614c;
            s1.z.c.l.d(imageButton3, "buttonAddPeers");
            Context context = imageButton3.getContext();
            context.setTheme(C4781R.style.ThemeX_Light);
            s1.z.c.l.d(context, "(buttonAddPeers.context)…e(R.style.ThemeX_Light) }");
            C8301a.m28681c(c8301a, viewGroup, tooltipDirection, i, imageButton2, dimension, context, 0, false, z1.d, 192);
        }
    }

    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: A8 */
    public void mo24893A8(boolean z) {
        ImageButton imageButton = m34296pa().f34614c;
        imageButton.setEnabled(z);
        View$OnClickListenerC11299i view$OnClickListenerC11299i = z ? this.f16443l : null;
        View$OnClickListenerC11299i view$OnClickListenerC11299i2 = view$OnClickListenerC11299i;
        if (view$OnClickListenerC11299i != null) {
            view$OnClickListenerC11299i2 = new View$OnClickListenerC11299i(view$OnClickListenerC11299i);
        }
        imageButton.setOnClickListener(view$OnClickListenerC11299i2);
    }

    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: B4 */
    public void mo24892B4() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        s1.z.c.l.d(supportFragmentManager, "supportFragmentManager");
        Fragment c11268a = new C11268a();
        C26907a c26907a = new C26907a(supportFragmentManager);
        c26907a.m1120m(C4781R.C4783id.containerView, c11268a, "OngoingVoipFragment");
        c26907a.mo1126g();
    }

    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: D */
    public void mo24891D(AbstractC11198o abstractC11198o) {
        s1.z.c.l.e(abstractC11198o, "voipUserBadgeTheme");
        C11785a m34296pa = m34296pa();
        ImageView imageView = m34296pa.f34621j;
        s1.z.c.l.d(imageView, "credBackground");
        C19286f.m13687Q(imageView);
        VoipHeaderView voipHeaderView = m34296pa.f34622k;
        voipHeaderView.m34290D(abstractC11198o);
        voipHeaderView.setMinimizeButtonBackgroundResource(C4781R.C4782drawable.background_voip_ring_circle);
        if (abstractC11198o instanceof C11192l) {
            return;
        }
        if (abstractC11198o instanceof C11191k) {
            m34296pa().f34622k.setMinimizeButtonBackgroundResource(C4781R.C4782drawable.background_voip_minimise_spam_call);
        } else if (abstractC11198o instanceof C11179b) {
            m34296pa().f34622k.setMinimizeButtonBackgroundResource(C4781R.C4782drawable.background_voip_minimise_spam_call);
        } else if (!(abstractC11198o instanceof C11180c)) {
        } else {
            ImageView imageView2 = m34296pa.f34621j;
            s1.z.c.l.d(imageView2, "credBackground");
            C19286f.m13684T(imageView2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: G3 */
    public void mo24890G3(Set<String> set) {
        s1.z.c.l.e(set, "peersInTheCall");
        AbstractC11421j1 abstractC11421j1 = this.f16436e;
        if (abstractC11421j1 == null) {
            s1.z.c.l.l("support");
            throw null;
        }
        abstractC11421j1.mo24094x(this, 1, set);
        mo24893A8(false);
    }

    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: G8 */
    public void mo24889G8() {
        TextView textView = m34296pa().f34613b;
        s1.z.c.l.d(textView, "binding.addPeerBadge");
        C19286f.m13689O(textView);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: J5 */
    public void mo24888J5(int i) {
        this.f16442k = i;
        setVolumeControlStream(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: R0 */
    public boolean mo24887R0() {
        Object systemService = getSystemService("keyguard");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.KeyguardManager");
        return ((KeyguardManager) systemService).isKeyguardLocked();
    }

    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: V2 */
    public void mo24886V2(String str) {
        s1.z.c.l.e(str, "number");
        TextView textView = m34296pa().f34627p;
        C19286f.m13683U(textView, !r.p(str));
        textView.setText(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: V7 */
    public void mo24885V7() {
        AbstractC11421j1 abstractC11421j1 = this.f16436e;
        if (abstractC11421j1 != null) {
            abstractC11421j1.mo24100r(this);
        } else {
            s1.z.c.l.l("support");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: W2 */
    public void mo24884W2(String str) {
        s1.z.c.l.e(str, "text");
        Group group = m34296pa().f34617f;
        s1.z.c.l.d(group, "binding.calledSaidGroup");
        C19286f.m13684T(group);
        TextView textView = m34296pa().f34624m;
        s1.z.c.l.d(textView, "binding.textCallerSaid");
        textView.setText(str);
    }

    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: X2 */
    public void mo24883X2() {
        m34296pa().f34622k.setMinimizeButtonVisible(false);
    }

    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: Y2 */
    public void mo24882Y2() {
        C11785a m34296pa = m34296pa();
        ConstraintLayout constraintLayout = m34296pa.f34628q;
        s1.z.c.l.d(constraintLayout, "voipContainer");
        constraintLayout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC4845h(constraintLayout, m34296pa, this));
    }

    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: Z2 */
    public void mo24881Z2() {
        C11785a m34296pa = m34296pa();
        m34296pa.f34614c.post(new RunnableC4846i(m34296pa, this));
    }

    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: a3 */
    public void mo24880a3() {
        ImageButton imageButton = m34296pa().f34614c;
        s1.z.c.l.d(imageButton, "binding.buttonAddPeers");
        C19286f.m13684T(imageButton);
    }

    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: b3 */
    public void mo24879b3() {
        AbstractC11203e abstractC11203e;
        C11206h c11206h = (C11206h) m34296pa().f34619h.getPresenter$voip_release();
        c11206h.f33101h = true;
        if (!c11206h.f33100g || (abstractC11203e = (AbstractC11203e) c11206h.f57683a) == null) {
            return;
        }
        abstractC11203e.mo25043u0();
    }

    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: c3 */
    public void mo24878c3() {
        VoipHeaderView voipHeaderView = m34296pa().f34622k;
        voipHeaderView.setMinimizeButtonVisible(true);
        voipHeaderView.setMinimizeButtonClickListener(new View$OnClickListenerC4844g());
    }

    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: d */
    public void mo24877d(int i) {
        Snackbar.k(m34296pa().f34628q, i, 0).n();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: d3 */
    public void mo24876d3(AbstractC11296f abstractC11296f) {
        s1.z.c.l.e(abstractC11296f, "listener");
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            Object systemService = getSystemService("keyguard");
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.KeyguardManager");
            ((KeyguardManager) systemService).requestDismissKeyguard(this, new KeyguardManager$KeyguardDismissCallbackC4843f(abstractC11296f));
            return;
        }
        if (i >= 27) {
            setShowWhenLocked(false);
            setTurnScreenOn(false);
        } else {
            getWindow().clearFlags(2621440);
        }
        getWindow().addFlags(4194304);
        C4840c c4840c = new C4840c(abstractC11296f);
        this.f16441j = c4840c;
        registerReceiver(c4840c, new IntentFilter("android.intent.action.USER_PRESENT"));
    }

    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: f1 */
    public void mo24875f1(AbstractC11194n abstractC11194n) {
        Integer num;
        s1.z.c.l.e(abstractC11194n, "logoType");
        if (s1.z.c.l.a(abstractC11194n, AbstractC11194n.C11196b.f33084a)) {
            num = Integer.valueOf(C4781R.C4782drawable.ic_tcx_truecaller_voice_logo);
        } else if (s1.z.c.l.a(abstractC11194n, AbstractC11194n.C11197c.f33085a)) {
            num = Integer.valueOf(C4781R.C4782drawable.ic_tcx_truecaller_voice_logo_uk);
        } else if (!(abstractC11194n instanceof AbstractC11194n.C11195a)) {
            throw new i();
        } else {
            String str = ((AbstractC11194n.C11195a) abstractC11194n).f33083a;
            if (str != null) {
                m34296pa().f34622k.setAssistantImage(str);
            }
            num = null;
        }
        if (num != null) {
            m34296pa().f34622k.setLogo(num.intValue());
        }
    }

    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: h3 */
    public void mo24874h3() {
        TextView textView = m34296pa().f34613b;
        s1.z.c.l.d(textView, "binding.addPeerBadge");
        C19286f.m13684T(textView);
    }

    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: l3 */
    public void mo24873l3(AbstractC11202d abstractC11202d) {
        s1.z.c.l.e(abstractC11202d, "updateListener");
        ((C11206h) m34296pa().f34619h.getPresenter$voip_release()).f33104k = abstractC11202d;
    }

    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: n9 */
    public void mo24872n9() {
        C11785a m34296pa = m34296pa();
        m34296pa.f34614c.post(new RunnableC4842e(m34296pa));
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        VoipActivity.super.onActivityResult(i, i2, intent);
        if (i == 1) {
            if (intent != null) {
                AbstractC11421j1 abstractC11421j1 = this.f16436e;
                if (abstractC11421j1 == null) {
                    s1.z.c.l.l("support");
                    throw null;
                }
                String[] stringArrayExtra = intent.getStringArrayExtra(abstractC11421j1.mo24128A());
                if (stringArrayExtra != null) {
                    AbstractC11301k abstractC11301k = this.f16435d;
                    if (abstractC11301k == null) {
                        s1.z.c.l.l("presenter");
                        throw null;
                    }
                    s1.z.c.l.d(stringArrayExtra, "it");
                    C11325t c11325t = (C11325t) abstractC11301k;
                    Objects.requireNonNull(c11325t);
                    s1.z.c.l.e(stringArrayExtra, "numbers");
                    d.w2(c11325t, (s1.w.f) null, (j0) null, new C11328v(c11325t, stringArrayExtra, null), 3, (Object) null);
                }
            }
            mo24893A8(true);
        }
    }

    public void onBackPressed() {
        AbstractC11301k abstractC11301k = this.f16435d;
        if (abstractC11301k == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        AbstractC11302l abstractC11302l = (AbstractC11302l) ((C11325t) abstractC11301k).f57683a;
        if (abstractC11302l == null) {
            return;
        }
        abstractC11302l.mo24870t();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x007a, code lost:
        if (r0.mo23622b() == false) goto L15;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.voip.p192ui.VoipActivity.onCreate(android.os.Bundle):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onDestroy() {
        C4840c c4840c = this.f16441j;
        if (c4840c != null) {
            unregisterReceiver(c4840c);
        }
        AbstractC11301k abstractC11301k = this.f16435d;
        if (abstractC11301k == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C11325t) abstractC11301k).mo9806c();
        VoipActivity.super.onDestroy();
    }

    public void onNewIntent(Intent intent) {
        VoipActivity.super.onNewIntent(intent);
        if (intent == null) {
            return;
        }
        m34295qa(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onResume() {
        VoipActivity.super.onResume();
        setVolumeControlStream(this.f16442k);
    }

    /* renamed from: pa */
    public final C11785a m34296pa() {
        return (C11785a) this.f16439h.getValue();
    }

    /* renamed from: qa */
    public final void m34295qa(Intent intent) {
        String action = intent.getAction();
        if (action != null && action.hashCode() == 197436129 && action.equals("AcceptInvitation")) {
            AbstractC11301k abstractC11301k = this.f16435d;
            if (abstractC11301k == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            AbstractC12093b mo23619e = ((C11325t) abstractC11301k).f33328n.mo23619e();
            if (mo23619e == null) {
                return;
            }
            mo23619e.mo23586b();
        }
    }

    /* renamed from: ra */
    public final void m34294ra(int i, int i2, boolean z) {
        C11785a m34296pa = m34296pa();
        ConstraintLayout constraintLayout = m34296pa.f34628q;
        AtomicInteger atomicInteger = C26614s.f74505a;
        boolean z2 = true;
        if (constraintLayout.getLayoutDirection() != 1) {
            z2 = false;
        }
        ConstraintLayout constraintLayout2 = m34296pa.f34628q;
        s1.z.c.l.d(constraintLayout2, "voipContainer");
        int width = constraintLayout2.getWidth();
        ImageButton imageButton = m34296pa.f34614c;
        ViewGroup.LayoutParams layoutParams = imageButton.getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.C0111a c0111a = (ConstraintLayout.C0111a) layoutParams;
        if (!z2) {
            i2 = width - i2;
        }
        c0111a.setMarginEnd(i2 - (((ViewGroup.MarginLayoutParams) c0111a).width / 2));
        imageButton.setLayoutParams(c0111a);
        ImageButton imageButton2 = m34296pa.f34615d;
        ViewGroup.LayoutParams layoutParams2 = imageButton2.getLayoutParams();
        Objects.requireNonNull(layoutParams2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.C0111a c0111a2 = (ConstraintLayout.C0111a) layoutParams2;
        int i3 = i;
        if (z2) {
            i3 = width - i;
        }
        c0111a2.setMarginStart(i3 - (((ViewGroup.MarginLayoutParams) c0111a2).width / 2));
        imageButton2.setLayoutParams(c0111a2);
        AbstractC11301k abstractC11301k = this.f16435d;
        if (abstractC11301k == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C11325t c11325t = (C11325t) abstractC11301k;
        Objects.requireNonNull(c11325t);
        if (!z) {
            return;
        }
        d.w2(c11325t, (s1.w.f) null, (j0) null, new C11327u(c11325t, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: s0 */
    public void mo24871s0() {
        C11206h c11206h = (C11206h) m34296pa().f34619h.getPresenter$voip_release();
        c11206h.f33102i = true;
        AbstractC11203e abstractC11203e = (AbstractC11203e) c11206h.f57683a;
        if (abstractC11203e != null) {
            abstractC11203e.mo25044s0();
        }
    }

    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    public void setRingState(RingDrawableState ringDrawableState) {
        s1.z.c.l.e(ringDrawableState, "state");
        C11206h c11206h = (C11206h) m34296pa().f34619h.getPresenter$voip_release();
        Objects.requireNonNull(c11206h);
        s1.z.c.l.e(ringDrawableState, "state");
        AbstractC11203e abstractC11203e = (AbstractC11203e) c11206h.f57683a;
        if (abstractC11203e != null) {
            abstractC11203e.setRingState(ringDrawableState);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: t */
    public void mo24870t() {
        finish();
    }

    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: u3 */
    public void mo24869u3(boolean z, long j) {
        Chronometer chronometer = m34296pa().f34618g;
        C19286f.m13683U(chronometer, z);
        if (!z) {
            chronometer.stop();
            return;
        }
        chronometer.setBase(j);
        chronometer.start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: v3 */
    public void mo24868v3(int i, int i2) {
        C19235i0 c19235i0 = this.f16440i;
        if (c19235i0 == null) {
            s1.z.c.l.l("themedResourceProviderImpl");
            throw null;
        }
        int m13612L = C19291g.m13612L(c19235i0.f53605a, i2);
        getString(i);
        TextView textView = m34296pa().f34626o;
        textView.setText(i);
        textView.setTextColor(m13612L);
    }

    @Override // p193e.p194a.p619d.p628c.AbstractC11302l
    /* renamed from: x9 */
    public void mo24867x9() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        s1.z.c.l.d(supportFragmentManager, "supportFragmentManager");
        Fragment c11249b = new C11249b();
        C26907a c26907a = new C26907a(supportFragmentManager);
        c26907a.m1120m(C4781R.C4783id.containerView, c11249b, "IncomingVoipFragment");
        c26907a.mo1126g();
        AbstractC11203e abstractC11203e = (AbstractC11203e) ((C11206h) m34296pa().f34619h.getPresenter$voip_release()).f57683a;
        if (abstractC11203e != null) {
            abstractC11203e.setModeIncoming(true);
        }
    }
}
