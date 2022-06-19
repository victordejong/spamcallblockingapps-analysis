package com.callapp.contacts.activity.missedcall.card;

import android.animation.Animator;
import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseCallAppAdapter;
import com.callapp.contacts.activity.base.BaseCallAppFragment;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.interfaces.ContactItemViewEvents;
import com.callapp.contacts.activity.missedcall.MissedCallFrequentManager;
import com.callapp.contacts.activity.missedcall.MissedCallManager;
import com.callapp.contacts.activity.missedcall.card.MissedCallsCardAdapter;
import com.callapp.contacts.api.ContextRunnable;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.CallReminderFrequentData;
import com.callapp.contacts.model.objectbox.MissedCallCardIds;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.google.common.collect.C15484av;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder.class */
public class MissedCallCardsHeaderListHolder extends BaseCallAppViewHolder implements MissedCallsCardAdapter.UserCloseAllCards, MissedCallsCardAdapter.UserCloseAllPromotions {

    /* renamed from: A */
    private Animator f23928A;

    /* renamed from: B */
    private MissedCallCardVisibilityInterface f23929B;

    /* renamed from: s */
    protected RecyclerView f23933s;

    /* renamed from: t */
    protected BaseCallAppAdapter f23934t;

    /* renamed from: u */
    public Animator f23935u;

    /* renamed from: v */
    private final LayoutInflater f23936v;

    /* renamed from: x */
    private FrameLayout f23938x;

    /* renamed from: y */
    private ContactItemViewEvents f23939y;

    /* renamed from: z */
    private Animator f23940z;

    /* renamed from: w */
    private List<BaseViewTypeData> f23937w = new ArrayList();

    /* renamed from: C */
    private boolean f23930C = false;

    /* renamed from: D */
    private boolean f23931D = true;

    /* renamed from: E */
    private boolean f23932E = false;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$MissedCallCardVisibilityInterface.class */
    public interface MissedCallCardVisibilityInterface {
        /* renamed from: d */
        void mo29786d();
    }

    public MissedCallCardsHeaderListHolder(LayoutInflater layoutInflater, View view, MissedCallCardVisibilityInterface missedCallCardVisibilityInterface) {
        super(view);
        this.f23936v = layoutInflater;
        this.f23929B = missedCallCardVisibilityInterface;
    }

    /* renamed from: a */
    public /* synthetic */ void m29797a(View view) {
        m29791c(view.getWidth());
    }

