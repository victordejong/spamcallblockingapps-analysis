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
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\u0018��2\f\u0012\b\u0012\u00060\u0002R\u00020��0\u0001:\u0001\u0014B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\tH\u0016J\u001c\u0010\n\u001a\u00020\u000b2\n\u0010\f\u001a\u00060\u0002R\u00020��2\u0006\u0010\r\u001a\u00020\tH\u0016J\u001c\u0010\u000e\u001a\u00060\u0002R\u00020��2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\tH\u0016J\u0014\u0010\u0012\u001a\u00020\u000b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0013R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0015"}, d2 = {"Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;", "()V", "items", "Ljava/util/ArrayList;", "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;", "Lkotlin/collections/ArrayList;", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "replaceItems", "", "ViewHolder", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter.class */
public final class CircleGraphAdapter extends RecyclerView.a<ViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<MultiCircleGraphData> f10860a = new ArrayList<>();

    @Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0018\u0010\u0014\"\u0004\b\u0019\u0010\u0016R\u001a\u0010\u001a\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\u000e\"\u0004\b\u001c\u0010\u0010R\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b$\u0010\u0014\"\u0004\b%\u0010\u0016R\u001a\u0010&\u001a\u00020'X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+¨\u0006,"}, d2 = {"Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lcom/callapp/contacts/databinding/CircleGraphItemBinding;", "(Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;Lcom/callapp/contacts/databinding/CircleGraphItemBinding;)V", "circleGraph", "Lcom/callapp/contacts/activity/analytics/graph/DecoView;", "getCircleGraph", "()Lcom/callapp/contacts/activity/analytics/graph/DecoView;", "setCircleGraph", "(Lcom/callapp/contacts/activity/analytics/graph/DecoView;)V", "circleGraphBackground", "Landroid/widget/ImageView;", "getCircleGraphBackground", "()Landroid/widget/ImageView;", "setCircleGraphBackground", "(Landroid/widget/ImageView;)V", "circleGraphBottomText", "Landroid/widget/TextView;", "getCircleGraphBottomText", "()Landroid/widget/TextView;", "setCircleGraphBottomText", "(Landroid/widget/TextView;)V", "circleGraphCenterText", "getCircleGraphCenterText", "setCircleGraphCenterText", "circleGraphImage", "getCircleGraphImage", "setCircleGraphImage", "circleGraphProfilePicture", "Lcom/callapp/contacts/widget/ProfilePictureView;", "getCircleGraphProfilePicture", "()Lcom/callapp/contacts/widget/ProfilePictureView;", "setCircleGraphProfilePicture", "(Lcom/callapp/contacts/widget/ProfilePictureView;)V", "circleGraphSubBottomText", "getCircleGraphSubBottomText", "setCircleGraphSubBottomText", "rootView", "Landroidx/constraintlayout/widget/ConstraintLayout;", "getRootView", "()Landroidx/constraintlayout/widget/ConstraintLayout;", "setRootView", "(Landroidx/constraintlayout/widget/ConstraintLayout;)V", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder.class */
    public final class ViewHolder extends RecyclerView.v {
        final /* synthetic */ CircleGraphAdapter r;
        private ConstraintLayout s;
        private ImageView t;
        private ProfilePictureView u;
        private ImageView v;
        private DecoView w;
        private TextView x;
        private TextView y;
        private TextView z;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(CircleGraphAdapter circleGraphAdapter, CircleGraphItemBinding binding) {
            super(binding.getRoot());
            p.d(binding, "binding");
            this.r = circleGraphAdapter;
            ConstraintLayout constraintLayout = binding.f;
            p.b(constraintLayout, "binding.circleGraphItemRoot");
            this.s = constraintLayout;
            ImageView imageView = binding.f14306b;
            p.b(imageView, "binding.circleGraphBackground");
            this.t = imageView;
            ProfilePictureView profilePictureView = binding.g;
            p.b(profilePictureView, "binding.circleGraphProfilePicture");
            this.u = profilePictureView;
            ImageView imageView2 = binding.e;
            p.b(imageView2, "binding.circleGraphImage");
            this.v = imageView2;
            DecoView decoView = binding.f14305a;
            p.b(decoView, "binding.circleGraph");
            this.w = decoView;
            TextView textView = binding.f14308d;
            p.b(textView, "binding.circleGraphCenterText");
            this.x = textView;
            TextView textView2 = binding.f14307c;
            p.b(textView2, "binding.circleGraphBottomText");
            this.y = textView2;
            TextView textView3 = binding.h;
            p.b(textView3, "binding.circleGraphSubBottomText");
            this.z = textView3;
        }

        public final DecoView getCircleGraph() {
            return this.w;
        }

        public final ImageView getCircleGraphBackground() {
            return this.t;
        }

        public final TextView getCircleGraphBottomText() {
            return this.y;
        }

        public final TextView getCircleGraphCenterText() {
            return this.x;
        }

        public final ImageView getCircleGraphImage() {
            return this.v;
        }

        public final ProfilePictureView getCircleGraphProfilePicture() {
            return this.u;
        }

        public final TextView getCircleGraphSubBottomText() {
            return this.z;
        }

        public final ConstraintLayout getRootView() {
            return this.s;
        }
    }

    public final void a(List<MultiCircleGraphData> items) {
        p.d(items, "items");
        this.f10860a.clear();
        this.f10860a.addAll(items);
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final int getItemCount() {
        return this.f10860a.size();
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0377, code lost:
        if (r0 == null) goto L_0x037a;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.a
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

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final /* synthetic */ ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        p.d(parent, "parent");
        CircleGraphItemBinding a2 = CircleGraphItemBinding.a(LayoutInflater.from(parent.getContext()), parent);
        p.b(a2, "CircleGraphItemBinding.i….context), parent, false)");
        return new ViewHolder(this, a2);
    }
}
