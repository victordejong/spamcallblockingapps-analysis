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
    TextView s;
    TextView t;
    ImageView u;
    Context v;
    ImageView w;
    private CardView x;
    private TextView y;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$OnCloseClickListener.class */
    public interface OnCloseClickListener {
        void r_();
    }

    public MissedCallCardItemPromotionHolder(View view, Context context, final OnCloseClickListener onCloseClickListener) {
        super(view);
        this.v = context;
        this.x = (CardView) view.findViewById(2131363601);
        this.s = (TextView) view.findViewById(2131363604);
        this.t = (TextView) view.findViewById(2131363603);
        this.u = (ImageView) view.findViewById(2131363600);
        ImageView imageView = (ImageView) view.findViewById(2131362379);
        this.w = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.card.MissedCallCardItemPromotionHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                OnCloseClickListener onCloseClickListener2 = onCloseClickListener;
                if (onCloseClickListener2 != null) {
                    onCloseClickListener2.r_();
                }
            }
        });
        this.y = (TextView) view.findViewById(2131363599);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) (Activities.getScreenWidth(1) * 0.8d), (int) CallAppApplication.get().getResources().getDimension(2131165776));
        layoutParams.setMargins(this.x.getResources().getDimensionPixelOffset(2131165549), this.x.getResources().getDimensionPixelOffset(2131165549), this.x.getResources().getDimensionPixelOffset(2131165549), this.x.getResources().getDimensionPixelOffset(2131165549));
        this.x.setLayoutParams(layoutParams);
        this.x.requestLayout();
        if (ThemeUtils.isThemeLight()) {
            this.x.setCardBackgroundColor(ThemeUtils.getColor(2131100228));
            this.s.setTextColor(ThemeUtils.getColor(2131099918));
        } else {
            this.x.setCardBackgroundColor(ThemeUtils.getColor(2131099918));
            this.s.setTextColor(ThemeUtils.getColor(2131100228));
        }
        this.t.setTextColor(ThemeUtils.getColor(2131099784));
        CardView cardView = this.x;
        cardView.setRadius(cardView.getResources().getDimensionPixelOffset(2131165583));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setListener(final MissedCallCardPromotionDataItem missedCallCardPromotionDataItem) {
        if (missedCallCardPromotionDataItem.getId().equals(MissedCallPromotionManager.MissedCallPromotionType.CALL_SCREEN.getName())) {
            ViewUtils.c(this.y, 2131232210, ThemeUtils.getColor(2131099941));
            this.y.setText(Activities.getString(2131887204));
            this.y.setAllCaps(true);
            this.y.setVisibility(0);
            this.y.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.card.MissedCallCardItemPromotionHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AnalyticsManager.get().a(Constants.MISSED_CALL_CATEGORY, "ClickPlaceholderLastCard");
                    Activities.a(MissedCallCardItemPromotionHolder.this.v, new Intent(CallAppApplication.get(), CallScreenThemeStoreItemsListActivity.class));
                }
            });
        } else if (missedCallCardPromotionDataItem.getId().equals(MissedCallPromotionManager.MissedCallPromotionType.CONFIG.getName())) {
            ViewUtils.c(this.y, 2131232210, ThemeUtils.getColor(2131099941));
            this.y.setText(missedCallCardPromotionDataItem.getActionText());
            this.y.setAllCaps(true);
            this.y.setVisibility(0);
            this.y.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.card.MissedCallCardItemPromotionHolder.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AnalyticsManager.get().a(Constants.MISSED_CALL_CATEGORY, "ClickPlaceholderLastCard");
                    Activities.a(MissedCallCardItemPromotionHolder.this.v, new Intent("android.intent.action.VIEW", Uri.parse(missedCallCardPromotionDataItem.getActionCta())));
                }
            });
        } else {
            this.y.setVisibility(8);
        }
    }
}
