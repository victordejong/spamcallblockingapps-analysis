package com.telguarder.features.intro;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/intro/IntroPageFragmentAdapter.class */
public class IntroPageFragmentAdapter extends FragmentPagerAdapter {
    public static int pos;
    private List<Fragment> myFragments;

    public IntroPageFragmentAdapter(FragmentManager fragmentManager, List<Fragment> list) {
        super(fragmentManager);
        this.myFragments = list;
    }

    public static int getPos() {
        return pos;
    }

    public static void setPos(int i) {
        pos = i;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.myFragments.size();
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        return this.myFragments.get(i);
    }
}
