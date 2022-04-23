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
import com.google.common.collect.av;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder.class */
public class MissedCallCardsHeaderListHolder extends BaseCallAppViewHolder implements MissedCallsCardAdapter.UserCloseAllCards, MissedCallsCardAdapter.UserCloseAllPromotions {
    private Animator A;
    private MissedCallCardVisibilityInterface B;
    protected RecyclerView s;
    protected BaseCallAppAdapter t;
    public Animator u;
    private final LayoutInflater v;
    private FrameLayout x;
    private ContactItemViewEvents y;
    private Animator z;
    private List<BaseViewTypeData> w = new ArrayList();
    private boolean C = false;
    private boolean D = true;
    private boolean E = false;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$MissedCallCardVisibilityInterface.class */
    public interface MissedCallCardVisibilityInterface {
        void d();
    }

    public MissedCallCardsHeaderListHolder(LayoutInflater layoutInflater, View view, MissedCallCardVisibilityInterface missedCallCardVisibilityInterface) {
        super(view);
        this.v = layoutInflater;
        this.B = missedCallCardVisibilityInterface;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        c(view.getWidth());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list, List list2) {
        Animator animator;
        this.w.clear();
        this.w.addAll(list);
        List<BaseViewTypeData> list3 = this.w;
        final boolean z = this.C;
        final ArrayList arrayList = new ArrayList();
        for (BaseViewTypeData baseViewTypeData : list3) {
            if (baseViewTypeData instanceof MissedCallCardDataItem) {
                MissedCallCardDataItem missedCallCardDataItem = (MissedCallCardDataItem) baseViewTypeData;
                if (DateUtils.a(missedCallCardDataItem.getLastMissedCallDate())) {
                    MissedCallManager.a(missedCallCardDataItem.getPhone(), CallReminderFrequentData.FrequentType.DELETE, missedCallCardDataItem.getMissedCallType(), 0L);
                }
            }
            arrayList.add((BaseAdapterItemData) baseViewTypeData);
        }
        BaseCallAppAdapter baseCallAppAdapter = this.t;
        if (baseCallAppAdapter == null) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.missedcall.card.MissedCallCardsHeaderListHolder.1
                @Override // java.lang.Runnable
                public void run() {
                    if (Activities.a((Activity) MissedCallCardsHeaderListHolder.this.v.getContext())) {
                        MissedCallCardsHeaderListHolder missedCallCardsHeaderListHolder = MissedCallCardsHeaderListHolder.this;
                        List list4 = arrayList;
                        ContactItemViewEvents contactItemViewEvents = missedCallCardsHeaderListHolder.y;
                        MissedCallCardsHeaderListHolder missedCallCardsHeaderListHolder2 = MissedCallCardsHeaderListHolder.this;
                        missedCallCardsHeaderListHolder.t = new MissedCallsCardAdapter(null, list4, contactItemViewEvents, missedCallCardsHeaderListHolder2, missedCallCardsHeaderListHolder2);
                        MissedCallCardsHeaderListHolder.this.s.setAdapter(MissedCallCardsHeaderListHolder.this.t);
                        MissedCallCardsHeaderListHolder.this.s.setLayoutManager(new LinearLayoutManager((Activity) MissedCallCardsHeaderListHolder.this.v.getContext(), 0, false));
                        MissedCallCardsHeaderListHolder.this.s.setHasFixedSize(true);
                        ((MissedCallsCardAdapter) MissedCallCardsHeaderListHolder.this.t).setOnlyPromotions(z);
                        return;
                    }
                    CLog.a(BaseCallAppFragment.class.getSimpleName());
                }
            });
        } else {
            baseCallAppAdapter.setData(list3);
            ((MissedCallsCardAdapter) this.t).setOnlyPromotions(z);
        }
        if (CollectionUtils.b(list3) && list3.size() > 1 && Prefs.L.get().booleanValue()) {
            int width = this.s.getWidth();
            Prefs.L.set(Boolean.FALSE);
            if (width <= 0) {
                ViewUtils.a(this.s, new ContextRunnable() { // from class: com.callapp.contacts.activity.missedcall.card._$$Lambda$MissedCallCardsHeaderListHolder$Mifnr5OdpDOY6uiQXgssw1_QXG0
                    @Override // com.callapp.contacts.api.ContextRunnable
                    public final void run(Object obj) {
                        MissedCallCardsHeaderListHolder.this.a((View) obj);
                    }
                });
                animator = null;
            } else {
                animator = c(width);
            }
            this.u = animator;
        }
        this.x.setVisibility(list2.size() < 2 ? 8 : 0);
        MissedCallCardVisibilityInterface missedCallCardVisibilityInterface = this.B;
        if (missedCallCardVisibilityInterface != null) {
            missedCallCardVisibilityInterface.d();
        }
    }

    private Animator c(int i) {
        RecyclerView recyclerView;
        if (this.t == null || (recyclerView = this.s) == null) {
            return null;
        }
        this.z = CallappAnimationUtils.b(recyclerView, i);
        Animator c2 = CallappAnimationUtils.c(this.s, i);
        this.A = c2;
        c2.setStartDelay(1700L);
        this.z.addListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.activity.missedcall.card.MissedCallCardsHeaderListHolder.2

            /* renamed from: a  reason: collision with root package name */
            boolean f13472a = false;

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                animator.removeAllListeners();
                this.f13472a = true;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animator.removeAllListeners();
                if (!this.f13472a) {
                    MissedCallCardsHeaderListHolder.this.A.start();
                    return;
                }
                MissedCallCardsHeaderListHolder.this.A.cancel();
                MissedCallCardsHeaderListHolder.this.A.removeAllListeners();
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
                MissedCallCardsHeaderListHolder.this.z.start();
            }
        };
        if (this.t.getItemCount() <= 1) {
            return null;
        }
        CallAppApplication.get().a(runnable, 200L);
        return this.z;
    }

    private List<MissedCallCardDataItem> getAllCardData() {
        ArrayList arrayList = new ArrayList();
        for (MissedCallCardIds missedCallCardIds : MissedCallManager.getMissedCallCardIds()) {
            List<CallReminderFrequentData> a2 = MissedCallFrequentManager.a(PhoneManager.get().a(missedCallCardIds.getPhoneNumber()), av.a(Integer.valueOf(missedCallCardIds.getMissedCallType())));
            if (!CollectionUtils.b(a2) || !a2.get(0).getFrequentType().equals(CallReminderFrequentData.FrequentType.DELETE) || a2.get(0).getDeleteTimeStamp() <= missedCallCardIds.getLastMissedCall()) {
                ContactData a3 = ContactUtils.a(PhoneManager.get().a(missedCallCardIds.getPhoneAsRaw()));
                MissedCallCardDataItem missedCallCardDataItem = new MissedCallCardDataItem(a3.getNameOrNumber(), missedCallCardIds.getNumberOfMissedCalls(), missedCallCardIds.getLastMissedCall(), a3.getPhotoUrl(), a3.getPhone(), missedCallCardIds.getMissedCallType());
                if (Prefs.y.get().booleanValue() && missedCallCardIds.getMissedCallType() == 3) {
                    arrayList.add(missedCallCardDataItem);
                } else if (Prefs.z.get().booleanValue() && missedCallCardIds.getMissedCallType() == 40) {
                    arrayList.add(missedCallCardDataItem);
                }
                if (missedCallCardIds.getMissedCallType() == 3) {
                    AnalyticsManager.get().a(Constants.MISSED_CALL_CATEGORY, "ViewCard", "", missedCallCardIds.getId().longValue());
                } else if (missedCallCardIds.getMissedCallType() == 40) {
                    AnalyticsManager.get().a(Constants.NOT_ANSWER_CATEGORY, "ViewCard", "", missedCallCardIds.getId().longValue());
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o() {
        new ArrayList();
        final ArrayList arrayList = new ArrayList();
        List<MissedCallCardDataItem> allCardData = getAllCardData();
        arrayList.addAll(allCardData);
        if (CollectionUtils.b(allCardData)) {
            arrayList.add(MissedCallPromotionManager.a());
            this.D = true;
            this.E = false;
            this.C = false;
        } else if (this.D && this.E) {
            MissedCallPromotionManager.a(arrayList);
            this.C = true;
        }
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.missedcall.card._$$Lambda$MissedCallCardsHeaderListHolder$2yE2dYcbgZtVnpdpjYdSrZrVBeg
            @Override // java.lang.Runnable
            public final void run() {
                MissedCallCardsHeaderListHolder.this.a(arrayList, arrayList);
            }
        });
    }

    public final void a(ContactItemViewEvents contactItemViewEvents) {
        this.s = (RecyclerView) this.itemView.findViewById(2131362230);
        this.x = (FrameLayout) this.itemView.findViewById(2131363285);
        if (ThemeUtils.isThemeLight()) {
            this.x.setBackgroundColor(ThemeUtils.getColor(2131099907));
        } else {
            this.x.setBackgroundColor(ThemeUtils.getColor(2131099819));
        }
        this.s.setBackgroundColor(ThemeUtils.getColor(2131100145));
        this.s.setLayoutManager(new LinearLayoutManager(this.itemView.getContext(), 0, false));
        this.s.setHasFixedSize(true);
        this.y = contactItemViewEvents;
        n();
    }

    public final void a(Phone phone) {
        BaseCallAppAdapter baseCallAppAdapter = this.t;
        if (baseCallAppAdapter != null) {
            MissedCallsCardAdapter missedCallsCardAdapter = (MissedCallsCardAdapter) baseCallAppAdapter;
            for (int i = 0; i < missedCallsCardAdapter.f13475c.size(); i++) {
                if (missedCallsCardAdapter.f13475c.get(i).getPhone().getRawNumber().equals(phone.getRawNumber())) {
                    missedCallsCardAdapter.f13475c.remove(i);
                    missedCallsCardAdapter.notifyDataSetChanged();
                    return;
                }
            }
        }
    }

    @Override // com.callapp.contacts.activity.missedcall.card.MissedCallsCardAdapter.UserCloseAllPromotions
    public final void l() {
        this.D = false;
    }

    @Override // com.callapp.contacts.activity.missedcall.card.MissedCallsCardAdapter.UserCloseAllCards
    public final void m() {
        this.E = true;
    }

    public final void n() {
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.missedcall.card._$$Lambda$MissedCallCardsHeaderListHolder$tdV10WZ80aWaCO5tt2FCOGk_Ogg
            @Override // java.lang.Runnable
            public final void run() {
                MissedCallCardsHeaderListHolder.this.o();
            }
        });
    }
}
