package com.callapp.contacts.activity.analytics.cards;

import android.widget.ImageView;
import android.widget.TextView;
import com.akexorcist.roundcornerprogressbar.C3244a;
import com.akexorcist.roundcornerprogressbar.TextRoundCornerProgressBar;
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
import kotlin.jvm.internal.C18524p;
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
        C18524p.m3840d(dataCurrent, "dataCurrent");
        callDayNightTimeGraphFragment.f20185d = dataCurrent;
        if (dataCurrent.getTotalIncoming() != 0 || dataCurrent.getTotalOutgoing() != 0) {
            TextRoundCornerProgressBar textRoundCornerProgressBar = callDayNightTimeGraphFragment.f20184c;
            if (textRoundCornerProgressBar == null) {
                C18524p.m3848a("progressIncoming");
            }
            textRoundCornerProgressBar.setMax(100.0f);
            TextRoundCornerProgressBar textRoundCornerProgressBar2 = callDayNightTimeGraphFragment.f20183b;
            if (textRoundCornerProgressBar2 == null) {
                C18524p.m3848a("progressOutgoing");
            }
            textRoundCornerProgressBar2.setMax(100.0f);
            float outgoingNight = (dataCurrent.getOutgoingNight() * 100) / dataCurrent.getTotalOutgoing();
            int i = outgoingNight < 1.0f ? ((int) outgoingNight) + 1 : (int) outgoingNight;
            float incomingNight = (dataCurrent.getIncomingNight() * 100) / dataCurrent.getTotalIncoming();
            int i2 = incomingNight < 1.0f ? ((int) incomingNight) + 1 : (int) incomingNight;
            float f = i2;
            float f2 = f;
            if (f < callDayNightTimeGraphFragment.f20182a) {
                f2 = f;
                if (f > BitmapDescriptorFactory.HUE_RED) {
                    f2 = callDayNightTimeGraphFragment.f20182a;
                }
            }
            float f3 = i;
            float f4 = f3;
            if (f3 < callDayNightTimeGraphFragment.f20182a) {
                f4 = f3;
                if (f3 > BitmapDescriptorFactory.HUE_RED) {
                    f4 = callDayNightTimeGraphFragment.f20182a;
                }
            }
            TextRoundCornerProgressBar textRoundCornerProgressBar3 = callDayNightTimeGraphFragment.f20183b;
            if (textRoundCornerProgressBar3 == null) {
                C18524p.m3848a("progressOutgoing");
            }
            textRoundCornerProgressBar3.setProgress(f4);
            TextRoundCornerProgressBar textRoundCornerProgressBar4 = callDayNightTimeGraphFragment.f20184c;
            if (textRoundCornerProgressBar4 == null) {
                C18524p.m3848a("progressIncoming");
            }
            textRoundCornerProgressBar4.setProgress(f2);
            TextRoundCornerProgressBar textRoundCornerProgressBar5 = callDayNightTimeGraphFragment.f20183b;
            if (textRoundCornerProgressBar5 == null) {
                C18524p.m3848a("progressOutgoing");
            }
            callDayNightTimeGraphFragment.setupOutgoingCalls(i, textRoundCornerProgressBar5.getProgress());
            callDayNightTimeGraphFragment.setupIncomingCalls(i2);
            return;
        }
        TextRoundCornerProgressBar textRoundCornerProgressBar6 = callDayNightTimeGraphFragment.f20184c;
        if (textRoundCornerProgressBar6 == null) {
            C18524p.m3848a("progressIncoming");
        }
        textRoundCornerProgressBar6.setMax(BitmapDescriptorFactory.HUE_RED);
        TextRoundCornerProgressBar textRoundCornerProgressBar7 = callDayNightTimeGraphFragment.f20183b;
        if (textRoundCornerProgressBar7 == null) {
            C18524p.m3848a("progressOutgoing");
        }
        textRoundCornerProgressBar7.setMax(BitmapDescriptorFactory.HUE_RED);
        TextRoundCornerProgressBar textRoundCornerProgressBar8 = callDayNightTimeGraphFragment.f20183b;
        if (textRoundCornerProgressBar8 == null) {
            C18524p.m3848a("progressOutgoing");
        }
        textRoundCornerProgressBar8.setProgress(BitmapDescriptorFactory.HUE_RED);
        TextRoundCornerProgressBar textRoundCornerProgressBar9 = callDayNightTimeGraphFragment.f20184c;
        if (textRoundCornerProgressBar9 == null) {
            C18524p.m3848a("progressIncoming");
        }
        textRoundCornerProgressBar9.setProgress(BitmapDescriptorFactory.HUE_RED);
        TextView textView = callDayNightTimeGraphFragment.getBinding().f24987d;
        C18524p.m3843b(textView, "binding.dayTextOutgoing");
        textView.setVisibility(8);
        ImageView imageView = callDayNightTimeGraphFragment.getBinding().f24985b;
        C18524p.m3843b(imageView, "binding.dayImageOutgoing");
        imageView.setVisibility(8);
        TextView textView2 = callDayNightTimeGraphFragment.getBinding().f24986c;
        C18524p.m3843b(textView2, "binding.dayTextIncoming");
        textView2.setVisibility(8);
        ImageView imageView2 = callDayNightTimeGraphFragment.getBinding().f24984a;
        C18524p.m3843b(imageView2, "binding.dayImageIncoming");
        imageView2.setVisibility(8);
        TextRoundCornerProgressBar textRoundCornerProgressBar10 = callDayNightTimeGraphFragment.f20183b;
        if (textRoundCornerProgressBar10 == null) {
            C18524p.m3848a("progressOutgoing");
        }
        textRoundCornerProgressBar10.setProgressColor(ThemeUtils.getColor(C3244a.C3245a.round_corner_progress_bar_progress_default));
        TextRoundCornerProgressBar textRoundCornerProgressBar11 = callDayNightTimeGraphFragment.f20183b;
        if (textRoundCornerProgressBar11 == null) {
            C18524p.m3848a("progressOutgoing");
        }
        textRoundCornerProgressBar11.setSecondaryProgressColor(ThemeUtils.getColor(2131099920));
        TextRoundCornerProgressBar textRoundCornerProgressBar12 = callDayNightTimeGraphFragment.f20184c;
        if (textRoundCornerProgressBar12 == null) {
            C18524p.m3848a("progressIncoming");
        }
        textRoundCornerProgressBar12.setProgressColor(ThemeUtils.getColor(C3244a.C3245a.round_corner_progress_bar_progress_default));
        TextRoundCornerProgressBar textRoundCornerProgressBar13 = callDayNightTimeGraphFragment.f20184c;
        if (textRoundCornerProgressBar13 == null) {
            C18524p.m3848a("progressIncoming");
        }
        textRoundCornerProgressBar13.setSecondaryProgressColor(ThemeUtils.getColor(2131099920));
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

    @Override // it.gmariotti.cardslib.library.p510a.p511a.AbstractC18070a
    public void setTitle(String str) {
        super.setTitle(str);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }
}
