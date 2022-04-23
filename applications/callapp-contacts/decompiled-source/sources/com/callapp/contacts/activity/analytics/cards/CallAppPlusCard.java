package com.callapp.contacts.activity.analytics.cards;

import android.content.Intent;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard;
import com.callapp.contacts.activity.analytics.circleGraph.data.CallAppPlusData;
import com.callapp.contacts.activity.analytics.circleGraph.data.MultiCircleGraphData;
import com.callapp.contacts.activity.analytics.circleGraph.fragment.CallAppPlusCircleGraphFragment;
import com.callapp.contacts.activity.callappplus.CallAppPlusActivity;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.mopub.mobileads.InlineVisibilityTracker;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/CallAppPlusCard.class */
public class CallAppPlusCard extends AnalyticsWrapperCard<CallAppPlusCardCardHolder, Object> {
    private InlineVisibilityTracker callAppPlusVisibilityTracker;
    private CallAppPlusCircleGraphFragment circleGraphFragment;
    private PresentersContainer.MODE mode;
    private List<MultiCircleGraphData> multiCircleGraphData;
    private Map<IMDataExtractionUtils.RecognizedPersonOrigin, CallAppPlusData> callAppPlusData = getCallAppPlusData();
    private boolean shouldShowAnimation = false;
    private boolean alreadyBounded = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder.class */
    public class CallAppPlusCardCardHolder {

        /* renamed from: b  reason: collision with root package name */
        private TextView f10710b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f10711c;

        /* renamed from: d  reason: collision with root package name */
        private final TextView f10712d;
        private final ImageView e;
        private final TextView f;
        private final View g;
        private final LinearLayout h;

        public CallAppPlusCardCardHolder(View view) {
            this.f10710b = (TextView) view.findViewById(2131364130);
            this.f10711c = (TextView) view.findViewById(2131364013);
            this.f10712d = (TextView) view.findViewById(2131362079);
            this.e = (ImageView) view.findViewById(2131363030);
            this.f = (TextView) view.findViewById(2131362510);
            this.g = view.findViewById(2131362611);
            this.h = (LinearLayout) view.findViewById(2131362198);
        }
    }

