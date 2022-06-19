package com.mglab.scm.visual;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.ActivityC0455o;
import androidx.fragment.app.Fragment;
import ba.AbstractC0762k;
import ba.C0748b;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import java.util.HashMap;
import java.util.Objects;
import org.greenrobot.eventbus.ThreadMode;
import p066d0.C2134a;
import p086f.AbstractC2635a;
import p086f.ActivityC2651j;
import p095f8.C2768a;
import p095f8.C2779g;
import p095f8.C2780h;
import p149k8.C3383a0;
import p149k8.C3403s;
import p149k8.C3406v;
@SuppressLint({"NonConstantResourceId"})
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentDonate.class */
public class FragmentDonate extends Fragment {

    /* renamed from: a */
    public Unbinder f7457a;
    @BindView
    public Button buttonBuyPro;
    @BindView
    public LinearLayout donate1Layout;
    @BindView
    public TextView donate1TextView;
    @BindView
    public LinearLayout donate2Layout;
    @BindView
    public TextView donate2TextView;
    @BindView
    public LinearLayout donate3Layout;
    @BindView
    public TextView donate3TextView;
    @BindView
    public ImageView vkImage;

    @OnClick
    public void buyProClick() {
        C0748b.m7409b().m7404g(new C3406v());
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131492954, viewGroup, false);
        this.f7457a = ButterKnife.m7385a(this, inflate);
        boolean m3081H = C2780h.m3081H(requireContext());
        int m3845b = C2134a.m3845b(requireContext(), 2131099699);
        int m3845b2 = C2134a.m3845b(requireContext(), 2131099742);
        this.donate1TextView.setTextColor(m3081H ? m3845b2 : m3845b);
        this.donate2TextView.setTextColor(m3081H ? m3845b2 : m3845b);
        TextView textView = this.donate3TextView;
        if (m3081H) {
            m3845b = m3845b2;
        }
        textView.setTextColor(m3845b);
        if (((HashMap) C2768a.f9470c).containsKey("donate1")) {
            this.donate1TextView.setText(((Bundle) ((HashMap) C2768a.f9470c).get("donate1")).getString("Price", "?"));
            this.donate1TextView.setVisibility(0);
        } else {
            this.donate1TextView.setVisibility(8);
        }
        if (((HashMap) C2768a.f9470c).containsKey("donate2")) {
            this.donate2TextView.setText(((Bundle) ((HashMap) C2768a.f9470c).get("donate2")).getString("Price", "?"));
            this.donate2TextView.setVisibility(0);
        } else {
            this.donate2TextView.setVisibility(8);
        }
        if (((HashMap) C2768a.f9470c).containsKey("donate3")) {
            this.donate3TextView.setText(((Bundle) ((HashMap) C2768a.f9470c).get("donate3")).getString("Price", "?"));
            this.donate3TextView.setVisibility(0);
        } else {
            this.donate3TextView.setVisibility(8);
        }
        this.buttonBuyPro.setVisibility(C2779g.m3091x() ? 8 : 0);
        this.vkImage.setVisibility(C2780h.m3075N(getContext()).toUpperCase().equals("RU") ? 0 : 8);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f7457a.mo3937a();
    }

    @OnClick
    public void onDonate1Click() {
        C0748b.m7409b().m7404g(new C3383a0("donate1"));
    }

    @OnClick
    public void onDonate2Click() {
        C0748b.m7409b().m7404g(new C3383a0("donate2"));
    }

    @OnClick
    public void onDonate3Click() {
        C0748b.m7409b().m7404g(new C3383a0("donate3"));
    }

    @OnClick
    public void onFbImageClick() {
        String string = getString(2131820766);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(string));
        startActivity(intent);
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventProStatusChanged(C3403s c3403s) {
        this.buttonBuyPro.setVisibility(C2779g.m3091x() ? 8 : 0);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        menu.findItem(2131296319).setVisible(false);
        menu.findItem(2131296318).setVisible(false);
        super.onPrepareOptionsMenu(menu);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        if (!C0748b.m7409b().m7405f(this)) {
            C0748b.m7409b().m7400k(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        if (C0748b.m7409b().m7405f(this)) {
            C0748b.m7409b().m7398m(this);
        }
        super.onStop();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        requireActivity().setTitle(2131820577);
        AbstractC2635a m3365s = ((ActivityC2651j) requireActivity()).m3365s();
        if (m3365s != null) {
            m3365s.mo3266p(2131820577);
        }
    }

    @OnClick
    public void onVkImageClick() {
        String string = getString(2131821070);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(string));
        startActivity(intent);
    }

    @OnClick
    public void rateClick() {
        C2779g.m3132A(requireContext());
    }

    @OnClick
    public void shareClick() {
        Activity activity;
        ActivityC0455o requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity);
        Intent action = new Intent().setAction("android.intent.action.SEND");
        action.putExtra("androidx.core.app.EXTRA_CALLING_PACKAGE", requireActivity.getPackageName());
        action.putExtra("android.support.v4.app.EXTRA_CALLING_PACKAGE", requireActivity.getPackageName());
        action.addFlags(524288);
        Context context = requireActivity;
        while (true) {
            Context context2 = context;
            if (!(context2 instanceof ContextWrapper)) {
                activity = null;
                break;
            } else if (context2 instanceof Activity) {
                activity = (Activity) context2;
                break;
            } else {
                context = ((ContextWrapper) context2).getBaseContext();
            }
        }
        if (activity != null) {
            ComponentName componentName = activity.getComponentName();
            action.putExtra("androidx.core.app.EXTRA_CALLING_ACTIVITY", componentName);
            action.putExtra("android.support.v4.app.EXTRA_CALLING_ACTIVITY", componentName);
        }
        action.putExtra("android.intent.extra.TEXT", (CharSequence) getResources().getString(2131820774));
        action.setType("text/plain");
        String string = getResources().getString(2131820773);
        action.setAction("android.intent.action.SEND");
        action.removeExtra("android.intent.extra.STREAM");
        action.setClipData(null);
        action.setFlags(action.getFlags() & (-2));
        requireActivity.startActivity(Intent.createChooser(action, string));
    }

    @OnClick
    public void translationClick() {
        C2107c.m3915q(getContext());
    }
}
