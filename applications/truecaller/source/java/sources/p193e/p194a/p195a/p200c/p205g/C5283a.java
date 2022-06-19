package p193e.p194a.p195a.p200c.p205g;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.conversation.imgrouplinkinvite.GroupInviteLinkDialogActivity;
import com.truecaller.messaging.data.types.ImInviteUserInfo;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.e;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1059m3.C18168k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018�� T2\u00020\u00012\u00020\u0002:\u0001>B\u0007¢\u0006\u0004\bS\u0010\u0017J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ-\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00102\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ;\u0010$\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001c2\b\b\u0001\u0010\u001f\u001a\u00020\u001e2\b\b\u0001\u0010 \u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!H\u0016¢\u0006\u0004\b$\u0010%J!\u0010)\u001a\u00020\u00052\b\u0010'\u001a\u0004\u0018\u00010&2\u0006\u0010(\u001a\u00020!H\u0016¢\u0006\u0004\b)\u0010*J\u0017\u0010,\u001a\u00020\u00052\u0006\u0010+\u001a\u00020!H\u0016¢\u0006\u0004\b,\u0010-J\u0017\u0010/\u001a\u00020\u00052\u0006\u0010.\u001a\u00020\u001eH\u0016¢\u0006\u0004\b/\u00100J-\u00105\u001a\u00020\u00052\f\u00103\u001a\b\u0012\u0004\u0012\u000202012\u0006\u00104\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020!H\u0016¢\u0006\u0004\b5\u00106J\u0017\u00109\u001a\u00020\u00052\u0006\u00108\u001a\u000207H\u0016¢\u0006\u0004\b9\u0010:J\u000f\u0010;\u001a\u00020\u0005H\u0016¢\u0006\u0004\b;\u0010\u0017J\u000f\u0010<\u001a\u00020\u0005H\u0002¢\u0006\u0004\b<\u0010\u0017R\u001d\u0010B\u001a\u00020=8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b>\u0010?\u001a\u0004\b@\u0010AR\"\u0010J\u001a\u00020C8��@��X\u0081.¢\u0006\u0012\n\u0004\bD\u0010E\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR\"\u0010R\u001a\u00020K8��@��X\u0081.¢\u0006\u0012\n\u0004\bL\u0010M\u001a\u0004\bN\u0010O\"\u0004\bP\u0010Q¨\u0006U"}, d2 = {"Le/a/a/c/g/a;", "Le/m/a/g/e/e;", "Le/a/a/c/g/f;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDetach", "()V", "", AnalyticsConstants.SHOW, "f", "(Z)V", "Landroid/graphics/drawable/Drawable;", RemoteMessageConst.Notification.ICON, "", "iconColor", "bgColor", "", "title", "description", "Np", "(Landroid/graphics/drawable/Drawable;IILjava/lang/String;Ljava/lang/String;)V", "Landroid/net/Uri;", "uri", "inviteKey", "S9", "(Landroid/net/Uri;Ljava/lang/String;)V", "text", "setTitle", "(Ljava/lang/String;)V", "size", "ja", "(I)V", "", "Lcom/truecaller/messaging/data/types/ImInviteUserInfo;", "list", "groupSize", "ce", "(Ljava/util/List;ILjava/lang/String;)V", "", "conversationId", "T2", "(J)V", "finish", "PA", "Le/a/m3/k;", AbstractC2405c.f7629a, "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/m3/k;", "binding", "Le/a/b0/a/b/a;", "a", "Le/a/b0/a/b/a;", "getAvatarPresenter$truecaller_googlePlayRelease", "()Le/a/b0/a/b/a;", "setAvatarPresenter$truecaller_googlePlayRelease", "(Le/a/b0/a/b/a;)V", "avatarPresenter", "Le/a/a/c/g/e;", C22021b.f61237c, "Le/a/a/c/g/e;", "getPresenter$truecaller_googlePlayRelease", "()Le/a/a/c/g/e;", "setPresenter$truecaller_googlePlayRelease", "(Le/a/a/c/g/e;)V", "presenter", "<init>", "e", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.c.g.a */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/g/a.class */
public final class C5283a extends e implements AbstractC5296f {

    /* renamed from: d */
    public static final /* synthetic */ l[] f18098d = {C22128a.m8621g0(C5283a.class, "binding", "getBinding()Lcom/truecaller/databinding/BottomSheetGroupInviteBinding;", 0)};

