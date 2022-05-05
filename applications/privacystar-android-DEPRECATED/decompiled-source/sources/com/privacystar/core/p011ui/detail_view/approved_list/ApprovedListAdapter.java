package com.privacystar.core.p011ui.detail_view.approved_list;

import android.os.Handler;
import android.os.Looper;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.data.call.caller.CallerHelper;
import com.privacystar.core.data.model.ApprovedList;
import com.privacystar.core.data.model.helper.ApprovedListRealm;
import com.privacystar.core.p011ui.detail_view.approved_list.ApprovedListAdapter;
import com.privacystar.core.p011ui.util.LogItemBinder;
import com.privacystar.core.p011ui.widgets.RealmRecyclerViewAdapter;
import com.privacystar.core.service.IViewClickCallback;
import com.privacystar.core.util.RealmUtil;
import io.realm.Realm;
import io.realm.RealmObject;
import io.realm.RealmResults;
import java.util.Observable;
import java.util.Observer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p013io.CloseableKt;
import org.apache.commons.cli.HelpFormatter;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020��0\u0001:\u0001\u0015B!\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007¢\u0006\u0002\u0010\bJ\u001c\u0010\u000b\u001a\u00020\f2\n\u0010\r\u001a\u00060\u0003R\u00020��2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u001c\u0010\u0010\u001a\u00060\u0003R\u00020��2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000fH\u0016J\u0014\u0010\u0014\u001a\u00020\f2\n\u0010\r\u001a\u00060\u0003R\u00020��H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0016"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/approved_list/ApprovedListAdapter;", "Lcom/privacystar/core/ui/widgets/RealmRecyclerViewAdapter;", "Lcom/privacystar/core/data/model/ApprovedList;", "Lcom/privacystar/core/ui/detail_view/approved_list/ApprovedListAdapter$MyViewHolder;", "list", "Lio/realm/RealmResults;", "touchCallback", "Lcom/privacystar/core/service/IViewClickCallback;", "(Lio/realm/RealmResults;Lcom/privacystar/core/service/IViewClickCallback;)V", "logItemBinder", "Lcom/privacystar/core/ui/util/LogItemBinder;", "onBindViewHolder", "", "holder", TextModalInteraction.EVENT_KEY_ACTION_POSITION, "", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onViewRecycled", "MyViewHolder", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.approved_list.ApprovedListAdapter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/approved_list/ApprovedListAdapter.class */
public final class ApprovedListAdapter extends RealmRecyclerViewAdapter<ApprovedList, MyViewHolder> {
    private final LogItemBinder logItemBinder = new LogItemBinder();
    private final IViewClickCallback<ApprovedList> touchCallback;

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\b\u0086\u0004\u0018��2\u00020\u00012\u00020\u0002B\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u0010\u0010\u0019\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\b\u0010\u001a\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u0007J\u001c\u0010\u001d\u001a\u00020\u00162\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n��¨\u0006\""}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/approved_list/ApprovedListAdapter$MyViewHolder;", "Landroid/support/v7/widget/RecyclerView$ViewHolder;", "Ljava/util/Observer;", "inflatedView", "Landroid/view/View;", "(Lcom/privacystar/core/ui/detail_view/approved_list/ApprovedListAdapter;Landroid/view/View;)V", "data", "Lcom/privacystar/core/data/model/ApprovedList;", "getData", "()Lcom/privacystar/core/data/model/ApprovedList;", "setData", "(Lcom/privacystar/core/data/model/ApprovedList;)V", "getInflatedView", "()Landroid/view/View;", "setInflatedView", "(Landroid/view/View;)V", "onItemLongClick", "Landroid/view/View$OnLongClickListener;", "onTextClick", "Landroid/view/View$OnClickListener;", "onUnapproveClick", "addObserver", "", "caller", "Lcom/privacystar/core/data/call/caller/Caller;", "deleteObserver", "getBoundModel", "setBoundModel", "boundModel", "update", "o", "Ljava/util/Observable;", HelpFormatter.DEFAULT_ARG_NAME, "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.approved_list.ApprovedListAdapter$MyViewHolder */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/approved_list/ApprovedListAdapter$MyViewHolder.class */
    public final class MyViewHolder extends RecyclerView.ViewHolder implements Observer {
        @Nullable
        private ApprovedList data;
        @Nullable
        private View inflatedView;
        private final View.OnLongClickListener onItemLongClick;
        private final View.OnClickListener onTextClick;
        private final View.OnClickListener onUnapproveClick;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyViewHolder(@Nullable View view) {
            super(view);
            LinearLayout linearLayout;
            if (view == null) {
                Intrinsics.throwNpe();
            }
            this.inflatedView = view;
            this.onTextClick = new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.approved_list.ApprovedListAdapter$MyViewHolder$onTextClick$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    IViewClickCallback iViewClickCallback;
                    iViewClickCallback = ApprovedListAdapter.this.touchCallback;
                    iViewClickCallback.onViewClick(ApprovedListAdapter.MyViewHolder.this.getData());
                }
            };
            this.onUnapproveClick = new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.approved_list.ApprovedListAdapter$MyViewHolder$onUnapproveClick$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    IViewClickCallback iViewClickCallback;
                    iViewClickCallback = ApprovedListAdapter.this.touchCallback;
                    iViewClickCallback.onViewSpecialClick(ApprovedListAdapter.MyViewHolder.this.getData(), ApprovedListAdapter.MyViewHolder.this.getAdapterPosition(), null);
                }
            };
            this.onItemLongClick = new View.OnLongClickListener() { // from class: com.privacystar.core.ui.detail_view.approved_list.ApprovedListAdapter$MyViewHolder$onItemLongClick$1
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view2) {
                    IViewClickCallback iViewClickCallback;
                    iViewClickCallback = ApprovedListAdapter.this.touchCallback;
                    return iViewClickCallback.onViewLongClick(ApprovedListAdapter.MyViewHolder.this.getData());
                }
            };
            View view2 = this.inflatedView;
            RelativeLayout relativeLayout = view2 != null ? (RelativeLayout) view2.findViewById(C1566R.C1569id.log_item_text_ll) : null;
            if (relativeLayout != null) {
                relativeLayout.setOnClickListener(this.onTextClick);
            }
            View view3 = this.inflatedView;
            if (!(view3 == null || (linearLayout = (LinearLayout) view3.findViewById(C1566R.C1569id.log_item_end_rl)) == null)) {
                linearLayout.setOnClickListener(this.onUnapproveClick);
            }
            if (relativeLayout != null) {
                relativeLayout.setOnLongClickListener(this.onItemLongClick);
            }
        }

        public final void addObserver(@Nullable Caller caller) {
            if (caller != null) {
                caller.addObserver(this);
            }
        }

        public final void deleteObserver(@Nullable Caller caller) {
            if (caller != null) {
                caller.deleteObserver(this);
            }
        }

        @Nullable
        public final ApprovedList getBoundModel() {
            if (this.data == null || !RealmUtil.isSafe((RealmObject) this.data)) {
                return null;
            }
            ApprovedList approvedList = this.data;
            if (approvedList != null ? approvedList.isValid() : false) {
                return this.data;
            }
            return null;
        }

        @Nullable
        public final ApprovedList getData() {
            return this.data;
        }

        @Nullable
        public final View getInflatedView() {
            return this.inflatedView;
        }

        public final void setBoundModel(@NotNull ApprovedList boundModel) {
            Intrinsics.checkParameterIsNotNull(boundModel, "boundModel");
            synchronized (this) {
                CallerFactory instance = CallerFactory.getInstance();
                ApprovedList boundModel2 = getBoundModel();
                String str = null;
                Caller caller = instance.getCaller(boundModel2 != null ? boundModel2.getNumber() : null);
                Intrinsics.checkExpressionValueIsNotNull(caller, "CallerFactory.getInstanc…(getBoundModel()?.number)");
                deleteObserver(caller);
                this.data = boundModel;
                CallerFactory instance2 = CallerFactory.getInstance();
                ApprovedList boundModel3 = getBoundModel();
                if (boundModel3 != null) {
                    str = boundModel3.getNumber();
                }
                Caller caller2 = instance2.getCaller(str);
                Intrinsics.checkExpressionValueIsNotNull(caller2, "CallerFactory.getInstanc…(getBoundModel()?.number)");
                addObserver(caller2);
                Unit unit = Unit.INSTANCE;
            }
        }

        public final void setData(@Nullable ApprovedList approvedList) {
            this.data = approvedList;
        }

        public final void setInflatedView(@Nullable View view) {
            this.inflatedView = view;
        }

        @Override // java.util.Observer
        public void update(@Nullable final Observable observable, @Nullable Object obj) {
            if (getAdapterPosition() < 0) {
                Timber.m31i("Can't update on an invalid adapter position: [%d]", Integer.valueOf(getAdapterPosition()));
            } else if (!(observable instanceof Caller)) {
                Timber.m37d("Caller Observable reference could not be cast.", new Object[0]);
            } else if (this.inflatedView == null) {
                Timber.m31i("Tried to update approved list but couldn't bind to view.", new Object[0]);
            } else {
                Timber.m28v("ApprovedList ViewHolder observed an update in Caller model, notifying adapter.", new Object[0]);
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.privacystar.core.ui.detail_view.approved_list.ApprovedListAdapter$MyViewHolder$update$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        LogItemBinder logItemBinder;
                        Realm defaultInstance = Realm.getDefaultInstance();
                        Throwable th = null;
                        try {
                            Realm realm = defaultInstance;
                            if (ApprovedListRealm.isCallerApproved(realm, (Caller) observable)) {
                                logItemBinder = ApprovedListAdapter.this.logItemBinder;
                                logItemBinder.bindNumberListItem(ApprovedListAdapter.MyViewHolder.this.getInflatedView(), (Caller) observable, PSApplication.context(), realm);
                            }
                            Unit unit = Unit.INSTANCE;
                            CloseableKt.closeFinally(defaultInstance, th);
                        } finally {
                            try {
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                });
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApprovedListAdapter(@NotNull RealmResults<ApprovedList> list, @NotNull IViewClickCallback<ApprovedList> touchCallback) {
        super(list, true);
        Intrinsics.checkParameterIsNotNull(list, "list");
        Intrinsics.checkParameterIsNotNull(touchCallback, "touchCallback");
        Timber.m37d("Creating data adapter for Approved List", new Object[0]);
        this.touchCallback = touchCallback;
        setHasStableIds(true);
    }

    public void onBindViewHolder(@NotNull MyViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        Timber.m28v("ApprovedList ViewHolder bound to log item, populating with data at position %d.", Integer.valueOf(i));
        ApprovedList item = getItem(i);
        if (item == null) {
            Timber.m37d("ApprovedList ViewHolder could not bind item %d.", Integer.valueOf(i));
            return;
        }
        Caller callerFromNumber = CallerHelper.getInstance().callerFromNumber(item.getNumber());
        if (callerFromNumber == null) {
            Timber.m37d("ApprovedList ViewHolder has a empty dataset.", new Object[0]);
            return;
        }
        holder.setBoundModel(item);
        th = null;
        try {
            Realm defaultInstance = Realm.getDefaultInstance();
            Timber.m28v("ApprovedList item data read. Rendering from data payload.", new Object[0]);
            View inflatedView = holder.getInflatedView();
            if (inflatedView != null) {
                this.logItemBinder.bindNumberListItem(inflatedView, callerFromNumber, inflatedView.getContext(), defaultInstance);
                Unit unit = Unit.INSTANCE;
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    @NotNull
    public MyViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View inflate = LayoutInflater.from(parent.getContext()).inflate(C1566R.C1571layout.approved_list_item, parent, false);
        Timber.m28v("ApprovedList ViewHolder item inflated into %s.", parent.toString());
        return new MyViewHolder(inflate);
    }

    public void onViewRecycled(@NotNull MyViewHolder holder) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        super.onViewRecycled((ApprovedListAdapter) holder);
        ApprovedList data = holder.getData();
        if (data != null && RealmUtil.isSafe((RealmObject) data)) {
            holder.deleteObserver(CallerFactory.getInstance().getCaller(data.getNumber()));
        }
    }
}
