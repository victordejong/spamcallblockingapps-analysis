package p193e.p194a.p294b.p295a.p312c.p313a.p314a;

import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.newBusiness.onboarding.p149ui.SubCategoryActivity;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p294b.p295a.p296a.p304c.C7622d;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7748u;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7752y;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7753z;
import p193e.p194a.p294b.p295a.p322f.AbstractC7780a;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p355m.C8069h0;
import p193e.p194a.p372b0.p426p.C8551c;
import s1.u.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\bZ\u0010\u0014J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ-\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\r2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J'\u0010\u001a\u001a\u00020\u00062\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u00152\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ!\u0010 \u001a\u00020\u00062\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b \u0010!J\u0017\u0010#\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0016H\u0016¢\u0006\u0004\b#\u0010$J)\u0010*\u001a\u00020\u00062\u0006\u0010&\u001a\u00020%2\u0006\u0010'\u001a\u00020%2\b\u0010)\u001a\u0004\u0018\u00010(H\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\u001eH\u0016¢\u0006\u0004\b,\u0010-J\u0017\u00100\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\u0006H\u0016¢\u0006\u0004\b2\u0010\u0014J\u000f\u00103\u001a\u00020\u0006H\u0016¢\u0006\u0004\b3\u0010\u0014J\u000f\u00104\u001a\u00020\u0006H\u0016¢\u0006\u0004\b4\u0010\u0014J\u0017\u00105\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b5\u00101J\u000f\u00106\u001a\u00020\u0006H\u0016¢\u0006\u0004\b6\u0010\u0014J\u0017\u00109\u001a\u00020\u00062\u0006\u00108\u001a\u000207H\u0016¢\u0006\u0004\b9\u0010:J\u0017\u0010=\u001a\u00020\u00062\u0006\u0010<\u001a\u00020;H\u0016¢\u0006\u0004\b=\u0010>J\u000f\u0010?\u001a\u00020\u0006H\u0016¢\u0006\u0004\b?\u0010\u0014J\u000f\u0010@\u001a\u00020\u0006H\u0016¢\u0006\u0004\b@\u0010\u0014R\u0016\u0010D\u001a\u00020A8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bB\u0010CR\"\u0010L\u001a\u00020E8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bF\u0010G\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\u001c\u0010Q\u001a\b\u0012\u0004\u0012\u00020N0M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\"\u0010Y\u001a\u00020R8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bS\u0010T\u001a\u0004\bU\u0010V\"\u0004\bW\u0010X¨\u0006["}, d2 = {"Le/a/b/a/c/a/a/k;", "Le/a/b/a/c/a/a/d;", "Le/a/b/a/c/a/z;", "Landroid/widget/CompoundButton$OnCheckedChangeListener;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "", "Le/a/b0/p/c;", "childTags", "", "selectedChildTagId", "fa", "(Ljava/util/List;Ljava/lang/Long;)V", "Landroid/widget/CompoundButton;", "box", "", "checked", "onCheckedChanged", "(Landroid/widget/CompoundButton;Z)V", RemoteMessageConst.Notification.TAG, "t3", "(Le/a/b0/p/c;)V", "", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "pt", "()Z", "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;", "businessProfile", "cx", "(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V", "Gb", "a0", "b0", "b4", "ie", "Le/a/b/a/f/a;", "businessAPIResult", "G2", "(Le/a/b/a/f/a;)V", "", "error", "M", "(Ljava/lang/String;)V", "km", "e9", "Le/a/b/m/h0;", "e", "Le/a/b/m/h0;", "binding", "Le/a/b/a/c/a/y;", C22021b.f61237c, "Le/a/b/a/c/a/y;", "getPresenter", "()Le/a/b/a/c/a/y;", "setPresenter", "(Le/a/b/a/c/a/y;)V", "presenter", "", "Landroid/widget/CheckBox;", "d", "Ljava/util/List;", "checkBoxes", "Le/a/b/a/a/c/d;", AbstractC2405c.f7629a, "Le/a/b/a/a/c/d;", "getSubCategoryUIUtil", "()Le/a/b/a/a/c/d;", "setSubCategoryUIUtil", "(Le/a/b/a/a/c/d;)V", "subCategoryUIUtil", "<init>", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.c.a.a.k */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/k.class */
public final class C7691k extends AbstractC7675d<AbstractC7753z> implements AbstractC7753z, CompoundButton.OnCheckedChangeListener {
    @Inject

    /* renamed from: b */
    public AbstractC7752y f24086b;
    @Inject

    /* renamed from: c */
    public C7622d f24087c;

    /* renamed from: d */
    public List<CheckBox> f24088d = new ArrayList();

    /* renamed from: e */
    public C8069h0 f24089e;

    /* renamed from: e.a.b.a.c.a.a.k$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/k$a.class */
    public static final class View$OnClickListenerC7692a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ long f24090a;

        /* renamed from: b */
        public final /* synthetic */ C7691k f24091b;

        public View$OnClickListenerC7692a(long j, C8069h0 c8069h0, C7691k c7691k, BusinessProfile businessProfile) {
            this.f24090a = j;
            this.f24091b = c7691k;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C7691k c7691k = this.f24091b;
            Context requireContext = c7691k.requireContext();
            l.d(requireContext, "requireContext()");
            long j = this.f24090a;
            l.e(requireContext, AnalyticsConstants.CONTEXT);
            Intent intent = new Intent(requireContext, SubCategoryActivity.class);
            intent.putExtra("selected_tag_id", j);
            c7691k.startActivityForResult(intent, 1);
        }
    }

    /* renamed from: e.a.b.a.c.a.a.k$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/k$b.class */
    public static final class View$OnClickListenerC7693b implements View.OnClickListener {
        public View$OnClickListenerC7693b() {
            C7691k.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C7691k.this.mo29450xy();
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: G2 */
    public void mo29336G2(AbstractC7780a abstractC7780a) {
        l.e(abstractC7780a, "businessAPIResult");
        AbstractC7752y abstractC7752y = this.f24086b;
        if (abstractC7752y != null) {
            abstractC7752y.mo29342G2(abstractC7780a);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: Gb */
    public void mo29335Gb() {
        AbstractC7752y abstractC7752y = this.f24086b;
        if (abstractC7752y == null) {
            l.l("presenter");
            throw null;
        }
        abstractC7752y.mo29339d4();
        View view = getView();
        if (view != null) {
            C19286f.m13679Y(view, false, 0L, 2);
        }
        AbstractC7748u requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
        AbstractC7748u abstractC7748u = requireActivity;
        abstractC7748u.mo29324B7(false);
        C18334g0.m15190z0(abstractC7748u, false, 1, null);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: M */
    public void mo29334M(String str) {
        l.e(str, "error");
        n3.r.a.l requireActivity = requireActivity();
        l.d(requireActivity, "requireActivity()");
        C19291g.m13589S1(requireActivity, 0, str, 0, 5);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: a0 */
    public void mo29333a0() {
        AbstractC7748u requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
        requireActivity.mo29320a0();
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: b0 */
    public void mo29332b0() {
        AbstractC7748u requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
        requireActivity.mo29319b0();
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: b4 */
    public void mo29331b4(BusinessProfile businessProfile) {
        Long l;
        l.e(businessProfile, "businessProfile");
        C8069h0 c8069h0 = this.f24089e;
        if (c8069h0 == null) {
            l.l("binding");
            throw null;
        }
        List<Long> tags = businessProfile.getTags();
        if (tags != null && (l = (Long) i.D(tags)) != null) {
            c8069h0.f24909c.setOnClickListener(new View$OnClickListenerC7692a(l.longValue(), c8069h0, this, businessProfile));
            return;
        }
        Button button = c8069h0.f24909c;
        l.d(button, "btnShowMore");
        C19286f.m13683U(button, false);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7753z
    /* renamed from: cx */
    public void mo29308cx(BusinessProfile businessProfile) {
        l.e(businessProfile, "businessProfile");
        AbstractC7752y abstractC7752y = this.f24086b;
        if (abstractC7752y != null) {
            abstractC7752y.mo29343A(businessProfile);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: e9 */
    public void mo29330e9() {
        AbstractC7748u requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
        requireActivity.mo29314v1();
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7753z
    /* renamed from: fa */
    public void mo29307fa(List<C8551c> list, Long l) {
        TextView textView;
        l.e(list, "childTags");
        C8069h0 c8069h0 = this.f24089e;
        if (c8069h0 == null) {
            l.l("binding");
            throw null;
        }
        Point point = new Point();
        n3.r.a.l requireActivity = requireActivity();
        l.d(requireActivity, "requireActivity()");
        WindowManager windowManager = requireActivity.getWindowManager();
        l.d(windowManager, "requireActivity().windowManager");
        windowManager.getDefaultDisplay().getSize(point);
        int i = point.y;
        AbstractC7752y abstractC7752y = this.f24086b;
        if (abstractC7752y == null) {
            l.l("presenter");
            throw null;
        }
        int mo29312H = abstractC7752y.mo29312H(C3478R.dimen.doubleSpace);
        AbstractC7752y abstractC7752y2 = this.f24086b;
        if (abstractC7752y2 == null) {
            l.l("presenter");
            throw null;
        }
        int mo29312H2 = abstractC7752y2.mo29312H(C3478R.dimen.onboardingToolbarSize);
        Button button = c8069h0.f24909c;
        l.d(button, "btnShowMore");
        float height = i - (((mo29312H * 2) + button.getHeight()) + (mo29312H2 + mo29312H));
        TextView textView2 = c8069h0.f24914h;
        l.d(textView2, "lblSubHeader");
        float y = textView2.getY();
        l.d(c8069h0.f24914h, "lblSubHeader");
        int height2 = (int) (height - (y + textView.getHeight()));
        C7622d c7622d = this.f24087c;
        if (c7622d == null) {
            l.l("subCategoryUIUtil");
            throw null;
        }
        n3.r.a.l requireActivity2 = requireActivity();
        l.d(requireActivity2, "requireActivity()");
        List<C8551c> subList = list.subList(0, Math.min(list.size(), c7622d.m29468a(list, height2, requireActivity2)));
        boolean z = list.size() > subList.size();
        C8069h0 c8069h02 = this.f24089e;
        if (c8069h02 == null) {
            l.l("binding");
            throw null;
        }
        for (CheckBox checkBox : this.f24088d) {
            c8069h02.f24912f.m1981n(checkBox);
            c8069h02.f24911e.removeView(checkBox);
        }
        this.f24088d.clear();
        for (C8551c c8551c : subList) {
            LayoutInflater from = LayoutInflater.from(requireContext());
            int i2 = C3478R.layout.checkbox_child_tags;
            C8069h0 c8069h03 = this.f24089e;
            if (c8069h03 == null) {
                l.l("binding");
                throw null;
            }
            View inflate = from.inflate(i2, (ViewGroup) c8069h03.f24911e, false);
            Objects.requireNonNull(inflate, "null cannot be cast to non-null type android.widget.CheckBox");
            CheckBox checkBox2 = (CheckBox) inflate;
            checkBox2.setId(View.generateViewId());
            checkBox2.setText(c8551c.f26351b);
            checkBox2.setTag(Long.valueOf(c8551c.f26350a));
            checkBox2.setChecked(l != null && c8551c.f26350a == l.longValue());
            checkBox2.setOnCheckedChangeListener(this);
            c8069h02.f24911e.addView(checkBox2);
            c8069h02.f24912f.m1986h(checkBox2);
            this.f24088d.add(checkBox2);
        }
        Button button2 = c8069h02.f24909c;
        l.d(button2, "btnShowMore");
        C19286f.m13683U(button2, z);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: ie */
    public void mo29329ie() {
        AbstractC7748u requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
        requireActivity.mo29317n1();
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: km */
    public void mo29328km() {
        AbstractC7752y abstractC7752y = this.f24086b;
        if (abstractC7752y != null) {
            abstractC7752y.mo29311bd();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1 && intent != null) {
            long longExtra = intent.getLongExtra("selected_tag_id", 0L);
            AbstractC7752y abstractC7752y = this.f24086b;
            if (abstractC7752y == null) {
                l.l("presenter");
                throw null;
            }
            C8551c mo29310y1 = abstractC7752y.mo29310y1(longExtra);
            if (mo29310y1 != null) {
                Iterator<CheckBox> it = this.f24088d.iterator();
                int i3 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i3 = -1;
                        break;
                    } else if (l.a(it.next().getTag(), Long.valueOf(longExtra))) {
                        break;
                    } else {
                        i3++;
                    }
                }
                if (i3 == -1) {
                    i3 = 0;
                }
                CheckBox checkBox = (CheckBox) i.G(this.f24088d, i3);
                if (checkBox != null) {
                    checkBox.setText(mo29310y1.f26351b);
                    checkBox.setTag(Long.valueOf(mo29310y1.f26350a));
                    checkBox.setChecked(true);
                }
            }
        }
        C7691k.super.onActivityResult(i, i2, intent);
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (!z) {
            if (z) {
                return;
            }
            AbstractC7752y abstractC7752y = this.f24086b;
            if (abstractC7752y != null) {
                abstractC7752y.mo29309yf(null);
                return;
            } else {
                l.l("presenter");
                throw null;
            }
        }
        for (CheckBox checkBox : this.f24088d) {
            if ((!l.a(compoundButton != null ? compoundButton.getTag() : null, checkBox.getTag())) && checkBox.getVisibility() == 0) {
                checkBox.setChecked(false);
            }
        }
        Long tag = compoundButton != null ? compoundButton.getTag() : null;
        Objects.requireNonNull(tag, "null cannot be cast to non-null type kotlin.Long");
        Long l = tag;
        AbstractC7752y abstractC7752y2 = this.f24086b;
        if (abstractC7752y2 == null) {
            l.l("presenter");
            throw null;
        }
        abstractC7752y2.mo29309yf(l);
    }

    public void onCreate(Bundle bundle) {
        C7691k.super.onCreate(bundle);
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            C7805e c7805e = (C7805e) C18334g0.m15219l(activity);
            this.f24086b = (AbstractC7752y) c7805e.f24301h0.get();
            AbstractC19223c0 mo12349i = c7805e.f24290c.mo12349i();
            Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
            this.f24087c = new C7622d(mo12349i);
        }
        AbstractC7752y abstractC7752y = this.f24086b;
        if (abstractC7752y != null) {
            m29451OA(abstractC7752y);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C3478R.layout.fragment_biz_sub_category, viewGroup, false);
        int i = C3478R.C3480id.btnChange;
        Button button = (Button) inflate.findViewById(i);
        if (button != null) {
            i = C3478R.C3480id.btnShowMore;
            Button button2 = (Button) inflate.findViewById(i);
            if (button2 != null) {
                i = C3478R.C3480id.categoryIcon;
                ImageView imageView = (ImageView) inflate.findViewById(i);
                if (imageView != null) {
                    i = C3478R.C3480id.clFlowSubCategoryParent;
                    ConstraintLayout constraintLayout = (ConstraintLayout) inflate.findViewById(i);
                    if (constraintLayout != null) {
                        i = C3478R.C3480id.flowSubCategory;
                        Flow findViewById = inflate.findViewById(i);
                        if (findViewById != null) {
                            i = C3478R.C3480id.lblCategory;
                            TextView textView = (TextView) inflate.findViewById(i);
                            if (textView != null) {
                                i = C3478R.C3480id.lblSubCcategory;
                                TextView textView2 = (TextView) inflate.findViewById(i);
                                if (textView2 != null) {
                                    i = C3478R.C3480id.lblSubHeader;
                                    TextView textView3 = (TextView) inflate.findViewById(i);
                                    if (textView3 != null) {
                                        ConstraintLayout constraintLayout2 = (ConstraintLayout) inflate;
                                        i = C3478R.C3480id.svFlowSubCategory;
                                        ScrollView scrollView = (ScrollView) inflate.findViewById(i);
                                        if (scrollView != null) {
                                            C8069h0 c8069h0 = new C8069h0(constraintLayout2, button, button2, imageView, constraintLayout, findViewById, textView, textView2, textView3, constraintLayout2, scrollView);
                                            l.d(c8069h0, "FragmentBizSubCategoryBi…flater, container, false)");
                                            this.f24089e = c8069h0;
                                            if (c8069h0 != null) {
                                                return c8069h0.f24907a;
                                            }
                                            l.l("binding");
                                            throw null;
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

    public void onDestroyView() {
        C7691k.super.onDestroyView();
        AbstractC7752y abstractC7752y = this.f24086b;
        if (abstractC7752y != null) {
            abstractC7752y.mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C7691k.super.onViewCreated(view, bundle);
        AbstractC7752y abstractC7752y = this.f24086b;
        if (abstractC7752y == null) {
            l.l("presenter");
            throw null;
        }
        abstractC7752y.mo9029Y0(this);
        C8069h0 c8069h0 = this.f24089e;
        if (c8069h0 != null) {
            c8069h0.f24908b.setOnClickListener(new View$OnClickListenerC7693b());
        } else {
            l.l("binding");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: pt */
    public boolean mo29327pt() {
        return this.f24086b != null;
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7753z
    /* renamed from: t3 */
    public void mo29306t3(C8551c c8551c) {
        l.e(c8551c, RemoteMessageConst.Notification.TAG);
        C8069h0 c8069h0 = this.f24089e;
        if (c8069h0 == null) {
            l.l("binding");
            throw null;
        }
        ImageView imageView = c8069h0.f24910d;
        l.d(imageView, "categoryIcon");
        C18334g0.m15230f0(c8551c, imageView);
        TextView textView = c8069h0.f24913g;
        l.d(textView, "lblCategory");
        textView.setText(c8551c.f26351b);
    }
}
