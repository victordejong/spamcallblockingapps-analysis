package p193e.p194a.p195a.p236h;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.details_view.analytics.SourceType;
import com.truecaller.insights.p168ui.markedimportantpage.view.MarkedImportantPageActivity;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.groupinfo.EditImGroupInfoActivity;
import com.truecaller.messaging.groupinfo.GroupInfoItemView;
import com.truecaller.messaging.imgrouplinkinvite.ImGroupLinkInviteActivity;
import com.truecaller.messaging.mediamanager.MediaManagerActivity;
import com.truecaller.messaging.newconversation.NewConversationActivity;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.ArrayList;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1059m3.C18147b0;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1275v.p1309p.C20940n;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p682e.p683a.C12781m2;
import p193e.p194a.p997k3.p1000l.p1001k.C16503a;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��®\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018�� \u0087\u00012\u00020\u00012\u00020\u0002:\u0001qB\b¢\u0006\u0005\b\u0086\u0001\u0010\u0013J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0013J)\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00162\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u0013J\u0017\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010#\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J\u0019\u0010'\u001a\u00020\u00052\b\u0010&\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0005H\u0016¢\u0006\u0004\b)\u0010\u0013J\u0017\u0010,\u001a\u00020\u00052\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b,\u0010-J\u0017\u0010.\u001a\u00020\u00052\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b.\u0010-J\u0017\u0010/\u001a\u00020\u00052\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b/\u0010-J7\u00104\u001a\u00020\u00052\b\u00100\u001a\u0004\u0018\u00010%2\b\u00101\u001a\u0004\u0018\u00010%2\b\u00102\u001a\u0004\u0018\u00010%2\b\u00103\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b4\u00105J\u0019\u00107\u001a\u00020\u00052\b\b\u0001\u00106\u001a\u00020\u0016H\u0016¢\u0006\u0004\b7\u0010 J\u0017\u00109\u001a\u00020\u00052\u0006\u00108\u001a\u00020%H\u0016¢\u0006\u0004\b9\u0010(J\u000f\u0010:\u001a\u00020\u0005H\u0016¢\u0006\u0004\b:\u0010\u0013J\u000f\u0010;\u001a\u00020\u0005H\u0016¢\u0006\u0004\b;\u0010\u0013J\u0017\u0010>\u001a\u00020\u00052\u0006\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\b>\u0010?J\u001f\u0010B\u001a\u00020\u00052\u0006\u0010@\u001a\u00020<2\u0006\u0010A\u001a\u00020<H\u0016¢\u0006\u0004\bB\u0010CJ\u0019\u0010E\u001a\u00020\u00052\b\u0010D\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\bE\u0010(J\u0017\u0010F\u001a\u00020\u00052\u0006\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\bF\u0010?J\u0017\u0010G\u001a\u00020\u00052\u0006\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\bG\u0010?J\u0017\u0010J\u001a\u00020\u00052\u0006\u0010I\u001a\u00020HH\u0016¢\u0006\u0004\bJ\u0010KJ\u0017\u0010M\u001a\u00020\u00052\u0006\u0010I\u001a\u00020LH\u0016¢\u0006\u0004\bM\u0010NJ\u0017\u0010O\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0016H\u0016¢\u0006\u0004\bO\u0010 J\u0017\u0010P\u001a\u00020\u00052\u0006\u00106\u001a\u00020\u0016H\u0016¢\u0006\u0004\bP\u0010 J\u0017\u0010Q\u001a\u00020\u00052\u0006\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\bQ\u0010?J\u0017\u0010T\u001a\u00020\u00052\u0006\u0010S\u001a\u00020RH\u0016¢\u0006\u0004\bT\u0010UJ\u0017\u0010X\u001a\u00020\u00052\u0006\u0010W\u001a\u00020VH\u0016¢\u0006\u0004\bX\u0010YJ!\u0010\\\u001a\u00020\u00052\u0006\u0010Z\u001a\u00020\u00162\b\b\u0001\u0010[\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\\\u0010]J\u0017\u0010^\u001a\u00020\u00052\u0006\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\b^\u0010?J\u0017\u0010`\u001a\u00020\u00052\u0006\u0010_\u001a\u00020%H\u0016¢\u0006\u0004\b`\u0010(R\"\u0010g\u001a\u00020a8��@��X\u0081.¢\u0006\u0012\n\u0004\b7\u0010b\u001a\u0004\bc\u0010d\"\u0004\be\u0010fR\"\u0010o\u001a\u00020h8��@��X\u0081.¢\u0006\u0012\n\u0004\bi\u0010j\u001a\u0004\bk\u0010l\"\u0004\bm\u0010nR\"\u0010w\u001a\u00020p8��@��X\u0081.¢\u0006\u0012\n\u0004\bq\u0010r\u001a\u0004\bs\u0010t\"\u0004\bu\u0010vR\u0016\u0010{\u001a\u00020x8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\by\u0010zR\u0018\u0010\u007f\u001a\u0004\u0018\u00010|8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010~R#\u0010\u0085\u0001\u001a\u00030\u0080\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0081\u0001\u0010\u0082\u0001\u001a\u0006\b\u0083\u0001\u0010\u0084\u0001¨\u0006\u0088\u0001"}, d2 = {"Le/a/a/h/a;", "Landroidx/fragment/app/Fragment;", "Le/a/a/h/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onStart", "()V", "onStop", "onDestroyView", "", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "c0", "count", "F3", "(I)V", "Lcom/truecaller/common/ui/avatar/AvatarXConfig;", DTBMetricsConfiguration.CONFIG_DIR, "ek", "(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V", "", "title", "y9", "(Ljava/lang/String;)V", "finish", "Lcom/truecaller/messaging/data/types/ImGroupInfo;", "imGroupInfo", "p7", "(Lcom/truecaller/messaging/data/types/ImGroupInfo;)V", "N8", "R9", "normalizedNumber", "rawAddress", AnalyticsConstants.NAME, "tcContactId", "Ho", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "res", "a", "groupTitle", "x5", "W3", "H7", "", "visible", "Jt", "(Z)V", "addParticipant", "inviteParticipant", "lf", "(ZZ)V", "option", "il", "Tw", "fv", "Lcom/truecaller/data/entity/messaging/Participant;", "participant", "s0", "(Lcom/truecaller/data/entity/messaging/Participant;)V", "Le/a/k3/l/k/a;", "Qo", "(Le/a/k3/l/k/a;)V", "pk", "Qi", "sq", "Lcom/truecaller/messaging/data/types/Conversation;", "conversation", "l1", "(Lcom/truecaller/messaging/data/types/Conversation;)V", "", "conversationId", "Ce", "(J)V", "preselectOption", "items", "Va", "(II)V", "Xp", "subtitle", "Li", "Le/a/a/h/g;", "Le/a/a/h/g;", "PA", "()Le/a/a/h/g;", "setPresenter$truecaller_googlePlayRelease", "(Le/a/a/h/g;)V", "presenter", "Le/a/a/h/n;", C22021b.f61237c, "Le/a/a/h/n;", "getParticipantItemPresenter$truecaller_googlePlayRelease", "()Le/a/a/h/n;", "setParticipantItemPresenter$truecaller_googlePlayRelease", "(Le/a/a/h/n;)V", "participantItemPresenter", "Le/a/b0/a/b/a;", AbstractC2405c.f7629a, "Le/a/b0/a/b/a;", "getAvatarPresenter$truecaller_googlePlayRelease", "()Le/a/b0/a/b/a;", "setAvatarPresenter$truecaller_googlePlayRelease", "(Le/a/b0/a/b/a;)V", "avatarPresenter", "Le/a/o2/f;", "d", "Le/a/o2/f;", "adapter", "Landroid/app/Dialog;", "e", "Landroid/app/Dialog;", "progressDialog", "Le/a/m3/b0;", "f", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/m3/b0;", "binding", "<init>", "h", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.h.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/h/a.class */
public final class C6271a extends Fragment implements AbstractC6289h {

