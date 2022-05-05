package com.privacystar.core.p011ui.detail_view.block_list;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.OnLongClick;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.call.caller.CallerHelper;
import com.privacystar.core.data.model.BlockList;
import com.privacystar.core.p011ui.detail_view.block_list.BlockListAdapter;
import com.privacystar.core.p011ui.util.LogItemBinder;
import com.privacystar.core.p011ui.widgets.ViewHolderChangeListener;
import com.privacystar.core.p011ui.widgets.caller_icon.CallerIconView;
import com.privacystar.core.service.IViewClickCallback;
import com.privacystar.core.util.RealmUtil;
import io.realm.Realm;
import io.realm.RealmChangeListener;
import io.realm.RealmObject;
import io.realm.RealmResults;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Observable;
import java.util.Observer;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.detail_view.block_list.BlockListAdapter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/block_list/BlockListAdapter.class */
public class BlockListAdapter extends RecyclerView.Adapter<ViewHolder> implements RealmChangeListener<RealmResults<BlockList>>, ViewHolderChangeListener<BlockList> {
    private IViewClickCallback<BlockList> clickCallback;
    private Context context;
    private RealmResults<BlockList> listEntries;
    private LogItemBinder logItemBinder = new LogItemBinder();

    /* renamed from: com.privacystar.core.ui.detail_view.block_list.BlockListAdapter$ViewHolder */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/block_list/BlockListAdapter$ViewHolder.class */
    public static class ViewHolder extends RecyclerView.ViewHolder implements RealmChangeListener<BlockList>, Observer {
        private final Object LOCK = new Object();
        private ViewHolderChangeListener<BlockList> blockListener;
        private BlockList boundModel;
        private IViewClickCallback<BlockList> clickListener;
        private CallerIconView iconView;
        private LogItemBinder logItemBinder;
        private View view;

        public ViewHolder(View view, IViewClickCallback<BlockList> iViewClickCallback, ViewHolderChangeListener<BlockList> viewHolderChangeListener, LogItemBinder logItemBinder) {
            super(view);
            ButterKnife.bind(this, view);
            this.clickListener = iViewClickCallback;
            this.view = view;
            this.logItemBinder = logItemBinder;
        }

        BlockList getBoundModel() {
            if (this.boundModel == null || !RealmUtil.isSafe((RealmObject) this.boundModel) || !this.boundModel.isValid()) {
                return null;
            }
            return this.boundModel;
        }

        View getInflatedView() {
            return this.view;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final /* synthetic */ void lambda$update$0$BlockListAdapter$ViewHolder(Caller caller) {
            Realm defaultInstance = Realm.getDefaultInstance();
            try {
                this.logItemBinder.bindNumberListItem(getInflatedView(), caller, PSApplication.context(), defaultInstance);
                if (defaultInstance != null) {
                    defaultInstance.close();
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (defaultInstance != null) {
                        if (th != null) {
                            try {
                                defaultInstance.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                        } else {
                            defaultInstance.close();
                        }
                    }
                    throw th2;
                }
            }
        }

        public void onChange(BlockList blockList) {
            this.blockListener.onViewHolderChange(blockList);
        }

        @OnLongClick({C1566R.C1569id.log_item_text_ll})
        boolean onItemLongClick() {
            return this.clickListener.onViewLongClick(this.boundModel);
        }

        @OnClick({C1566R.C1569id.log_item_text_ll})
        void onTextClick() {
            this.clickListener.onViewClick(this.boundModel);
        }

        @OnClick({C1566R.C1569id.log_item_end_rl})
        void onUnblockClick() {
            this.clickListener.onViewSpecialClick(this.boundModel, getAdapterPosition(), null);
        }

        void setBoundModel(BlockList blockList) {
            synchronized (this.LOCK) {
                if (this.boundModel != null) {
                    Caller caller = this.boundModel.getCaller();
                    if (caller != null) {
                        caller.deleteObserver(this);
                    } else {
                        Timber.m37d("BlockList model's caller was null, did not delete self as observer.", new Object[0]);
                    }
                }
                this.boundModel = blockList;
                if (this.boundModel != null) {
                    Caller caller2 = this.boundModel.getCaller();
                    if (caller2 != null) {
                        caller2.addObserver(this);
                    } else {
                        Timber.m31i("BlockList model's caller was null, could not add self as observer.", new Object[0]);
                    }
                }
            }
        }

        @Override // java.util.Observer
        public void update(Observable observable, Object obj) {
            final Caller caller;
            if (getBoundModel() != null && getBoundModel().getCaller() != null) {
                caller = getBoundModel().getCaller();
            } else if (obj instanceof Caller) {
                caller = (Caller) obj;
                Timber.m37d("Caller reference was null, set to observable reference.", new Object[0]);
            } else {
                Timber.m37d("Caller reference was null and observable reference could not be cast.", new Object[0]);
                return;
            }
            if (getInflatedView() == null) {
                Timber.m31i("Tried to update block list but couldn't bind to view.", new Object[0]);
                return;
            }
            Timber.m28v("BlockList ViewHolder observed an update in Caller model, notifying adapter.", new Object[0]);
            new Handler(Looper.getMainLooper()).post(new Runnable(this, caller) { // from class: com.privacystar.core.ui.detail_view.block_list.BlockListAdapter$ViewHolder$$Lambda$0
                private final BlockListAdapter.ViewHolder arg$1;
                private final Caller arg$2;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = this;
                    this.arg$2 = caller;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.arg$1.lambda$update$0$BlockListAdapter$ViewHolder(this.arg$2);
                }
            });
        }
    }