    /* renamed from: e */
    public static final C5286c f18099e = new C5286c(null);
    @Inject

    /* renamed from: a */
    public C8243a f18100a;
    @Inject

    /* renamed from: b */
    public AbstractC5295e f18101b;

    /* renamed from: c */
    public final ViewBindingProperty f18102c = new C19350a(new C5285b());

    /* renamed from: e.a.a.c.g.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a/c/g/a$a.class */
    public static final class View$OnClickListenerC5284a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f18103a;

        /* renamed from: b */
        public final /* synthetic */ Object f18104b;

        public View$OnClickListenerC5284a(int i, Object obj) {
            this.f18103a = i;
            this.f18104b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f18103a;
            if (i == 0) {
                ((C5283a) this.f18104b).dismiss();
            } else if (i != 1) {
                throw null;
            } else {
                AbstractC5295e abstractC5295e = ((C5283a) this.f18104b).f18101b;
                if (abstractC5295e != null) {
                    abstractC5295e.mo33430Ij();
                } else {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
            }
        }
    }

    /* renamed from: e.a.a.c.g.a$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/g/a$b.class */
    public static final class C5285b extends m implements s1.z.b.l<C5283a, C18168k> {
        public C5285b() {
            super(1);
        }

        /* renamed from: d */
        public Object m33439d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131362231;
            AvatarXView avatarXView = (AvatarXView) requireView.findViewById(2131362231);
            if (avatarXView != null) {
                i = 2131362481;
                MaterialButton findViewById = requireView.findViewById(C2752R.C2754id.buttonCancel);
                if (findViewById != null) {
                    i = 2131362482;
                    MaterialButton findViewById2 = requireView.findViewById(2131362482);
                    if (findViewById2 != null) {
                        i = 2131362503;
                        MaterialButton findViewById3 = requireView.findViewById(C2752R.C2754id.buttonJoin);
                        if (findViewById3 != null) {
                            i = 2131362978;
                            TextView textView = (TextView) requireView.findViewById(C2752R.C2754id.countView);
                            if (textView != null) {
                                i = 2131363527;
                                TextView textView2 = (TextView) requireView.findViewById(C2752R.C2754id.errorDescription);
                                if (textView2 != null) {
                                    i = 2131363531;
                                    TextView textView3 = (TextView) requireView.findViewById(C2752R.C2754id.errorTitle);
                                    if (textView3 != null) {
                                        i = 2131363532;
                                        AppCompatImageView appCompatImageView = (AppCompatImageView) requireView.findViewById(C2752R.C2754id.errorView);
                                        if (appCompatImageView != null) {
                                            i = 2131364648;
                                            RecyclerView recyclerView = (RecyclerView) requireView.findViewById(2131364648);
                                            if (recyclerView != null) {
                                                i = 2131364668;
                                                ProgressBar progressBar = (ProgressBar) requireView.findViewById(C2752R.C2754id.loader);
                                                if (progressBar != null) {
                                                    i = 2131364672;
                                                    TextView textView4 = (TextView) requireView.findViewById(C2752R.C2754id.loaderText);
                                                    if (textView4 != null) {
                                                        i = 2131366469;
                                                        TextView textView5 = (TextView) requireView.findViewById(2131366469);
                                                        if (textView5 != null) {
                                                            return new C18168k((ConstraintLayout) requireView, avatarXView, findViewById, findViewById2, findViewById3, textView, textView2, textView3, appCompatImageView, recyclerView, progressBar, textView4, textView5);
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

    /* renamed from: e.a.a.c.g.a$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/g/a$c.class */
    public static final class C5286c {
        public C5286c(f fVar) {
        }
    }

    /* renamed from: e.a.a.c.g.a$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/g/a$d.class */
    public static final class View$OnClickListenerC5287d implements View.OnClickListener {
        public View$OnClickListenerC5287d() {
            C5283a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C5283a.this.dismiss();
        }
    }

    @Override // p193e.p194a.p195a.p200c.p205g.AbstractC5296f
    /* renamed from: Np */
    public void mo33436Np(Drawable drawable, int i, int i2, String str, String str2) {
        s1.z.c.l.e(drawable, RemoteMessageConst.Notification.ICON);
        s1.z.c.l.e(str, "title");
        s1.z.c.l.e(str2, "description");
        m33440PA();
        AppCompatImageView appCompatImageView = m33441OA().f51280h;
        s1.z.c.l.d(appCompatImageView, "binding.errorView");
        C19286f.m13684T(appCompatImageView);
        m33441OA().f51280h.setImageDrawable(drawable);
        AppCompatImageView appCompatImageView2 = m33441OA().f51280h;
        s1.z.c.l.d(appCompatImageView2, "binding.errorView");
        appCompatImageView2.setBackgroundTintList(ColorStateList.valueOf(i2));
        AppCompatImageView appCompatImageView3 = m33441OA().f51280h;
        s1.z.c.l.d(appCompatImageView3, "binding.errorView");
        appCompatImageView3.setImageTintList(ColorStateList.valueOf(i));
        TextView textView = m33441OA().f51279g;
        s1.z.c.l.d(textView, "binding.errorTitle");
        textView.setTypeface(Typeface.create("sans-serif-medium", 0));
        TextView textView2 = m33441OA().f51279g;
        s1.z.c.l.d(textView2, "binding.errorTitle");
        textView2.setTextSize(16.0f);
        TextView textView3 = m33441OA().f51279g;
        s1.z.c.l.d(textView3, "binding.errorTitle");
        C19286f.m13684T(textView3);
        TextView textView4 = m33441OA().f51279g;
        s1.z.c.l.d(textView4, "binding.errorTitle");
        textView4.setText(str);
        TextView textView5 = m33441OA().f51278f;
        s1.z.c.l.d(textView5, "binding.errorDescription");
        textView5.setTypeface(Typeface.create("sans-serif-medium", 0));
        TextView textView6 = m33441OA().f51278f;
        s1.z.c.l.d(textView6, "binding.errorDescription");
        textView6.setTextSize(12.0f);
        TextView textView7 = m33441OA().f51278f;
        s1.z.c.l.d(textView7, "binding.errorDescription");
        C19286f.m13684T(textView7);
        TextView textView8 = m33441OA().f51278f;
        s1.z.c.l.d(textView8, "binding.errorDescription");
        textView8.setText(str2);
        MaterialButton materialButton = m33441OA().f51275c;
        s1.z.c.l.d(materialButton, "binding.buttonClose");
        C19286f.m13684T(materialButton);
        m33441OA().f51275c.setOnClickListener(new View$OnClickListenerC5287d());
    }

    /* renamed from: OA */
    public final C18168k m33441OA() {
        return (C18168k) this.f18102c.m34468b(this, f18098d[0]);
    }

    /* renamed from: PA */
    public final void m33440PA() {
        AvatarXView avatarXView = m33441OA().f51273a;
        s1.z.c.l.d(avatarXView, "binding.avatar");
        C19286f.m13683U(avatarXView, false);
        MaterialButton materialButton = m33441OA().f51274b;
        s1.z.c.l.d(materialButton, "binding.buttonCancel");
        C19286f.m13683U(materialButton, false);
        MaterialButton materialButton2 = m33441OA().f51276d;
        s1.z.c.l.d(materialButton2, "binding.buttonJoin");
        C19286f.m13683U(materialButton2, false);
        TextView textView = m33441OA().f51284l;
        s1.z.c.l.d(textView, "binding.title");
        C19286f.m13683U(textView, false);
        TextView textView2 = m33441OA().f51277e;
        s1.z.c.l.d(textView2, "binding.countView");
        C19286f.m13683U(textView2, false);
        RecyclerView recyclerView = m33441OA().f51281i;
        s1.z.c.l.d(recyclerView, "binding.listView");
        C19286f.m13683U(recyclerView, false);
    }

    @Override // p193e.p194a.p195a.p200c.p205g.AbstractC5296f
    /* renamed from: S9 */
    public void mo33435S9(Uri uri, String str) {
        s1.z.c.l.e(str, "inviteKey");
        C8243a c8243a = this.f18100a;
        if (c8243a != null) {
            C8243a.m28739ok(c8243a, new AvatarXConfig(uri, null, str, null, false, true, false, false, false, false, false, false, false, false, null, false, 65498), false, 2, null);
        } else {
            s1.z.c.l.l("avatarPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p205g.AbstractC5296f
    /* renamed from: T2 */
    public void mo33434T2(long j) {
        Intent intent = new Intent((Context) getActivity(), (Class<?>) ConversationActivity.class);
        intent.putExtra("conversation_id", j);
        intent.addFlags(67108864);
        requireActivity().startActivity(intent);
    }

    @Override // p193e.p194a.p195a.p200c.p205g.AbstractC5296f
    /* renamed from: ce */
    public void mo33433ce(List<ImInviteUserInfo> list, int i, String str) {
        s1.z.c.l.e(list, "list");
        s1.z.c.l.e(str, "inviteKey");
        RecyclerView recyclerView = m33441OA().f51281i;
        s1.z.c.l.d(recyclerView, "binding.listView");
        recyclerView.setAdapter(new C5291c(list, i, str));
    }

    @Override // p193e.p194a.p195a.p200c.p205g.AbstractC5296f
    /* renamed from: f */
    public void mo33432f(boolean z) {
        if (z) {
            m33440PA();
        }
        ProgressBar progressBar = m33441OA().f51282j;
        s1.z.c.l.d(progressBar, "binding.loader");
        C19286f.m13683U(progressBar, z);
        TextView textView = m33441OA().f51283k;
        s1.z.c.l.d(textView, "binding.loaderText");
        C19286f.m13683U(textView, z);
    }

    @Override // p193e.p194a.p195a.p200c.p205g.AbstractC5296f
    public void finish() {
        dismiss();
    }

    @Override // p193e.p194a.p195a.p200c.p205g.AbstractC5296f
    /* renamed from: ja */
    public void mo33431ja(int i) {
        TextView textView = m33441OA().f51277e;
        s1.z.c.l.d(textView, "binding.countView");
        textView.setText(getResources().getQuantityString(C2752R.plurals.NewImGroupMemberCount, i, Integer.valueOf(i)));
    }

    public void onCreate(Bundle bundle) {
        String string;
        C5283a.super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("arg_invite_key")) == null) {
            throw new IllegalArgumentException("inviteKey can't be null");
        }
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        Context applicationContext = requireContext.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        Context requireContext2 = requireContext();
        s1.z.c.l.d(requireContext2, "requireContext()");
        C5294d c5294d = new C5294d(requireContext2, string);
        C25225a.m3846s(c5294d, C5294d.class);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        C5288b c5288b = new C5288b(c5294d, mo10154s, null);
        this.f18100a = (C8243a) c5288b.f18110e.get();
        this.f18101b = (AbstractC5295e) c5288b.f18114i.get();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.bottom_sheet_group_invite, viewGroup, false);
    }

    public void onDetach() {
        C5283a.super.onDetach();
        AbstractC5295e abstractC5295e = this.f18101b;
        if (abstractC5295e != null) {
            abstractC5295e.mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [com.truecaller.messaging.conversation.imgrouplinkinvite.GroupInviteLinkDialogActivity, android.app.Activity] */
    public void onDismiss(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        C5283a.super.onDismiss(dialogInterface);
        n3.r.a.l activity = getActivity();
        n3.r.a.l lVar = activity;
        if (!(activity instanceof GroupInviteLinkDialogActivity)) {
            lVar = null;
        }
        ?? r0 = (GroupInviteLinkDialogActivity) lVar;
        if (r0 != 0) {
            r0.finish();
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C5283a.super.onViewCreated(view, bundle);
        AbstractC5295e abstractC5295e = this.f18101b;
        if (abstractC5295e == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC5295e.mo9029Y0(this);
        AbstractC5295e abstractC5295e2 = this.f18101b;
        if (abstractC5295e2 == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC5295e2.mo33429Jj();
        AvatarXView avatarXView = m33441OA().f51273a;
        C8243a c8243a = this.f18100a;
        if (c8243a == null) {
            s1.z.c.l.l("avatarPresenter");
            throw null;
        }
        avatarXView.setPresenter(c8243a);
        m33441OA().f51274b.setOnClickListener(new View$OnClickListenerC5284a(0, this));
        m33441OA().f51276d.setOnClickListener(new View$OnClickListenerC5284a(1, this));
    }

    @Override // p193e.p194a.p195a.p200c.p205g.AbstractC5296f
    public void setTitle(String str) {
        s1.z.c.l.e(str, "text");
        TextView textView = m33441OA().f51284l;
        s1.z.c.l.d(textView, "binding.title");
        textView.setText(str);
    }
}
