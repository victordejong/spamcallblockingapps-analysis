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
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/x.class */
public class x extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    ListAdapter f2381a;

    /* renamed from: b  reason: collision with root package name */
    ListView f2382b;

    /* renamed from: c  reason: collision with root package name */
    View f2383c;

    /* renamed from: d  reason: collision with root package name */
    TextView f2384d;
    View e;
    View f;
    CharSequence g;
    boolean h;
    private final Handler i = new Handler();
    private final Runnable j = new Runnable() { // from class: androidx.fragment.app.x.1
        @Override // java.lang.Runnable
        public final void run() {
            x.this.f2382b.focusableViewAvailable(x.this.f2382b);
        }
    };
    private final AdapterView.OnItemClickListener k = new AdapterView.OnItemClickListener() { // from class: androidx.fragment.app.x.2
        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        }
    };

    private void a() {
        if (this.f2382b == null) {
            View view = getView();
            if (view != null) {
                if (view instanceof ListView) {
                    this.f2382b = (ListView) view;
                } else {
                    TextView textView = (TextView) view.findViewById(16711681);
                    this.f2384d = textView;
                    if (textView == null) {
                        this.f2383c = view.findViewById(16908292);
                    } else {
                        textView.setVisibility(8);
                    }
                    this.e = view.findViewById(16711682);
                    this.f = view.findViewById(16711683);
                    View findViewById = view.findViewById(16908298);
                    if (findViewById instanceof ListView) {
                        ListView listView = (ListView) findViewById;
                        this.f2382b = listView;
                        View view2 = this.f2383c;
                        if (view2 != null) {
                            listView.setEmptyView(view2);
                        } else {
                            CharSequence charSequence = this.g;
                            if (charSequence != null) {
                                this.f2384d.setText(charSequence);
                                this.f2382b.setEmptyView(this.f2384d);
                            }
                        }
                    } else if (findViewById == null) {
                        throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
                    } else {
                        throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
                    }
                }
                this.h = true;
                this.f2382b.setOnItemClickListener(this.k);
                ListAdapter listAdapter = this.f2381a;
                if (listAdapter != null) {
                    this.f2381a = null;
                    setListAdapter(listAdapter);
                } else if (this.e != null) {
                    a(false, false);
                }
                this.i.post(this.j);
                return;
            }
            throw new IllegalStateException("Content view not yet created");
        }
    }

    private void a(boolean z, boolean z2) {
        a();
        View view = this.e;
        if (view == null) {
            throw new IllegalStateException("Can't be used with a custom content view");
        } else if (this.h != z) {
            this.h = z;
            if (z) {
                if (z2) {
                    view.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432577));
                    this.f.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432576));
                } else {
                    view.clearAnimation();
                    this.f.clearAnimation();
                }
                this.e.setVisibility(8);
                this.f.setVisibility(0);
                return;
            }
            if (z2) {
                view.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432576));
                this.f.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432577));
            } else {
                view.clearAnimation();
                this.f.clearAnimation();
            }
            this.e.setVisibility(0);
            this.f.setVisibility(8);
        }
    }

    public ListAdapter getListAdapter() {
        return this.f2381a;
    }

    public ListView getListView() {
        a();
        return this.f2382b;
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
        this.i.removeCallbacks(this.j);
        this.f2382b = null;
        this.h = false;
        this.f = null;
        this.e = null;
        this.f2383c = null;
        this.f2384d = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        a();
    }

    public void setListAdapter(ListAdapter listAdapter) {
        boolean z = false;
        boolean z2 = this.f2381a != null;
        this.f2381a = listAdapter;
        ListView listView = this.f2382b;
        if (listView != null) {
            listView.setAdapter(listAdapter);
            if (!this.h && !z2) {
                if (requireView().getWindowToken() != null) {
                    z = true;
                }
                a(true, z);
            }
        }
    }
}