    /* renamed from: com.privacystar.core.ui.detail_view.block_list.BlockListAdapter$ViewHolder_ViewBinding */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/block_list/BlockListAdapter$ViewHolder_ViewBinding.class */
    public class ViewHolder_ViewBinding implements Unbinder {
        private ViewHolder target;
        private View view2131296898;
        private View view2131296913;

        @UiThread
        public ViewHolder_ViewBinding(final ViewHolder viewHolder, View view) {
            this.target = viewHolder;
            View findRequiredView = Utils.findRequiredView(view, C1566R.C1569id.log_item_text_ll, "method 'onTextClick' and method 'onItemLongClick'");
            this.view2131296913 = findRequiredView;
            findRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.detail_view.block_list.BlockListAdapter.ViewHolder_ViewBinding.1
                @Override // butterknife.internal.DebouncingOnClickListener
                public void doClick(View view2) {
                    viewHolder.onTextClick();
                }
            });
            findRequiredView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.privacystar.core.ui.detail_view.block_list.BlockListAdapter.ViewHolder_ViewBinding.2
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view2) {
                    return viewHolder.onItemLongClick();
                }
            });
            View findRequiredView2 = Utils.findRequiredView(view, C1566R.C1569id.log_item_end_rl, "method 'onUnblockClick'");
            this.view2131296898 = findRequiredView2;
            findRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.detail_view.block_list.BlockListAdapter.ViewHolder_ViewBinding.3
                @Override // butterknife.internal.DebouncingOnClickListener
                public void doClick(View view2) {
                    viewHolder.onUnblockClick();
                }
            });
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            if (this.target == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.target = null;
            this.view2131296913.setOnClickListener(null);
            this.view2131296913.setOnLongClickListener(null);
            this.view2131296913 = null;
            this.view2131296898.setOnClickListener(null);
            this.view2131296898 = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BlockListAdapter(RealmResults<BlockList> realmResults, IViewClickCallback<BlockList> iViewClickCallback) {
        Timber.m37d("Creating data adapter for Block List", new Object[0]);
        this.listEntries = realmResults;
        this.clickCallback = iViewClickCallback;
        this.listEntries.addChangeListener(new RealmChangeListener(this) { // from class: com.privacystar.core.ui.detail_view.block_list.BlockListAdapter$$Lambda$0
            private final BlockListAdapter arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // io.realm.RealmChangeListener
            public void onChange(Object obj) {
                this.arg$1.lambda$new$0$BlockListAdapter((RealmResults) obj);
            }
        });
    }

    private Caller getBlockedCaller(int i) {
        if (this.listEntries.size() > i) {
            return CallerHelper.getInstance().callerFromNumber(((BlockList) this.listEntries.get(i)).getNumber());
        }
        Timber.m37d("Attempted to access index that doesn't exist - something is out of sync.", new Object[0]);
        return null;
    }

    private List<Caller> populateViewEntries(RealmResults<BlockList> realmResults) {
        Timber.m37d("Populating rich content (contact and offender info) into block entries.", new Object[0]);
        ArrayList arrayList = new ArrayList();
        Iterator it = realmResults.iterator();
        while (it.hasNext()) {
            arrayList.add(CallerHelper.getInstance().callerFromNumber(((BlockList) it.next()).getNumber()));
        }
        return arrayList;
    }

    public void clear() {
        Timber.m37d("BlockListAdapter clearing dataset.", new Object[0]);
        this.listEntries = null;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.listEntries != null) {
            return this.listEntries.size();
        }
        Timber.m25w("BlockList entries is null but attempted getItemCount().", new Object[0]);
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$new$0$BlockListAdapter(RealmResults realmResults) {
        Timber.m37d("BlockListAdapter observed change in its Realm list.", new Object[0]);
        notifyDataSetChanged();
    }

    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        if (this.listEntries == null) {
            Timber.m25w("BlockList is null.", new Object[0]);
            return;
        }
        Timber.m28v("BlockList ViewHolder bound to log item, populating with data at position %d.", Integer.valueOf(i));
        Caller blockedCaller = getBlockedCaller(i);
        if (blockedCaller == null) {
            Timber.m37d("BlockList ViewHolder has a empty dataset.", new Object[0]);
            return;
        }
        viewHolder.setBoundModel((BlockList) this.listEntries.get(i));
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            Timber.m28v("BlockList item data read. Rendering from data payload.", new Object[0]);
            this.logItemBinder.bindNumberListItem(viewHolder.getInflatedView(), blockedCaller, this.context, defaultInstance);
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }

    public void onChange(RealmResults<BlockList> realmResults) {
        refreshContent();
        notifyDataSetChanged();
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        this.context = viewGroup.getContext();
        View inflate = LayoutInflater.from(this.context).inflate(C1566R.C1571layout.block_list_item, viewGroup, false);
        Timber.m28v("BlockList ViewHolder item inflated into %s.", viewGroup.toString());
        return new ViewHolder(inflate, this.clickCallback, this, this.logItemBinder);
    }

    public void onViewHolderChange(BlockList blockList) {
    }

    public void refreshContent() {
    }

    public void refreshContent(RealmResults<BlockList> realmResults) {
        realmResults.addChangeListener(this);
        this.listEntries = realmResults;
    }

    public void setListEntries(RealmResults<BlockList> realmResults) {
        this.listEntries = realmResults;
        this.listEntries.addChangeListener(this);
        notifyDataSetChanged();
    }
}
