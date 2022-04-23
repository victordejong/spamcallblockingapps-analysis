package com.tmobile.services.nameid.scamBlock;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.p007ui.UIAnalyticConfigurator;
import com.tmobile.services.nameid.scamBlock.ScamBlock;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.RecyclerViewClickListener;
import com.tmobile.services.nameid.utility.WidgetUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001:\u0002./B\u0017\u0012\u0006\u0010'\u001a\u00020&\u0012\u0006\u0010*\u001a\u00020)¢\u0006\u0004\b,\u0010-J\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u001b\u0010\u001b\u001a\u00020\u00112\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00040\u0019¢\u0006\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001d\u001a\u00020\u00028\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010 \u001a\u00020\u001f8\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b \u0010!R\"\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00040\u00198\u0002@\u0002X\u0083\u000e¢\u0006\f\n\u0004\b\"\u0010#\u0012\u0004\b$\u0010%R\u0016\u0010'\u001a\u00020&8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010*\u001a\u00020)8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+¨\u00060"}, d2 = {"Lcom/tmobile/services/nameid/scamBlock/ScamBlockRecyclerViewAdapter;", "androidx/recyclerview/widget/RecyclerView$Adapter", "", "i", "Lcom/tmobile/services/nameid/model/activity/ActivityItem;", "getItem", "(I)Lcom/tmobile/services/nameid/model/activity/ActivityItem;", "getItemCount", "()I", "position", "getItemViewType", "(I)I", "", "isFooter", "(I)Z", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "h", "", "onBindViewHolder", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "", "activityItems", "setActivityItems", "(Ljava/util/List;)V", "FOOTER_COUNT", "I", "", "LOG_TAG", "Ljava/lang/String;", FirebaseAnalytics.Param.ITEMS, "Ljava/util/List;", "getItems$annotations", "()V", "Lcom/tmobile/services/nameid/utility/RecyclerViewClickListener;", "listener", "Lcom/tmobile/services/nameid/utility/RecyclerViewClickListener;", "Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;", "scamBlockState", "Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;", "<init>", "(Lcom/tmobile/services/nameid/utility/RecyclerViewClickListener;Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;)V", "FooterViewHolder", "ItemType", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlockRecyclerViewAdapter.class */
public final class ScamBlockRecyclerViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a */
    private final int f13818a = 1;

    /* renamed from: b */
    private final String f13819b = "ScamBlockRVAdapter#";

    /* renamed from: c */
    private List<? extends ActivityItem> f13820c = new ArrayList();

    /* renamed from: d */
    private final RecyclerViewClickListener f13821d;

    /* renamed from: e */
    private final ScamBlock.State f13822e;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b��\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcom/tmobile/services/nameid/scamBlock/ScamBlockRecyclerViewAdapter$FooterViewHolder;", "androidx/recyclerview/widget/RecyclerView$ViewHolder", "Landroid/widget/TextView;", "linkText", "Landroid/widget/TextView;", "getLinkText", "()Landroid/widget/TextView;", "Landroid/view/View;", "v", "Lcom/tmobile/services/nameid/utility/RecyclerViewClickListener;", "listener", "Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;", "scamBlockState", "<init>", "(Landroid/view/View;Lcom/tmobile/services/nameid/utility/RecyclerViewClickListener;Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlockRecyclerViewAdapter$FooterViewHolder.class */
    public static final class FooterViewHolder extends RecyclerView.ViewHolder {
        @NotNull

        /* renamed from: a */
        private final TextView f13823a;

        @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlockRecyclerViewAdapter$FooterViewHolder$WhenMappings.class */
        public final /* synthetic */ class WhenMappings {

            /* renamed from: a */
            public static final /* synthetic */ int[] f13826a;

            static {
                int[] iArr = new int[ScamBlock.State.values().length];
                f13826a = iArr;
                iArr[ScamBlock.State.ON.ordinal()] = 1;
                f13826a[ScamBlock.State.FAKE_ON.ordinal()] = 2;
                f13826a[ScamBlock.State.PENDING_ON.ordinal()] = 3;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FooterViewHolder(@NotNull View v, @NotNull final RecyclerViewClickListener listener, @NotNull ScamBlock.State scamBlockState) {
            super(v);
            Intrinsics.m1830e(v, "v");
            Intrinsics.m1830e(listener, "listener");
            Intrinsics.m1830e(scamBlockState, "scamBlockState");
            View findViewById = v.findViewById(C1517R.C1520id.scam_block_counter_link);
            Intrinsics.m1831d(findViewById, "v.findViewById(R.id.scam_block_counter_link)");
            this.f13823a = (TextView) findViewById;
            int i = WhenMappings.f13826a[scamBlockState.ordinal()];
            int i2 = 2131690288;
            if (i != 1) {
                i2 = 2131690288;
                if (i != 2) {
                    i2 = 2131690288;
                    if (i != 3) {
                        i2 = C1517R.string.scam_block_counter_all_activity_link;
                    }
                }
            }
            this.f13823a.setText(v.getContext().getString(i2));
            this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.scamBlock.ScamBlockRecyclerViewAdapter.FooterViewHolder.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    listener.mo5380a(FooterViewHolder.this.getAdapterPosition());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\t\b\u0082\u0001\u0018��2\u00020\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/tmobile/services/nameid/scamBlock/ScamBlockRecyclerViewAdapter$ItemType;", "Ljava/lang/Enum;", "", FirebaseAnalytics.Param.VALUE, "I", "getValue", "()I", "<init>", "(Ljava/lang/String;II)V", "NORMAL", "FOOTER", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlockRecyclerViewAdapter$ItemType.class */
    public enum ItemType {
        NORMAL(1),
        FOOTER(2);
        
        private final int value;

        ItemType(int i) {
            this.value = i;
        }

        public final int getValue() {
            return this.value;
        }
    }

    public ScamBlockRecyclerViewAdapter(@NotNull RecyclerViewClickListener listener, @NotNull ScamBlock.State scamBlockState) {
        Intrinsics.m1830e(listener, "listener");
        Intrinsics.m1830e(scamBlockState, "scamBlockState");
        this.f13821d = listener;
        this.f13822e = scamBlockState;
    }

    /* renamed from: c */
    public final boolean m6278c(int i) {
        return i == this.f13820c.size();
    }

    /* renamed from: d */
    public final void m6277d(@NotNull List<? extends ActivityItem> activityItems) {
        Intrinsics.m1830e(activityItems, "activityItems");
        LogUtil.m5643d(this.f13819b + "setActivityItems", "setting items in RecyclerView - empty?" + activityItems.isEmpty());
        this.f13820c = activityItems;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f13820c.size() + this.f13818a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return m6278c(i) ? ItemType.FOOTER.getValue() : ItemType.NORMAL.getValue();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder h, int i) {
        Intrinsics.m1830e(h, "h");
        if (getItemViewType(i) == ItemType.FOOTER.getValue()) {
            View view = ((FooterViewHolder) h).itemView;
            Intrinsics.m1831d(view, "footerViewHolder.itemView");
            view.setVisibility(0);
        } else if (i >= 0 && i < this.f13820c.size()) {
            WidgetUtils.GenericViewHolder genericViewHolder = (WidgetUtils.GenericViewHolder) h;
            ActivityItem activityItem = (ActivityItem) this.f13820c.get(i);
            if (activityItem != null) {
                WidgetUtils.m5244b(activityItem, genericViewHolder);
                return;
            }
            LogUtil.m5631p(this.f13819b + "onBindViewHolder", "item was null, cannot setup view holder");
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i) {
        RecyclerView.ViewHolder viewHolder;
        Intrinsics.m1830e(parent, "parent");
        if (i == ItemType.FOOTER.getValue()) {
            View v = LayoutInflater.from(parent.getContext()).inflate(C1517R.layout.scam_block_counter_footer, parent, false);
            Intrinsics.m1831d(v, "v");
            viewHolder = new FooterViewHolder(v, this.f13821d, this.f13822e);
        } else {
            View inflate = LayoutInflater.from(parent.getContext()).inflate(C1517R.layout.recent_list_item, parent, false);
            UIAnalyticConfigurator.m6241k().m6239m("Activity Item", inflate);
            viewHolder = new WidgetUtils.GenericViewHolder(inflate, this.f13821d);
        }
        return viewHolder;
    }
}
