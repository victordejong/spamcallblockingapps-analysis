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

    /* renamed from: a  reason: collision with root package name */
    private View f11097a;

    /* renamed from: b  reason: collision with root package name */
    private ViewController f11098b;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType.class */
    public enum HintType {
        REGULAR,
        CALLAPP_PLUS
    }

    protected abstract boolean a();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c() {
        View view = this.f11097a;
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

    /* JADX INFO: Access modifiers changed from: protected */
    public final void n_() {
        View view = this.f11097a;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (a()) {
            TopHintViewController.HintBuilder hintBuilder = getHintBuilder();
            HintType hintType = getHintType();
            ViewGroup viewGroup = (ViewGroup) view.findViewById(2131362967);
            if (hintType.equals(HintType.CALLAPP_PLUS)) {
                this.f11098b = new CallAppPlusTopHint(new WeakReference(getActivity()));
            } else {
                this.f11098b = new TopHintViewController(view.getContext(), hintBuilder);
            }
            View rootView = this.f11098b.getRootView();
            this.f11097a = rootView;
            viewGroup.addView(rootView);
        }
        hideLoadingProgress();
    }
}
