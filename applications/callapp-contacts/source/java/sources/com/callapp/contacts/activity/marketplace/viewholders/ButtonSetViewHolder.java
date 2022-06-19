package com.callapp.contacts.activity.marketplace.viewholders;

import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.marketplace.ButtonSet;
import com.callapp.contacts.activity.marketplace.ButtonSetPickedListener;
import com.callapp.contacts.util.glide.GlideUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder.class */
public class ButtonSetViewHolder extends RecyclerView.AbstractC2657v {

    /* renamed from: r */
    private final ImageView f23815r;

    /* renamed from: s */
    private final ImageView f23816s;

    /* renamed from: t */
    private final ImageView f23817t;

    public ButtonSetViewHolder(View view) {
        super(view);
        this.f23815r = (ImageView) view.findViewById(2131362152);
        this.f23816s = (ImageView) view.findViewById(2131362168);
        this.f23817t = (ImageView) view.findViewById(2131362159);
    }

    /* renamed from: a */
    public final void m29853a(final ButtonSet buttonSet, final ButtonSetPickedListener buttonSetPickedListener) {
        this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.viewholders._$$Lambda$ButtonSetViewHolder$cr3EmHTIA9pfHsCPsdz_zgr82c8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ButtonSetPickedListener.this.onButtonSetPicked(buttonSet);
            }
        });
        if (buttonSet.isSingleButtonSetResource()) {
            this.f23816s.setVisibility(0);
            this.f23815r.setVisibility(8);
            this.f23817t.setVisibility(8);
            if (buttonSet.isGif()) {
                new GlideUtils.GifPlayer(this.f23816s.getContext(), this.f23816s, buttonSet.getAnswerResourceUrl(), buttonSet.getAnswerCallDrawableRes(), -1, true);
            } else {
                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.f23816s, buttonSet.getAnswerCallDrawableRes(), this.itemView.getContext());
                glideRequestBuilder.f28251q = true;
                glideRequestBuilder.m27013d();
            }
        } else {
            this.f23815r.setVisibility(0);
            this.f23817t.setVisibility(0);
            this.f23816s.setVisibility(8);
            if (buttonSet.isGif()) {
                new GlideUtils.GifPlayer(this.f23815r.getContext(), this.f23815r, buttonSet.getAnswerResourceUrl(), buttonSet.getAnswerCallDrawableRes(), -1, true);
                new GlideUtils.GifPlayer(this.f23817t.getContext(), this.f23817t, buttonSet.getDeclineResourceUrl(), buttonSet.getDeclineCallDrawableRes(), -1, true);
            } else {
                GlideUtils.GlideRequestBuilder glideRequestBuilder2 = new GlideUtils.GlideRequestBuilder(this.f23815r, buttonSet.getAnswerCallDrawableRes(), this.itemView.getContext());
                glideRequestBuilder2.f28251q = true;
                glideRequestBuilder2.m27013d();
                GlideUtils.GlideRequestBuilder glideRequestBuilder3 = new GlideUtils.GlideRequestBuilder(this.f23817t, buttonSet.getDeclineCallDrawableRes(), this.itemView.getContext());
                glideRequestBuilder3.f28251q = true;
                glideRequestBuilder3.m27013d();
            }
        }
        if (buttonSet.isPicked()) {
            this.itemView.getBackground().setAlpha(255);
        } else {
            this.itemView.getBackground().setAlpha(52);
        }
    }
}
