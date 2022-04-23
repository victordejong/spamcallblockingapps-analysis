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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/ListFragment.class */
public class ListFragment extends Fragment {

    /* renamed from: f */
    private final Handler f3926f = new Handler();

    /* renamed from: g */
    private final Runnable f3927g = new Runnable() { // from class: androidx.fragment.app.ListFragment.1
        @Override // java.lang.Runnable
        public void run() {
            ListView listView = ListFragment.this.f3930j;
            listView.focusableViewAvailable(listView);
        }
    };

    /* renamed from: h */
    private final AdapterView.OnItemClickListener f3928h = new AdapterView.OnItemClickListener() { // from class: androidx.fragment.app.ListFragment.2
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            ListFragment.this.m18278H0((ListView) adapterView, view, i, j);
        }
    };

    /* renamed from: i */
    ListAdapter f3929i;

    /* renamed from: j */
    ListView f3930j;

    /* renamed from: k */
    View f3931k;

    /* renamed from: l */
    TextView f3932l;

    /* renamed from: m */
    View f3933m;

    /* renamed from: n */
    View f3934n;

    /* renamed from: o */
    CharSequence f3935o;

    /* renamed from: p */
    boolean f3936p;

    /* renamed from: G0 */
    private void m18279G0() {
        if (this.f3930j == null) {
            View view = getView();
            if (view != null) {
                if (view instanceof ListView) {
                    this.f3930j = (ListView) view;
                } else {
                    TextView textView = (TextView) view.findViewById(16711681);
                    this.f3932l = textView;
                    if (textView == null) {
                        this.f3931k = view.findViewById(16908292);
                    } else {
                        textView.setVisibility(8);
                    }
                    this.f3933m = view.findViewById(16711682);
                    this.f3934n = view.findViewById(16711683);
                    View findViewById = view.findViewById(16908298);
                    if (findViewById instanceof ListView) {
                        ListView listView = (ListView) findViewById;
                        this.f3930j = listView;
                        View view2 = this.f3931k;
                        if (view2 != null) {
                            listView.setEmptyView(view2);
                        } else {
                            CharSequence charSequence = this.f3935o;
                            if (charSequence != null) {
                                this.f3932l.setText(charSequence);
                                this.f3930j.setEmptyView(this.f3932l);
                            }
                        }
                    } else if (findViewById == null) {
                        throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
                    } else {
                        throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
                    }
                }
                this.f3936p = true;
                this.f3930j.setOnItemClickListener(this.f3928h);
                ListAdapter listAdapter = this.f3929i;
                if (listAdapter != null) {
                    this.f3929i = null;
                    m18277I0(listAdapter);
                } else if (this.f3933m != null) {
                    m18276J0(false, false);
                }
                this.f3926f.post(this.f3927g);
                return;
            }
            throw new IllegalStateException("Content view not yet created");
        }
    }

    /* renamed from: J0 */
    private void m18276J0(boolean z, boolean z2) {
        m18279G0();
        View view = this.f3933m;
        if (view == null) {
            throw new IllegalStateException("Can't be used with a custom content view");
        } else if (this.f3936p != z) {
            this.f3936p = z;
            if (z) {
                if (z2) {
                    view.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432577));
                    this.f3934n.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432576));
                } else {
                    view.clearAnimation();
                    this.f3934n.clearAnimation();
                }
                this.f3933m.setVisibility(8);
                this.f3934n.setVisibility(0);
                return;
            }
            if (z2) {
                view.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432576));
                this.f3934n.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432577));
            } else {
                view.clearAnimation();
                this.f3934n.clearAnimation();
            }
            this.f3933m.setVisibility(0);
            this.f3934n.setVisibility(8);
        }
    }

    /* renamed from: H0 */
    public void m18278H0(@NonNull ListView listView, @NonNull View view, int i, long j) {
    }

    /* renamed from: I0 */
    public void m18277I0(@Nullable ListAdapter listAdapter) {
        boolean z = false;
        boolean z2 = this.f3929i != null;
        this.f3929i = listAdapter;
        ListView listView = this.f3930j;
        if (listView != null) {
            listView.setAdapter(listAdapter);
            if (!this.f3936p && !z2) {
                if (requireView().getWindowToken() != null) {
                    z = true;
                }
                m18276J0(true, z);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
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
        this.f3926f.removeCallbacks(this.f3927g);
        this.f3930j = null;
        this.f3936p = false;
        this.f3934n = null;
        this.f3933m = null;
        this.f3931k = null;
        this.f3932l = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        m18279G0();
    }
}
