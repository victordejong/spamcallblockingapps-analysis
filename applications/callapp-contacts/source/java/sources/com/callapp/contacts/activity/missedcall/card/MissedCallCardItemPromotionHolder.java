package com.callapp.contacts.activity.missedcall.card;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.marketplace.CallScreenThemeStoreItemsListActivity;
import com.callapp.contacts.activity.missedcall.card.MissedCallPromotionManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder.class */
public class MissedCallCardItemPromotionHolder extends BaseCallAppViewHolder {

    /* renamed from: s */
    TextView f23908s;

    /* renamed from: t */
    TextView f23909t;

    /* renamed from: u */
    ImageView f23910u;

    /* renamed from: v */
    Context f23911v;

    /* renamed from: w */
    ImageView f23912w;

    /* renamed from: x */
    private CardView f23913x;

    /* renamed from: y */
    private TextView f23914y;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$OnCloseClickListener.class */
    public interface OnCloseClickListener {
        /* renamed from: r_ */
        void mo29781r_();
    }

    public MissedCallCardItemPromotionHolder(View view, Context context, final OnCloseClickListener onCloseClickListener) {
        super(view);
        this.f23911v = context;
        this.f23913x = (CardView) view.findViewById(2131363601);
        this.f23908s = (TextView) view.findViewById(2131363604);
        this.f23909t = (TextView) view.findViewById(2131363603);
        this.f23910u = (ImageView) view.findViewById(2131363600);
        ImageView imageView = (ImageView) view.findViewById(2131362379);
        this.f23912w = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.card.MissedCallCardItemPromotionHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                OnCloseClickListener onCloseClickListener2 = onCloseClickListener;
                if (onCloseClickListener2 != null) {
                    onCloseClickListener2.mo29781r_();
                }
            }
        });
        this.f23914y = (TextView) view.findViewById(2131363599);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) (Activities.getScreenWidth(1) * 0.8d), (int) CallAppApplication.get().getResources().getDimension(2131165776));
        layoutParams.setMargins(this.f23913x.getResources().getDimensionPixelOffset(2131165549), this.f23913x.getResources().getDimensionPixelOffset(2131165549), this.f23913x.getResources().getDimensionPixelOffset(2131165549), this.f23913x.getResources().getDimensionPixelOffset(2131165549));
        this.f23913x.setLayoutParams(layoutParams);
        this.f23913x.requestLayout();
        if (ThemeUtils.isThemeLight()) {
            this.f23913x.setCardBackgroundColor(ThemeUtils.getColor(2131100228));
            this.f23908s.setTextColor(ThemeUtils.getColor(2131099918));
        } else {
            this.f23913x.setCardBackgroundColor(ThemeUtils.getColor(2131099918));
            this.f23908s.setTextColor(ThemeUtils.getColor(2131100228));
        }
        this.f23909t.setTextColor(ThemeUtils.getColor(2131099784));
        CardView cardView = this.f23913x;
        cardView.setRadius(cardView.getResources().getDimensionPixelOffset(2131165583));
    }

    public void setListener(final MissedCallCardPromotionDataItem missedCallCardPromotionDataItem) {
        if (missedCallCardPromotionDataItem.getId().equals(MissedCallPromotionManager.MissedCallPromotionType.CALL_SCREEN.getName())) {
            ViewUtils.m27294c(this.f23914y, 2131232210, ThemeUtils.getColor(2131099941));
            this.f23914y.setText(Activities.getString(2131887204));
            this.f23914y.setAllCaps(true);
            this.f23914y.setVisibility(0);
            this.f23914y.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.card.MissedCallCardItemPromotionHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AnalyticsManager.get().m28450a(Constants.MISSED_CALL_CATEGORY, "ClickPlaceholderLastCard");
                    Activities.m27685a(MissedCallCardItemPromotionHolder.this.f23911v, new Intent(CallAppApplication.get(), CallScreenThemeStoreItemsListActivity.class));
                }
            });
        } else if (!missedCallCardPromotionDataItem.getId().equals(MissedCallPromotionManager.MissedCallPromotionType.CONFIG.getName())) {
            this.f23914y.setVisibility(8);
        } else {
            ViewUtils.m27294c(this.f23914y, 2131232210, ThemeUtils.getColor(2131099941));
            this.f23914y.setText(missedCallCardPromotionDataItem.getActionText());
            this.f23914y.setAllCaps(true);
            this.f23914y.setVisibility(0);
            this.f23914y.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.card.MissedCallCardItemPromotionHolder.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AnalyticsManager.get().m28450a(Constants.MISSED_CALL_CATEGORY, "ClickPlaceholderLastCard");
                    Activities.m27685a(MissedCallCardItemPromotionHolder.this.f23911v, new Intent("android.intent.action.VIEW", Uri.parse(missedCallCardPromotionDataItem.getActionCta())));
                }
            });
        }
    }
}
