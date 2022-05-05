package com.android.contacts.detail;

import android.app.Activity;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ImageButton;
import com.android.contacts.activities.ContactDetailActivity;
import com.android.contacts.detail.ContactDetailFragment;
import com.android.contacts.model.c;
import com.android.contacts.util.UriUtils;
import com.android.contacts.v;
import com.android.contacts.widget.TransitionAnimationView;
/* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailLayoutController.class */
public class ContactDetailLayoutController {
    private static final String KEY_CONTACT_HAS_UPDATES = "contactHasUpdates";
    private static final String KEY_CONTACT_URI = "contactUri";
    private int SCROLL_UP_MARGIN_TOP;
    private final int SINGLE_PANE_FADE_IN_DURATION = 275;
    private final Activity mActivity;
    private c mContactData;
    private final ContactDetailFragment.Listener mContactDetailFragmentListener;
    private Uri mContactUri;
    private AsusContactDetailCoverContainer mCoverContainer;
    private View mCoverContainerView;
    private ContactDetailFragment mDetailFragment;
    private View mDetailFragmentView;
    private final ContactDetailFragmentCarousel mFragmentCarousel;
    private final FragmentManager mFragmentManager;
    private final LayoutInflater mLayoutInflater;
    private final TransitionAnimationView mTransitionAnimationView;
    private final View mViewContainer;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener.class */
    public final class VerticalScrollListener implements AbsListView.OnScrollListener {
        public VerticalScrollListener() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
            if (i != 0) {
                if (ContactDetailLayoutController.this.mCoverContainer != null) {
                    ContactDetailLayoutController.this.mCoverContainer.setYPosition(-ContactDetailLayoutController.this.SCROLL_UP_MARGIN_TOP);
                }
            } else if (absListView.getChildAt(i) != null) {
                int max = Math.max((int) absListView.getChildAt(i).getY(), -ContactDetailLayoutController.this.SCROLL_UP_MARGIN_TOP);
                if (ContactDetailLayoutController.this.mCoverContainer != null) {
                    ContactDetailLayoutController.this.mCoverContainer.setYPosition(max);
                }
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 0) {
                ContactDetailLayoutController.this.syncScrollStateBetweenLists();
                if (ContactDetailLayoutController.this.mDetailFragment != null) {
                    ContactDetailLayoutController.this.mDetailFragment.setIsScrolling(false);
                    if (ContactDetailLayoutController.this.mDetailFragment.getIsNeedToUpdatePreferSimIcon()) {
                        ContactDetailLayoutController.this.mDetailFragment.updateAdapter();
                        ContactDetailLayoutController.this.mDetailFragment.setIsNeedToUpdatePreferSimIcon(false);
                    }
                }
            } else if (ContactDetailLayoutController.this.mDetailFragment != null) {
                ContactDetailLayoutController.this.mDetailFragment.setIsScrolling(true);
            }
        }
    }

    public ContactDetailLayoutController(Activity activity, Bundle bundle, FragmentManager fragmentManager, TransitionAnimationView transitionAnimationView, View view, ContactDetailFragment.Listener listener) {
        this.SCROLL_UP_MARGIN_TOP = 0;
        if (fragmentManager == null) {
            throw new IllegalStateException("Cannot initialize a ContactDetailLayoutController without a non-null FragmentManager");
        }
        this.mActivity = activity;
        this.mLayoutInflater = (LayoutInflater) activity.getSystemService("layout_inflater");
        this.mFragmentManager = fragmentManager;
        this.mContactDetailFragmentListener = listener;
        this.mTransitionAnimationView = transitionAnimationView;
        this.mViewContainer = view;
        this.mFragmentCarousel = null;
        this.mDetailFragmentView = view.findViewById(2131296261);
        this.mCoverContainerView = view.findViewById(2131296614);
        if (this.mCoverContainerView != null) {
            this.mCoverContainer = new AsusContactDetailCoverContainer(this.mActivity, this.mCoverContainerView);
        }
        this.SCROLL_UP_MARGIN_TOP = this.mActivity.getResources().getDimensionPixelSize(2131099997);
        initialize(bundle);
    }

    private void initialize(Bundle bundle) {
        boolean z = true;
        this.mDetailFragment = (ContactDetailFragment) this.mFragmentManager.findFragmentByTag(ContactDetailViewPagerAdapter.ABOUT_FRAGMENT_TAG);
        if (this.mDetailFragment == null) {
            this.mDetailFragment = new ContactDetailFragment();
            z = false;
        }
        this.mDetailFragment.setListener(this.mContactDetailFragmentListener);
        this.mDetailFragment.setVerticalScrollListener(new VerticalScrollListener());
        v.a(this.mActivity, this.mDetailFragment);
        if (bundle != null) {
            this.mContactUri = (Uri) bundle.getParcelable(KEY_CONTACT_URI);
        }
        if (!z) {
            FragmentTransaction beginTransaction = this.mFragmentManager.beginTransaction();
            beginTransaction.add(2131296261, this.mDetailFragment, ContactDetailViewPagerAdapter.ABOUT_FRAGMENT_TAG);
            beginTransaction.commitAllowingStateLoss();
        }
        if (bundle != null) {
            showContactWithoutUpdates();
        }
    }

    private void resetFragments() {
        this.mDetailFragment.resetAdapter();
    }

    private void showContactWithoutUpdates() {
        if (this.mContactData != null) {
            Uri uri = this.mContactUri;
            this.mContactUri = this.mContactData.f2023b;
            if (!UriUtils.areEqual(uri, this.mContactUri)) {
                resetFragments();
            }
            this.mDetailFragment.setData(this.mContactUri, this.mContactData);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncScrollStateBetweenLists() {
        this.mDetailFragment.requestToMoveToOffset((int) this.mCoverContainer.getYPosition(), -this.SCROLL_UP_MARGIN_TOP);
    }

    private void unbindViews(View view) {
        if (view != null) {
            if (view.getBackground() != null) {
                view.getBackground().setCallback(null);
            }
            if ((view instanceof ImageButton) && ((ImageButton) view).getDrawable() != null) {
                ((ImageButton) view).getDrawable().setCallback(null);
            }
            if (view instanceof ViewGroup) {
                for (int i = 0; i < ((ViewGroup) view).getChildCount(); i++) {
                    unbindViews(((ViewGroup) view).getChildAt(i));
                }
            }
        }
    }

    public ContactDetailFragment getContactDetailFragment() {
        return this.mDetailFragment;
    }

    public AsusContactDetailCoverContainer getCoverContainer() {
        return this.mCoverContainer;
    }

    public ContactDetailActivity.FragmentKeyListener getCurrentPage() {
        return this.mDetailFragment;
    }

    public void onSaveInstanceState(Bundle bundle) {
        bundle.putParcelable(KEY_CONTACT_URI, this.mContactUri);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setContactData(com.android.contacts.model.c r9) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.detail.ContactDetailLayoutController.setContactData(com.android.contacts.model.c):void");
    }

    public void showEmptyState() {
        this.mDetailFragment.setShowStaticPhoto(false);
        this.mDetailFragment.showEmptyState();
        if (this.mCoverContainerView != null) {
            this.mCoverContainerView.setVisibility(8);
        }
    }

    public void unbindDetailControler() {
        unbindViews(this.mDetailFragmentView);
        unbindViews(this.mCoverContainerView);
        this.mDetailFragmentView = null;
        this.mCoverContainerView = null;
        if (this.mCoverContainer != null) {
            this.mCoverContainer.recycleCoverBitmap();
            this.mCoverContainer.recycle();
            this.mCoverContainer = null;
        }
    }
}
