package com.privacystar.core.p011ui.detail_view.inbox;

import android.os.Bundle;
import android.support.p001v4.app.FragmentManager;
import android.support.p004v7.widget.LinearLayoutManager;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.activity_log.LogExpandedAction;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.DetailActivityManagerImpl;
import com.privacystar.core.p011ui.detail_view.DetailFragment;
import com.privacystar.core.p011ui.detail_view.campaign.CampaignFragment;
import com.privacystar.core.p011ui.detail_view.inbox.InboxContract;
import com.privacystar.core.p011ui.util.DensityUtil;
import com.privacystar.core.p011ui.widgets.dialog.rating.RatingDialogFragment;
import com.privacystar.core.service.IViewClickCallback;
import com.privacystar.core.util.BlockingManager;
import com.privacystar.core.util.CampaignUtil;
import com.privacystar.core.util.extension.ViewExtensionsKt;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import io.realm.Realm;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\r\u0018��2\u00020\u00012\u00020\u00022\b\u0012\u0004\u0012\u00020\u00040\u00032\u00020\u0005:\u0002NOB\u0005¢\u0006\u0002\u0010\u0006J\b\u0010 \u001a\u00020!H\u0014J\b\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0016J\b\u0010(\u001a\u00020\u0001H\u0016J\b\u0010)\u001a\u00020%H\u0016J\b\u0010*\u001a\u00020%H\u0016J&\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u0001002\b\u00101\u001a\u0004\u0018\u000102H\u0016J\b\u00103\u001a\u00020%H\u0016J\b\u00104\u001a\u00020%H\u0016J\u0012\u00105\u001a\u0002062\b\u00107\u001a\u0004\u0018\u000108H\u0016J\b\u00109\u001a\u00020%H\u0016J\b\u0010:\u001a\u00020%H\u0016J\u0012\u0010;\u001a\u00020%2\b\u0010<\u001a\u0004\u0018\u00010\u0004H\u0016J\u001a\u0010=\u001a\u00020%2\u0006\u0010>\u001a\u00020,2\b\u00101\u001a\u0004\u0018\u000102H\u0016J\u0012\u0010?\u001a\u0002062\b\u0010<\u001a\u0004\u0018\u00010\u0004H\u0016J$\u0010@\u001a\u00020%2\b\u0010<\u001a\u0004\u0018\u00010\u00042\u0006\u0010A\u001a\u00020!2\b\u0010B\u001a\u0004\u0018\u00010CH\u0016J\b\u0010D\u001a\u00020%H\u0016J\u0010\u0010E\u001a\u00020%2\u0006\u0010F\u001a\u000206H\u0016J\u0010\u0010G\u001a\u00020%2\u0006\u0010H\u001a\u000206H\u0016J\b\u0010I\u001a\u00020%H\u0016J\b\u0010J\u001a\u00020%H\u0016J\b\u0010K\u001a\u00020%H\u0016J\b\u0010L\u001a\u00020%H\u0016J\b\u0010M\u001a\u00020%H\u0016R\u001e\u0010\u0007\u001a\u00060\bR\u00020��X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0010\u0010\r\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u0015¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0017R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006P"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/inbox/InboxFragment;", "Lcom/privacystar/core/ui/detail_view/DetailFragment;", "Lcom/privacystar/core/ui/detail_view/DetailActivity$DetailActivityContent;", "Lcom/privacystar/core/service/IViewClickCallback;", "", "Lcom/privacystar/core/ui/detail_view/inbox/InboxContract$View;", "()V", "adapter", "Lcom/privacystar/core/ui/detail_view/inbox/InboxFragment$InboxAdapter;", "getAdapter", "()Lcom/privacystar/core/ui/detail_view/inbox/InboxFragment$InboxAdapter;", "setAdapter", "(Lcom/privacystar/core/ui/detail_view/inbox/InboxFragment$InboxAdapter;)V", "editButtonLabel", "noItemsContainer", "Landroid/widget/LinearLayout;", "getNoItemsContainer", "()Landroid/widget/LinearLayout;", "setNoItemsContainer", "(Landroid/widget/LinearLayout;)V", "presenter", "Lcom/privacystar/core/ui/detail_view/inbox/InboxPresenter;", "getPresenter", "()Lcom/privacystar/core/ui/detail_view/inbox/InboxPresenter;", "rateDialog", "Lcom/privacystar/core/ui/widgets/dialog/rating/RatingDialogFragment;", "recyclerView", "Landroid/support/v7/widget/RecyclerView;", "getRecyclerView", "()Landroid/support/v7/widget/RecyclerView;", "setRecyclerView", "(Landroid/support/v7/widget/RecyclerView;)V", "getLayoutResId", "", "getRealmTemp", "Lio/realm/Realm;", "launchMessage", "", "template", "Lcom/privacystar/core/util/CampaignUtil$CampaignTemplate;", "newInstance", "notifyAdapterOnUiThread", "onButtonClicked", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "onFabClicked", "onMenuItemClicked", "", "item", "Landroid/view/MenuItem;", "onPause", "onResume", "onViewClick", "param", "onViewCreated", Promotion.ACTION_VIEW, "onViewLongClick", "onViewSpecialClick", FirebaseAnalytics.Param.INDEX, BlockingManager.ACTION_CONSTANT, "Lcom/privacystar/core/data/activity_log/LogExpandedAction;", "refreshContent", "setEditButtonStatus", "editing", "setupContent", "contentExists", "setupRecyclerView", "setupToolbar", "setupToolbarWithMenu", "setupView", "showRateDialog", "InboxAdapter", "ViewHolder", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.inbox.InboxFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/inbox/InboxFragment.class */
public final class InboxFragment extends DetailFragment implements DetailActivity.DetailActivityContent, IViewClickCallback<String>, InboxContract.View {
    private HashMap _$_findViewCache;
    @NotNull
    public InboxAdapter adapter;
    private String editButtonLabel;
    @NotNull
    public LinearLayout noItemsContainer;
    @NotNull
    private final InboxPresenter presenter = new InboxPresenter(new WeakReference(this));
    private RatingDialogFragment rateDialog;
    @NotNull
    public RecyclerView recyclerView;

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0018\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0005H\u0016¨\u0006\u000e"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/inbox/InboxFragment$InboxAdapter;", "Landroid/support/v7/widget/RecyclerView$Adapter;", "Lcom/privacystar/core/ui/detail_view/inbox/InboxFragment$ViewHolder;", "(Lcom/privacystar/core/ui/detail_view/inbox/InboxFragment;)V", "getItemCount", "", "onBindViewHolder", "", Promotion.ACTION_VIEW, "pos", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", TextModalInteraction.EVENT_KEY_ACTION_POSITION, "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.inbox.InboxFragment$InboxAdapter */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/inbox/InboxFragment$InboxAdapter.class */
    public final class InboxAdapter extends RecyclerView.Adapter<ViewHolder> {
        public InboxAdapter() {
        }

