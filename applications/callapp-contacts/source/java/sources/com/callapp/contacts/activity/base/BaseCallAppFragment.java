package com.callapp.contacts.activity.base;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.presenter.bottombar.BottomBarScrollListener;
import com.callapp.contacts.activity.contact.list.ViewPagerManager;
import com.callapp.contacts.activity.decoration.DefaultMarginItemSpacingDecoration;
import com.callapp.contacts.activity.decoration.FabSpaceItemDecoration;
import com.callapp.contacts.activity.fastscroll.FastScrollRecyclerView;
import com.callapp.contacts.activity.interfaces.DataFragmentsEvents;
import com.callapp.contacts.activity.interfaces.FragmentDataType;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.activity.interfaces.NotifyDataChangedListener;
import com.callapp.contacts.activity.interfaces.SuperSkinWizardScrollListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.model.DataChangedInfo;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.util.StringUtils;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseCallAppFragment.class */
public abstract class BaseCallAppFragment<T> extends Fragment implements DataFragmentsEvents, FragmentDataType {
    public static final long DEFAULT_TIME_USER_IS_NEW = 3;
    public T data;
    private ViewGroup emptyViewContainer;
    private InvalidateDataListener invalidateDataListener;
    protected boolean isDataLoaded;
    protected ProgressBar loadingProgressBar;
    private NotifyDataChangedListener notifyDataChangedListener;
    private OnScrollListener onScrollListenerFactory;
    public BaseCallAppAdapter originalAdapter;
    public CallAppMoPubRecyclerAdapter recyclerAdapter;
    public RecyclerView recyclerView;
    protected StoreItemAssetManager storeItemAssetManager;
    public ViewPagerManager viewPagerManager;
    private final ScrollRecyclerStateTracker scrollStateTracker = new ScrollRecyclerStateTracker();
    private final RecyclerView.AbstractC2629c observer = new RecyclerView.AbstractC2629c() { // from class: com.callapp.contacts.activity.base.BaseCallAppFragment.1
        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2629c
        public void onChanged() {
            super.onChanged();
            BaseCallAppFragment.this.toggleEmptyViewIfNeeded();
        }
    };
    private Set<EventBusManager.CallAppDataType> invalidateDataSet = new HashSet();
    private Set<DataChangedInfo> dataChangedInfoSet = new HashSet();
    private boolean wasViewed = false;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData.class */
    public static class EmptyViewData {

        /* renamed from: a */
        private final int f20266a;

        /* renamed from: b */
        private final CharSequence f20267b;

        /* renamed from: c */
        private final CharSequence f20268c;

        public EmptyViewData(int i, CharSequence charSequence) {
            this(i, charSequence, "");
        }

        public EmptyViewData(int i, CharSequence charSequence, CharSequence charSequence2) {
            this.f20266a = i;
            this.f20267b = charSequence;
            this.f20268c = charSequence2;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseCallAppFragment$OnScrollListener.class */
    public interface OnScrollListener {
        BottomBarScrollListener.Listener getBottomBarScrollListener();

        SuperSkinWizardScrollListener getSuperSkinWizardScrollListener();
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseCallAppFragment$StoreItemAssetManagerProvider.class */
    public interface StoreItemAssetManagerProvider {
        StoreItemAssetManager getStoreItemAssetManager();
    }

    private void destroyAdAdapter() {
        if (this.recyclerAdapter != null) {
            this.originalAdapter.unregisterAdapterDataObserver(this.observer);
            this.recyclerAdapter.destroy();
            this.recyclerAdapter = null;
            this.originalAdapter = null;
        }
    }

    public RecyclerView.AbstractC2636h getItemDecoration(CallAppMoPubRecyclerAdapter callAppMoPubRecyclerAdapter) {
        DefaultMarginItemSpacingDecoration defaultMarginItemSpacingDecoration = null;
        if (isSpacingDecorationNeeded()) {
            defaultMarginItemSpacingDecoration = callAppMoPubRecyclerAdapter.isOriginalStickyHeader() ? null : new DefaultMarginItemSpacingDecoration();
        }
        return defaultMarginItemSpacingDecoration;
    }

    public String getAdUnitIdsConfiguration() {
        return null;
    }

    protected abstract int getDataChangeOrigin();

    protected abstract EmptyViewData getEmptyViewData();

    public String getExperimentRemoteConfigName() {
        return null;
    }

    protected RecyclerView.AbstractC2636h getItemDecoration() {
        return new FabSpaceItemDecoration();
    }

    protected RecyclerView.AbstractC2637i getLayoutManager() {
        return new LinearLayoutManager(getActivity());
    }

    protected int getLayoutResId() {
        return 2131558664;
    }

    protected abstract CallAppMoPubRecyclerAdapter getNewAdapter(T t);

    public RecyclerView getRecyclerView(View view) {
        return (RecyclerView) view.findViewById(2131363646);
    }

    public ScrollEvents getScrollEvents() {
        return this.scrollStateTracker;
    }

    public void hideLoadingProgress() {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseCallAppFragment.9
            @Override // java.lang.Runnable
            public void run() {
                BaseCallAppFragment.this.loadingProgressBar.setVisibility(8);
            }
        });
    }

