package com.callapp.contacts.activity.analytics.circleGraph;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.activity.analytics.circleGraph.data.CallAppPlusData;
import com.callapp.contacts.databinding.CallappPlusItemGraphBinding;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\u0018��2\f\u0012\b\u0012\u00060\u0002R\u00020��0\u0001:\u0001\u0014B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\tH\u0016J\u001c\u0010\n\u001a\u00020\u000b2\n\u0010\f\u001a\u00060\u0002R\u00020��2\u0006\u0010\r\u001a\u00020\tH\u0016J\u001c\u0010\u000e\u001a\u00060\u0002R\u00020��2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\tH\u0016J\u0014\u0010\u0012\u001a\u00020\u000b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0013R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0015"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;", "()V", "items", "Ljava/util/ArrayList;", "Lcom/callapp/contacts/activity/analytics/circleGraph/data/CallAppPlusData;", "Lkotlin/collections/ArrayList;", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "replaceItems", "", "ViewHolder", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter.class */
public final class CallAppPlusCircleGraphAdapter extends RecyclerView.AbstractC2626a<ViewHolder> {

    /* renamed from: a */
    private ArrayList<CallAppPlusData> f19837a = new ArrayList<>();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\b\"\u0004\b\u001c\u0010\n¨\u0006\u001d"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;", "(Lcom/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter;Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;)V", "fromTitle", "Landroid/widget/TextView;", "getFromTitle", "()Landroid/widget/TextView;", "setFromTitle", "(Landroid/widget/TextView;)V", "numberOfIdentification", "getNumberOfIdentification", "setNumberOfIdentification", "resourceIcon", "Landroid/widget/ImageView;", "getResourceIcon", "()Landroid/widget/ImageView;", "setResourceIcon", "(Landroid/widget/ImageView;)V", "separatorCalls", "Landroid/view/View;", "getSeparatorCalls", "()Landroid/view/View;", "setSeparatorCalls", "(Landroid/view/View;)V", Payload.SOURCE, "getSource", "setSource", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/circleGraph/CallAppPlusCircleGraphAdapter$ViewHolder.class */
    public final class ViewHolder extends RecyclerView.AbstractC2657v {

        /* renamed from: r */
        final /* synthetic */ CallAppPlusCircleGraphAdapter f19838r;

        /* renamed from: s */
        private ImageView f19839s;

        /* renamed from: t */
        private TextView f19840t;

        /* renamed from: u */
        private TextView f19841u;

        /* renamed from: v */
        private TextView f19842v;

        /* renamed from: w */
        private View f19843w;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(CallAppPlusCircleGraphAdapter callAppPlusCircleGraphAdapter, CallappPlusItemGraphBinding binding) {
            super(binding.getRoot());
            C18524p.m3840d(binding, "binding");
            this.f19838r = callAppPlusCircleGraphAdapter;
            ImageView imageView = binding.f25006d;
            C18524p.m3843b(imageView, "binding.resourceIcon");
            this.f19839s = imageView;
            TextView textView = binding.f25005c;
            C18524p.m3843b(textView, "binding.numberOfIdentification");
            this.f19840t = textView;
            TextView textView2 = binding.f25004b;
            C18524p.m3843b(textView2, "binding.fromTitle");
            this.f19841u = textView2;
            TextView textView3 = binding.f25008f;
            C18524p.m3843b(textView3, "binding.source");
            this.f19842v = textView3;
            View view = binding.f25007e;
            C18524p.m3843b(view, "binding.separatorCalls");
            this.f19843w = view;
        }

        public final TextView getFromTitle() {
            return this.f19841u;
        }

        public final TextView getNumberOfIdentification() {
            return this.f19840t;
        }

        public final ImageView getResourceIcon() {
            return this.f19839s;
        }

        public final View getSeparatorCalls() {
            return this.f19843w;
        }

        public final TextView getSource() {
            return this.f19842v;
        }
    }

    /* renamed from: a */
    public final void m31642a(List<CallAppPlusData> items) {
        C18524p.m3840d(items, "items");
        this.f19837a.clear();
        this.f19837a.addAll(items);
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final int getItemCount() {
        return this.f19837a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final /* synthetic */ void onBindViewHolder(ViewHolder viewHolder, int i) {
        ViewHolder holder = viewHolder;
        C18524p.m3840d(holder, "holder");
        CallAppPlusData callAppPlusData = this.f19837a.get(i);
        C18524p.m3843b(callAppPlusData, "items[position]");
        CallAppPlusData callAppPlusData2 = callAppPlusData;
        boolean z = Activities.getNotificationListenersSettingsScreenIntent() != null && !Activities.m27661b();
        holder.getResourceIcon().setImageResource(callAppPlusData2.getImageResource());
        if (!z || !callAppPlusData2.getDependOnPermission()) {
            holder.getNumberOfIdentification().setText(String.valueOf(callAppPlusData2.getNumberOfIdentification()));
            holder.getNumberOfIdentification().setTextColor(callAppPlusData2.getImageResourceColor());
            holder.getFromTitle().setTextColor(ThemeUtils.getColor(2131100108));
            holder.getSource().setTextColor(ThemeUtils.getColor(2131100140));
        } else {
            holder.getNumberOfIdentification().setText(Activities.getString(2131887307));
            holder.getNumberOfIdentification().setTextColor(ThemeUtils.getColor(2131099919));
            holder.getFromTitle().setTextColor(ThemeUtils.getColor(2131099919));
            holder.getSource().setTextColor(ThemeUtils.getColor(2131099919));
        }
        holder.getFromTitle().setText(Activities.getText(2131886926));
        holder.getSource().setText(callAppPlusData2.getSource());
        if (callAppPlusData2.getShowSeparator()) {
            holder.getSeparatorCalls().setVisibility(0);
            holder.getSeparatorCalls().setBackgroundColor(ThemeUtils.getColor(2131099891));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final /* synthetic */ ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        C18524p.m3840d(parent, "parent");
        CallappPlusItemGraphBinding m29069a = CallappPlusItemGraphBinding.m29069a(LayoutInflater.from(parent.getContext()), parent);
        C18524p.m3843b(m29069a, "CallappPlusItemGraphBind….context), parent, false)");
        return new ViewHolder(this, m29069a);
    }
}
