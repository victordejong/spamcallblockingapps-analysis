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
import androidx.fragment.app.C1143x;
import androidx.fragment.app.FragmentActivity;
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
public abstract class BaseListFragment<T> extends C1143x implements BaseContactListDataProvider.OnDataChangedListener<T> {

    /* renamed from: i */
    protected final BaseContactListDataProvider<T> f20302i;

    /* renamed from: k */
    private View f20304k;

    /* renamed from: m */
    private boolean f20306m;

    /* renamed from: n */
    private boolean f20307n;

    /* renamed from: p */
    private View f20309p;

    /* renamed from: j */
    private final ScrollStateTracker f20303j = new ScrollStateTracker();

    /* renamed from: l */
    private boolean f20305l = false;

    /* renamed from: o */
    private boolean f20308o = false;

    /* renamed from: q */
    private int f20310q = 0;

    /* renamed from: r */
    private boolean f20311r = false;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseListFragment$EmptyListViewParam.class */
    protected final class EmptyListViewParam {

        /* renamed from: b */
        private final int f20323b;

        /* renamed from: c */
        private final int f20324c;

        /* renamed from: d */
        private final int f20325d;

        public EmptyListViewParam(int i, int i2, int i3) {
            BaseListFragment.this = r4;
            this.f20324c = i2;
            this.f20323b = i;
            this.f20325d = i3;
        }
    }

    public BaseListFragment() {
        BaseContactListDataProvider<T> m31497a = m31497a();
        this.f20302i = m31497a;
        if (m31497a != null) {
            synchronized (m31497a) {
                m31497a.f20298a.add(this);
            }
            if (m31497a.getData() == null) {
                return;
            }
            mo31492a((List) m31497a.getData(), true);
        }
    }

