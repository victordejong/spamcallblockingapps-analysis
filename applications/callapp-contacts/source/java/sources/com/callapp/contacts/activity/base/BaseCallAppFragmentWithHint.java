package com.callapp.contacts.activity.base;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.activity.callappplus.CallAppPlusTopHint;
import com.callapp.contacts.activity.viewcontroller.TopHintViewController;
import com.callapp.contacts.activity.viewcontroller.ViewController;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseCallAppFragmentWithHint.class */
public abstract class BaseCallAppFragmentWithHint<T> extends BaseMultiSelectListFragment<T> {

    /* renamed from: a */
    private View f20269a;

    /* renamed from: b */
    private ViewController f20270b;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType.class */
    public enum HintType {
        REGULAR,
        CALLAPP_PLUS
    }

    /* renamed from: a */
    protected abstract boolean mo29775a();

    /* renamed from: c */
    public final void m31508c() {
        View view = this.f20269a;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseMultiSelectListFragment
    public void filterReq(CharSequence charSequence, boolean z) {
    }

    protected abstract TopHintViewController.HintBuilder getHintBuilder();

    protected abstract HintType getHintType();

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    protected int getLayoutResId() {
        return 2131558838;
    }

    /* renamed from: n_ */
    public final void m31507n_() {
        View view = this.f20269a;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (mo29775a()) {
            TopHintViewController.HintBuilder hintBuilder = getHintBuilder();
            HintType hintType = getHintType();
            ViewGroup viewGroup = (ViewGroup) view.findViewById(2131362967);
            if (hintType.equals(HintType.CALLAPP_PLUS)) {
                this.f20270b = new CallAppPlusTopHint(new WeakReference(getActivity()));
            } else {
                this.f20270b = new TopHintViewController(view.getContext(), hintBuilder);
            }
            View rootView = this.f20270b.getRootView();
            this.f20269a = rootView;
            viewGroup.addView(rootView);
        }
        hideLoadingProgress();
    }
}