    public CallAppPlusCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131558479);
    }

    private Map<IMDataExtractionUtils.RecognizedPersonOrigin, CallAppPlusData> getCallAppPlusData() {
        HashMap hashMap = new HashMap();
        hashMap.put(IMDataExtractionUtils.RecognizedPersonOrigin.CALL, new CallAppPlusData(2131231571, 0, ThemeUtils.getColor(2131099722), true, Activities.getString(2131886489), true, false));
        hashMap.put(IMDataExtractionUtils.RecognizedPersonOrigin.WHATSAPP, new CallAppPlusData(2131231580, 0, ThemeUtils.getColor(2131099730), true, Activities.getString(2131888211), true, true));
        hashMap.put(IMDataExtractionUtils.RecognizedPersonOrigin.SMS_MESSAGE, new CallAppPlusData(2131231575, 0, ThemeUtils.getColor(2131099726), true, Activities.getString(2131887722), true, false));
        if (Build.VERSION.SDK_INT < 29) {
            hashMap.put(IMDataExtractionUtils.RecognizedPersonOrigin.CLIPBOARD, new CallAppPlusData(2131231572, 0, ThemeUtils.getColor(2131099723), true, Activities.getString(2131886985), true, false));
        } else {
            hashMap.put(IMDataExtractionUtils.RecognizedPersonOrigin.TELEGRAM, new CallAppPlusData(2131231576, 0, ThemeUtils.getColor(2131099727), true, Activities.getString(2131886992), false, true));
        }
        hashMap.put(IMDataExtractionUtils.RecognizedPersonOrigin.SEARCH, new CallAppPlusData(2131231573, 0, ThemeUtils.getColor(2131099724), true, Activities.getString(2131886988), true, false));
        if (Build.VERSION.SDK_INT < 29) {
            hashMap.put(IMDataExtractionUtils.RecognizedPersonOrigin.TELEGRAM, new CallAppPlusData(2131231576, 0, ThemeUtils.getColor(2131099727), true, Activities.getString(2131886992), false, true));
        }
        hashMap.put(IMDataExtractionUtils.RecognizedPersonOrigin.VIBER, new CallAppPlusData(2131231578, 0, ThemeUtils.getColor(2131099728), true, Activities.getString(2131888141), false, true));
        hashMap.put(IMDataExtractionUtils.RecognizedPersonOrigin.VONAGE, new CallAppPlusData(2131231579, 0, ThemeUtils.getColor(2131099729), true, Activities.getString(2131886995), false, true));
        hashMap.put(IMDataExtractionUtils.RecognizedPersonOrigin.SIGNAL, new CallAppPlusData(2131231574, 0, ThemeUtils.getColor(2131099725), true, Activities.getString(2131886989), false, true));
        return hashMap;
    }

    private void setBanner(final CallAppPlusCardCardHolder callAppPlusCardCardHolder) {
        if (Build.VERSION.SDK_INT >= 23) {
            callAppPlusCardCardHolder.f.setForeground(b.a(CallAppApplication.get(), 2131230873));
        }
        if (Activities.getNotificationListenersSettingsScreenIntent() == null || Activities.b()) {
            callAppPlusCardCardHolder.f10712d.setText(Activities.getText(2131886378));
            callAppPlusCardCardHolder.e.setImageResource(2131230897);
            callAppPlusCardCardHolder.h.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.cards.CallAppPlusCard.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.a(callAppPlusCardCardHolder.h, 1);
                    AnalyticsManager.get().a(Constants.INSIGHTS, "ClickInsightsCallAppPlus");
                    Activities.b(CallAppPlusCard.this.presentersContainer.getRealContext(), new Intent(CallAppPlusCard.this.presentersContainer.getRealContext(), CallAppPlusActivity.class));
                }
            });
            callAppPlusCardCardHolder.f.setText(Activities.getText(2131887699));
            return;
        }
        callAppPlusCardCardHolder.f10712d.setText(Activities.getText(2131886464));
        callAppPlusCardCardHolder.e.setImageResource(2131230898);
        callAppPlusCardCardHolder.h.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.cards.CallAppPlusCard.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(callAppPlusCardCardHolder.h, 1);
                CallAppPlusCard.this.presentersContainer.openNotificationAccsess();
            }
        });
        callAppPlusCardCardHolder.f.setText(Activities.getText(2131886231));
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x02e1  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0374  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x039f  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x03b6  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x04ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateData() {
        /*
            Method dump skipped, instructions count: 1372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.cards.CallAppPlusCard.updateData():void");
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return Activities.getString(2131887352);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phone);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 50;
    }

    @Override // com.callapp.contacts.activity.analytics.data.UpdateAnalyticsCardEvent
    public void onAnalyticsRefreshCard(PresentersContainer.MODE mode) {
        this.mode = mode;
        refreshCardData();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBindViewHolder(CallAppPlusCardCardHolder callAppPlusCardCardHolder) {
        this.alreadyBounded = true;
        callAppPlusCardCardHolder.f10710b.setText(Activities.getString(2131886466));
        callAppPlusCardCardHolder.f10711c.setText(Activities.getString(2131886465));
        callAppPlusCardCardHolder.f10710b.setTextColor(ThemeUtils.getColor(2131100140));
        callAppPlusCardCardHolder.f10711c.setTextColor(ThemeUtils.getColor(2131100108));
        callAppPlusCardCardHolder.g.setBackgroundColor(ThemeUtils.getColor(2131099891));
        setBanner(callAppPlusCardCardHolder);
        if (this.shouldShowAnimation) {
            this.circleGraphFragment.a(this.multiCircleGraphData, this.callAppPlusData);
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public CallAppPlusCardCardHolder onCreateViewHolder(ViewGroup viewGroup) {
        this.circleGraphFragment = (CallAppPlusCircleGraphFragment) this.presentersContainer.findFragment(2131362916);
        InlineVisibilityTracker inlineVisibilityTracker = new InlineVisibilityTracker(this.presentersContainer.getRealContext(), viewGroup, viewGroup, 500, 500);
        this.callAppPlusVisibilityTracker = inlineVisibilityTracker;
        inlineVisibilityTracker.setInlineVisibilityTrackerListener(new InlineVisibilityTracker.InlineVisibilityTrackerListener() { // from class: com.callapp.contacts.activity.analytics.cards.CallAppPlusCard.1
            @Override // com.mopub.mobileads.InlineVisibilityTracker.InlineVisibilityTrackerListener
            public void onVisibilityChanged() {
                CallAppPlusCard.this.shouldShowAnimation = true;
                if (CallAppPlusCard.this.alreadyBounded) {
                    CallAppPlusCard.this.circleGraphFragment.a(CallAppPlusCard.this.multiCircleGraphData, CallAppPlusCard.this.callAppPlusData);
                }
                if (CallAppPlusCard.this.callAppPlusVisibilityTracker != null) {
                    CallAppPlusCard.this.callAppPlusVisibilityTracker.destroy();
                    CallAppPlusCard.this.callAppPlusVisibilityTracker = null;
                }
            }
        });
        return new CallAppPlusCardCardHolder(viewGroup);
    }

    @Override // com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        InlineVisibilityTracker inlineVisibilityTracker = this.callAppPlusVisibilityTracker;
        if (inlineVisibilityTracker != null) {
            inlineVisibilityTracker.destroy();
            this.callAppPlusVisibilityTracker = null;
        }
        super.onDestroy();
    }

    public void refreshCardData() {
        if (this.presentersContainer.getContainerMode() == this.mode) {
            updateCardData(null, true);
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public void updateCardData(Object obj, boolean z) {
        updateData();
        showCard(true);
    }
}