    /* renamed from: g */
    public static final /* synthetic */ l[] f21043g = {C22128a.m8621g0(C6271a.class, "binding", "getBinding()Lcom/truecaller/databinding/FragmentImGroupInfoBinding;", 0)};

    /* renamed from: h */
    public static final C6274c f21044h = new C6274c(null);
    @Inject

    /* renamed from: a */
    public AbstractC6288g f21045a;
    @Inject

    /* renamed from: b */
    public AbstractC6306n f21046b;
    @Inject

    /* renamed from: c */
    public C8243a f21047c;

    /* renamed from: d */
    public C18898f f21048d;

    /* renamed from: e */
    public Dialog f21049e;

    /* renamed from: f */
    public final ViewBindingProperty f21050f = new C19350a(new C6273b());

    /* renamed from: e.a.a.h.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a/h/a$a.class */
    public static final class View$OnClickListenerC6272a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f21051a;

        /* renamed from: b */
        public final /* synthetic */ Object f21052b;

        public View$OnClickListenerC6272a(int i, Object obj) {
            this.f21051a = i;
            this.f21052b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            switch (this.f21051a) {
                case 0:
                    ((C6271a) this.f21052b).m31536PA().mo31486r0();
                    return;
                case 1:
                    ((C6271a) this.f21052b).m31536PA().mo31503Ag();
                    return;
                case 2:
                    ((C6271a) this.f21052b).m31536PA().mo31490fh();
                    return;
                case 3:
                    ((C6271a) this.f21052b).m31536PA().mo31491e6();
                    return;
                case 4:
                    ((C6271a) this.f21052b).m31536PA().mo31487lf();
                    return;
                case 5:
                    ((C6271a) this.f21052b).m31536PA().mo31502Dh();
                    return;
                case 6:
                    ((C6271a) this.f21052b).m31536PA().mo31489hf();
                    return;
                default:
                    throw null;
            }
        }
    }

    /* renamed from: e.a.a.h.a$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/h/a$b.class */
    public static final class C6273b extends m implements s1.z.b.l<C6271a, C18147b0> {
        public C6273b() {
            super(1);
        }

        /* renamed from: d */
        public Object m31535d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            CoordinatorLayout requireView = fragment.requireView();
            int i = 2131362095;
            TextView textView = (TextView) requireView.findViewById(C2752R.C2754id.addParticipantsLabel);
            if (textView != null) {
                i = 2131362096;
                LinearLayout linearLayout = (LinearLayout) requireView.findViewById(C2752R.C2754id.addParticipantsView);
                if (linearLayout != null) {
                    i = 2131362176;
                    AppBarLayout findViewById = requireView.findViewById(2131362176);
                    if (findViewById != null) {
                        i = 2131362838;
                        CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) requireView.findViewById(C2752R.C2754id.collapsing_toolbar);
                        if (collapsingToolbarLayout != null) {
                            i = 2131362906;
                            AvatarXView avatarXView = (AvatarXView) requireView.findViewById(2131362906);
                            if (avatarXView != null) {
                                i = 2131364043;
                                LinearLayout linearLayout2 = (LinearLayout) requireView.findViewById(C2752R.C2754id.groupActionsContainer);
                                if (linearLayout2 != null) {
                                    i = 2131364326;
                                    GroupInfoItemView groupInfoItemView = (GroupInfoItemView) requireView.findViewById(C2752R.C2754id.importantItemView);
                                    if (groupInfoItemView != null) {
                                        i = 2131364446;
                                        TextView textView2 = (TextView) requireView.findViewById(C2752R.C2754id.inviteByLinkLabel);
                                        if (textView2 != null) {
                                            i = 2131364610;
                                            TextView textView3 = (TextView) requireView.findViewById(C2752R.C2754id.leaveGroupView);
                                            if (textView3 != null) {
                                                i = 2131364766;
                                                LinearLayout linearLayout3 = (LinearLayout) requireView.findViewById(C2752R.C2754id.mediaButton);
                                                if (linearLayout3 != null) {
                                                    i = 2131364767;
                                                    TextView textView4 = (TextView) requireView.findViewById(C2752R.C2754id.mediaCount);
                                                    if (textView4 != null) {
                                                        i = 2131364768;
                                                        TextView textView5 = (TextView) requireView.findViewById(C2752R.C2754id.mediaLabel);
                                                        if (textView5 != null) {
                                                            i = 2131364871;
                                                            GroupInfoItemView groupInfoItemView2 = (GroupInfoItemView) requireView.findViewById(C2752R.C2754id.muteItemView);
                                                            if (groupInfoItemView2 != null) {
                                                                i = 2131364880;
                                                                TextView textView6 = (TextView) requireView.findViewById(C2752R.C2754id.nameText);
                                                                if (textView6 != null) {
                                                                    i = 2131365093;
                                                                    TextView textView7 = (TextView) requireView.findViewById(C2752R.C2754id.participantCount);
                                                                    if (textView7 != null) {
                                                                        i = 2131365378;
                                                                        RecyclerView recyclerView = (RecyclerView) requireView.findViewById(2131365378);
                                                                        if (recyclerView != null) {
                                                                            i = 2131366512;
                                                                            Toolbar toolbar = (Toolbar) requireView.findViewById(2131366512);
                                                                            if (toolbar != null) {
                                                                                return new C18147b0(requireView, textView, linearLayout, findViewById, collapsingToolbarLayout, avatarXView, linearLayout2, groupInfoItemView, textView2, textView3, linearLayout3, textView4, textView5, groupInfoItemView2, textView6, textView7, recyclerView, toolbar);
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
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.a.h.a$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/h/a$c.class */
    public static final class C6274c {
        public C6274c(f fVar) {
        }
    }

    /* renamed from: e.a.a.h.a$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/h/a$d.class */
    public static final class C6275d extends m implements s1.z.b.l<View, C6309q> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6275d() {
            super(1);
            C6271a.this = r4;
        }

        /* renamed from: d */
        public Object m31534d(Object obj) {
            View view = (View) obj;
            s1.z.c.l.e(view, ViewAction.VIEW);
            C18898f c18898f = C6271a.this.f21048d;
            if (c18898f != null) {
                return new C6309q(view, c18898f);
            }
            s1.z.c.l.l("adapter");
            throw null;
        }
    }

    /* renamed from: e.a.a.h.a$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/h/a$e.class */
    public static final class C6276e extends m implements s1.z.b.l<C6309q, C6309q> {

        /* renamed from: b */
        public static final C6276e f21054b = new C6276e();

        public C6276e() {
            super(1);
        }

        /* renamed from: d */
        public Object m31533d(Object obj) {
            C6309q c6309q = (C6309q) obj;
            s1.z.c.l.e(c6309q, "it");
            return c6309q;
        }
    }

    /* renamed from: e.a.a.h.a$f */
    /* loaded from: classes7-dex2jar.jar:e/a/a/h/a$f.class */
    public static final class C6277f implements Toolbar.AbstractC0082f {
        public C6277f() {
            C6271a.this = r4;
        }

        @Override // androidx.appcompat.widget.Toolbar.AbstractC0082f
        public final boolean onMenuItemClick(MenuItem menuItem) {
            s1.z.c.l.d(menuItem, "menuItem");
            return menuItem.getItemId() != 2131361970 ? false : C6271a.this.m31536PA().mo31492T8();
        }
    }

    /* renamed from: e.a.a.h.a$g */
    /* loaded from: classes7-dex2jar.jar:e/a/a/h/a$g.class */
    public static final class C6278g implements AppBarLayout.c {
        public C6278g() {
            C6271a.this = r4;
        }

        /* renamed from: Xm */
        public final void m31532Xm(AppBarLayout appBarLayout, int i) {
            s1.z.c.l.e(appBarLayout, "appBarLayout");
            float totalScrollRange = (appBarLayout.getTotalScrollRange() - Math.abs(i)) / appBarLayout.getTotalScrollRange();
            C6271a c6271a = C6271a.this;
            l[] lVarArr = C6271a.f21043g;
            AvatarXView avatarXView = c6271a.m31537OA().f51123d;
            s1.z.c.l.d(avatarXView, "binding.contactPhoto");
            avatarXView.setAlpha(totalScrollRange);
            TextView textView = C6271a.this.m31537OA().f51132m;
            s1.z.c.l.d(textView, "binding.nameText");
            textView.setAlpha(totalScrollRange);
            C6271a.this.m31537OA().f51135p.setTitleTextColor(totalScrollRange == 0.0f ? C19291g.m13612L(C6271a.this.requireContext(), 2130970253) : 0);
        }
    }

    /* renamed from: e.a.a.h.a$h */
    /* loaded from: classes7-dex2jar.jar:e/a/a/h/a$h.class */
    public static final class DialogInterface$OnClickListenerC6279h implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC6279h() {
            C6271a.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C6271a.this.m31536PA().mo31493R1();
        }
    }

    /* renamed from: e.a.a.h.a$i */
    /* loaded from: classes7-dex2jar.jar:e/a/a/h/a$i.class */
    public static final class DialogInterface$OnClickListenerC6280i implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC6280i() {
            C6271a.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C6271a.this.m31536PA().mo31488ih(i);
            dialogInterface.dismiss();
        }
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: Ce */
    public void mo31530Ce(long j) {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        Intent putExtra = new Intent(requireContext, MarkedImportantPageActivity.class).putExtra("conversation_id", j);
        s1.z.c.l.d(putExtra, "Intent(context, MarkedIm…ATION_ID, conversationId)");
        startActivity(putExtra);
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: F3 */
    public void mo31529F3(int i) {
        TextView textView = m31537OA().f51133n;
        s1.z.c.l.d(textView, "binding.participantCount");
        textView.setText(getResources().getQuantityString(C2752R.plurals.NewImGroupMemberCount, i, Integer.valueOf(i)));
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: H7 */
    public void mo31528H7() {
        Dialog dialog = this.f21049e;
        if (dialog != null) {
            dialog.dismiss();
        }
        this.f21049e = null;
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: Ho */
    public void mo31527Ho(String str, String str2, String str3, String str4) {
        Intent m10486b;
        C20940n c20940n = C20940n.f58889a;
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        m10486b = c20940n.m10486b(requireContext, str4, str3, str, str2, null, SourceType.ImGroupInfo, false, true, 20, null, null, null);
        Context requireContext2 = requireContext();
        s1.z.c.l.d(requireContext2, "requireContext()");
        c20940n.m10483e(requireContext2, m10486b);
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: Jt */
    public void mo31526Jt(boolean z) {
        Toolbar toolbar = m31537OA().f51135p;
        s1.z.c.l.d(toolbar, "binding.toolbar");
        MenuItem findItem = toolbar.getMenu().findItem(C2752R.C2754id.action_edit);
        s1.z.c.l.d(findItem, "binding.toolbar.menu.findItem(R.id.action_edit)");
        findItem.setVisible(z);
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: Li */
    public void mo31525Li(String str) {
        s1.z.c.l.e(str, "subtitle");
        m31537OA().f51125f.setSubtitle(str);
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: N8 */
    public void mo31524N8(ImGroupInfo imGroupInfo) {
        s1.z.c.l.e(imGroupInfo, "imGroupInfo");
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(imGroupInfo, "groupInfo");
        Intent putExtra = new Intent(requireContext, ImGroupLinkInviteActivity.class).putExtra("group_info", imGroupInfo);
        s1.z.c.l.d(putExtra, "Intent(context, ImGroupL…RA_GROUP_INFO, groupInfo)");
        startActivity(putExtra);
    }

    /* renamed from: OA */
    public final C18147b0 m31537OA() {
        return (C18147b0) this.f21050f.m34468b(this, f21043g[0]);
    }

    /* renamed from: PA */
    public final AbstractC6288g m31536PA() {
        AbstractC6288g abstractC6288g = this.f21045a;
        if (abstractC6288g != null) {
            return abstractC6288g;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: Qi */
    public void mo31523Qi(int i) {
        m31537OA().f51130k.setText(i);
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: Qo */
    public void mo31522Qo(C16503a c16503a) {
        s1.z.c.l.e(c16503a, "participant");
        ConversationActivity.C4167a c4167a = ConversationActivity.f13017e;
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        startActivity(c4167a.m35128b(requireContext, c16503a.f46397a, c16503a.f46401e, c16503a.f46403g, c16503a.f46405i));
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: R9 */
    public void mo31521R9(ImGroupInfo imGroupInfo) {
        s1.z.c.l.e(imGroupInfo, "imGroupInfo");
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(imGroupInfo, "imGroupInfo");
        Intent putExtra = new Intent(requireContext, EditImGroupInfoActivity.class).putExtra("im_group_info", imGroupInfo);
        s1.z.c.l.d(putExtra, "Intent(context, EditImGr…_GROUP_INFO, imGroupInfo)");
        startActivityForResult(putExtra, 2);
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: Tw */
    public void mo31520Tw(boolean z) {
        LinearLayout linearLayout = m31537OA().f51124e;
        s1.z.c.l.d(linearLayout, "binding.groupActionsContainer");
        C19286f.m13683U(linearLayout, z);
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: Va */
    public void mo31519Va(int i, int i2) {
        g$a g_a = new g$a(requireContext());
        g_a.m3656m(C2752R.string.ImGroupNotifications);
        g_a.m3658k(i2, i, new DialogInterface$OnClickListenerC6280i());
        g_a.m3662g(2131887867, null);
        g_a.m3652q();
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [e.a.e.a.m2, android.app.Dialog] */
    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: W3 */
    public void mo31518W3() {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
            ?? c12781m2 = new C12781m2(context);
            c12781m2.setCancelable(false);
            c12781m2.show();
            this.f21049e = c12781m2;
        }
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: Xp */
    public void mo31517Xp(boolean z) {
        GroupInfoItemView groupInfoItemView = m31537OA().f51125f;
        s1.z.c.l.d(groupInfoItemView, "binding.importantItemView");
        C19286f.m13683U(groupInfoItemView, z);
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: a */
    public void mo31516a(int i) {
        Toast.makeText(getContext(), i, 1).show();
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: c0 */
    public void mo31515c0() {
        C18898f c18898f = this.f21048d;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        } else {
            s1.z.c.l.l("adapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: ek */
    public void mo31514ek(AvatarXConfig avatarXConfig) {
        s1.z.c.l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
        C8243a c8243a = this.f21047c;
        if (c8243a != null) {
            C8243a.m28739ok(c8243a, avatarXConfig, false, 2, null);
        } else {
            s1.z.c.l.l("avatarPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    public void finish() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: fv */
    public void mo31513fv(boolean z) {
        GroupInfoItemView groupInfoItemView = m31537OA().f51131l;
        s1.z.c.l.d(groupInfoItemView, "binding.muteItemView");
        C19286f.m13683U(groupInfoItemView, z);
        TextView textView = m31537OA().f51127h;
        s1.z.c.l.d(textView, "binding.leaveGroupView");
        C19286f.m13683U(textView, z);
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: il */
    public void mo31512il(String str) {
        m31537OA().f51131l.setSubtitle(str);
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: l1 */
    public void mo31511l1(Conversation conversation) {
        s1.z.c.l.e(conversation, "conversation");
        MediaManagerActivity.C4224a c4224a = MediaManagerActivity.f13548a;
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        startActivity(c4224a.m34972a(requireContext, conversation, "imGroupInfo", false));
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: lf */
    public void mo31510lf(boolean z, boolean z2) {
        LinearLayout linearLayout = m31537OA().f51121b;
        s1.z.c.l.d(linearLayout, "binding.addParticipantsView");
        C19286f.m13683U(linearLayout, z || z2);
        TextView textView = m31537OA().f51120a;
        s1.z.c.l.d(textView, "binding.addParticipantsLabel");
        C19286f.m13683U(textView, z);
        TextView textView2 = m31537OA().f51126g;
        s1.z.c.l.d(textView2, "binding.inviteByLinkLabel");
        C19286f.m13683U(textView2, z2);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        C6271a.super.onActivityResult(i, i2, intent);
        if (intent != null && i == 1) {
            AbstractC6288g abstractC6288g = this.f21045a;
            if (abstractC6288g == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            s1.z.c.l.e(intent, RemoteMessageConst.DATA);
            ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("RESULT_PARTICIPANTS");
            if (parcelableArrayListExtra == null) {
                throw new IllegalArgumentException("Required value was null.".toString());
            }
            abstractC6288g.mo31501E5(parcelableArrayListExtra);
        }
    }

    public void onCreate(Bundle bundle) {
        Bundle arguments;
        Conversation conversation;
        C6271a.super.onCreate(bundle);
        n3.r.a.l activity = getActivity();
        if (activity == null || (arguments = getArguments()) == null || (conversation = (Conversation) arguments.getParcelable("conversation")) == null) {
            return;
        }
        Context applicationContext = activity.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        C6287f c6287f = new C6287f(conversation, activity);
        C25225a.m3846s(c6287f, C6287f.class);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        C6281b c6281b = new C6281b(c6287f, mo10154s, null);
        this.f21045a = (AbstractC6288g) c6281b.f21063e.get();
        this.f21046b = (AbstractC6306n) c6281b.f21065g.get();
        C19235i0 c19235i0 = new C19235i0(c6281b.f21059a.f21073b);
        s1.z.c.l.e(c19235i0, "themedResourceProvider");
        this.f21047c = new C8243a(c19235i0);
        AbstractC6306n abstractC6306n = this.f21046b;
        if (abstractC6306n != null) {
            this.f21048d = new C18898f(new C18910r(abstractC6306n, C2752R.layout.item_im_group_participant, new C6275d(), C6276e.f21054b));
        } else {
            s1.z.c.l.l("participantItemPresenter");
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.fragment_im_group_info, viewGroup, false);
    }

    public void onDestroyView() {
        AbstractC6288g abstractC6288g = this.f21045a;
        if (abstractC6288g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC6288g.mo9806c();
        C6271a.super.onDestroyView();
    }

    public void onStart() {
        C6271a.super.onStart();
        AbstractC6288g abstractC6288g = this.f21045a;
        if (abstractC6288g != null) {
            abstractC6288g.onStart();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onStop() {
        C6271a.super.onStop();
        AbstractC6288g abstractC6288g = this.f21045a;
        if (abstractC6288g != null) {
            abstractC6288g.onStop();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        Drawable icon;
        s1.z.c.l.e(view, ViewAction.VIEW);
        C6271a.super.onViewCreated(view, bundle);
        h activity = getActivity();
        n3.r.a.l lVar = activity;
        if (!(activity instanceof h)) {
            lVar = null;
        }
        h hVar = lVar;
        if (hVar != null) {
            Toolbar toolbar = m31537OA().f51135p;
            toolbar.setNavigationOnClickListener(new View$OnClickListenerC6272a(0, this));
            toolbar.m43079n(C2752R.C2756menu.im_group_info);
            toolbar.setOnMenuItemClickListener(new C6277f());
            int m13612L = C19291g.m13612L(requireContext(), 2130970255);
            MenuItem findItem = toolbar.getMenu().findItem(C2752R.C2754id.action_edit);
            if (findItem != null && (icon = findItem.getIcon()) != null) {
                Drawable mutate = icon.mutate();
                s1.z.c.l.d(mutate, "DrawableCompat.wrap(icon).mutate()");
                mutate.setTint(m13612L);
                findItem.setIcon(mutate);
            }
            AbstractC25393a supportActionBar = hVar.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.mo3553n(true);
                supportActionBar.mo3551p(false);
            }
            m31537OA().f51122c.a(new C6278g());
            m31537OA().f51127h.setOnClickListener(new View$OnClickListenerC6272a(1, this));
            m31537OA().f51120a.setOnClickListener(new View$OnClickListenerC6272a(2, this));
            m31537OA().f51126g.setOnClickListener(new View$OnClickListenerC6272a(3, this));
            m31537OA().f51131l.setOnClickListener(new View$OnClickListenerC6272a(4, this));
            m31537OA().f51128i.setOnClickListener(new View$OnClickListenerC6272a(5, this));
            m31537OA().f51125f.setOnClickListener(new View$OnClickListenerC6272a(6, this));
            RecyclerView recyclerView = m31537OA().f51134o;
            s1.z.c.l.d(recyclerView, "binding.recyclerView");
            C18898f c18898f = this.f21048d;
            if (c18898f == null) {
                s1.z.c.l.l("adapter");
                throw null;
            }
            recyclerView.setAdapter(c18898f);
            AvatarXView avatarXView = m31537OA().f51123d;
            C8243a c8243a = this.f21047c;
            if (c8243a == null) {
                s1.z.c.l.l("avatarPresenter");
                throw null;
            }
            avatarXView.setPresenter(c8243a);
            AbstractC6288g abstractC6288g = this.f21045a;
            if (abstractC6288g != null) {
                abstractC6288g.mo9029Y0(this);
            } else {
                s1.z.c.l.l("presenter");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: p7 */
    public void mo31509p7(ImGroupInfo imGroupInfo) {
        s1.z.c.l.e(imGroupInfo, "imGroupInfo");
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(imGroupInfo, "imGroupInfo");
        Intent putExtra = new Intent(requireContext, NewConversationActivity.class).putExtra("im_group_info", imGroupInfo);
        s1.z.c.l.d(putExtra, "Intent(context, NewConve…_GROUP_INFO, imGroupInfo)");
        startActivityForResult(putExtra, 1);
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: pk */
    public void mo31508pk(int i) {
        TextView textView = m31537OA().f51129j;
        s1.z.c.l.d(textView, "binding.mediaCount");
        textView.setText(String.valueOf(i));
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: s0 */
    public void mo31507s0(Participant participant) {
        s1.z.c.l.e(participant, "participant");
        startActivity(new Intent(requireContext(), ConversationActivity.class).putExtra("participants", new Participant[]{participant}).putExtra("launch_source", "imGroupInfo"));
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: sq */
    public void mo31506sq(boolean z) {
        LinearLayout linearLayout = m31537OA().f51128i;
        s1.z.c.l.d(linearLayout, "binding.mediaButton");
        C19286f.m13683U(linearLayout, z);
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: x5 */
    public void mo31505x5(String str) {
        s1.z.c.l.e(str, "groupTitle");
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            g$a g_a = new g$a(context);
            g_a.f70854a.f154d = getString((int) C2752R.string.ImGroupLeaveConfirmationTitle, new Object[]{str});
            g_a.m3664e(C2752R.string.ImGroupLeaveConfirmationMessage);
            g_a.m3660i(C2752R.string.ImGroupLeave, new DialogInterface$OnClickListenerC6279h());
            g_a.m3662g(2131887867, null);
            g_a.m3652q();
        }
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6289h
    /* renamed from: y9 */
    public void mo31504y9(String str) {
        TextView textView = m31537OA().f51132m;
        s1.z.c.l.d(textView, "binding.nameText");
        textView.setText(str);
        Toolbar toolbar = m31537OA().f51135p;
        s1.z.c.l.d(toolbar, "binding.toolbar");
        toolbar.setTitle(str);
    }
}
