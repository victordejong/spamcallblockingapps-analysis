package com.callapp.contacts.activity.analytics.cards;

import android.widget.ImageView;
import android.widget.TextView;
import com.akexorcist.roundcornerprogressbar.TextRoundCornerProgressBar;
import com.akexorcist.roundcornerprogressbar.a;
import com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard;
import com.callapp.contacts.activity.analytics.data.items.HoursCallDataItem;
import com.callapp.contacts.activity.analytics.progressGraph.fragment.CallDayNightTimeGraphFragment;
import com.callapp.contacts.activity.contact.cards.MultiCardContainer;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.EnumSet;
import java.util.Set;
import kotlin.jvm.internal.p;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/BaseHourdCard.class */
public abstract class BaseHourdCard<T, R> extends AnalyticsWrapperCard<T, R> {
    public CallDayNightTimeGraphFragment callDayNightTimeGraphFragment;
    public HoursCallDataItem dataCurrent;
    public PresentersContainer.MODE mode;

    public BaseHourdCard(MultiCardContainer multiCardContainer, int i) {
        super(multiCardContainer, i);
    }

    public BaseHourdCard(PresentersContainer presentersContainer, int i) {
        super(presentersContainer, i);
    }

    public void animateGraph() {
        CallDayNightTimeGraphFragment callDayNightTimeGraphFragment = this.callDayNightTimeGraphFragment;
        HoursCallDataItem dataCurrent = this.dataCurrent;
        p.d(dataCurrent, "dataCurrent");
        callDayNightTimeGraphFragment.f11023d = dataCurrent;
        if (dataCurrent.getTotalIncoming() == 0 && dataCurrent.getTotalOutgoing() == 0) {
            TextRoundCornerProgressBar textRoundCornerProgressBar = callDayNightTimeGraphFragment.f11022c;
            if (textRoundCornerProgressBar == null) {
                p.a("progressIncoming");
            }
            textRoundCornerProgressBar.setMax(BitmapDescriptorFactory.HUE_RED);
            TextRoundCornerProgressBar textRoundCornerProgressBar2 = callDayNightTimeGraphFragment.f11021b;
            if (textRoundCornerProgressBar2 == null) {
                p.a("progressOutgoing");
            }
            textRoundCornerProgressBar2.setMax(BitmapDescriptorFactory.HUE_RED);
            TextRoundCornerProgressBar textRoundCornerProgressBar3 = callDayNightTimeGraphFragment.f11021b;
            if (textRoundCornerProgressBar3 == null) {
                p.a("progressOutgoing");
            }
            textRoundCornerProgressBar3.setProgress(BitmapDescriptorFactory.HUE_RED);
            TextRoundCornerProgressBar textRoundCornerProgressBar4 = callDayNightTimeGraphFragment.f11022c;
            if (textRoundCornerProgressBar4 == null) {
                p.a("progressIncoming");
            }
            textRoundCornerProgressBar4.setProgress(BitmapDescriptorFactory.HUE_RED);
            TextView textView = callDayNightTimeGraphFragment.getBinding().f14294d;
            p.b(textView, "binding.dayTextOutgoing");
            textView.setVisibility(8);
            ImageView imageView = callDayNightTimeGraphFragment.getBinding().f14292b;
            p.b(imageView, "binding.dayImageOutgoing");
            imageView.setVisibility(8);
            TextView textView2 = callDayNightTimeGraphFragment.getBinding().f14293c;
            p.b(textView2, "binding.dayTextIncoming");
            textView2.setVisibility(8);
            ImageView imageView2 = callDayNightTimeGraphFragment.getBinding().f14291a;
            p.b(imageView2, "binding.dayImageIncoming");
            imageView2.setVisibility(8);
            TextRoundCornerProgressBar textRoundCornerProgressBar5 = callDayNightTimeGraphFragment.f11021b;
            if (textRoundCornerProgressBar5 == null) {
                p.a("progressOutgoing");
            }
            textRoundCornerProgressBar5.setProgressColor(ThemeUtils.getColor(a.C0129a.round_corner_progress_bar_progress_default));
            TextRoundCornerProgressBar textRoundCornerProgressBar6 = callDayNightTimeGraphFragment.f11021b;
            if (textRoundCornerProgressBar6 == null) {
                p.a("progressOutgoing");
            }
            textRoundCornerProgressBar6.setSecondaryProgressColor(ThemeUtils.getColor(2131099920));
            TextRoundCornerProgressBar textRoundCornerProgressBar7 = callDayNightTimeGraphFragment.f11022c;
            if (textRoundCornerProgressBar7 == null) {
                p.a("progressIncoming");
            }
            textRoundCornerProgressBar7.setProgressColor(ThemeUtils.getColor(a.C0129a.round_corner_progress_bar_progress_default));
            TextRoundCornerProgressBar textRoundCornerProgressBar8 = callDayNightTimeGraphFragment.f11022c;
            if (textRoundCornerProgressBar8 == null) {
                p.a("progressIncoming");
            }
            textRoundCornerProgressBar8.setSecondaryProgressColor(ThemeUtils.getColor(2131099920));
            return;
        }
        TextRoundCornerProgressBar textRoundCornerProgressBar9 = callDayNightTimeGraphFragment.f11022c;
        if (textRoundCornerProgressBar9 == null) {
            p.a("progressIncoming");
        }
        textRoundCornerProgressBar9.setMax(100.0f);
        TextRoundCornerProgressBar textRoundCornerProgressBar10 = callDayNightTimeGraphFragment.f11021b;
        if (textRoundCornerProgressBar10 == null) {
            p.a("progressOutgoing");
        }
        textRoundCornerProgressBar10.setMax(100.0f);
        float outgoingNight = (dataCurrent.getOutgoingNight() * 100) / dataCurrent.getTotalOutgoing();
        int i = outgoingNight < 1.0f ? ((int) outgoingNight) + 1 : (int) outgoingNight;
        float incomingNight = (dataCurrent.getIncomingNight() * 100) / dataCurrent.getTotalIncoming();
        int i2 = incomingNight < 1.0f ? ((int) incomingNight) + 1 : (int) incomingNight;
        float f = i2;
        float f2 = f;
        if (f < callDayNightTimeGraphFragment.f11020a) {
            f2 = f;
            if (f > BitmapDescriptorFactory.HUE_RED) {
                f2 = callDayNightTimeGraphFragment.f11020a;
            }
        }
        float f3 = i;
        float f4 = f3;
        if (f3 < callDayNightTimeGraphFragment.f11020a) {
            f4 = f3;
            if (f3 > BitmapDescriptorFactory.HUE_RED) {
                f4 = callDayNightTimeGraphFragment.f11020a;
            }
        }
        TextRoundCornerProgressBar textRoundCornerProgressBar11 = callDayNightTimeGraphFragment.f11021b;
        if (textRoundCornerProgressBar11 == null) {
            p.a("progressOutgoing");
        }
        textRoundCornerProgressBar11.setProgress(f4);
        TextRoundCornerProgressBar textRoundCornerProgressBar12 = callDayNightTimeGraphFragment.f11022c;
        if (textRoundCornerProgressBar12 == null) {
            p.a("progressIncoming");
        }
        textRoundCornerProgressBar12.setProgress(f2);
        TextRoundCornerProgressBar textRoundCornerProgressBar13 = callDayNightTimeGraphFragment.f11021b;
        if (textRoundCornerProgressBar13 == null) {
            p.a("progressOutgoing");
        }
        callDayNightTimeGraphFragment.setupOutgoingCalls(i, textRoundCornerProgressBar13.getProgress());
        callDayNightTimeGraphFragment.setupIncomingCalls(i2);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return Activities.getString(2131887264);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phone);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 110;
    }

    @Override // com.callapp.contacts.activity.analytics.data.UpdateAnalyticsCardEvent
    public void onAnalyticsRefreshCard(PresentersContainer.MODE mode) {
        this.mode = mode;
        refreshCardData();
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
    }

    public abstract void refreshCardData();

    @Override // it.gmariotti.cardslib.library.a.a.a
    public void setTitle(String str) {
        super.setTitle(str);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }
}
