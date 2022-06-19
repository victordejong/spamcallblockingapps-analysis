package com.telguarder.features.intro;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import com.telguarder.C2083R;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/intro/IntroPage2.class */
public class IntroPage2 extends Fragment {
    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(C2083R.layout.fragment_intro_page2, viewGroup, false);
        if (((IntroActivity) getActivity()).mBottomPaddingOffset > 0) {
            LinearLayout linearLayout = (LinearLayout) inflate.findViewById(C2083R.C2086id.bottom_layout);
            linearLayout.setPadding(linearLayout.getPaddingStart(), linearLayout.getPaddingTop(), linearLayout.getPaddingEnd(), linearLayout.getPaddingBottom() + ((IntroActivity) getActivity()).mBottomPaddingOffset);
        }
        return inflate;
    }
}
