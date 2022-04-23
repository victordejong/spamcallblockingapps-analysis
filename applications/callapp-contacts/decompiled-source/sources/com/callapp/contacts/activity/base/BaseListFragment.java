package com.callapp.contacts.activity.base;

import android.app.Activity;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.x;
import com.callapp.common.util.Objects;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseContactListDataProvider;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.util.CollectionUtils;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseListFragment.class */
public abstract class BaseListFragment<T> extends x implements BaseContactListDataProvider.OnDataChangedListener<T> {
    protected final BaseContactListDataProvider<T> i;
    private View k;
    private boolean m;
    private boolean n;
    private View p;
    private final ScrollStateTracker j = new ScrollStateTracker();
    private boolean l = false;
    private boolean o = false;
    private int q = 0;
    private boolean r = false;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseListFragment$EmptyListViewParam.class */
    protected final class EmptyListViewParam {

        /* renamed from: b  reason: collision with root package name */
        private final int f11131b;

        /* renamed from: c  reason: collision with root package name */
        private final int f11132c;

        /* renamed from: d  reason: collision with root package name */
        private final int f11133d;

        public EmptyListViewParam(int i, int i2, int i3) {
            this.f11132c = i2;
            this.f11131b = i;
            this.f11133d = i3;
        }
    }

    public BaseListFragment() {
        BaseContactListDataProvider<T> a2 = a();
        this.i = a2;
        if (a2 != null) {
            synchronized (a2) {
                a2.f11116a.add(this);
            }
            if (a2.getData() != null) {
                a((List) a2.getData(), true);
            }
        }
    }

