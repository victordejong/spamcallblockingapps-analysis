package com.callapp.contacts.activity.marketplace.bundle;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0019\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0019\u0010\n\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\tR\u0019\u0010\f\u001a\n \u0007*\u0004\u0018\u00010\u00030\u0003¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0019\u0010\u000f\u001a\n \u0007*\u0004\u0018\u00010\u00100\u0010¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, m4298d2 = {"Lcom/callapp/contacts/activity/marketplace/bundle/ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "view", "Landroid/view/View;", "(Landroid/view/View;)V", "tvSubtitle", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", "getTvSubtitle", "()Landroid/widget/TextView;", "tvTitle", "getTvTitle", "videoBundleFrame", "getVideoBundleFrame", "()Landroid/view/View;", "videoImage", "Landroid/widget/ImageView;", "getVideoImage", "()Landroid/widget/ImageView;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/bundle/ViewHolder.class */
public final class ViewHolder extends RecyclerView.AbstractC2657v {

    /* renamed from: r */
    private final TextView f23565r = (TextView) this.itemView.findViewById(2131364416);

    /* renamed from: s */
    private final TextView f23566s = (TextView) this.itemView.findViewById(2131364414);

    /* renamed from: t */
    private final ImageView f23567t = (ImageView) this.itemView.findViewById(2131364509);

    /* renamed from: u */
    private final View f23568u = this.itemView.findViewById(2131364506);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewHolder(View view) {
        super(view);
        C18524p.m3840d(view, "view");
    }

    public final TextView getTvSubtitle() {
        return this.f23566s;
    }

    public final TextView getTvTitle() {
        return this.f23565r;
    }

    public final View getVideoBundleFrame() {
        return this.f23568u;
    }

    public final ImageView getVideoImage() {
        return this.f23567t;
    }
}
