package p193e.p194a.p294b.p295a.p296a.p297a.p299c;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LiveData;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.newBusiness.onboarding.p149ui.SubCategoryActivity;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC26996c1;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p294b.p295a.p296a.p304c.C7622d;
import p193e.p194a.p294b.p295a.p296a.p306d.p307d.C7638b;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p355m.C8099r0;
import p193e.p194a.p372b0.p426p.C8551c;
import s1.a.l;
import s1.g;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\u0018�� R2\u00020\u00012\u00020\u0002:\u0002 3B\u0007¢\u0006\u0004\bP\u0010QJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J)\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u001d\u001a\u00020\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eR\u001d\u0010$\u001a\u00020\u001f8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001c\u00101\u001a\b\u0012\u0004\u0012\u00020.0-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R$\u00109\u001a\u0004\u0018\u0001028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\"\u0010A\u001a\u00020:8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\"\u0010I\u001a\u00020B8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR\u001d\u0010O\u001a\u00020J8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bK\u0010L\u001a\u0004\bM\u0010N¨\u0006S"}, d2 = {"Le/a/b/a/a/a/c/a;", "Landroidx/fragment/app/Fragment;", "Landroid/widget/CompoundButton$OnCheckedChangeListener;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "Landroid/widget/CompoundButton;", "box", "", "checked", "onCheckedChanged", "(Landroid/widget/CompoundButton;Z)V", "Le/a/b/a/a/d/d/b;", "e", "Ls1/g;", "PA", "()Le/a/b/a/a/d/d/b;", "tagViewModel", "Le/a/b/a/a/c/d;", C22021b.f61237c, "Le/a/b/a/a/c/d;", "getSubCategoryUIUtil", "()Le/a/b/a/a/c/d;", "setSubCategoryUIUtil", "(Le/a/b/a/a/c/d;)V", "subCategoryUIUtil", "", "Landroid/widget/CheckBox;", "d", "Ljava/util/List;", "checkBoxes", "Le/a/b/a/a/a/c/a$f;", "f", "Le/a/b/a/a/a/c/a$f;", "getListener", "()Le/a/b/a/a/a/c/a$f;", "setListener", "(Le/a/b/a/a/a/c/a$f;)V", "listener", "Ln3/v/a1$b;", "a", "Ln3/v/a1$b;", "getViewModelFactory", "()Ln3/v/a1$b;", "setViewModelFactory", "(Ln3/v/a1$b;)V", "viewModelFactory", "Le/a/p5/c0;", AbstractC2405c.f7629a, "Le/a/p5/c0;", "getResourceProvider", "()Le/a/p5/c0;", "setResourceProvider", "(Le/a/p5/c0;)V", "resourceProvider", "Le/a/b/m/r0;", "g", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/b/m/r0;", "binding", "<init>", "()V", "i", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.a.a.c.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/c/a.class */
public final class C7495a extends Fragment implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: h */
    public static final /* synthetic */ l[] f23774h = {C22128a.m8621g0(C7495a.class, "binding", "getBinding()Lcom/truecaller/bizmon/databinding/FragmentSubTagPickBinding;", 0)};

    /* renamed from: i */
    public static final C7500e f23775i = new C7500e(null);
    @Inject

    /* renamed from: a */
    public C26986a1.AbstractC26987b f23776a;
    @Inject

    /* renamed from: b */
    public C7622d f23777b;
    @Inject

    /* renamed from: c */
    public AbstractC19223c0 f23778c;

    /* renamed from: f */
    public AbstractC7501f f23781f;

    /* renamed from: d */
    public List<CheckBox> f23779d = new ArrayList();

    /* renamed from: e */
    public final g f23780e = MediaSessionCompat.m43278P(this, d0.a(C7638b.class), new C7499d(new C7498c(this)), new C7503h());

    /* renamed from: g */
    public final ViewBindingProperty f23782g = new C19350a(new C7497b());

    /* renamed from: e.a.b.a.a.a.c.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/b/a/a/a/c/a$a.class */
    public static final class View$OnClickListenerC7496a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f23783a;

        /* renamed from: b */
        public final /* synthetic */ Object f23784b;

        /* renamed from: c */
        public final /* synthetic */ Object f23785c;

        public View$OnClickListenerC7496a(int i, Object obj, Object obj2) {
            this.f23783a = i;
            this.f23784b = obj;
            this.f23785c = obj2;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f23783a;
            if (i == 0) {
                AbstractC7501f abstractC7501f = ((C7495a) this.f23784b).f23781f;
                if (abstractC7501f == null) {
                    return;
                }
                abstractC7501f.mo29548W3();
            } else if (i == 1) {
                Long l = (Long) this.f23785c;
                if (l == null) {
                    return;
                }
                List<Long> d0 = i.d0(new Long[]{Long.valueOf(l.longValue())});
                List<CheckBox> list = ((C7495a) this.f23784b).f23779d;
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (((CheckBox) obj).isChecked()) {
                        arrayList.add(obj);
                    }
                }
                CheckBox checkBox = (CheckBox) i.G(arrayList, 0);
                if (checkBox != null) {
                    Object tag = checkBox.getTag();
                    Objects.requireNonNull(tag, "null cannot be cast to non-null type kotlin.Long");
                    d0.add((Long) tag);
                }
                AbstractC7501f abstractC7501f2 = ((C7495a) this.f23784b).f23781f;
                if (abstractC7501f2 == null) {
                    return;
                }
                abstractC7501f2.mo29540P(d0);
            } else if (i == 2) {
                AbstractC7501f abstractC7501f3 = ((C7495a) this.f23784b).f23781f;
                if (abstractC7501f3 == null) {
                    return;
                }
                abstractC7501f3.mo29548W3();
            } else if (i != 3) {
                throw null;
            } else {
                Long l2 = (Long) this.f23785c;
                if (l2 == null) {
                    return;
                }
                long longValue = l2.longValue();
                C7495a c7495a = (C7495a) this.f23784b;
                Context requireContext = c7495a.requireContext();
                s1.z.c.l.d(requireContext, "requireContext()");
                s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
                Intent intent = new Intent(requireContext, SubCategoryActivity.class);
                intent.putExtra("selected_tag_id", longValue);
                c7495a.startActivityForResult(intent, 1);
            }
        }
    }

    /* renamed from: e.a.b.a.a.a.c.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/c/a$b.class */
    public static final class C7497b extends m implements s1.z.b.l<C7495a, C8099r0> {
        public C7497b() {
            super(1);
        }

        /* renamed from: d */
        public Object m29549d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C3478R.C3480id.bottomBarBackgroundView;
            View findViewById = requireView.findViewById(i);
            if (findViewById != null) {
                i = C3478R.C3480id.btnBack;
                Button button = (Button) requireView.findViewById(i);
                if (button != null) {
                    i = C3478R.C3480id.btnChange;
                    Button button2 = (Button) requireView.findViewById(i);
                    if (button2 != null) {
                        i = C3478R.C3480id.btnSave;
                        Button button3 = (Button) requireView.findViewById(i);
                        if (button3 != null) {
                            i = C3478R.C3480id.btnShowMore;
                            Button button4 = (Button) requireView.findViewById(i);
                            if (button4 != null) {
                                i = C3478R.C3480id.categoryIcon;
                                ImageView imageView = (ImageView) requireView.findViewById(i);
                                if (imageView != null) {
                                    i = C3478R.C3480id.clFlowSubCategoryParent;
                                    ConstraintLayout constraintLayout = (ConstraintLayout) requireView.findViewById(i);
                                    if (constraintLayout != null) {
                                        i = C3478R.C3480id.flowSubCategory;
                                        Flow findViewById2 = requireView.findViewById(i);
                                        if (findViewById2 != null) {
                                            i = C3478R.C3480id.lblCategory;
                                            TextView textView = (TextView) requireView.findViewById(i);
                                            if (textView != null) {
                                                i = C3478R.C3480id.lblSubCcategory;
                                                TextView textView2 = (TextView) requireView.findViewById(i);
                                                if (textView2 != null) {
                                                    i = C3478R.C3480id.lblSubHeader;
                                                    TextView textView3 = (TextView) requireView.findViewById(i);
                                                    if (textView3 != null) {
                                                        ConstraintLayout constraintLayout2 = (ConstraintLayout) requireView;
                                                        i = C3478R.C3480id.svFlowSubCategory;
                                                        ScrollView scrollView = (ScrollView) requireView.findViewById(i);
                                                        if (scrollView != null) {
                                                            return new C8099r0(constraintLayout2, findViewById, button, button2, button3, button4, imageView, constraintLayout, findViewById2, textView, textView2, textView3, constraintLayout2, scrollView);
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

    /* renamed from: e.a.b.a.a.a.c.a$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/c/a$c.class */
    public static final class C7498c extends m implements a<Fragment> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f23786b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7498c(Fragment fragment) {
            super(0);
            this.f23786b = fragment;
        }

        public Object invoke() {
            return this.f23786b;
        }
    }

    /* renamed from: e.a.b.a.a.a.c.a$d */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/c/a$d.class */
    public static final class C7499d extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ a f23787b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7499d(a aVar) {
            super(0);
            this.f23787b = aVar;
        }

        public Object invoke() {
            C26993b1 viewModelStore = ((AbstractC26996c1) this.f23787b.invoke()).getViewModelStore();
            s1.z.c.l.d(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* renamed from: e.a.b.a.a.a.c.a$e */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/c/a$e.class */
    public static final class C7500e {
        public C7500e(f fVar) {
        }
    }

    /* renamed from: e.a.b.a.a.a.c.a$f */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/c/a$f.class */
    public interface AbstractC7501f extends AbstractC7518h {
        /* renamed from: W3 */
        void mo29548W3();
    }

    /* renamed from: e.a.b.a.a.a.c.a$g */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/c/a$g.class */
    public static final class ViewTreeObserver$OnPreDrawListenerC7502g implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a */
        public final /* synthetic */ C8099r0 f23788a;

        /* renamed from: b */
        public final /* synthetic */ C7495a f23789b;

        public ViewTreeObserver$OnPreDrawListenerC7502g(C8099r0 c8099r0, C7495a c7495a, Long l) {
            this.f23788a = c8099r0;
            this.f23789b = c7495a;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            ConstraintLayout constraintLayout = this.f23788a.f25093k;
            s1.z.c.l.d(constraintLayout, "parentLayout");
            constraintLayout.getViewTreeObserver().removeOnPreDrawListener(this);
            C7495a c7495a = this.f23789b;
            l[] lVarArr = C7495a.f23774h;
            LiveData m43264W = MediaSessionCompat.m43264W(c7495a.m29550PA().f24008a);
            s1.z.c.l.b(m43264W, "Transformations.distinctUntilChanged(this)");
            m43264W.m42867f(c7495a.getViewLifecycleOwner(), new C7504b(c7495a));
            return false;
        }
    }

    /* renamed from: e.a.b.a.a.a.c.a$h */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/c/a$h.class */
    public static final class C7503h extends m implements a<C26986a1.AbstractC26987b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7503h() {
            super(0);
            C7495a.this = r4;
        }

        public Object invoke() {
            C26986a1.AbstractC26987b abstractC26987b = C7495a.this.f23776a;
            if (abstractC26987b != null) {
                return abstractC26987b;
            }
            s1.z.c.l.l("viewModelFactory");
            throw null;
        }
    }

    /* renamed from: OA */
    public final C8099r0 m29551OA() {
        return (C8099r0) this.f23782g.m34468b(this, f23774h[0]);
    }

    /* renamed from: PA */
    public final C7638b m29550PA() {
        return (C7638b) this.f23780e.getValue();
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1) {
            Long valueOf = intent != null ? Long.valueOf(intent.getLongExtra("selected_tag_id", 0L)) : null;
            if (valueOf != null) {
                valueOf.longValue();
                long longValue = valueOf.longValue();
                Iterator<CheckBox> it = this.f23779d.iterator();
                int i3 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i3 = -1;
                        break;
                    } else if (s1.z.c.l.a(it.next().getTag(), Long.valueOf(longValue))) {
                        break;
                    } else {
                        i3++;
                    }
                }
                if (i3 == -1) {
                    i3 = 0;
                }
                C8551c mo20067y1 = m29550PA().f24009b.mo20067y1(valueOf.longValue());
                if (mo20067y1 != null) {
                    CheckBox checkBox = this.f23779d.get(i3);
                    checkBox.setText(mo20067y1.f26351b);
                    checkBox.setTag(Long.valueOf(mo20067y1.f26350a));
                    checkBox.setChecked(true);
                }
            }
        }
        C7495a.super.onActivityResult(i, i2, intent);
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            for (CheckBox checkBox : this.f23779d) {
                if ((!s1.z.c.l.a(compoundButton != null ? compoundButton.getTag() : null, checkBox.getTag())) && checkBox.getVisibility() == 0) {
                    checkBox.setChecked(false);
                }
            }
        }
    }

    public void onCreate(Bundle bundle) {
        C7495a.super.onCreate(bundle);
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        C7805e c7805e = (C7805e) C18334g0.m15219l(requireActivity);
        this.f23776a = (C26986a1.AbstractC26987b) c7805e.f24270K.get();
        AbstractC19223c0 mo12349i = c7805e.f24290c.mo12349i();
        Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
        this.f23777b = new C7622d(mo12349i);
        AbstractC19223c0 mo12349i2 = c7805e.f24290c.mo12349i();
        Objects.requireNonNull(mo12349i2, "Cannot return null from a non-@Nullable component method");
        this.f23778c = mo12349i2;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C3478R.layout.fragment_sub_tag_pick, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C7495a.super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        String str = null;
        Long valueOf = arguments != null ? Long.valueOf(arguments.getLong("keyParentId")) : null;
        if (valueOf != null) {
            long longValue = valueOf.longValue();
            C7638b.m29461c(m29550PA(), valueOf.longValue(), null, 2);
            C8551c mo20067y1 = m29550PA().f24009b.mo20067y1(longValue);
            C8099r0 m29551OA = m29551OA();
            if (mo20067y1 != null) {
                ImageView imageView = m29551OA.f25088f;
                s1.z.c.l.d(imageView, "categoryIcon");
                C18334g0.m15230f0(mo20067y1, imageView);
            }
            TextView textView = m29551OA.f25091i;
            s1.z.c.l.d(textView, "lblCategory");
            if (mo20067y1 != null) {
                str = mo20067y1.f26351b;
            }
            textView.setText(str);
        }
        C8099r0 m29551OA2 = m29551OA();
        ConstraintLayout constraintLayout = m29551OA2.f25093k;
        s1.z.c.l.d(constraintLayout, "parentLayout");
        constraintLayout.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC7502g(m29551OA2, this, valueOf));
        m29551OA2.f25085c.setOnClickListener(new View$OnClickListenerC7496a(0, this, valueOf));
        m29551OA2.f25086d.setOnClickListener(new View$OnClickListenerC7496a(1, this, valueOf));
        m29551OA2.f25084b.setOnClickListener(new View$OnClickListenerC7496a(2, this, valueOf));
        m29551OA2.f25087e.setOnClickListener(new View$OnClickListenerC7496a(3, this, valueOf));
    }
}