    protected void initEmptyView() {
        EmptyViewData emptyViewData = getEmptyViewData();
        if (emptyViewData != null) {
            TextView textView = (TextView) this.emptyViewContainer.findViewById(2131363556);
            if (StringUtils.m26045b(emptyViewData.f20267b)) {
                textView.setText(emptyViewData.f20267b);
                textView.setTextColor(ThemeUtils.getColor(2131099784));
            } else {
                textView.setVisibility(8);
            }
            TextView textView2 = (TextView) this.emptyViewContainer.findViewById(2131363793);
            if (StringUtils.m26045b(emptyViewData.f20268c)) {
                textView2.setText(emptyViewData.f20268c);
                textView2.setTextColor(ThemeUtils.getColor(2131100108));
            } else {
                textView2.setVisibility(8);
            }
            ((ImageView) this.emptyViewContainer.findViewById(2131362700)).setImageResource(emptyViewData.f20266a);
        }
    }

    public void invalidateDataEvent(EventBusManager.CallAppDataType callAppDataType) {
        this.isDataLoaded = false;
        refreshData();
        this.invalidateDataSet.clear();
    }

    public boolean isCurrentType(int i) {
        int[] fragmentType = getFragmentType();
        if (fragmentType == null || fragmentType.length <= 0) {
            return false;
        }
        for (int i2 : fragmentType) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    protected boolean isPartOfViewPagerActivity() {
        return true;
    }

    protected boolean isSpacingDecorationNeeded() {
        return true;
    }

    public boolean isViewEmpty() {
        return this.recyclerView != null && this.recyclerAdapter.getItemCount() > 0;
    }

    @Override // com.callapp.contacts.activity.interfaces.DataFragmentsEvents
    public void markAsViewed() {
        this.wasViewed = true;
    }

    public boolean notifyItemChangedEvent(final DataChangedInfo dataChangedInfo) {
        CallAppMoPubRecyclerAdapter callAppMoPubRecyclerAdapter = this.recyclerAdapter;
        if (callAppMoPubRecyclerAdapter == null || !callAppMoPubRecyclerAdapter.isDataReady() || !isCurrentType(dataChangedInfo.getDataType())) {
            return false;
        }
        if (getDataChangeOrigin() == dataChangedInfo.getOrigin()) {
            CallAppApplication.get().m31864b(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseCallAppFragment.4
                @Override // java.lang.Runnable
                public void run() {
                    if (BaseCallAppFragment.this.recyclerAdapter == null || !BaseCallAppFragment.this.recyclerAdapter.isDataReady()) {
                        return;
                    }
                    BaseCallAppFragment.this.recyclerAdapter.notifyItemChanged(dataChangedInfo.getPosition(), Boolean.TRUE);
                }
            });
            return true;
        }
        CallAppApplication.get().m31864b(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseCallAppFragment.5
            @Override // java.lang.Runnable
            public void run() {
                if (BaseCallAppFragment.this.recyclerAdapter == null || !BaseCallAppFragment.this.recyclerAdapter.isDataReady()) {
                    return;
                }
                CallAppMoPubRecyclerAdapter callAppMoPubRecyclerAdapter2 = BaseCallAppFragment.this.recyclerAdapter;
                callAppMoPubRecyclerAdapter2.notifyItemRangeChanged(0, callAppMoPubRecyclerAdapter2.getItemCount(), Boolean.TRUE);
            }
        });
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            if (isPartOfViewPagerActivity()) {
                FragmentActivity activity = getActivity();
                this.viewPagerManager = (ViewPagerManager) activity;
                this.onScrollListenerFactory = (OnScrollListener) activity;
            }
            if (!(getActivity() instanceof StoreItemAssetManagerProvider)) {
                return;
            }
            this.storeItemAssetManager = ((StoreItemAssetManagerProvider) getActivity()).getStoreItemAssetManager();
        } catch (ClassCastException e) {
            throw new IllegalStateException("Parent activity must implement ViewPagerManager and OnScrollListener");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.notifyDataChangedListener = new NotifyDataChangedListener() { // from class: com.callapp.contacts.activity.base.BaseCallAppFragment.2
            @Override // com.callapp.contacts.activity.interfaces.NotifyDataChangedListener
            /* renamed from: a */
            public void mo30204a(DataChangedInfo dataChangedInfo) {
                if (BaseCallAppFragment.this.isResumed()) {
                    BaseCallAppFragment.this.notifyItemChangedEvent(dataChangedInfo);
                } else {
                    BaseCallAppFragment.this.dataChangedInfoSet.add(dataChangedInfo);
                }
            }
        };
        this.invalidateDataListener = new InvalidateDataListener() { // from class: com.callapp.contacts.activity.base.BaseCallAppFragment.3
            @Override // com.callapp.contacts.activity.interfaces.InvalidateDataListener
            public void invalidateData(EventBusManager.CallAppDataType callAppDataType) {
                if (BaseCallAppFragment.this.isResumed()) {
                    if (!BaseCallAppFragment.this.isCurrentType(callAppDataType.ordinal())) {
                        return;
                    }
                    BaseCallAppFragment.this.invalidateDataEvent(callAppDataType);
                } else if (!BaseCallAppFragment.this.shouldInvalidateFromEvent(callAppDataType)) {
                } else {
                    BaseCallAppFragment.this.invalidateDataSet.add(callAppDataType);
                }
            }
        };
        EventBusManager.f25138a.m29048a(NotifyDataChangedListener.f23124b, this.notifyDataChangedListener);
        EventBusManager.f25138a.m29048a(InvalidateDataListener.f23122b, this.invalidateDataListener);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(getLayoutResId(), viewGroup, false);
        RecyclerView recyclerView = getRecyclerView(inflate);
        this.recyclerView = recyclerView;
        recyclerView.setLayoutManager(getLayoutManager());
        this.recyclerView.setBackgroundColor(ThemeUtils.getColor(2131100145));
        RecyclerView.AbstractC2636h itemDecoration = getItemDecoration();
        if (itemDecoration != null) {
            this.recyclerView.m40480a(itemDecoration, -1);
        }
        RecyclerView recyclerView2 = this.recyclerView;
        if (recyclerView2 instanceof FastScrollRecyclerView) {
            ((FastScrollRecyclerView) recyclerView2).setBubbleColor(ThemeUtils.getColor(2131099784));
            ((FastScrollRecyclerView) this.recyclerView).setFastScrollEnabled(shouldEnableFastScroll());
        }
        this.recyclerView.setItemAnimator(null);
        if (isPartOfViewPagerActivity()) {
            this.recyclerView.m40478a(new BottomBarScrollListener(this.onScrollListenerFactory.getBottomBarScrollListener()));
            if (this.onScrollListenerFactory.getSuperSkinWizardScrollListener() != null) {
                this.recyclerView.m40478a(this.onScrollListenerFactory.getSuperSkinWizardScrollListener());
            }
        }
        this.scrollStateTracker.setRecyclerView(this.recyclerView);
        this.emptyViewContainer = (ViewGroup) inflate.findViewById(2131362688);
        this.loadingProgressBar = (ProgressBar) inflate.findViewById(2131363223);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        EventBusManager.f25138a.m29045b(NotifyDataChangedListener.f23124b, this.notifyDataChangedListener);
        EventBusManager.f25138a.m29045b(InvalidateDataListener.f23122b, this.invalidateDataListener);
        destroyAdAdapter();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        destroyAdAdapter();
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        boolean z;
        super.onResume();
        Iterator<EventBusManager.CallAppDataType> it2 = this.invalidateDataSet.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z = false;
                break;
            }
            EventBusManager.CallAppDataType next = it2.next();
            if (isCurrentType(next.ordinal())) {
                invalidateDataEvent(next);
                z = true;
                break;
            }
        }
        if (!z) {
            Iterator<DataChangedInfo> it3 = this.dataChangedInfoSet.iterator();
            while (it3.hasNext() && !notifyItemChangedEvent(it3.next())) {
            }
        }
        this.invalidateDataSet.clear();
        this.dataChangedInfoSet.clear();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        ViewGroup viewGroup = (ViewGroup) view.findViewById(2131362688);
        this.emptyViewContainer = viewGroup;
        if (viewGroup != null) {
            initEmptyView();
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.DataFragmentsEvents
    public void scrollToTop() {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView != null) {
            recyclerView.m40464b(0);
        }
        if (this.recyclerAdapter == null || !this.wasViewed || !CallAppRemoteConfigManager.get().m28698c("RefreshAdsOnChangingTabs")) {
            return;
        }
        CallAppApplication.get().m31864b(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseCallAppFragment.7
            @Override // java.lang.Runnable
            public void run() {
                if (BaseCallAppFragment.this.recyclerAdapter != null) {
                    BaseCallAppFragment.this.recyclerAdapter.m31476b();
                }
            }
        });
    }

    public void setData(final T t) {
        this.data = t;
        if (this.recyclerAdapter == null) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseCallAppFragment.6
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public void run() {
                    if (!Activities.m27696a((Activity) BaseCallAppFragment.this.getActivity())) {
                        CLog.m27606a(BaseCallAppFragment.class.getSimpleName());
                        return;
                    }
                    BaseCallAppFragment baseCallAppFragment = BaseCallAppFragment.this;
                    baseCallAppFragment.recyclerAdapter = baseCallAppFragment.getNewAdapter(t);
                    BaseCallAppFragment.this.recyclerView.setAdapter(BaseCallAppFragment.this.recyclerAdapter);
                    BaseCallAppFragment.this.originalAdapter.registerAdapterDataObserver(BaseCallAppFragment.this.observer);
                    BaseCallAppFragment baseCallAppFragment2 = BaseCallAppFragment.this;
                    RecyclerView.AbstractC2636h itemDecoration = baseCallAppFragment2.getItemDecoration(baseCallAppFragment2.recyclerAdapter);
                    if (itemDecoration == null) {
                        return;
                    }
                    BaseCallAppFragment.this.recyclerView.m40480a(itemDecoration, -1);
                }
            });
        } else {
            this.originalAdapter.setData(t);
        }
    }

    protected boolean shouldEnableFastScroll() {
        return false;
    }

    protected boolean shouldInvalidateFromEvent(EventBusManager.CallAppDataType callAppDataType) {
        return !callAppDataType.equals(EventBusManager.CallAppDataType.SUPER_SKIN_CHANGED);
    }

    public boolean shouldRefreshData() {
        PermissionManager.get();
        return PermissionManager.m28256a();
    }

    public void showLoadingProgress() {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseCallAppFragment.8
            @Override // java.lang.Runnable
            public void run() {
                BaseCallAppFragment.this.loadingProgressBar.setVisibility(0);
            }
        });
    }

    public void toggleEmptyViewIfNeeded() {
        if (this.recyclerAdapter != null) {
            boolean isViewEmpty = isViewEmpty();
            this.recyclerView.setVisibility(isViewEmpty ? 0 : 8);
            ViewGroup viewGroup = this.emptyViewContainer;
            if (viewGroup == null) {
                return;
            }
            int i = 0;
            if (isViewEmpty) {
                i = 8;
            }
            viewGroup.setVisibility(i);
        }
    }
}