    /* renamed from: a */
    private void m31496a(final int i) {
        this.f20310q = i;
        if (isLayoutReady()) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseListFragment.5
                @Override // java.lang.Runnable
                public void run() {
                    int i2 = i;
                    if (i2 == 0) {
                        CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseListFragment.5.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (BaseListFragment.this.f20310q == 0) {
                                    BaseListFragment.this.setListEmptyView(BaseListFragment.this.getEmptyListViewLoading());
                                }
                            }
                        }, 100L);
                    } else if (i2 != 1) {
                    } else {
                        BaseListFragment baseListFragment = BaseListFragment.this;
                        baseListFragment.setListEmptyView(baseListFragment.getEmptyListLoaded());
                    }
                }
            });
        }
    }

    /* renamed from: a */
    private static void m31494a(TextView textView, int i) {
        if (i == 0) {
            textView.setText((CharSequence) null);
            textView.setVisibility(8);
            return;
        }
        textView.setText(Activities.getString(i));
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        textView.setVisibility(0);
    }

    /* renamed from: a */
    protected abstract BaseContactListDataProvider<T> m31497a();

    @Override // com.callapp.contacts.activity.base.BaseContactListDataProvider.OnDataChangedListener
    /* renamed from: a */
    public final void mo31492a(final List<T> list, boolean z) {
        final FragmentActivity activity = getActivity();
        if (m31495a(activity)) {
            BaseArrayAdapter<T> listAdapter = getListAdapter();
            if (z || listAdapter == null) {
                activity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseListFragment.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (BaseListFragment.this.m31495a(activity)) {
                            BaseListFragment.this.f20311r = true;
                        }
                    }
                });
            } else if (this.f20305l) {
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
        this.f20305l = false;
        if (list != null) {
            m31496a(1);
        }
    }

    /* renamed from: a */
    protected final boolean m31495a(Activity activity) {
        return Activities.m27696a(activity) && isFragmentAttached();
    }

    protected View getEmptyListLoaded() {
        return this.f20304k;
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

    @Override // androidx.fragment.app.C1143x
    public BaseArrayAdapter<T> getListAdapter() {
        return (BaseArrayAdapter) super.getListAdapter();
    }

    protected boolean isFragmentAttached() {
        return this.f20307n;
    }

    public boolean isLayoutReady() {
        return this.f20306m;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        ListView listView = getListView();
        if (listView != null) {
            listView.setBackgroundColor(ThemeUtils.getColor(2131099686));
            listView.setCacheColorHint(ThemeUtils.getColor(2131099816));
            this.f20303j.setListView(listView);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f20307n = true;
    }

    @Override // androidx.fragment.app.C1143x, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int m27377b;
        this.f20306m = false;
        View inflate = layoutInflater.inflate(getLayoutResourceId(), viewGroup, false);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(2131362685);
        if (linearLayout != null) {
            ImageView imageView = (ImageView) linearLayout.findViewById(2131362695);
            TextView textView = (TextView) linearLayout.findViewById(2131362698);
            TextView textView2 = (TextView) linearLayout.findViewById(2131362697);
            BaseListFragment<T>.EmptyListViewParam emptyListViewParams = getEmptyListViewParams();
            if (emptyListViewParams != null) {
                int i = ((EmptyListViewParam) emptyListViewParams).f20323b;
                if (i == 0 || (m27377b = ThemeUtils.m27377b(getActivity(), i)) == 0) {
                    imageView.setVisibility(4);
                } else {
                    ImageUtils.m27529a(imageView, m27377b, new PorterDuffColorFilter(ThemeUtils.getColor(2131099786), PorterDuff.Mode.SRC_IN));
                    imageView.setVisibility(0);
                }
                m31494a(textView, ((EmptyListViewParam) emptyListViewParams).f20324c);
                m31494a(textView2, ((EmptyListViewParam) emptyListViewParams).f20325d);
            }
        }
        this.f20304k = linearLayout;
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        BaseContactListDataProvider<T> baseContactListDataProvider = this.f20302i;
        if (baseContactListDataProvider != null) {
            synchronized (baseContactListDataProvider) {
                baseContactListDataProvider.f20298a.remove(this);
            }
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.C1143x, androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f20306m = false;
        this.f20309p = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        this.f20307n = false;
        super.onDetach();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f20302i != null) {
            new Task() { // from class: com.callapp.contacts.activity.base.BaseListFragment.2
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    final BaseContactListDataProvider<T> baseContactListDataProvider = BaseListFragment.this.f20302i;
                    CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseContactListDataProvider.1
                        @Override // java.lang.Runnable
                        public void run() {
                            synchronized (this) {
                                OnDataChangedListener[] onDataChangedListenerArr = null;
                                if (CollectionUtils.m26068b(baseContactListDataProvider.f20298a)) {
                                    onDataChangedListenerArr = (OnDataChangedListener[]) baseContactListDataProvider.f20298a.toArray(new OnDataChangedListener[baseContactListDataProvider.f20298a.size()]);
                                }
                                List<T> newData = baseContactListDataProvider.getNewData();
                                boolean z = !Objects.m31915a(newData, baseContactListDataProvider.f20299b);
                                baseContactListDataProvider.f20299b = newData;
                                if (onDataChangedListenerArr != null) {
                                    for (OnDataChangedListener onDataChangedListener : onDataChangedListenerArr) {
                                        if (onDataChangedListener != null) {
                                            onDataChangedListener.mo31492a(newData, z);
                                        }
                                    }
                                }
                            }
                        }
                    });
                }
            }.execute();
        }
        if (this.f20308o) {
            if (this.f20311r) {
                try {
                    final ListView listView = getListView();
                    CallAppApplication.get().m31864b(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseListFragment.1
                        @Override // java.lang.Runnable
                        public void run() {
                            listView.setSelectionAfterHeaderView();
                        }
                    });
                } catch (IllegalStateException e) {
                    CLog.m27606a("scrollToTop");
                }
            }
            this.f20308o = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        FragmentActivity activity = getActivity();
        if (!Activities.m27696a((Activity) activity) || !(activity instanceof BaseActivity) || !((BaseActivity) activity).isUserPressedHomeButton()) {
            return;
        }
        this.f20308o = true;
    }

    @Override // androidx.fragment.app.C1143x, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f20306m = true;
        m31496a(this.f20310q);
    }

    protected void setListEmptyView(View view) {
        if (isLayoutReady()) {
            ListView listView = getListView();
            View emptyView = listView.getEmptyView();
            if (emptyView != null && emptyView != view) {
                emptyView.setVisibility(8);
            }
            listView.setEmptyView(view);
        }
    }
}