    /* renamed from: a */
    public /* synthetic */ void m29793a(List list, List list2) {
        Animator animator;
        this.f23937w.clear();
        this.f23937w.addAll(list);
        List<BaseViewTypeData> list3 = this.f23937w;
        final boolean z = this.f23930C;
        final ArrayList arrayList = new ArrayList();
        for (BaseViewTypeData baseViewTypeData : list3) {
            if (baseViewTypeData instanceof MissedCallCardDataItem) {
                MissedCallCardDataItem missedCallCardDataItem = (MissedCallCardDataItem) baseViewTypeData;
                if (DateUtils.m27135a(missedCallCardDataItem.getLastMissedCallDate())) {
                    MissedCallManager.m29823a(missedCallCardDataItem.getPhone(), CallReminderFrequentData.FrequentType.DELETE, missedCallCardDataItem.getMissedCallType(), 0L);
                }
            }
            arrayList.add((BaseAdapterItemData) baseViewTypeData);
        }
        BaseCallAppAdapter baseCallAppAdapter = this.f23934t;
        if (baseCallAppAdapter == null) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.missedcall.card.MissedCallCardsHeaderListHolder.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!Activities.m27696a((Activity) MissedCallCardsHeaderListHolder.this.f23936v.getContext())) {
                        CLog.m27606a(BaseCallAppFragment.class.getSimpleName());
                        return;
                    }
                    MissedCallCardsHeaderListHolder missedCallCardsHeaderListHolder = MissedCallCardsHeaderListHolder.this;
                    List list4 = arrayList;
                    ContactItemViewEvents contactItemViewEvents = missedCallCardsHeaderListHolder.f23939y;
                    MissedCallCardsHeaderListHolder missedCallCardsHeaderListHolder2 = MissedCallCardsHeaderListHolder.this;
                    missedCallCardsHeaderListHolder.f23934t = new MissedCallsCardAdapter(null, list4, contactItemViewEvents, missedCallCardsHeaderListHolder2, missedCallCardsHeaderListHolder2);
                    MissedCallCardsHeaderListHolder.this.f23933s.setAdapter(MissedCallCardsHeaderListHolder.this.f23934t);
                    MissedCallCardsHeaderListHolder.this.f23933s.setLayoutManager(new LinearLayoutManager((Activity) MissedCallCardsHeaderListHolder.this.f23936v.getContext(), 0, false));
                    MissedCallCardsHeaderListHolder.this.f23933s.setHasFixedSize(true);
                    ((MissedCallsCardAdapter) MissedCallCardsHeaderListHolder.this.f23934t).setOnlyPromotions(z);
                }
            });
        } else {
            baseCallAppAdapter.setData(list3);
            ((MissedCallsCardAdapter) this.f23934t).setOnlyPromotions(z);
        }
        if (CollectionUtils.m26068b(list3) && list3.size() > 1 && Prefs.f26208L.get().booleanValue()) {
            int width = this.f23933s.getWidth();
            Prefs.f26208L.set(Boolean.FALSE);
            if (width <= 0) {
                ViewUtils.m27317a(this.f23933s, new ContextRunnable() { // from class: com.callapp.contacts.activity.missedcall.card._$$Lambda$MissedCallCardsHeaderListHolder$Mifnr5OdpDOY6uiQXgssw1_QXG0
                    @Override // com.callapp.contacts.api.ContextRunnable
                    public final void run(Object obj) {
                        MissedCallCardsHeaderListHolder.this.m29797a((View) obj);
                    }
                });
                animator = null;
            } else {
                animator = m29791c(width);
            }
            this.f23935u = animator;
        }
        this.f23938x.setVisibility(list2.size() < 2 ? 8 : 0);
        MissedCallCardVisibilityInterface missedCallCardVisibilityInterface = this.f23929B;
        if (missedCallCardVisibilityInterface != null) {
            missedCallCardVisibilityInterface.mo29786d();
        }
    }

    /* renamed from: c */
    private Animator m29791c(int i) {
        RecyclerView recyclerView;
        if (this.f23934t == null || (recyclerView = this.f23933s) == null) {
            return null;
        }
        this.f23940z = CallappAnimationUtils.m27174b(recyclerView, i);
        Animator m27170c = CallappAnimationUtils.m27170c(this.f23933s, i);
        this.f23928A = m27170c;
        m27170c.setStartDelay(1700L);
        this.f23940z.addListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.activity.missedcall.card.MissedCallCardsHeaderListHolder.2

            /* renamed from: a */
            boolean f23944a = false;

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                animator.removeAllListeners();
                this.f23944a = true;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animator.removeAllListeners();
                if (!this.f23944a) {
                    MissedCallCardsHeaderListHolder.this.f23928A.start();
                    return;
                }
                MissedCallCardsHeaderListHolder.this.f23928A.cancel();
                MissedCallCardsHeaderListHolder.this.f23928A.removeAllListeners();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        Runnable runnable = new Runnable() { // from class: com.callapp.contacts.activity.missedcall.card.MissedCallCardsHeaderListHolder.3
            @Override // java.lang.Runnable
            public void run() {
                MissedCallCardsHeaderListHolder.this.f23940z.start();
            }
        };
        if (this.f23934t.getItemCount() <= 1) {
            return null;
        }
        CallAppApplication.get().m31869a(runnable, 200L);
        return this.f23940z;
    }

    private List<MissedCallCardDataItem> getAllCardData() {
        ArrayList arrayList = new ArrayList();
        for (MissedCallCardIds missedCallCardIds : MissedCallManager.getMissedCallCardIds()) {
            List<CallReminderFrequentData> m29829a = MissedCallFrequentManager.m29829a(PhoneManager.get().m28239a(missedCallCardIds.getPhoneNumber()), C15484av.m8820a(Integer.valueOf(missedCallCardIds.getMissedCallType())));
            if (!CollectionUtils.m26068b(m29829a) || !m29829a.get(0).getFrequentType().equals(CallReminderFrequentData.FrequentType.DELETE) || m29829a.get(0).getDeleteTimeStamp() <= missedCallCardIds.getLastMissedCall()) {
                ContactData m28327a = ContactUtils.m28327a(PhoneManager.get().m28239a(missedCallCardIds.getPhoneAsRaw()));
                MissedCallCardDataItem missedCallCardDataItem = new MissedCallCardDataItem(m28327a.getNameOrNumber(), missedCallCardIds.getNumberOfMissedCalls(), missedCallCardIds.getLastMissedCall(), m28327a.getPhotoUrl(), m28327a.getPhone(), missedCallCardIds.getMissedCallType());
                if (Prefs.f26668y.get().booleanValue() && missedCallCardIds.getMissedCallType() == 3) {
                    arrayList.add(missedCallCardDataItem);
                } else if (Prefs.f26669z.get().booleanValue() && missedCallCardIds.getMissedCallType() == 40) {
                    arrayList.add(missedCallCardDataItem);
                }
                if (missedCallCardIds.getMissedCallType() == 3) {
                    AnalyticsManager.get().m28443a(Constants.MISSED_CALL_CATEGORY, "ViewCard", "", missedCallCardIds.getId().longValue());
                } else if (missedCallCardIds.getMissedCallType() == 40) {
                    AnalyticsManager.get().m28443a(Constants.NOT_ANSWER_CATEGORY, "ViewCard", "", missedCallCardIds.getId().longValue());
                }
            }
        }
        return arrayList;
    }

    /* renamed from: o */
    public /* synthetic */ void m29787o() {
        new ArrayList();
        final ArrayList arrayList = new ArrayList();
        List<MissedCallCardDataItem> allCardData = getAllCardData();
        arrayList.addAll(allCardData);
        if (CollectionUtils.m26068b(allCardData)) {
            arrayList.add(MissedCallPromotionManager.m29785a());
            this.f23931D = true;
            this.f23932E = false;
            this.f23930C = false;
        } else if (this.f23931D && this.f23932E) {
            MissedCallPromotionManager.m29784a(arrayList);
            this.f23930C = true;
        }
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.missedcall.card._$$Lambda$MissedCallCardsHeaderListHolder$2yE2dYcbgZtVnpdpjYdSrZrVBeg
            @Override // java.lang.Runnable
            public final void run() {
                MissedCallCardsHeaderListHolder.this.m29793a(arrayList, arrayList);
            }
        });
    }

    /* renamed from: a */
    public final void m29796a(ContactItemViewEvents contactItemViewEvents) {
        this.f23933s = (RecyclerView) this.itemView.findViewById(2131362230);
        this.f23938x = (FrameLayout) this.itemView.findViewById(2131363285);
        if (ThemeUtils.isThemeLight()) {
            this.f23938x.setBackgroundColor(ThemeUtils.getColor(2131099907));
        } else {
            this.f23938x.setBackgroundColor(ThemeUtils.getColor(2131099819));
        }
        this.f23933s.setBackgroundColor(ThemeUtils.getColor(2131100145));
        this.f23933s.setLayoutManager(new LinearLayoutManager(this.itemView.getContext(), 0, false));
        this.f23933s.setHasFixedSize(true);
        this.f23939y = contactItemViewEvents;
        m29788n();
    }

    /* renamed from: a */
    public final void m29794a(Phone phone) {
        BaseCallAppAdapter baseCallAppAdapter = this.f23934t;
        if (baseCallAppAdapter != null) {
            MissedCallsCardAdapter missedCallsCardAdapter = (MissedCallsCardAdapter) baseCallAppAdapter;
            for (int i = 0; i < missedCallsCardAdapter.f23947c.size(); i++) {
                if (missedCallsCardAdapter.f23947c.get(i).getPhone().getRawNumber().equals(phone.getRawNumber())) {
                    missedCallsCardAdapter.f23947c.remove(i);
                    missedCallsCardAdapter.notifyDataSetChanged();
                    return;
                }
            }
        }
    }

    @Override // com.callapp.contacts.activity.missedcall.card.MissedCallsCardAdapter.UserCloseAllPromotions
    /* renamed from: l */
    public final void mo29779l() {
        this.f23931D = false;
    }

    @Override // com.callapp.contacts.activity.missedcall.card.MissedCallsCardAdapter.UserCloseAllCards
    /* renamed from: m */
    public final void mo29780m() {
        this.f23932E = true;
    }

    /* renamed from: n */
    public final void m29788n() {
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.missedcall.card._$$Lambda$MissedCallCardsHeaderListHolder$tdV10WZ80aWaCO5tt2FCOGk_Ogg
            @Override // java.lang.Runnable
            public final void run() {
                MissedCallCardsHeaderListHolder.this.m29787o();
            }
        });
    }
}