        @Override // android.support.p004v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return InboxFragment.this.getPresenter().getItemCount();
        }

        public void onBindViewHolder(@NotNull ViewHolder view, int i) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            InboxFragment.this.getPresenter().onBindViewHolder(view, i);
        }

        @Override // android.support.p004v7.widget.RecyclerView.Adapter
        @NotNull
        public ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            View inboxView = LayoutInflater.from(InboxFragment.this.getContext()).inflate(C1566R.C1571layout.inbox_item, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(inboxView, "inboxView");
            return new ViewHolder(inboxView, InboxFragment.this);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018��2\u00020\u00012\u00020\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\u0010\bJ\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0007H\u0016J\u0016\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017J\u0010\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u0007H\u0016J\u0010\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u0007H\u0016J\u0018\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n��¨\u0006!"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/inbox/InboxFragment$ViewHolder;", "Landroid/support/v7/widget/RecyclerView$ViewHolder;", "Lcom/privacystar/core/ui/detail_view/inbox/InboxContract$ViewHolder;", Promotion.ACTION_VIEW, "Landroid/view/View;", "clickListener", "Lcom/privacystar/core/service/IViewClickCallback;", "", "(Landroid/view/View;Lcom/privacystar/core/service/IViewClickCallback;)V", "batchId", "getClickListener", "()Lcom/privacystar/core/service/IViewClickCallback;", "readIcon", "Landroid/widget/ImageView;", "rootView", "Landroid/widget/RelativeLayout;", "subtitle", "Landroid/widget/TextView;", "title", "setMessage", "", "setReadIconLayoutParams", "margins", "", SettingsJsonConstants.ICON_WIDTH_KEY, "setSubtitle", "subtitleText", "setTitle", "titleText", "toggleReadIcon", "read", "", "editing", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.inbox.InboxFragment$ViewHolder */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/inbox/InboxFragment$ViewHolder.class */
    public static final class ViewHolder extends RecyclerView.ViewHolder implements InboxContract.ViewHolder {
        private String batchId;
        @NotNull
        private final IViewClickCallback<String> clickListener;
        private final ImageView readIcon;
        private final RelativeLayout rootView;
        private final TextView subtitle;
        private final TextView title;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(@NotNull View view, @NotNull IViewClickCallback<String> clickListener) {
            super(view);
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(clickListener, "clickListener");
            this.clickListener = clickListener;
            RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(C1566R.C1569id.inbox_item_root);
            Intrinsics.checkExpressionValueIsNotNull(relativeLayout, "view.inbox_item_root");
            this.rootView = relativeLayout;
            TextView textView = (TextView) view.findViewById(C1566R.C1569id.inbox_item_title);
            Intrinsics.checkExpressionValueIsNotNull(textView, "view.inbox_item_title");
            this.title = textView;
            TextView textView2 = (TextView) view.findViewById(C1566R.C1569id.inbox_item_subtitle);
            Intrinsics.checkExpressionValueIsNotNull(textView2, "view.inbox_item_subtitle");
            this.subtitle = textView2;
            ImageView imageView = (ImageView) view.findViewById(C1566R.C1569id.inbox_item_read_icon);
            Intrinsics.checkExpressionValueIsNotNull(imageView, "view.inbox_item_read_icon");
            this.readIcon = imageView;
            this.readIcon.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.inbox.InboxFragment.ViewHolder.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    Timber.m37d("Icon clicked", new Object[0]);
                    ViewHolder.this.getClickListener().onViewClick(ViewHolder.this.batchId);
                }
            });
            this.rootView.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.inbox.InboxFragment.ViewHolder.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    Timber.m37d("View Clicked", new Object[0]);
                    ViewHolder.this.getClickListener().onViewLongClick(ViewHolder.this.batchId);
                }
            });
        }

        @NotNull
        public final IViewClickCallback<String> getClickListener() {
            return this.clickListener;
        }

        @Override // com.privacystar.core.p011ui.detail_view.inbox.InboxContract.ViewHolder
        public void setMessage(@NotNull String batchId) {
            Intrinsics.checkParameterIsNotNull(batchId, "batchId");
            this.batchId = batchId;
        }

        public final void setReadIconLayoutParams(int i, int i2) {
            ViewGroup.LayoutParams layoutParams = this.readIcon.getLayoutParams();
            Intrinsics.checkExpressionValueIsNotNull(layoutParams, "readIcon.layoutParams");
            int dpToPx = DensityUtil.dpToPx(this.rootView.getContext(), i);
            int dpToPx2 = DensityUtil.dpToPx(this.rootView.getContext(), i2 + (i * 2));
            this.readIcon.setPadding(dpToPx, 0, dpToPx, 0);
            layoutParams.width = dpToPx2;
            this.readIcon.setLayoutParams(layoutParams);
        }

        @Override // com.privacystar.core.p011ui.detail_view.inbox.InboxContract.ViewHolder
        public void setSubtitle(@NotNull String subtitleText) {
            Intrinsics.checkParameterIsNotNull(subtitleText, "subtitleText");
            this.subtitle.setText(subtitleText);
        }

        @Override // com.privacystar.core.p011ui.detail_view.inbox.InboxContract.ViewHolder
        public void setTitle(@NotNull String titleText) {
            Intrinsics.checkParameterIsNotNull(titleText, "titleText");
            this.title.setText(titleText);
        }

        @Override // com.privacystar.core.p011ui.detail_view.inbox.InboxContract.ViewHolder
        public void toggleReadIcon(boolean z, boolean z2) {
            int i = 0;
            if (z2) {
                this.readIcon.setVisibility(0);
                this.readIcon.setImageResource(C1566R.C1568drawable.ic_delete);
                this.readIcon.setScaleType(ImageView.ScaleType.FIT_CENTER);
                setReadIconLayoutParams(18, 20);
            } else if (DetailActivityManagerImpl.INSTANCE.shouldShowBadgeIcons()) {
                if (z) {
                    i = 4;
                }
                this.readIcon.setVisibility(i);
                this.readIcon.setImageResource(C1566R.C1568drawable.ic_af_inbox_read);
                this.readIcon.setScaleType(ImageView.ScaleType.FIT_START);
                setReadIconLayoutParams(4, 8);
            } else {
                int i2 = z ? C1566R.C1568drawable.ic_inbox_read : C1566R.C1568drawable.ic_inbox_unread;
                this.readIcon.setVisibility(0);
                this.readIcon.setImageResource(i2);
                this.readIcon.setScaleType(ImageView.ScaleType.FIT_CENTER);
                setReadIconLayoutParams(16, 40);
            }
        }
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @NotNull
    public final InboxAdapter getAdapter() {
        InboxAdapter inboxAdapter = this.adapter;
        if (inboxAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        return inboxAdapter;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.inbox_fragment;
    }

    @NotNull
    public final LinearLayout getNoItemsContainer() {
        LinearLayout linearLayout = this.noItemsContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noItemsContainer");
        }
        return linearLayout;
    }

    @NotNull
    public final InboxPresenter getPresenter() {
        return this.presenter;
    }

    @Override // com.privacystar.core.p011ui.detail_view.inbox.InboxContract.View
    @NotNull
    public Realm getRealmTemp() {
        Realm realm = getRealm();
        Intrinsics.checkExpressionValueIsNotNull(realm, "realm");
        return realm;
    }

    @NotNull
    public final RecyclerView getRecyclerView() {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        return recyclerView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.inbox.InboxContract.View
    public void launchMessage(@NotNull CampaignUtil.CampaignTemplate template) {
        Intrinsics.checkParameterIsNotNull(template, "template");
        Timber.m37d("Loading message with batch id - " + template.getBatchId(), new Object[0]);
        this.activity.swapFragment(CampaignFragment.class, template);
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    @NotNull
    public DetailFragment newInstance() {
        return new InboxFragment();
    }

    @Override // com.privacystar.core.p011ui.detail_view.inbox.InboxContract.View
    public void notifyAdapterOnUiThread() {
        this.activity.runOnUiThread(new Runnable() { // from class: com.privacystar.core.ui.detail_view.inbox.InboxFragment$notifyAdapterOnUiThread$1
            @Override // java.lang.Runnable
            public final void run() {
                InboxFragment.this.getAdapter().notifyDataSetChanged();
            }
        });
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void onButtonClicked() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View view = inflater.inflate(getLayoutResId(), viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(view, "view");
        RecyclerView recyclerView = (RecyclerView) view.findViewById(C1566R.C1569id.inbox_rv);
        Intrinsics.checkExpressionValueIsNotNull(recyclerView, "view.inbox_rv");
        this.recyclerView = recyclerView;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(C1566R.C1569id.no_items_container);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "view.no_items_container");
        this.noItemsContainer = linearLayout;
        return view;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public void onDestroyView() {
        RatingDialogFragment ratingDialogFragment;
        this.presenter.onViewDestroyed();
        if (this.rateDialog != null) {
            RatingDialogFragment ratingDialogFragment2 = this.rateDialog;
            if (ratingDialogFragment2 == null) {
                Intrinsics.throwNpe();
            }
            if (ratingDialogFragment2.isResumed() && (ratingDialogFragment = this.rateDialog) != null) {
                ratingDialogFragment.dismissAllowingStateLoss();
            }
        }
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void onFabClicked() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public boolean onMenuItemClicked(@Nullable MenuItem menuItem) {
        boolean z = false;
        if (DetailActivityManagerImpl.INSTANCE.shouldShowEditButton()) {
            Integer valueOf = menuItem != null ? Integer.valueOf(menuItem.getItemId()) : null;
            if (valueOf == null) {
                z = false;
            } else {
                z = false;
                if (valueOf.intValue() == 2131296806) {
                    this.presenter.onEditClicked();
                    menuItem.setTitle(this.editButtonLabel);
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onPause() {
        RatingDialogFragment ratingDialogFragment;
        super.onPause();
        if (this.rateDialog != null) {
            RatingDialogFragment ratingDialogFragment2 = this.rateDialog;
            if (ratingDialogFragment2 == null) {
                Intrinsics.throwNpe();
            }
            if (ratingDialogFragment2.isResumed() && (ratingDialogFragment = this.rateDialog) != null) {
                ratingDialogFragment.dismissAllowingStateLoss();
            }
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public void onResume() {
        super.onResume();
        this.presenter.onViewResumed();
    }

    public void onViewClick(@Nullable String str) {
        if (str == null) {
            Timber.m25w("Selected inbox item doesn't contain message (batchId)", new Object[0]);
        } else {
            this.presenter.onIconClicked(str);
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        this.presenter.onViewCreated();
    }

    public boolean onViewLongClick(@Nullable String str) {
        if (str == null) {
            Timber.m25w("Selected inbox item doesn't contain message (batchId)", new Object[0]);
            return false;
        }
        this.presenter.onMessageClicked(str);
        return true;
    }

    public void onViewSpecialClick(@Nullable String str, int i, @Nullable LogExpandedAction logExpandedAction) {
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void refreshContent() {
        this.presenter.onContentRefreshed();
    }

    public final void setAdapter(@NotNull InboxAdapter inboxAdapter) {
        Intrinsics.checkParameterIsNotNull(inboxAdapter, "<set-?>");
        this.adapter = inboxAdapter;
    }

    @Override // com.privacystar.core.p011ui.detail_view.inbox.InboxContract.View
    public void setEditButtonStatus(boolean z) {
        this.editButtonLabel = getString(z ? C1566R.string.inbox_fragment_done_button_label : C1566R.string.inbox_fragment_edit_button_label);
        Timber.m37d("Edit button clicked", new Object[0]);
    }

    public final void setNoItemsContainer(@NotNull LinearLayout linearLayout) {
        Intrinsics.checkParameterIsNotNull(linearLayout, "<set-?>");
        this.noItemsContainer = linearLayout;
    }

    public final void setRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkParameterIsNotNull(recyclerView, "<set-?>");
        this.recyclerView = recyclerView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.inbox.InboxContract.View
    public void setupContent(boolean z) {
        if (z) {
            RecyclerView recyclerView = this.recyclerView;
            if (recyclerView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
            }
            ViewExtensionsKt.visible(recyclerView);
            LinearLayout linearLayout = this.noItemsContainer;
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("noItemsContainer");
            }
            ViewExtensionsKt.gone(linearLayout);
            Timber.m37d("Inbox adapter has content, setting list visible.", new Object[0]);
        } else {
            RecyclerView recyclerView2 = this.recyclerView;
            if (recyclerView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
            }
            ViewExtensionsKt.gone(recyclerView2);
            LinearLayout linearLayout2 = this.noItemsContainer;
            if (linearLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("noItemsContainer");
            }
            ViewExtensionsKt.visible(linearLayout2);
            this.activity.enableToolbarMenu(false);
            Timber.m37d("Inbox adapter was null or empty, setting background message visible.", new Object[0]);
        }
        InboxAdapter inboxAdapter = this.adapter;
        if (inboxAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        inboxAdapter.notifyDataSetChanged();
    }

    @Override // com.privacystar.core.p011ui.detail_view.inbox.InboxContract.View
    public void setupRecyclerView() {
        this.adapter = new InboxAdapter();
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        RecyclerView recyclerView2 = this.recyclerView;
        if (recyclerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        InboxAdapter inboxAdapter = this.adapter;
        if (inboxAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        recyclerView2.setAdapter(inboxAdapter);
        RecyclerView recyclerView3 = this.recyclerView;
        if (recyclerView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        recyclerView3.setHasFixedSize(true);
    }

    @Override // com.privacystar.core.p011ui.detail_view.inbox.InboxContract.View
    public void setupToolbar() {
        this.activity.setDetailToolbarTitle(C1566R.string.inbox_fragment_toolbar_title);
        this.activity.enableToolbarMenu(false);
    }

    @Override // com.privacystar.core.p011ui.detail_view.inbox.InboxContract.View
    public void setupToolbarWithMenu() {
        this.activity.setDetailToolbarTitle(C1566R.string.inbox_fragment_toolbar_title);
        this.activity.setToolbarMenu(C1566R.C1572menu.menu_inbox_edit);
        this.activity.enableToolbarMenu(true);
    }

    @Override // com.privacystar.core.p011ui.detail_view.inbox.InboxContract.View
    public void setupView() {
        this.activity.enableFab(false);
    }

    @Override // com.privacystar.core.p011ui.detail_view.inbox.InboxContract.View
    public void showRateDialog() {
        if (getFragmentManager() != null && getView() != null) {
            RatingDialogFragment.Companion companion = RatingDialogFragment.Companion;
            FragmentManager fragmentManager = getFragmentManager();
            if (fragmentManager == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(fragmentManager, "fragmentManager!!");
            View view = getView();
            if (view == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(view, "view!!");
            View rootView = view.getRootView();
            Intrinsics.checkExpressionValueIsNotNull(rootView, "view!!.rootView");
            this.rateDialog = companion.showRatingDialog(fragmentManager, rootView);
        }
    }
}
