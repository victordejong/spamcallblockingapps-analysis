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
    private final RecyclerView.c observer = new RecyclerView.c() { // from class: com.callapp.contacts.activity.base.BaseCallAppFragment.1
        @Override // androidx.recyclerview.widget.RecyclerView.c
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

        /* renamed from: a  reason: collision with root package name */
        private final int f11094a;

        /* renamed from: b  reason: collision with root package name */
        private final CharSequence f11095b;

        /* renamed from: c  reason: collision with root package name */
        private final CharSequence f11096c;

        public EmptyViewData(int i, CharSequence charSequence) {
            this(i, charSequence, "");
        }

        public EmptyViewData(int i, CharSequence charSequence, CharSequence charSequence2) {
            this.f11094a = i;
            this.f11095b = charSequence;
            this.f11096c = charSequence2;
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

    /* JADX INFO: Access modifiers changed from: private */
    public RecyclerView.h getItemDecoration(CallAppMoPubRecyclerAdapter callAppMoPubRecyclerAdapter) {
        DefaultMarginItemSpacingDecoration defaultMarginItemSpacingDecoration = null;
        if (isSpacingDecorationNeeded()) {
            defaultMarginItemSpacingDecoration = callAppMoPubRecyclerAdapter.isOriginalStickyHeader() ? null : new DefaultMarginItemSpacingDecoration();
        }
        return defaultMarginItemSpacingDecoration;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getAdUnitIdsConfiguration() {
        return null;
    }

    protected abstract int getDataChangeOrigin();

    protected abstract EmptyViewData getEmptyViewData();

    /* JADX INFO: Access modifiers changed from: protected */
    public String getExperimentRemoteConfigName() {
        return null;
    }

    protected RecyclerView.h getItemDecoration() {
        return new FabSpaceItemDecoration();
    }

    protected RecyclerView.i getLayoutManager() {
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
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseCallAppFragment.9
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
            if (StringUtils.b(emptyViewData.f11095b)) {
                textView.setText(emptyViewData.f11095b);
                textView.setTextColor(ThemeUtils.getColor(2131099784));
            } else {
                textView.setVisibility(8);
            }
            TextView textView2 = (TextView) this.emptyViewContainer.findViewById(2131363793);
            if (StringUtils.b(emptyViewData.f11096c)) {
                textView2.setText(emptyViewData.f11096c);
                textView2.setTextColor(ThemeUtils.getColor(2131100108));
            } else {
                textView2.setVisibility(8);
            }
            ((ImageView) this.emptyViewContainer.findViewById(2131362700)).setImageResource(emptyViewData.f11094a);
        }
    }

    public void invalidateDataEvent(EventBusManager.CallAppDataType callAppDataType) {
        this.isDataLoaded = false;
        refreshData();
        this.invalidateDataSet.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
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

    /* JADX INFO: Access modifiers changed from: protected */
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
            CallAppApplication.get().b(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseCallAppFragment.4
                @Override // java.lang.Runnable
                public void run() {
                    if (BaseCallAppFragment.this.recyclerAdapter != null && BaseCallAppFragment.this.recyclerAdapter.isDataReady()) {
                        BaseCallAppFragment.this.recyclerAdapter.notifyItemChanged(dataChangedInfo.getPosition(), Boolean.TRUE);
                    }
                }
            });
            return true;
        }
        CallAppApplication.get().b(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseCallAppFragment.5
            @Override // java.lang.Runnable
            public void run() {
                if (BaseCallAppFragment.this.recyclerAdapter != null && BaseCallAppFragment.this.recyclerAdapter.isDataReady()) {
                    CallAppMoPubRecyclerAdapter callAppMoPubRecyclerAdapter2 = BaseCallAppFragment.this.recyclerAdapter;
                    callAppMoPubRecyclerAdapter2.notifyItemRangeChanged(0, callAppMoPubRecyclerAdapter2.getItemCount(), Boolean.TRUE);
                }
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
            if (getActivity() instanceof StoreItemAssetManagerProvider) {
                this.storeItemAssetManager = ((StoreItemAssetManagerProvider) getActivity()).getStoreItemAssetManager();
            }
        } catch (ClassCastException e) {
            throw new IllegalStateException("Parent activity must implement ViewPagerManager and OnScrollListener");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.notifyDataChangedListener = new NotifyDataChangedListener() { // from class: com.callapp.contacts.activity.base.BaseCallAppFragment.2
            @Override // com.callapp.contacts.activity.interfaces.NotifyDataChangedListener
            public void a(DataChangedInfo dataChangedInfo) {
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
                    if (BaseCallAppFragment.this.isCurrentType(callAppDataType.ordinal())) {
                        BaseCallAppFragment.this.invalidateDataEvent(callAppDataType);
                    }
                } else if (BaseCallAppFragment.this.shouldInvalidateFromEvent(callAppDataType)) {
                    BaseCallAppFragment.this.invalidateDataSet.add(callAppDataType);
                }
            }
        };
        EventBusManager.f14368a.a(NotifyDataChangedListener.f12951b, this.notifyDataChangedListener);
        EventBusManager.f14368a.a(InvalidateDataListener.f12949b, this.invalidateDataListener);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(getLayoutResId(), viewGroup, false);
        RecyclerView recyclerView = getRecyclerView(inflate);
        this.recyclerView = recyclerView;
        recyclerView.setLayoutManager(getLayoutManager());
        this.recyclerView.setBackgroundColor(ThemeUtils.getColor(2131100145));
        RecyclerView.h itemDecoration = getItemDecoration();
        if (itemDecoration != null) {
            this.recyclerView.a(itemDecoration, -1);
        }
        RecyclerView recyclerView2 = this.recyclerView;
        if (recyclerView2 instanceof FastScrollRecyclerView) {
            ((FastScrollRecyclerView) recyclerView2).setBubbleColor(ThemeUtils.getColor(2131099784));
            ((FastScrollRecyclerView) this.recyclerView).setFastScrollEnabled(shouldEnableFastScroll());
        }
        this.recyclerView.setItemAnimator(null);
        if (isPartOfViewPagerActivity()) {
            this.recyclerView.a(new BottomBarScrollListener(this.onScrollListenerFactory.getBottomBarScrollListener()));
            if (this.onScrollListenerFactory.getSuperSkinWizardScrollListener() != null) {
                this.recyclerView.a(this.onScrollListenerFactory.getSuperSkinWizardScrollListener());
            }
        }
        this.scrollStateTracker.setRecyclerView(this.recyclerView);
        this.emptyViewContainer = (ViewGroup) inflate.findViewById(2131362688);
        this.loadingProgressBar = (ProgressBar) inflate.findViewById(2131363223);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        EventBusManager.f14368a.b(NotifyDataChangedListener.f12951b, this.notifyDataChangedListener);
        EventBusManager.f14368a.b(InvalidateDataListener.f12949b, this.invalidateDataListener);
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
            recyclerView.b(0);
        }
        if (this.recyclerAdapter != null && this.wasViewed && CallAppRemoteConfigManager.get().c("RefreshAdsOnChangingTabs")) {
            CallAppApplication.get().b(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseCallAppFragment.7
                @Override // java.lang.Runnable
                public void run() {
                    if (BaseCallAppFragment.this.recyclerAdapter != null) {
                        BaseCallAppFragment.this.recyclerAdapter.b();
                    }
                }
            });
        }
    }

    public void setData(final T t) {
        this.data = t;
        if (this.recyclerAdapter == null) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseCallAppFragment.6
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public void run() {
                    if (Activities.a((Activity) BaseCallAppFragment.this.getActivity())) {
                        BaseCallAppFragment baseCallAppFragment = BaseCallAppFragment.this;
                        baseCallAppFragment.recyclerAdapter = baseCallAppFragment.getNewAdapter(t);
                        BaseCallAppFragment.this.recyclerView.setAdapter(BaseCallAppFragment.this.recyclerAdapter);
                        BaseCallAppFragment.this.originalAdapter.registerAdapterDataObserver(BaseCallAppFragment.this.observer);
                        BaseCallAppFragment baseCallAppFragment2 = BaseCallAppFragment.this;
                        RecyclerView.h itemDecoration = baseCallAppFragment2.getItemDecoration(baseCallAppFragment2.recyclerAdapter);
                        if (itemDecoration != null) {
                            BaseCallAppFragment.this.recyclerView.a(itemDecoration, -1);
                            return;
                        }
                        return;
                    }
                    CLog.a(BaseCallAppFragment.class.getSimpleName());
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

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean shouldRefreshData() {
        PermissionManager.get();
        return PermissionManager.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void showLoadingProgress() {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.base.BaseCallAppFragment.8
            @Override // java.lang.Runnable
            public void run() {
                BaseCallAppFragment.this.loadingProgressBar.setVisibility(0);
            }
        });
    }

    public void toggleEmptyViewIfNeeded() {
        if (this.recyclerAdapter != null) {
            boolean isViewEmpty = isViewEmpty();
            int i = 0;
            this.recyclerView.setVisibility(isViewEmpty ? 0 : 8);
            ViewGroup viewGroup = this.emptyViewContainer;
            if (viewGroup != null) {
                if (isViewEmpty) {
                    i = 8;
                }
                viewGroup.setVisibility(i);
            }
        }
    }
}
