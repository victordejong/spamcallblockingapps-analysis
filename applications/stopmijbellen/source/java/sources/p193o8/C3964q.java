package p193o8;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import androidx.fragment.app.Fragment;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import com.google.android.gms.internal.ads.C1676a;
import p066d0.C2134a;
import p086f.AbstractC2635a;
import p086f.ActivityC2651j;
import p095f8.C2779g;
import p095f8.C2780h;
/* renamed from: o8.q */
/* loaded from: classes2-dex2jar.jar:o8/q.class */
public class C3964q extends Fragment {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: b */
    public static WebView f12466b;

    /* renamed from: a */
    public Unbinder f12467a;

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i;
        Context context;
        String str;
        View inflate = layoutInflater.inflate(2131492955, viewGroup, false);
        this.f12467a = ButterKnife.m7385a(this, inflate);
        f12466b = (WebView) inflate.findViewById(2131297215);
        boolean m3081H = C2780h.m3081H(getContext());
        WebView webView = f12466b;
        if (m3081H) {
            context = requireContext();
            i = 2131099699;
        } else {
            context = requireContext();
            i = 2131099742;
        }
        webView.setBackgroundColor(C2134a.m3845b(context, i));
        String string = getArguments().getString("page");
        String m3075N = C2780h.m3075N(getContext());
        String str2 = C2779g.m3111d("01htP*PkU@3d2KuP", C2780h.m3055d0(getContext(), "hurl", "http://127.0.0.1")) + "?screen=" + string;
        string.contains("#");
        if (!string.contains("#")) {
            str = C0082b.m8755g(str2, "&lang=", m3075N);
        } else {
            str = str2.replace("#", "&lang=" + m3075N + "#");
        }
        String str3 = str;
        if (m3081H) {
            str3 = !string.contains("#") ? C1676a.m4789h(str, "&dark=1") : str.replace("#", "&dark=1#");
        }
        f12466b.setWebViewClient(new C3963p(this));
        f12466b.getSettings().setJavaScriptEnabled(true);
        f12466b.loadUrl(str3);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f12467a.mo3937a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        menu.findItem(2131296319).setVisible(false);
        menu.findItem(2131296318).setVisible(false);
        menu.findItem(2131296326).setVisible(false);
        super.onPrepareOptionsMenu(menu);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        requireActivity().setTitle(2131820580);
        AbstractC2635a m3365s = ((ActivityC2651j) requireActivity()).m3365s();
        if (m3365s != null) {
            m3365s.mo3266p(2131820580);
        }
    }
}
