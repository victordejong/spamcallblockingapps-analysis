package com.android.contacts.detail;

import android.os.Parcelable;
import android.support.v4.view.p;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailViewPagerAdapter.class */
public class ContactDetailViewPagerAdapter extends p {
    public static final String ABOUT_FRAGMENT_TAG = "view-pager-about-fragment";
    private static final int INDEX_ABOUT_FRAGMENT = 0;
    private static final int INDEX_UPDATES_FRAGMENT = 1;
    private static final int MAX_FRAGMENT_VIEW_COUNT = 2;
    public static final String UPDATES_FRAGMENT_TAG = "view-pager-updates-fragment";
    private View mAboutFragmentView;
    private View mUpdatesFragmentView;
    private boolean mHasUpdates = false;
    private int mFragmentViewCount = 2;

    @Override // android.support.v4.view.p
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        ((View) obj).setVisibility(8);
    }

    public void enableSwipe(boolean z) {
        this.mFragmentViewCount = z ? 2 : 1;
        notifyDataSetChanged();
    }

    @Override // android.support.v4.view.p
    public void finishUpdate(ViewGroup viewGroup) {
    }

    @Override // android.support.v4.view.p
    public int getCount() {
        return this.mFragmentViewCount;
    }

    @Override // android.support.v4.view.p
    public int getItemPosition(Object obj) {
        int i = 1;
        if (obj == this.mAboutFragmentView) {
            i = 0;
        } else if (obj != this.mUpdatesFragmentView || this.mFragmentViewCount <= 1) {
            i = -2;
        }
        return i;
    }

    @Override // android.support.v4.view.p
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        View view;
        switch (i) {
            case 0:
                this.mAboutFragmentView.setVisibility(0);
                view = this.mAboutFragmentView;
                return view;
            case 1:
                if (this.mHasUpdates) {
                    this.mUpdatesFragmentView.setVisibility(0);
                    view = this.mUpdatesFragmentView;
                    return view;
                }
                throw new IllegalArgumentException("Invalid position: " + i);
            default:
                throw new IllegalArgumentException("Invalid position: " + i);
        }
    }

    @Override // android.support.v4.view.p
    public boolean isViewFromObject(View view, Object obj) {
        return ((View) obj) == view;
    }

    @Override // android.support.v4.view.p
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Override // android.support.v4.view.p
    public Parcelable saveState() {
        return null;
    }

    public void setAboutFragmentView(View view) {
        this.mAboutFragmentView = view;
    }

    public void setFragmentViewCount(int i) {
        int i2;
        if (i <= 0) {
            i2 = 1;
        } else {
            i2 = i;
            if (i > 2) {
                i2 = 2;
            }
        }
        this.mFragmentViewCount = i2;
        notifyDataSetChanged();
    }

    public void setHasUpdates(boolean z) {
        this.mHasUpdates = z;
    }

    public void setUpdatesFragmentView(View view) {
        this.mUpdatesFragmentView = view;
    }

    @Override // android.support.v4.view.p
    public void startUpdate(ViewGroup viewGroup) {
    }
}