    private void a(final int i) {
        this.q = i;
        if (isLayoutReady()) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseListFragment.5
                @Override // java.lang.Runnable
                public void run() {
                    int i2 = i;
                    if (i2 == 0) {
                        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseListFragment.5.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (BaseListFragment.this.q == 0) {
                                    BaseListFragment.this.setListEmptyView(BaseListFragment.this.getEmptyListViewLoading());
                                }
                            }
                        }, 100L);
                    } else if (i2 == 1) {
                        BaseListFragment baseListFragment = BaseListFragment.this;
                        baseListFragment.setListEmptyView(baseListFragment.getEmptyListLoaded());
                    }
                }
            });
        }
    }

    private static void a(TextView textView, int i) {
        if (i != 0) {
            textView.setText(Activities.getString(i));
            textView.setTextColor(ThemeUtils.getColor(2131100140));
            textView.setVisibility(0);
            return;
        }
        textView.setText((CharSequence) null);
        textView.setVisibility(8);
    }

    protected abstract BaseContactListDataProvider<T> a();

    @Override // com.callapp.contacts.activity.base.BaseContactListDataProvider.OnDataChangedListener
    public final void a(final List<T> list, boolean z) {
        final FragmentActivity activity = getActivity();
        if (a(activity)) {
            BaseArrayAdapter<T> listAdapter = getListAdapter();
            if (z || listAdapter == null) {
                activity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseListFragment.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (BaseListFragment.this.a(activity)) {
                            BaseListFragment.this.r = true;
                        }
                    }
                });
            } else if (this.l) {
                activity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseListFragment.4
                    @Override // java.lang.Runnable
                    public void run() {
                        BaseArrayAdapter<T> listAdapter2 = BaseListFragment.this.getListAdapter();
                        if (listAdapter2 != null) {
                            listAdapter2.notifyDataSetChanged();
                        }
                    }
                });
            }
        }
        this.l = false;
        if (list != null) {
            a(1);
        }
    }

    protected final boolean a(Activity activity) {
        return Activities.a(activity) && isFragmentAttached();
    }

    protected View getEmptyListLoaded() {
        return this.k;
    }

    protected View getEmptyListViewLoading() {
        if (getActivity() != null) {
            return getActivity().findViewById(2131363575);
        }
        return null;
    }

    protected BaseListFragment<T>.EmptyListViewParam getEmptyListViewParams() {
        return null;
    }

    protected abstract int getLayoutResourceId();

    @Override // androidx.fragment.app.x
    public BaseArrayAdapter<T> getListAdapter() {
        return (BaseArrayAdapter) super.getListAdapter();
    }

    protected boolean isFragmentAttached() {
        return this.n;
    }

    public boolean isLayoutReady() {
        return this.m;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        ListView listView = getListView();
        if (listView != null) {
            listView.setBackgroundColor(ThemeUtils.getColor(2131099686));
            listView.setCacheColorHint(ThemeUtils.getColor(2131099816));
            this.j.setListView(listView);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.n = true;
    }

    @Override // androidx.fragment.app.x, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int b2;
        this.m = false;
        View inflate = layoutInflater.inflate(getLayoutResourceId(), viewGroup, false);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(2131362685);
        if (linearLayout != null) {
            ImageView imageView = (ImageView) linearLayout.findViewById(2131362695);
            TextView textView = (TextView) linearLayout.findViewById(2131362698);
            TextView textView2 = (TextView) linearLayout.findViewById(2131362697);
            BaseListFragment<T>.EmptyListViewParam emptyListViewParams = getEmptyListViewParams();
            if (emptyListViewParams != null) {
                int i = ((EmptyListViewParam) emptyListViewParams).f11131b;
                if (i == 0 || (b2 = ThemeUtils.b(getActivity(), i)) == 0) {
                    imageView.setVisibility(4);
                } else {
                    ImageUtils.a(imageView, b2, new PorterDuffColorFilter(ThemeUtils.getColor(2131099786), PorterDuff.Mode.SRC_IN));
                    imageView.setVisibility(0);
                }
                a(textView, ((EmptyListViewParam) emptyListViewParams).f11132c);
                a(textView2, ((EmptyListViewParam) emptyListViewParams).f11133d);
            }
        }
        this.k = linearLayout;
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        BaseContactListDataProvider<T> baseContactListDataProvider = this.i;
        if (baseContactListDataProvider != null) {
            synchronized (baseContactListDataProvider) {
                baseContactListDataProvider.f11116a.remove(this);
            }
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.x, androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.m = false;
        this.p = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        this.n = false;
        super.onDetach();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.i != null) {
            new Task() { // from class: com.callapp.contacts.activity.base.BaseListFragment.2
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    final BaseContactListDataProvider<T> baseContactListDataProvider = BaseListFragment.this.i;
                    CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseContactListDataProvider.1
                        @Override // java.lang.Runnable
                        public void run() {
                            synchronized (this) {
                                OnDataChangedListener[] onDataChangedListenerArr = null;
                                if (CollectionUtils.b(baseContactListDataProvider.f11116a)) {
                                    onDataChangedListenerArr = (OnDataChangedListener[]) baseContactListDataProvider.f11116a.toArray(new OnDataChangedListener[baseContactListDataProvider.f11116a.size()]);
                                }
                                List<T> newData = baseContactListDataProvider.getNewData();
                                boolean z = !Objects.a(newData, baseContactListDataProvider.f11117b);
                                baseContactListDataProvider.f11117b = newData;
                                if (onDataChangedListenerArr != null) {
                                    for (OnDataChangedListener onDataChangedListener : onDataChangedListenerArr) {
                                        if (onDataChangedListener != null) {
                                            onDataChangedListener.a(newData, z);
                                        }
                                    }
                                }
                            }
                        }
                    });
                }
            }.execute();
        }
        if (this.o) {
            if (this.r) {
                try {
                    final ListView listView = getListView();
                    CallAppApplication.get().b(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseListFragment.1
                        @Override // java.lang.Runnable
                        public void run() {
                            listView.setSelectionAfterHeaderView();
                        }
                    });
                } catch (IllegalStateException e) {
                    CLog.a("scrollToTop");
                }
            }
            this.o = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        FragmentActivity activity = getActivity();
        if (Activities.a((Activity) activity) && (activity instanceof BaseActivity) && ((BaseActivity) activity).isUserPressedHomeButton()) {
            this.o = true;
        }
    }

    @Override // androidx.fragment.app.x, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.m = true;
        a(this.q);
    }

    protected void setListEmptyView(View view) {
        if (isLayoutReady()) {
            ListView listView = getListView();
            View emptyView = listView.getEmptyView();
            if (!(emptyView == null || emptyView == view)) {
                emptyView.setVisibility(8);
            }
            listView.setEmptyView(view);
        }
    }
}
