package com.callapp.contacts.activity.marketplace.bundle;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.util.StringUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\b\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u000eH\u0016J\u0018\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000eH\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, m4298d2 = {"Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/callapp/contacts/activity/marketplace/bundle/ViewHolder;", "videoBundleDataList", "", "Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;", "context", "Landroid/content/Context;", "(Ljava/util/List;Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "getVideoBundleDataList", "()Ljava/util/List;", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleAdapter.class */
public final class VideoRingtoneBundleAdapter extends RecyclerView.AbstractC2626a<ViewHolder> {

    /* renamed from: a */
    private final List<VideoRingtoneBundleData> f23553a;

    /* renamed from: b */
    private final Context f23554b;

    public VideoRingtoneBundleAdapter(List<VideoRingtoneBundleData> videoBundleDataList, Context context) {
        C18524p.m3840d(videoBundleDataList, "videoBundleDataList");
        this.f23553a = videoBundleDataList;
        this.f23554b = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final int getItemCount() {
        return this.f23553a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final /* synthetic */ void onBindViewHolder(ViewHolder viewHolder, int i) {
        String str;
        ViewHolder holder = viewHolder;
        C18524p.m3840d(holder, "holder");
        VideoRingtoneBundleData videoRingtoneBundleData = this.f23553a.get(i);
        String[] m26017k = StringUtils.m26017k(videoRingtoneBundleData.getSku(), ",");
        if (m26017k.length > 1) {
            int length = m26017k.length;
            str = String.valueOf(length) + org.apache.commons.lang3.StringUtils.SPACE;
        } else {
            str = "";
        }
        TextView tvTitle = holder.getTvTitle();
        C18524p.m3843b(tvTitle, "holder.tvTitle");
        tvTitle.setText(str + videoRingtoneBundleData.getTitle());
        holder.getTvTitle().setTextColor(ThemeUtils.getColor(2131100140));
        String subTitle = videoRingtoneBundleData.getSubTitle();
        boolean z = true;
        if (subTitle != null) {
            z = subTitle.length() == 0;
        }
        if (!z) {
            TextView tvSubtitle = holder.getTvSubtitle();
            C18524p.m3843b(tvSubtitle, "holder.tvSubtitle");
            tvSubtitle.setText(videoRingtoneBundleData.getSubTitle());
            holder.getTvSubtitle().setTextColor(ThemeUtils.getColor(2131100140));
        }
        ImageView videoImage = holder.getVideoImage();
        String thumbnail = videoRingtoneBundleData.getThumbnail();
        ImageView videoImage2 = holder.getVideoImage();
        C18524p.m3843b(videoImage2, "holder.videoImage");
        new GlideUtils.GlideRequestBuilder(videoImage, thumbnail, videoImage2.getContext()).m27013d();
        ViewUtils.m27299b(holder.getVideoBundleFrame(), 2131230831, ThemeUtils.getColor(2131099775), ThemeUtils.getColor(2131099890), (int) Activities.m27699a(1.0f));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final /* synthetic */ ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        C18524p.m3840d(parent, "parent");
        View inflate = LayoutInflater.from(this.f23554b).inflate(2131559126, parent, false);
        C18524p.m3843b(inflate, "LayoutInflater.from(cont…o_bundles, parent, false)");
        return new ViewHolder(inflate);
    }
}
