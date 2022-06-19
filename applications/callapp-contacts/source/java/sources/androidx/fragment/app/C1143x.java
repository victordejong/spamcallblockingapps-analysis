package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
/* renamed from: androidx.fragment.app.x */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/x.class */
public class C1143x extends Fragment {

    /* renamed from: a */
    ListAdapter f4502a;

    /* renamed from: b */
    ListView f4503b;

    /* renamed from: c */
    View f4504c;

    /* renamed from: d */
    TextView f4505d;

    /* renamed from: e */
    View f4506e;

    /* renamed from: f */
    View f4507f;

    /* renamed from: g */
    CharSequence f4508g;

    /* renamed from: h */
    boolean f4509h;

    /* renamed from: i */
    private final Handler f4510i = new Handler();

    /* renamed from: j */
    private final Runnable f4511j = new Runnable() { // from class: androidx.fragment.app.x.1
        @Override // java.lang.Runnable
        public final void run() {
            C1143x.this.f4503b.focusableViewAvailable(C1143x.this.f4503b);
        }
    };

    /* renamed from: k */
    private final AdapterView.OnItemClickListener f4512k = new AdapterView.OnItemClickListener() { // from class: androidx.fragment.app.x.2
        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        }
    };

    /* renamed from: a */
    private void m43488a() {
        if (this.f4503b != null) {
            return;
        }
        View view = getView();
        if (view == null) {
            throw new IllegalStateException("Content view not yet created");
        }
        if (view instanceof ListView) {
            this.f4503b = (ListView) view;
        } else {
            TextView textView = (TextView) view.findViewById(16711681);
            this.f4505d = textView;
            if (textView == null) {
                this.f4504c = view.findViewById(16908292);
            } else {
                textView.setVisibility(8);
            }
            this.f4506e = view.findViewById(16711682);
            this.f4507f = view.findViewById(16711683);
            View findViewById = view.findViewById(16908298);
            if (!(findViewById instanceof ListView)) {
                if (findViewById != null) {
                    throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
                }
                throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
            }
            ListView listView = (ListView) findViewById;
            this.f4503b = listView;
            View view2 = this.f4504c;
            if (view2 != null) {
                listView.setEmptyView(view2);
            } else {
                CharSequence charSequence = this.f4508g;
                if (charSequence != null) {
                    this.f4505d.setText(charSequence);
                    this.f4503b.setEmptyView(this.f4505d);
                }
            }
        }
        this.f4509h = true;
        this.f4503b.setOnItemClickListener(this.f4512k);
        ListAdapter listAdapter = this.f4502a;
        if (listAdapter != null) {
            this.f4502a = null;
            setListAdapter(listAdapter);
        } else if (this.f4506e != null) {
            m43487a(false, false);
        }
        this.f4510i.post(this.f4511j);
    }

    /* renamed from: a */
    private void m43487a(boolean z, boolean z2) {
        m43488a();
        View view = this.f4506e;
        if (view != null) {
            if (this.f4509h == z) {
                return;
            }
            this.f4509h = z;
            if (z) {
                if (z2) {
                    view.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432577));
                    this.f4507f.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432576));
                } else {
                    view.clearAnimation();
                    this.f4507f.clearAnimation();
                }
                this.f4506e.setVisibility(8);
                this.f4507f.setVisibility(0);
                return;
            }
            if (z2) {
                view.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432576));
                this.f4507f.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432577));
            } else {
                view.clearAnimation();
                this.f4507f.clearAnimation();
            }
            this.f4506e.setVisibility(0);
            this.f4507f.setVisibility(8);
            return;
        }
        throw new IllegalStateException("Can't be used with a custom content view");
    }

    public ListAdapter getListAdapter() {
        return this.f4502a;
    }

    public ListView getListView() {
        m43488a();
        return this.f4503b;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Context requireContext = requireContext();
        FrameLayout frameLayout = new FrameLayout(requireContext);
        LinearLayout linearLayout = new LinearLayout(requireContext);
        linearLayout.setId(16711682);
        linearLayout.setOrientation(1);
        linearLayout.setVisibility(8);
        linearLayout.setGravity(17);
        linearLayout.addView(new ProgressBar(requireContext, null, 16842874), new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(requireContext);
        frameLayout2.setId(16711683);
        TextView textView = new TextView(requireContext);
        textView.setId(16711681);
        textView.setGravity(17);
        frameLayout2.addView(textView, new FrameLayout.LayoutParams(-1, -1));
        ListView listView = new ListView(requireContext);
        listView.setId(16908298);
        listView.setDrawSelectorOnTop(false);
        frameLayout2.addView(listView, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(frameLayout2, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f4510i.removeCallbacks(this.f4511j);
        this.f4503b = null;
        this.f4509h = false;
        this.f4507f = null;
        this.f4506e = null;
        this.f4504c = null;
        this.f4505d = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        m43488a();
    }

    public void setListAdapter(ListAdapter listAdapter) {
        boolean z = false;
        boolean z2 = this.f4502a != null;
        this.f4502a = listAdapter;
        ListView listView = this.f4503b;
        if (listView != null) {
            listView.setAdapter(listAdapter);
            if (this.f4509h || z2) {
                return;
            }
            if (requireView().getWindowToken() != null) {
                z = true;
            }
            m43487a(true, z);
        }
    }
}
