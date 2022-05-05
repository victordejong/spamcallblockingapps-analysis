package p459j.p460a.p474c0.p483e.p487d;

import android.app.ActionBar;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import android.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import java.util.HashMap;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14123p4;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \n2\u00020\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\b\u0010\t\u001a\u00020\u0004H\u0002¨\u0006\u000b"}, m815d2 = {"Lgogolook/callgogolook2/messaging/scan/ui/ErrorPageFragment;", "Landroidx/fragment/app/Fragment;", "()V", "onViewCreated", "", "view", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "setupUI", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.e.d.a */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/a.class */
public final class C11750a extends Fragment {

    /* renamed from: b */
    public static final C11751a f26363b = new C11751a(null);

    /* renamed from: a */
    public HashMap f26364a;

    /* renamed from: j.a.c0.e.d.a$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/a$a.class */
    public static final class C11751a {
        public C11751a() {
        }

        public /* synthetic */ C11751a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C11750a m8372a(String str, String str2) {
            C15149k.m377b(str, "barTitle");
            C15149k.m377b(str2, "errorReason");
            Bundle bundle = new Bundle();
            bundle.putString("EXTRA_DESCRIPTION", str2);
            bundle.putString("EXTRA_TOOLBAR_TITLE", str);
            C11750a aVar = new C11750a();
            aVar.setArguments(bundle);
            return aVar;
        }
    }

    /* renamed from: j.a.c0.e.d.a$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/a$b.class */
    public static final class View$OnClickListenerC11752b implements View.OnClickListener {
        public View$OnClickListenerC11752b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            FragmentActivity activity = C11750a.this.getActivity();
            if (activity != null) {
                activity.onBackPressed();
            }
        }
    }

    public C11750a() {
        super(R$layout.fragment_error_page);
    }

    /* renamed from: J */
    public void m8375J() {
        HashMap hashMap = this.f26364a;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    /* renamed from: K */
    public final void m8374K() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.setActionBar((Toolbar) activity.findViewById(R$id.tb_toolbar));
            ActionBar actionBar = activity.getActionBar();
            if (actionBar != null) {
                actionBar.setDisplayHomeAsUpEnabled(true);
            }
            ActionBar actionBar2 = activity.getActionBar();
            if (actionBar2 != null) {
                actionBar2.setHomeAsUpIndicator(R$drawable.ic_actionbar_back);
            }
            C14123p4.m2429b(activity.getWindow(), -3355444);
            ((Toolbar) activity.findViewById(R$id.tb_toolbar)).setNavigationOnClickListener(new View$OnClickListenerC11752b());
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            ((Toolbar) m8373b(R$id.tb_toolbar)).setTitle(arguments.getString("EXTRA_TOOLBAR_TITLE", getString(2131886242)));
            TextView textView = (TextView) m8373b(R$id.tv_description);
            C15149k.m383a((Object) textView, "tv_description");
            textView.setText(arguments.getString("EXTRA_DESCRIPTION", ""));
        }
    }

    /* renamed from: b */
    public View m8373b(int i) {
        if (this.f26364a == null) {
            this.f26364a = new HashMap();
        }
        View view = (View) this.f26364a.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f26364a.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        m8375J();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        C15149k.m377b(view, "view");
        super.onViewCreated(view, bundle);
        m8374K();
    }
}
