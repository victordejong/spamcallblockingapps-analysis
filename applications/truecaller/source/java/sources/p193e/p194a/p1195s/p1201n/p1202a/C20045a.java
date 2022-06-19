package p193e.p194a.p1195s.p1201n.p1202a;

import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import androidx.appcompat.widget.SwitchCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.callhero_assistant.C3605R;
import com.truecaller.callhero_assistant.deactivate.DeactivateServiceActivity;
import com.truecaller.callhero_assistant.inbox.settings.CallAssistantSettingsActivity;
import com.truecaller.callhero_assistant.onboarding.AssistantOnboardingActivity;
import com.truecaller.dynamicfeaturesupport.DynamicFeature;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1734b.p1743f.C25508g0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1188r3.p1189j.AbstractC19917a;
import p193e.p194a.p1188r3.p1189j.C19918b;
import p193e.p194a.p1195s.AbstractC20009b;
import p193e.p194a.p1195s.AbstractC20012e;
import p193e.p194a.p1195s.p1199l.C20026c;
import s1.a.l;
import s1.z.c.d0;
import s1.z.c.m;
import s1.z.c.w;
@Metadata(bv = {1, 0, 3}, d1 = {"��q\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001=\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\bG\u0010\u001dJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u001dJ\u0017\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0019H\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0005H\u0016¢\u0006\u0004\b#\u0010\u001dJ\u000f\u0010$\u001a\u00020\u0005H\u0016¢\u0006\u0004\b$\u0010\u001dJ\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010\u001dJ\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\u001dJ\u000f\u0010'\u001a\u00020\u0005H\u0016¢\u0006\u0004\b'\u0010\u001dJ\u000f\u0010(\u001a\u00020\u0005H\u0016¢\u0006\u0004\b(\u0010\u001dR\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b*\u0010+R\"\u00104\u001a\u00020-8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\"\u0010<\u001a\u0002058\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u0016\u0010@\u001a\u00020=8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?R\u001d\u0010F\u001a\u00020A8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E¨\u0006H"}, d2 = {"Le/a/s/n/a/a;", "Landroidx/fragment/app/Fragment;", "Le/a/s/n/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/view/Menu;", "menu", "Landroid/view/MenuInflater;", "onCreateOptionsMenu", "(Landroid/view/Menu;Landroid/view/MenuInflater;)V", "Landroid/view/MenuItem;", "item", "", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "onDestroyView", "()V", "onResume", "onPause", "isChecked", "Zf", "(Z)V", "oi", "hf", "Ng", "c0", "Gt", "n0", "Le/a/o2/f;", "d", "Le/a/o2/f;", "adapter", "Le/a/s/n/a/d;", AbstractC2405c.f7629a, "Le/a/s/n/a/d;", "getItemPresenter", "()Le/a/s/n/a/d;", "setItemPresenter", "(Le/a/s/n/a/d;)V", "itemPresenter", "Le/a/s/n/a/g;", C22021b.f61237c, "Le/a/s/n/a/g;", "getPresenter", "()Le/a/s/n/a/g;", "setPresenter", "(Le/a/s/n/a/g;)V", "presenter", "e/a/s/n/a/a$b", "e", "Le/a/s/n/a/a$b;", "contentObserver", "Le/a/s/l/c;", "a", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/s/l/c;", "binding", "<init>", "callhero_assistant_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.s.n.a.a */
/* loaded from: classes17-dex2jar.jar:e/a/s/n/a/a.class */
public final class C20045a extends Fragment implements AbstractC20059h {

    /* renamed from: f */
    public static final /* synthetic */ l[] f56617f = {d0.d(new w(C20045a.class, "binding", "getBinding()Lcom/truecaller/callhero_assistant/databinding/FragmentCallScreeningBinding;", 0))};
    @Inject

    /* renamed from: b */
    public AbstractC20058g f56619b;
    @Inject

    /* renamed from: c */
    public AbstractC20055d f56620c;

    /* renamed from: d */
    public C18898f f56621d;

    /* renamed from: a */
    public final ViewBindingProperty f56618a = new C19350a(new C20046a());

    /* renamed from: e */
    public final C20047b f56622e = new C20047b(new Handler(Looper.getMainLooper()));

    /* renamed from: e.a.s.n.a.a$a */
    /* loaded from: classes17-dex2jar.jar:e/a/s/n/a/a$a.class */
    public static final class C20046a extends m implements s1.z.b.l<C20045a, C20026c> {
        public C20046a() {
            super(1);
        }

        /* renamed from: d */
        public Object m11612d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2114060290;
            SwitchCompat switchCompat = (SwitchCompat) requireView.findViewById(C3605R.C3606id.callScreeningSwitch);
            if (switchCompat != null) {
                i = 2114060291;
                LinearLayout linearLayout = (LinearLayout) requireView.findViewById(C3605R.C3606id.callScreeningSwitchContainer);
                if (linearLayout != null) {
                    i = 2114060292;
                    RecyclerView recyclerView = (RecyclerView) requireView.findViewById(C3605R.C3606id.callsList);
                    if (recyclerView != null) {
                        return new C20026c((ConstraintLayout) requireView, switchCompat, linearLayout, recyclerView);
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.s.n.a.a$b */
    /* loaded from: classes17-dex2jar.jar:e/a/s/n/a/a$b.class */
    public static final class C20047b extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20047b(Handler handler) {
            super(handler);
            C20045a.this = r4;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            AbstractC20058g abstractC20058g = C20045a.this.f56619b;
            if (abstractC20058g != null) {
                abstractC20058g.mo11594Kc();
            } else {
                s1.z.c.l.l("presenter");
                throw null;
            }
        }
    }

    /* renamed from: e.a.s.n.a.a$c */
    /* loaded from: classes17-dex2jar.jar:e/a/s/n/a/a$c.class */
    public static final class C20048c implements C25508g0.AbstractC25510b {
        public C20048c() {
            C20045a.this = r4;
        }

        @Override // p1727n3.p1734b.p1743f.C25508g0.AbstractC25510b
        public final boolean onMenuItemClick(MenuItem menuItem) {
            C20045a c20045a = C20045a.this;
            s1.z.c.l.d(menuItem, "item");
            c20045a.onOptionsItemSelected(menuItem);
            return true;
        }
    }

    /* renamed from: e.a.s.n.a.a$d */
    /* loaded from: classes17-dex2jar.jar:e/a/s/n/a/a$d.class */
    public static final class View$OnClickListenerC20049d implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C25508g0 f56625a;

        public View$OnClickListenerC20049d(C25508g0 c25508g0) {
            this.f56625a = c25508g0;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f56625a.f71382d.m3426f();
        }
    }

    /* renamed from: e.a.s.n.a.a$e */
    /* loaded from: classes17-dex2jar.jar:e/a/s/n/a/a$e.class */
    public static final class C20050e implements CompoundButton.OnCheckedChangeListener {
        public C20050e() {
            C20045a.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            AbstractC20058g abstractC20058g = C20045a.this.f56619b;
            if (abstractC20058g != null) {
                abstractC20058g.mo11596I9(z);
            } else {
                s1.z.c.l.l("presenter");
                throw null;
            }
        }
    }

    /* renamed from: e.a.s.n.a.a$f */
    /* loaded from: classes17-dex2jar.jar:e/a/s/n/a/a$f.class */
    public static final class C20051f extends m implements s1.z.b.l<View, C20054c> {

        /* renamed from: b */
        public static final C20051f f56627b = new C20051f();

        public C20051f() {
            super(1);
        }

        /* renamed from: d */
        public Object m11611d(Object obj) {
            View view = (View) obj;
            s1.z.c.l.e(view, "it");
            return new C20054c(view);
        }
    }

    /* renamed from: e.a.s.n.a.a$g */
    /* loaded from: classes17-dex2jar.jar:e/a/s/n/a/a$g.class */
    public static final class C20052g extends m implements s1.z.b.l<C20054c, AbstractC20056e> {

        /* renamed from: b */
        public static final C20052g f56628b = new C20052g();

        public C20052g() {
            super(1);
        }

        /* renamed from: d */
        public Object m11610d(Object obj) {
            C20054c c20054c = (C20054c) obj;
            s1.z.c.l.e(c20054c, "it");
            return c20054c;
        }
    }

    @Override // p193e.p194a.p1195s.p1201n.p1202a.AbstractC20059h
    /* renamed from: Gt */
    public void mo11606Gt() {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        requireContext.getContentResolver().registerContentObserver(C17891a1.C17902k.m15666K(), true, this.f56622e);
    }

    @Override // p193e.p194a.p1195s.p1201n.p1202a.AbstractC20059h
    /* renamed from: Ng */
    public void mo11605Ng() {
        startActivity(new Intent(requireContext(), CallAssistantSettingsActivity.class));
    }

    @Override // p193e.p194a.p1195s.p1201n.p1202a.AbstractC20059h
    /* renamed from: Zf */
    public void mo11604Zf(boolean z) {
        SwitchCompat switchCompat = ((C20026c) this.f56618a.m34468b(this, f56617f[0])).f56586a;
        s1.z.c.l.d(switchCompat, "binding.callScreeningSwitch");
        switchCompat.setChecked(z);
    }

    @Override // p193e.p194a.p1195s.p1201n.p1202a.AbstractC20059h
    /* renamed from: c0 */
    public void mo11603c0() {
        C18898f c18898f = this.f56621d;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        } else {
            s1.z.c.l.l("adapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1195s.p1201n.p1202a.AbstractC20059h
    /* renamed from: hf */
    public void mo11602hf() {
        startActivity(new Intent(requireContext(), DeactivateServiceActivity.class));
    }

    @Override // p193e.p194a.p1195s.p1201n.p1202a.AbstractC20059h
    /* renamed from: n0 */
    public void mo11601n0() {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        requireContext.getContentResolver().unregisterContentObserver(this.f56622e);
    }

    @Override // p193e.p194a.p1195s.p1201n.p1202a.AbstractC20059h
    /* renamed from: oi */
    public void mo11600oi() {
        startActivity(new Intent(requireContext(), AssistantOnboardingActivity.class));
    }

    public void onCreate(Bundle bundle) {
        C20045a.super.onCreate(bundle);
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        C19918b c19918b = C19918b.f56363b;
        AbstractC19917a m11813a = C19918b.m11813a(requireContext, AbstractC20012e.AbstractC20013a.class, DynamicFeature.CALLHERO_ASSISTANT);
        Objects.requireNonNull(m11813a, "null cannot be cast to non-null type com.truecaller.callhero_assistant.CallAssistantComponent");
        AbstractC20009b abstractC20009b = (AbstractC20009b) m11813a;
        C25225a.m3846s(abstractC20009b, AbstractC20009b.class);
        C20062k c20062k = new C20062k(abstractC20009b, null);
        this.f56619b = (AbstractC20058g) c20062k.f56643d.get();
        this.f56620c = new C20053b((AbstractC20057f) c20062k.f56643d.get());
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        s1.z.c.l.e(menu, "menu");
        s1.z.c.l.e(menuInflater, "inflater");
        C20045a.super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(C2752R.C2756menu.list_menu_more, menu);
        MenuItem findItem = menu.findItem(2131364778);
        Context requireContext = requireContext();
        s1.z.c.l.d(findItem, "item");
        C25508g0 c25508g0 = new C25508g0(requireContext, findItem.getActionView(), 8388613);
        c25508g0.m3362a(C3605R.C3607menu.call_screening_menu);
        MenuItem findItem2 = c25508g0.f71380b.findItem(C3605R.C3606id.action_settings);
        if (findItem2 != null) {
            C19286f.m13673f(findItem2, Integer.valueOf(C19291g.m13612L(requireContext(), 2130970255)), null, 2);
        }
        c25508g0.f71383e = new C20048c();
        findItem.getActionView().setOnClickListener(new View$OnClickListenerC20049d(c25508g0));
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C3605R.layout.fragment_call_screening, viewGroup, false);
    }

    public void onDestroyView() {
        AbstractC20058g abstractC20058g = this.f56619b;
        if (abstractC20058g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC20058g.mo9806c();
        C20045a.super.onDestroyView();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        s1.z.c.l.e(menuItem, "item");
        if (menuItem.getItemId() != 2114060288) {
            return C20045a.super.onOptionsItemSelected(menuItem);
        }
        AbstractC20058g abstractC20058g = this.f56619b;
        if (abstractC20058g != null) {
            return abstractC20058g.mo11592v0();
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    public void onPause() {
        C20045a.super.onPause();
        AbstractC20058g abstractC20058g = this.f56619b;
        if (abstractC20058g != null) {
            abstractC20058g.onPause();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onResume() {
        C20045a.super.onResume();
        AbstractC20058g abstractC20058g = this.f56619b;
        if (abstractC20058g != null) {
            abstractC20058g.onResume();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C20045a.super.onViewCreated(view, bundle);
        setHasOptionsMenu(true);
        AbstractC20055d abstractC20055d = this.f56620c;
        if (abstractC20055d == null) {
            s1.z.c.l.l("itemPresenter");
            throw null;
        }
        this.f56621d = new C18898f(new C18910r(abstractC20055d, C3605R.layout.call_item, C20051f.f56627b, C20052g.f56628b));
        C20026c c20026c = (C20026c) this.f56618a.m34468b(this, f56617f[0]);
        c20026c.f56586a.setOnCheckedChangeListener(new C20050e());
        RecyclerView recyclerView = c20026c.f56587b;
        s1.z.c.l.d(recyclerView, "callsList");
        C18898f c18898f = this.f56621d;
        if (c18898f == null) {
            s1.z.c.l.l("adapter");
            throw null;
        }
        recyclerView.setAdapter(c18898f);
        AbstractC20058g abstractC20058g = this.f56619b;
        if (abstractC20058g != null) {
            abstractC20058g.mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }
}
