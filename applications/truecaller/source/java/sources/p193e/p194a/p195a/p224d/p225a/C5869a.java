package p193e.p194a.p195a.p224d.p225a;

import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.newconversation.NewConversationActivity;
import com.truecaller.p183ui.components.CircularImageView;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.C21846z1;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1059m3.C18169k0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p372b0.p430q.C8612s;
import s1.a.l;
import s1.k;
import s1.s;
import s1.u.i;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0015\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� 42\u00020\u00012\u00020\u0002:\u0001nB\u0007¢\u0006\u0004\bq\u0010\u0018J\u001b\u0010\u0006\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ-\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00112\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J)\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00192\b\u0010\u001c\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ-\u0010$\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u00192\f\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J\u0017\u0010'\u001a\u00020\n2\u0006\u0010&\u001a\u00020\u0019H\u0016¢\u0006\u0004\b'\u0010(J\u0017\u0010+\u001a\u00020\n2\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,J\u0019\u0010.\u001a\u00020\n2\b\b\u0001\u0010-\u001a\u00020\u0019H\u0016¢\u0006\u0004\b.\u0010(J\u0017\u0010/\u001a\u00020\n2\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b/\u0010,J\u0017\u00100\u001a\u00020\n2\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b0\u0010,J\u000f\u00101\u001a\u00020\nH\u0016¢\u0006\u0004\b1\u0010\u0018J\u000f\u00102\u001a\u00020\nH\u0016¢\u0006\u0004\b2\u0010\u0018J\u0017\u00104\u001a\u00020\n2\u0006\u00103\u001a\u00020)H\u0016¢\u0006\u0004\b4\u0010,J\u0017\u00106\u001a\u00020\n2\u0006\u00105\u001a\u00020\u0019H\u0016¢\u0006\u0004\b6\u0010(J=\u0010>\u001a\u00020\n2\u0006\u00107\u001a\u00020 2\b\u00109\u001a\u0004\u0018\u0001082\u001a\u0010=\u001a\u0016\u0012\u0004\u0012\u00020;\u0018\u00010:j\n\u0012\u0004\u0012\u00020;\u0018\u0001`<H\u0016¢\u0006\u0004\b>\u0010?J\u0017\u0010A\u001a\u00020\n2\u0006\u0010@\u001a\u00020\u0019H\u0016¢\u0006\u0004\bA\u0010(J\u0017\u0010C\u001a\u00020\n2\u0006\u0010B\u001a\u00020)H\u0016¢\u0006\u0004\bC\u0010,J\u000f\u0010D\u001a\u00020\nH\u0016¢\u0006\u0004\bD\u0010\u0018J\u000f\u0010E\u001a\u00020\nH\u0016¢\u0006\u0004\bE\u0010\u0018J\u0017\u0010G\u001a\u00020)2\u0006\u0010F\u001a\u00020 H\u0016¢\u0006\u0004\bG\u0010HJ\u001f\u0010K\u001a\u00020\n2\u0006\u0010I\u001a\u00020\u00192\u0006\u0010J\u001a\u00020\u0019H\u0016¢\u0006\u0004\bK\u0010LJ\u001f\u0010M\u001a\u00020\n2\u0006\u0010F\u001a\u00020 2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\bM\u0010NJ\u0019\u0010P\u001a\u00020\n2\b\u0010O\u001a\u0004\u0018\u000108H\u0016¢\u0006\u0004\bP\u0010QJ\u0019\u0010S\u001a\u00020\n2\b\u0010R\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\bS\u0010TJ\u0017\u0010U\u001a\u00020\n2\u0006\u0010O\u001a\u000208H\u0016¢\u0006\u0004\bU\u0010QJ\u000f\u0010V\u001a\u00020\nH\u0016¢\u0006\u0004\bV\u0010\u0018R\"\u0010^\u001a\u00020W8��@��X\u0081.¢\u0006\u0012\n\u0004\bX\u0010Y\u001a\u0004\bZ\u0010[\"\u0004\b\\\u0010]R\u001d\u0010d\u001a\u00020_8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b`\u0010a\u001a\u0004\bb\u0010cR\"\u0010l\u001a\u00020e8��@��X\u0081.¢\u0006\u0012\n\u0004\bf\u0010g\u001a\u0004\bh\u0010i\"\u0004\bj\u0010kR\u0016\u0010p\u001a\u00020m8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bn\u0010o¨\u0006r"}, d2 = {"Le/a/a/d/a/a;", "Landroidx/fragment/app/Fragment;", "Le/a/a/d/a/g;", "Landroid/content/Intent;", "Landroid/content/pm/ResolveInfo;", "resolveInfo", "OA", "(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "", "requestCode", "resultCode", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "count", "F3", "(I)V", "", "visible", "fp", "(Z)V", RemoteMessageConst.Notification.ICON, "Yr", "by", "vo", "d0", "C", "isShowing", "f", "error", "To", "groupName", "Landroid/net/Uri;", "avatarUri", "Ljava/util/ArrayList;", "Lcom/truecaller/data/entity/messaging/Participant;", "Lkotlin/collections/ArrayList;", "participants", "Vb", "(Ljava/lang/String;Landroid/net/Uri;Ljava/util/ArrayList;)V", "resId", "Ij", "hasRemoveOption", "Kp", "Q0", "N0", "permission", "k", "(Ljava/lang/String;)Z", "reasonId", "permissionId", "Z0", "(II)V", "M5", "(Ljava/lang/String;I)V", "uri", "Ks", "(Landroid/net/Uri;)V", "title", "ud", "(Ljava/lang/String;)V", "cq", "c0", "Le/a/a/d/a/f;", "a", "Le/a/a/d/a/f;", "QA", "()Le/a/a/d/a/f;", "setPresenter$truecaller_googlePlayRelease", "(Le/a/a/d/a/f;)V", "presenter", "Le/a/m3/k0;", "d", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "PA", "()Le/a/m3/k0;", "binding", "Le/a/a/d/a/e;", C22021b.f61237c, "Le/a/a/d/a/e;", "getGroupParticipantPresenter$truecaller_googlePlayRelease", "()Le/a/a/d/a/e;", "setGroupParticipantPresenter$truecaller_googlePlayRelease", "(Le/a/a/d/a/e;)V", "groupParticipantPresenter", "Le/a/a/d/a/h;", AbstractC2405c.f7629a, "Le/a/a/d/a/h;", "groupParticipantAdapter", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.d.a.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/a/a.class */
public final class C5869a extends Fragment implements AbstractC5885g {

    /* renamed from: e */
    public static final /* synthetic */ l[] f19631e = {C22128a.m8621g0(C5869a.class, "binding", "getBinding()Lcom/truecaller/databinding/FragmentNewImGroupBinding;", 0)};

    /* renamed from: f */
    public static final C5872c f19632f = new C5872c(null);
    @Inject

    /* renamed from: a */
    public AbstractC5884f f19633a;
    @Inject

    /* renamed from: b */
    public AbstractC5883e f19634b;

    /* renamed from: c */
    public C5886h f19635c;

    /* renamed from: d */
    public final ViewBindingProperty f19636d = new C19350a(new C5871b());

    /* renamed from: e.a.a.d.a.a$a */
    /* loaded from: classes2-dex2jar.jar:e/a/a/d/a/a$a.class */
    public static final class View$OnClickListenerC5870a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f19637a;

        /* renamed from: b */
        public final /* synthetic */ Object f19638b;

        public View$OnClickListenerC5870a(int i, Object obj) {
            this.f19637a = i;
            this.f19638b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f19637a;
            if (i == 0) {
                ((C5869a) this.f19638b).m32310QA().mo32266Qj();
            } else if (i == 1) {
                ((C5869a) this.f19638b).m32310QA().mo32273Jj();
            } else if (i == 2) {
                ((C5869a) this.f19638b).m32310QA().mo32268Oj();
            } else if (i != 3) {
                throw null;
            } else {
                ((C5869a) this.f19638b).m32310QA().mo32268Oj();
            }
        }
    }

    /* renamed from: e.a.a.d.a.a$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/a/a$b.class */
    public static final class C5871b extends m implements s1.z.b.l<C5869a, C18169k0> {
        public C5871b() {
            super(1);
        }

        /* renamed from: d */
        public Object m32309d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131362099;
            FrameLayout frameLayout = (FrameLayout) requireView.findViewById(2131362099);
            if (frameLayout != null) {
                i = 2131362100;
                AppCompatImageView appCompatImageView = (AppCompatImageView) requireView.findViewById(C2752R.C2754id.addPhotoIconView);
                if (appCompatImageView != null) {
                    i = 2131362101;
                    TextView textView = (TextView) requireView.findViewById(C2752R.C2754id.addPhotoLabel);
                    if (textView != null) {
                        i = 2131362320;
                        CircularImageView circularImageView = (CircularImageView) requireView.findViewById(C2752R.C2754id.bigAvatar);
                        if (circularImageView != null) {
                            i = 2131363387;
                            FloatingActionButton findViewById = requireView.findViewById(2131363387);
                            if (findViewById != null) {
                                i = 2131363445;
                                ImageView imageView = (ImageView) requireView.findViewById(2131363445);
                                if (imageView != null) {
                                    i = 2131364052;
                                    TextInputEditText findViewById2 = requireView.findViewById(C2752R.C2754id.groupNameEditText);
                                    if (findViewById2 != null) {
                                        i = 2131364053;
                                        TextInputLayout textInputLayout = (TextInputLayout) requireView.findViewById(C2752R.C2754id.groupNameTextInput);
                                        if (textInputLayout != null) {
                                            i = 2131364054;
                                            RecyclerView recyclerView = (RecyclerView) requireView.findViewById(C2752R.C2754id.groupParticipantsList);
                                            if (recyclerView != null) {
                                                i = 2131365093;
                                                TextView textView2 = (TextView) requireView.findViewById(C2752R.C2754id.participantCount);
                                                if (textView2 != null) {
                                                    i = 2131365094;
                                                    LinearLayout linearLayout = (LinearLayout) requireView.findViewById(C2752R.C2754id.participantsView);
                                                    if (linearLayout != null) {
                                                        i = 2131365275;
                                                        ProgressBar progressBar = (ProgressBar) requireView.findViewById(2131365275);
                                                        if (progressBar != null) {
                                                            i = 2131366468;
                                                            LinearLayout linearLayout2 = (LinearLayout) requireView.findViewById(C2752R.C2754id.tipsView);
                                                            if (linearLayout2 != null) {
                                                                i = 2131366512;
                                                                Toolbar toolbar = (Toolbar) requireView.findViewById(2131366512);
                                                                if (toolbar != null) {
                                                                    return new C18169k0((ConstraintLayout) requireView, frameLayout, appCompatImageView, textView, circularImageView, findViewById, imageView, findViewById2, textInputLayout, recyclerView, textView2, linearLayout, progressBar, linearLayout2, toolbar);
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

    /* renamed from: e.a.a.d.a.a$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/a/a$c.class */
    public static final class C5872c {
        public C5872c(f fVar) {
        }

        /* renamed from: a */
        public final C5869a m32308a(Participant[] participantArr) {
            C5869a c5869a = new C5869a();
            Bundle m8654X0 = C22128a.m8654X0("im_group_mode", "im_group_mode_create");
            m8654X0.putParcelableArray("participants", participantArr);
            c5869a.setArguments(m8654X0);
            return c5869a;
        }
    }

    /* renamed from: e.a.a.d.a.a$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/a/a$d.class */
    public static final class C5873d extends m implements s1.z.b.l<Editable, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5873d() {
            super(1);
            C5869a.this = r4;
        }

        /* renamed from: d */
        public Object m32307d(Object obj) {
            C5869a.this.m32310QA().mo32267Pj(String.valueOf((Editable) obj));
            return s.a;
        }
    }

    /* renamed from: e.a.a.d.a.a$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/a/a$e.class */
    public static final class C5874e extends m implements s1.z.b.l<Boolean, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5874e() {
            super(1);
            C5869a.this = r4;
        }

        /* renamed from: d */
        public Object m32306d(Object obj) {
            if (!((Boolean) obj).booleanValue()) {
                C5869a c5869a = C5869a.this;
                l[] lVarArr = C5869a.f19631e;
                TextInputEditText textInputEditText = c5869a.m32311PA().f51291g;
                s1.z.c.l.d(textInputEditText, "binding.groupNameEditText");
                C19286f.m13679Y(textInputEditText, false, 0L, 2);
            }
            return s.a;
        }
    }

    /* renamed from: e.a.a.d.a.a$f */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/a/a$f.class */
    public static final class DialogInterface$OnClickListenerC5875f implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ List f19642b;

        /* renamed from: c */
        public final /* synthetic */ List f19643c;

        public DialogInterface$OnClickListenerC5875f(List list, List list2) {
            C5869a.this = r4;
            this.f19642b = list;
            this.f19643c = list2;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C5869a c5869a = C5869a.this;
            Intent intent = new Intent((Intent) ((k) this.f19642b.get(i)).a);
            ResolveInfo resolveInfo = (ResolveInfo) this.f19643c.get(i);
            l[] lVarArr = C5869a.f19631e;
            c5869a.m32312OA(intent, resolveInfo);
            c5869a.startActivityForResult(intent, 2);
        }
    }

    /* renamed from: e.a.a.d.a.a$g */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/a/a$g.class */
    public static final class View$OnClickListenerC5876g implements View.OnClickListener {
        public View$OnClickListenerC5876g() {
            C5869a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C5869a.this.m32310QA().mo32268Oj();
        }
    }

    /* renamed from: e.a.a.d.a.a$h */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/a/a$h.class */
    public static final class DialogInterface$OnClickListenerC5877h implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ List f19646b;

        public DialogInterface$OnClickListenerC5877h(List list) {
            C5869a.this = r4;
            this.f19646b = list;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            String str = (String) this.f19646b.get(i);
            if (s1.z.c.l.a(str, C5869a.this.getString((int) C2752R.string.NewImGroupImageDialogCameraOption))) {
                C5869a.this.m32310QA().mo32274Ij();
            } else if (s1.z.c.l.a(str, C5869a.this.getString((int) C2752R.string.NewImGroupImageDialogGalleryOption))) {
                C5869a.this.m32310QA().mo32272Kj();
            } else if (!s1.z.c.l.a(str, C5869a.this.getString((int) C2752R.string.NewImGroupImageDialogRemoveOption))) {
            } else {
                C5869a.this.m32310QA().mo32270Mj(null);
            }
        }
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5885g
    /* renamed from: C */
    public void mo32305C() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5885g
    /* renamed from: F3 */
    public void mo32304F3(int i) {
        TextView textView = m32311PA().f51293i;
        s1.z.c.l.d(textView, "binding.participantCount");
        textView.setText(getResources().getQuantityString(C2752R.plurals.NewImGroupMemberCount, i, Integer.valueOf(i)));
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5885g
    /* renamed from: Ij */
    public void mo32303Ij(int i) {
        m32311PA().f51297m.setTitle(i);
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5885g
    /* renamed from: Kp */
    public void mo32302Kp(boolean z) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            List d0 = i.d0(new String[]{getString((int) C2752R.string.NewImGroupImageDialogCameraOption), getString((int) C2752R.string.NewImGroupImageDialogGalleryOption)});
            if (z) {
                d0.add(getString((int) C2752R.string.NewImGroupImageDialogRemoveOption));
            }
            ArrayAdapter arrayAdapter = new ArrayAdapter(context, 17367043, d0);
            g$a g_a = new g$a(context);
            g_a.m3656m(C2752R.string.NewImGroupImageDialogTitle);
            DialogInterface$OnClickListenerC5877h dialogInterface$OnClickListenerC5877h = new DialogInterface$OnClickListenerC5877h(d0);
            AlertController.C0037b c0037b = g_a.f70854a;
            c0037b.f168r = arrayAdapter;
            c0037b.f169s = dialogInterface$OnClickListenerC5877h;
            g_a.m3652q();
        }
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5885g
    /* renamed from: Ks */
    public void mo32301Ks(Uri uri) {
        CircularImageView circularImageView = m32311PA().f51288d;
        s1.z.c.l.d(circularImageView, "binding.bigAvatar");
        C19286f.m13683U(circularImageView, uri != null);
        ImageView imageView = m32311PA().f51290f;
        s1.z.c.l.d(imageView, "binding.editAvatar");
        C19286f.m13683U(imageView, uri != null);
        TextView textView = m32311PA().f51287c;
        s1.z.c.l.d(textView, "binding.addPhotoLabel");
        C19286f.m13683U(textView, uri == null);
        AppCompatImageView appCompatImageView = m32311PA().f51286b;
        s1.z.c.l.d(appCompatImageView, "binding.addPhotoIconView");
        C19286f.m13683U(appCompatImageView, uri == null);
        FrameLayout frameLayout = m32311PA().f51285a;
        Integer valueOf = Integer.valueOf(C19291g.m13559d0(requireContext(), 2130969811));
        valueOf.intValue();
        if (!(uri == null)) {
            valueOf = null;
        }
        int i = 0;
        if (valueOf != null) {
            i = valueOf.intValue();
        }
        frameLayout.setBackgroundResource(i);
        if (uri == null) {
            m32311PA().f51287c.setText(C2752R.string.NewImGroupImageLabel);
            m32311PA().f51285a.setOnClickListener(new View$OnClickListenerC5876g());
            return;
        }
        C22234h mo8414k = C17891a1.C17902k.m15664K1(requireContext()).mo8414k();
        mo8414k.mo8423S(uri);
        ((C21852d) mo8414k).m8978f0(AbstractC22364k.f62125b).m8967q0(true).m8427O(m32311PA().f51288d);
        m32311PA().f51287c.setText(C2752R.string.NewImGroupImageEditLabel);
        m32311PA().f51285a.setOnClickListener(null);
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5885g
    /* renamed from: M5 */
    public void mo32300M5(String str, int i) {
        s1.z.c.l.e(str, "permission");
        C19291g.m13558d1(this, str, i, true);
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5885g
    /* renamed from: N0 */
    public void mo32299N0() {
        startActivityForResult(Intent.createChooser(C8612s.m28219c(), getString(2131887862)), 1);
    }

    /* renamed from: OA */
    public final Intent m32312OA(Intent intent, ResolveInfo resolveInfo) {
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        intent.setComponent(new ComponentName(activityInfo.packageName, activityInfo.name));
        return intent;
    }

    /* renamed from: PA */
    public final C18169k0 m32311PA() {
        return (C18169k0) this.f19636d.m34468b(this, f19631e[0]);
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5885g
    /* renamed from: Q0 */
    public void mo32298Q0() {
        startActivityForResult(C8612s.m28221a(requireContext()), 0);
    }

    /* renamed from: QA */
    public final AbstractC5884f m32310QA() {
        AbstractC5884f abstractC5884f = this.f19633a;
        if (abstractC5884f != null) {
            return abstractC5884f;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5885g
    /* renamed from: To */
    public void mo32297To(int i) {
        Toast.makeText(getContext(), i, 0).show();
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5885g
    /* renamed from: Vb */
    public void mo32296Vb(String str, Uri uri, ArrayList<Participant> arrayList) {
        s1.z.c.l.e(str, "groupName");
        Intent putExtra = new Intent((Context) getActivity(), (Class<?>) NewConversationActivity.class).putExtra("new_group_chat", true).putExtra("new_group_chat_name", str).putExtra("new_group_chat_avatar", uri != null ? uri.toString() : null).putExtra("pre_fill_participants", arrayList);
        s1.z.c.l.d(putExtra, "Intent(activity, NewConv…RTICIPANTS, participants)");
        startActivityForResult(putExtra, 3);
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5885g
    /* renamed from: Yr */
    public void mo32295Yr(int i) {
        m32311PA().f51289e.setImageResource(i);
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5885g
    /* renamed from: Z0 */
    public void mo32294Z0(int i, int i2) {
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        C21846z1 c21846z1 = new C21846z1(requireActivity, i, i2);
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        c21846z1.m8995cB(childFragmentManager);
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5885g
    /* renamed from: by */
    public void mo32293by(boolean z) {
        LinearLayout linearLayout = m32311PA().f51294j;
        s1.z.c.l.d(linearLayout, "binding.participantsView");
        C19286f.m13683U(linearLayout, z);
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5885g
    /* renamed from: c0 */
    public void mo32292c0() {
        C5886h c5886h = this.f19635c;
        if (c5886h != null) {
            c5886h.notifyDataSetChanged();
        } else {
            s1.z.c.l.l("groupParticipantAdapter");
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0041, code lost:
        if (r10 != null) goto L11;
     */
    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5885g
    /* renamed from: cq */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo32291cq(android.net.Uri r7) {
        /*
            Method dump skipped, instructions count: 407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p224d.p225a.C5869a.mo32291cq(android.net.Uri):void");
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5885g
    /* renamed from: d0 */
    public void mo32290d0() {
        TextInputEditText textInputEditText = m32311PA().f51291g;
        s1.z.c.l.d(textInputEditText, "binding.groupNameEditText");
        C19286f.m13679Y(textInputEditText, false, 0L, 2);
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5885g
    /* renamed from: f */
    public void mo32289f(boolean z) {
        Drawable drawable;
        ProgressBar progressBar = m32311PA().f51295k;
        s1.z.c.l.d(progressBar, "binding.progress");
        C19286f.m13683U(progressBar, z);
        FloatingActionButton floatingActionButton = m32311PA().f51289e;
        if (z) {
            drawable = null;
        } else {
            Context requireContext = requireContext();
            Object obj = C26467a.f74235a;
            drawable = C26467a.C26470c.m1789b(requireContext, 2131232406);
        }
        floatingActionButton.setImageDrawable(drawable);
        TextInputEditText textInputEditText = m32311PA().f51291g;
        s1.z.c.l.d(textInputEditText, "binding.groupNameEditText");
        textInputEditText.setEnabled(!z);
        AppCompatImageView appCompatImageView = m32311PA().f51286b;
        s1.z.c.l.d(appCompatImageView, "binding.addPhotoIconView");
        appCompatImageView.setEnabled(!z);
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5885g
    /* renamed from: fp */
    public void mo32288fp(boolean z) {
        FloatingActionButton floatingActionButton = m32311PA().f51289e;
        s1.z.c.l.d(floatingActionButton, "binding.doneButton");
        C19286f.m13683U(floatingActionButton, z);
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5885g
    /* renamed from: k */
    public boolean mo32287k(String str) {
        s1.z.c.l.e(str, "permission");
        return C19291g.m13502w0(requireActivity(), str);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        Uri data;
        C5869a.super.onActivityResult(i, i2, intent);
        if (i2 == -1) {
            if (i == 0) {
                Uri m28215g = C8612s.m28215g(requireContext());
                s1.z.c.l.d(m28215g, "destUri");
                mo32291cq(m28215g);
            } else if (i != 1) {
                if (i == 2) {
                    AbstractC5884f abstractC5884f = this.f19633a;
                    if (abstractC5884f != null) {
                        abstractC5884f.mo32270Mj(C8612s.m28216f(getContext()));
                    } else {
                        s1.z.c.l.l("presenter");
                        throw null;
                    }
                } else if (i != 3) {
                } else {
                    AbstractC5884f abstractC5884f2 = this.f19633a;
                    if (abstractC5884f2 != null) {
                        abstractC5884f2.mo32269Nj();
                    } else {
                        s1.z.c.l.l("presenter");
                        throw null;
                    }
                }
            } else if (intent == null || (data = intent.getData()) == null) {
            } else {
                s1.z.c.l.d(data, "uri");
                Context requireContext = requireContext();
                s1.z.c.l.d(requireContext, "requireContext()");
                Uri m28215g2 = C8612s.m28215g(requireContext());
                s1.z.c.l.d(m28215g2, "ImageUtils.getTempCaptureUri(requireContext())");
                Uri m13675d = C19286f.m13675d(data, requireContext, m28215g2);
                AbstractC5884f abstractC5884f3 = this.f19633a;
                if (abstractC5884f3 != null) {
                    abstractC5884f3.mo32271Lj(m13675d);
                } else {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
            }
        }
    }

    public void onCreate(Bundle bundle) {
        C5869a.super.onCreate(bundle);
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            Context applicationContext = activity.getApplicationContext();
            Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
            AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
            Objects.requireNonNull(mo10154s);
            C5881c c5881c = new C5881c();
            C25225a.m3846s(mo10154s, AbstractC15539j2.class);
            C5878b c5878b = new C5878b(c5881c, mo10154s, null);
            this.f19633a = (AbstractC5884f) c5878b.f19653g.get();
            this.f19634b = (AbstractC5883e) c5878b.f19651e.get();
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.fragment_new_im_group, viewGroup, false);
    }

    public void onDestroyView() {
        AbstractC5884f abstractC5884f = this.f19633a;
        if (abstractC5884f == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC5884f.mo9806c();
        C8612s.m28218d(getContext());
        C5869a.super.onDestroyView();
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        s1.z.c.l.e(strArr, "permissions");
        s1.z.c.l.e(iArr, "grantResults");
        C5869a.super.onRequestPermissionsResult(i, strArr, iArr);
        C19291g.m13608M0(strArr, iArr);
        AbstractC5884f abstractC5884f = this.f19633a;
        if (abstractC5884f != null) {
            abstractC5884f.mo32265Rj(i, strArr, iArr);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        String string;
        s1.z.c.l.e(view, ViewAction.VIEW);
        C5869a.super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        Participant[] parcelableArray = arguments != null ? arguments.getParcelableArray("participants") : null;
        Participant[] participantArr = parcelableArray;
        if (!(parcelableArray instanceof Participant[])) {
            participantArr = null;
        }
        Participant[] participantArr2 = participantArr;
        AbstractC5883e abstractC5883e = this.f19634b;
        if (abstractC5883e == null) {
            s1.z.c.l.l("groupParticipantPresenter");
            throw null;
        }
        abstractC5883e.f19656a = participantArr2;
        AbstractC5884f abstractC5884f = this.f19633a;
        if (abstractC5884f == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC5884f.f19657d = participantArr2;
        Bundle arguments2 = getArguments();
        abstractC5884f.f19658e = arguments2 != null ? (ImGroupInfo) arguments2.getParcelable("im_group_info") : null;
        AbstractC5884f abstractC5884f2 = this.f19633a;
        if (abstractC5884f2 == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        Bundle arguments3 = getArguments();
        if (arguments3 == null || (string = arguments3.getString("im_group_mode")) == null) {
            throw new IllegalArgumentException("imGroupMode must be defined");
        }
        abstractC5884f2.f19659f = string;
        m32311PA().f51297m.setNavigationOnClickListener(new View$OnClickListenerC5870a(0, this));
        m32311PA().f51289e.setOnClickListener(new View$OnClickListenerC5870a(1, this));
        AbstractC5883e abstractC5883e2 = this.f19634b;
        if (abstractC5883e2 == null) {
            s1.z.c.l.l("groupParticipantPresenter");
            throw null;
        }
        this.f19635c = new C5886h(abstractC5883e2);
        RecyclerView recyclerView = m32311PA().f51292h;
        s1.z.c.l.d(recyclerView, "binding.groupParticipantsList");
        C5886h c5886h = this.f19635c;
        if (c5886h == null) {
            s1.z.c.l.l("groupParticipantAdapter");
            throw null;
        }
        recyclerView.setAdapter(c5886h);
        TextInputEditText textInputEditText = m32311PA().f51291g;
        s1.z.c.l.d(textInputEditText, "binding.groupNameEditText");
        C19291g.m13542j(textInputEditText, new C5873d());
        TextInputEditText textInputEditText2 = m32311PA().f51291g;
        s1.z.c.l.d(textInputEditText2, "binding.groupNameEditText");
        C19286f.m13679Y(textInputEditText2, true, 0L, 2);
        TextInputEditText textInputEditText3 = m32311PA().f51291g;
        s1.z.c.l.d(textInputEditText3, "binding.groupNameEditText");
        C19286f.m13655x(textInputEditText3, new C5874e());
        m32311PA().f51285a.setOnClickListener(new View$OnClickListenerC5870a(2, this));
        m32311PA().f51290f.setOnClickListener(new View$OnClickListenerC5870a(3, this));
        AbstractC5884f abstractC5884f3 = this.f19633a;
        if (abstractC5884f3 != null) {
            abstractC5884f3.mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5885g
    /* renamed from: ud */
    public void mo32286ud(String str) {
        m32311PA().f51291g.setText(str);
        m32311PA().f51291g.requestFocus();
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5885g
    /* renamed from: vo */
    public void mo32285vo(boolean z) {
        LinearLayout linearLayout = m32311PA().f51296l;
        s1.z.c.l.d(linearLayout, "binding.tipsView");
        C19286f.m13683U(linearLayout, z);
    }
}
