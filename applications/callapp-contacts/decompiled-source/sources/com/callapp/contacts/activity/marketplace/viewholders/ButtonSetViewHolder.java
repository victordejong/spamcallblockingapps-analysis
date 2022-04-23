package com.callapp.contacts.activity.marketplace.viewholders;

import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.marketplace.ButtonSet;
import com.callapp.contacts.activity.marketplace.ButtonSetPickedListener;
import com.callapp.contacts.util.glide.GlideUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder.class */
public class ButtonSetViewHolder extends RecyclerView.v {
    private final ImageView r;
    private final ImageView s;
    private final ImageView t;

    public ButtonSetViewHolder(View view) {
        super(view);
        this.r = (ImageView) view.findViewById(2131362152);
        this.s = (ImageView) view.findViewById(2131362168);
        this.t = (ImageView) view.findViewById(2131362159);
    }

    public final void a(final ButtonSet buttonSet, final ButtonSetPickedListener buttonSetPickedListener) {
        this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.viewholders._$$Lambda$ButtonSetViewHolder$cr3EmHTIA9pfHsCPsdz_zgr82c8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ButtonSetPickedListener.this.onButtonSetPicked(buttonSet);
            }
        });
        if (buttonSet.isSingleButtonSetResource()) {
            this.s.setVisibility(0);
            this.r.setVisibility(8);
            this.t.setVisibility(8);
            if (buttonSet.isGif()) {
                new GlideUtils.GifPlayer(this.s.getContext(), this.s, buttonSet.getAnswerResourceUrl(), buttonSet.getAnswerCallDrawableRes(), -1, true);
            } else {
                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.s, buttonSet.getAnswerCallDrawableRes(), this.itemView.getContext());
                glideRequestBuilder.q = true;
                glideRequestBuilder.d();
            }
        } else {
            this.r.setVisibility(0);
            this.t.setVisibility(0);
            this.s.setVisibility(8);
            if (buttonSet.isGif()) {
                new GlideUtils.GifPlayer(this.r.getContext(), this.r, buttonSet.getAnswerResourceUrl(), buttonSet.getAnswerCallDrawableRes(), -1, true);
                new GlideUtils.GifPlayer(this.t.getContext(), this.t, buttonSet.getDeclineResourceUrl(), buttonSet.getDeclineCallDrawableRes(), -1, true);
            } else {
                GlideUtils.GlideRequestBuilder glideRequestBuilder2 = new GlideUtils.GlideRequestBuilder(this.r, buttonSet.getAnswerCallDrawableRes(), this.itemView.getContext());
                glideRequestBuilder2.q = true;
                glideRequestBuilder2.d();
                GlideUtils.GlideRequestBuilder glideRequestBuilder3 = new GlideUtils.GlideRequestBuilder(this.t, buttonSet.getDeclineCallDrawableRes(), this.itemView.getContext());
                glideRequestBuilder3.q = true;
                glideRequestBuilder3.d();
            }
        }
        if (buttonSet.isPicked()) {
            this.itemView.getBackground().setAlpha(255);
        } else {
            this.itemView.getBackground().setAlpha(52);
        }
    }
}
