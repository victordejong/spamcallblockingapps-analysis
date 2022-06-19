package com.callapp.contacts.activity.analytics.circleGraph;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.analytics.circleGraph.data.MultiCircleGraphData;
import com.callapp.contacts.activity.analytics.graph.DecoView;
import com.callapp.contacts.databinding.CircleGraphItemBinding;
import com.callapp.contacts.widget.ProfilePictureView;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\u0018��2\f\u0012\b\u0012\u00060\u0002R\u00020��0\u0001:\u0001\u0014B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\tH\u0016J\u001c\u0010\n\u001a\u00020\u000b2\n\u0010\f\u001a\u00060\u0002R\u00020��2\u0006\u0010\r\u001a\u00020\tH\u0016J\u001c\u0010\u000e\u001a\u00060\u0002R\u00020��2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\tH\u0016J\u0014\u0010\u0012\u001a\u00020\u000b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0013R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0015"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;", "()V", "items", "Ljava/util/ArrayList;", "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;", "Lkotlin/collections/ArrayList;", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "replaceItems", "", "ViewHolder", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter.class */
public final class CircleGraphAdapter extends RecyclerView.AbstractC2626a<ViewHolder> {

    /* renamed from: a */
    private ArrayList<MultiCircleGraphData> f19844a = new ArrayList<>();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0018\u0010\u0014\"\u0004\b\u0019\u0010\u0016R\u001a\u0010\u001a\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\u000e\"\u0004\b\u001c\u0010\u0010R\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b$\u0010\u0014\"\u0004\b%\u0010\u0016R\u001a\u0010&\u001a\u00020'X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+¨\u0006,"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lcom/callapp/contacts/databinding/CircleGraphItemBinding;", "(Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;Lcom/callapp/contacts/databinding/CircleGraphItemBinding;)V", "circleGraph", "Lcom/callapp/contacts/activity/analytics/graph/DecoView;", "getCircleGraph", "()Lcom/callapp/contacts/activity/analytics/graph/DecoView;", "setCircleGraph", "(Lcom/callapp/contacts/activity/analytics/graph/DecoView;)V", "circleGraphBackground", "Landroid/widget/ImageView;", "getCircleGraphBackground", "()Landroid/widget/ImageView;", "setCircleGraphBackground", "(Landroid/widget/ImageView;)V", "circleGraphBottomText", "Landroid/widget/TextView;", "getCircleGraphBottomText", "()Landroid/widget/TextView;", "setCircleGraphBottomText", "(Landroid/widget/TextView;)V", "circleGraphCenterText", "getCircleGraphCenterText", "setCircleGraphCenterText", "circleGraphImage", "getCircleGraphImage", "setCircleGraphImage", "circleGraphProfilePicture", "Lcom/callapp/contacts/widget/ProfilePictureView;", "getCircleGraphProfilePicture", "()Lcom/callapp/contacts/widget/ProfilePictureView;", "setCircleGraphProfilePicture", "(Lcom/callapp/contacts/widget/ProfilePictureView;)V", "circleGraphSubBottomText", "getCircleGraphSubBottomText", "setCircleGraphSubBottomText", "rootView", "Landroidx/constraintlayout/widget/ConstraintLayout;", "getRootView", "()Landroidx/constraintlayout/widget/ConstraintLayout;", "setRootView", "(Landroidx/constraintlayout/widget/ConstraintLayout;)V", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder.class */
    public final class ViewHolder extends RecyclerView.AbstractC2657v {

        /* renamed from: r */
        final /* synthetic */ CircleGraphAdapter f19845r;

        /* renamed from: s */
        private ConstraintLayout f19846s;

        /* renamed from: t */
        private ImageView f19847t;

        /* renamed from: u */
        private ProfilePictureView f19848u;

        /* renamed from: v */
        private ImageView f19849v;

        /* renamed from: w */
        private DecoView f19850w;

        /* renamed from: x */
        private TextView f19851x;

        /* renamed from: y */
        private TextView f19852y;

        /* renamed from: z */
        private TextView f19853z;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(CircleGraphAdapter circleGraphAdapter, CircleGraphItemBinding binding) {
            super(binding.getRoot());
            C18524p.m3840d(binding, "binding");
            this.f19845r = circleGraphAdapter;
            ConstraintLayout constraintLayout = binding.f25018f;
            C18524p.m3843b(constraintLayout, "binding.circleGraphItemRoot");
            this.f19846s = constraintLayout;
            ImageView imageView = binding.f25014b;
            C18524p.m3843b(imageView, "binding.circleGraphBackground");
            this.f19847t = imageView;
            ProfilePictureView profilePictureView = binding.f25019g;
            C18524p.m3843b(profilePictureView, "binding.circleGraphProfilePicture");
            this.f19848u = profilePictureView;
            ImageView imageView2 = binding.f25017e;
            C18524p.m3843b(imageView2, "binding.circleGraphImage");
            this.f19849v = imageView2;
            DecoView decoView = binding.f25013a;
            C18524p.m3843b(decoView, "binding.circleGraph");
            this.f19850w = decoView;
            TextView textView = binding.f25016d;
            C18524p.m3843b(textView, "binding.circleGraphCenterText");
            this.f19851x = textView;
            TextView textView2 = binding.f25015c;
            C18524p.m3843b(textView2, "binding.circleGraphBottomText");
            this.f19852y = textView2;
            TextView textView3 = binding.f25020h;
            C18524p.m3843b(textView3, "binding.circleGraphSubBottomText");
            this.f19853z = textView3;
        }

        public final DecoView getCircleGraph() {
            return this.f19850w;
        }

        public final ImageView getCircleGraphBackground() {
            return this.f19847t;
        }

        public final TextView getCircleGraphBottomText() {
            return this.f19852y;
        }

        public final TextView getCircleGraphCenterText() {
            return this.f19851x;
        }

        public final ImageView getCircleGraphImage() {
            return this.f19849v;
        }

        public final ProfilePictureView getCircleGraphProfilePicture() {
            return this.f19848u;
        }

        public final TextView getCircleGraphSubBottomText() {
            return this.f19853z;
        }

        public final ConstraintLayout getRootView() {
            return this.f19846s;
        }
    }

    /* renamed from: a */
    public final void m31641a(List<MultiCircleGraphData> items) {
        C18524p.m3840d(items, "items");
        this.f19844a.clear();
        this.f19844a.addAll(items);
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final int getItemCount() {
        return this.f19844a.size();
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0377, code lost:
        if (r0 == null) goto L60;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void onBindViewHolder(com.callapp.contacts.activity.analytics.circleGraph.CircleGraphAdapter.ViewHolder r9, int r10) {
        /*
            Method dump skipped, instructions count: 1254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.circleGraph.CircleGraphAdapter.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$v, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final /* synthetic */ ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        C18524p.m3840d(parent, "parent");
        CircleGraphItemBinding m29067a = CircleGraphItemBinding.m29067a(LayoutInflater.from(parent.getContext()), parent);
        C18524p.m3843b(m29067a, "CircleGraphItemBinding.i….context), parent, false)");
        return new ViewHolder(this, m29067a);
    }
}
