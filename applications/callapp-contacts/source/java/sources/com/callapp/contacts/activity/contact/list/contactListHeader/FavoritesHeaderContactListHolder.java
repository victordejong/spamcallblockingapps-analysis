package com.callapp.contacts.activity.contact.list.contactListHeader;

import android.app.Activity;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.C2669c;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseCallAppAdapter;
import com.callapp.contacts.activity.base.BaseCallAppFragment;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.base.ScrollRecyclerStateTracker;
import com.callapp.contacts.activity.calllog.stickyBanner.CallLogStickyHolder;
import com.callapp.contacts.activity.calllog.stickyBanner.JSONStickyDataObject;
import com.callapp.contacts.activity.calllog.stickyBanner.JsonStickyData;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.activity.favorites.AddContactAsFavoriteData;
import com.callapp.contacts.activity.favorites.DragListView;
import com.callapp.contacts.activity.favorites.FavoriteMemoryContactItem;
import com.callapp.contacts.activity.favorites.FavoritesAdapter;
import com.callapp.contacts.activity.favorites.PromotionFavoriteData;
import com.callapp.contacts.activity.interfaces.DataFragmentsEvents;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.framework.util.CollectionUtils;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder.class */
public class FavoritesHeaderContactListHolder extends BaseCallAppViewHolder {

    /* renamed from: A */
    private FloatingActionButton f22613A;

    /* renamed from: B */
    private LinearLayout f22614B;

    /* renamed from: C */
    private GridLayoutManager f22615C;

    /* renamed from: E */
    private List<FavoriteMemoryContactItem> f22617E;

    /* renamed from: J */
    private DragListView f22622J;

    /* renamed from: t */
    protected RecyclerView f22624t;

    /* renamed from: u */
    protected BaseCallAppAdapter f22625u;

    /* renamed from: v */
    public boolean f22626v;

    /* renamed from: w */
    protected List<BaseViewTypeData> f22627w;

    /* renamed from: y */
    private final LayoutInflater f22629y;

    /* renamed from: z */
    private final DataFragmentsEvents f22630z;

    /* renamed from: s */
    public boolean f22623s = Prefs.f26570gc.get().booleanValue();

    /* renamed from: D */
    private final ScrollRecyclerStateTracker f22616D = new ScrollRecyclerStateTracker();

    /* renamed from: F */
    private List<BaseViewTypeData> f22618F = new ArrayList();

    /* renamed from: x */
    public boolean f22628x = Prefs.f26570gc.get().booleanValue();

    /* renamed from: G */
    private boolean f22619G = false;

    /* renamed from: H */
    private final int f22620H = 1;

    /* renamed from: I */
    private final int f22621I = 2;

    public FavoritesHeaderContactListHolder(LayoutInflater layoutInflater, View view, DataFragmentsEvents dataFragmentsEvents) {
        super(view);
        this.f22629y = layoutInflater;
        this.f22630z = dataFragmentsEvents;
    }

    /* renamed from: a */
    static /* synthetic */ BaseCallAppAdapter m30516a(FavoritesHeaderContactListHolder favoritesHeaderContactListHolder, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add((FavoriteMemoryContactItem) ((BaseViewTypeData) it2.next()));
        }
        FavoritesAdapter favoritesAdapter = new FavoritesAdapter(arrayList, null, favoritesHeaderContactListHolder.f22616D);
        favoritesHeaderContactListHolder.f22625u = favoritesAdapter;
        DragListView dragListView = favoritesHeaderContactListHolder.f22622J;
        if (dragListView != null) {
            dragListView.setAdapter(favoritesAdapter, true);
            favoritesHeaderContactListHolder.f22622J.getRecyclerView().setItemAnimator(new C2669c());
            favoritesHeaderContactListHolder.f22622J.getRecyclerView().setVerticalScrollBarEnabled(false);
            favoritesHeaderContactListHolder.f22622J.getRecyclerView().setHorizontalScrollBarEnabled(false);
            favoritesHeaderContactListHolder.f22622J.setDragListListener(new DragListView.DragListListenerAdapter() { // from class: com.callapp.contacts.activity.contact.list.contactListHeader.FavoritesHeaderContactListHolder.3
                @Override // com.callapp.contacts.activity.favorites.DragListView.DragListListenerAdapter, com.callapp.contacts.activity.favorites.DragListView.DragListListener
                /* renamed from: a */
                public final void mo30275a() {
                    FavoritesHeaderContactListHolder.this.f22626v = true;
                }
            });
            favoritesHeaderContactListHolder.f22622J.setDragListCallback(new DragListView.DragListCallbackAdapter() { // from class: com.callapp.contacts.activity.contact.list.contactListHeader.FavoritesHeaderContactListHolder.4
                @Override // com.callapp.contacts.activity.favorites.DragListView.DragListCallbackAdapter, com.callapp.contacts.activity.favorites.DragListView.DragListCallback
                /* renamed from: a */
                public final boolean mo30277a(int i) {
                    return ((FavoriteMemoryContactItem) ((ArrayList) FavoritesHeaderContactListHolder.this.f22625u.f20245a).get(i)).getViewType() == 11;
                }

                @Override // com.callapp.contacts.activity.favorites.DragListView.DragListCallbackAdapter, com.callapp.contacts.activity.favorites.DragListView.DragListCallback
                /* renamed from: b */
                public final boolean mo30276b(int i) {
                    return ((FavoriteMemoryContactItem) ((ArrayList) FavoritesHeaderContactListHolder.this.f22625u.f20245a).get(i)).getViewType() == 11;
                }
            });
        }
        return favoritesHeaderContactListHolder.f22625u;
    }

    /* renamed from: a */
    private static List<FavoriteMemoryContactItem> m30514a(List<FavoriteMemoryContactItem> list, Long[] lArr) {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            hashMap.put(Long.valueOf(list.get(i).contactId), list.get(i));
        }
        for (Long l : lArr) {
            if (hashMap.get(l) != null) {
                arrayList.add(hashMap.get(l));
                hashMap2.put(Long.valueOf(((FavoriteMemoryContactItem) hashMap.get(l)).contactId), Boolean.TRUE);
            }
        }
        for (FavoriteMemoryContactItem favoriteMemoryContactItem : list) {
            if (hashMap2.get(Long.valueOf(favoriteMemoryContactItem.contactId)) == null) {
                arrayList.add(favoriteMemoryContactItem);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Type inference failed for: r1v5, types: [DataHolder, java.util.ArrayList] */
    /* renamed from: a */
    static /* synthetic */ void m30517a(FavoritesHeaderContactListHolder favoritesHeaderContactListHolder) {
        int i;
        if (favoritesHeaderContactListHolder.f22625u != null) {
            int i2 = 0;
            if (favoritesHeaderContactListHolder.f22623s) {
                favoritesHeaderContactListHolder.f22615C.m40562a(1);
                ((FavoritesAdapter) favoritesHeaderContactListHolder.f22625u).f23008c = false;
                favoritesHeaderContactListHolder.f22613A.setImageDrawable(CallAppApplication.get().getResources().getDrawable(2131231605));
                favoritesHeaderContactListHolder.f22623s = false;
            } else {
                favoritesHeaderContactListHolder.f22615C.m40562a(2);
                ((FavoritesAdapter) favoritesHeaderContactListHolder.f22625u).f23008c = true;
                favoritesHeaderContactListHolder.f22613A.setImageDrawable(CallAppApplication.get().getResources().getDrawable(2131231648));
                favoritesHeaderContactListHolder.f22623s = true;
            }
            Prefs.f26570gc.set(Boolean.valueOf(favoritesHeaderContactListHolder.f22623s));
            favoritesHeaderContactListHolder.f22613A.setColorFilter(ThemeUtils.getColor(2131099784));
            BaseCallAppAdapter baseCallAppAdapter = favoritesHeaderContactListHolder.f22625u;
            List list = (List) baseCallAppAdapter.f20245a;
            int size = list.size();
            BaseViewTypeData[] baseViewTypeDataArr = new BaseViewTypeData[size];
            if (favoritesHeaderContactListHolder.f22623s) {
                int i3 = 0;
                while (true) {
                    int i4 = size / 2;
                    if (i2 >= i4) {
                        break;
                    }
                    baseViewTypeDataArr[i3] = (BaseViewTypeData) list.get(i2);
                    baseViewTypeDataArr[i3 + 1] = (BaseViewTypeData) list.get(i4 + i2);
                    i2++;
                    i3 += 2;
                }
                if (size % 2 != 0) {
                    int i5 = size - 1;
                    baseViewTypeDataArr[i5] = (BaseViewTypeData) list.get(i5);
                }
            } else {
                int i6 = 0;
                int i7 = 0;
                while (true) {
                    i = size - 1;
                    if (i7 >= i) {
                        break;
                    }
                    baseViewTypeDataArr[i6] = (BaseViewTypeData) list.get(i7);
                    i6++;
                    i7 += 2;
                }
                int i8 = i6;
                for (int i9 = 1; i9 < i; i9 += 2) {
                    baseViewTypeDataArr[i8] = (BaseViewTypeData) list.get(i9);
                    i8++;
                }
                baseViewTypeDataArr[i] = (BaseViewTypeData) list.get(i);
            }
            baseCallAppAdapter.f20245a = new ArrayList(Arrays.asList(baseViewTypeDataArr));
            favoritesHeaderContactListHolder.f22625u.notifyDataSetChanged();
            favoritesHeaderContactListHolder.f22624t.setLayoutAnimation(AnimationUtils.loadLayoutAnimation(favoritesHeaderContactListHolder.f22629y.getContext(), 2130772003));
            favoritesHeaderContactListHolder.f22624t.scheduleLayoutAnimation();
            DataFragmentsEvents dataFragmentsEvents = favoritesHeaderContactListHolder.f22630z;
            if (dataFragmentsEvents == null) {
                return;
            }
            dataFragmentsEvents.scrollToTop();
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m30515a(List list, List list2) {
        this.f22618F.clear();
        this.f22618F.addAll(list);
        setData(this.f22618F);
        if (this.f22625u != null) {
            setExpandButtonVisibility(list2);
        }
        if (list2.size() <= 1) {
            this.f22614B.setVisibility(8);
        } else {
            this.f22614B.setVisibility(0);
        }
    }

    /* renamed from: o */
    public /* synthetic */ void m30508o() {
        List<FavoriteMemoryContactItem> favoriteContacts = ContactUtils.getFavoriteContacts();
        final ArrayList arrayList = new ArrayList();
        this.f22617E = favoriteContacts;
        if (Prefs.f26569gb.get() != null && CollectionUtils.m26068b(favoriteContacts)) {
            this.f22617E = m30514a(favoriteContacts, Prefs.f26569gb.get());
        }
        if (CollectionUtils.m26068b(this.f22617E)) {
            favoriteContacts = this.f22617E;
        }
        if (CollectionUtils.m26068b(favoriteContacts)) {
            BaseCallAppAdapter baseCallAppAdapter = this.f22625u;
            if (baseCallAppAdapter != null) {
                baseCallAppAdapter.m31513c();
            }
            arrayList.addAll(favoriteContacts);
        }
        if (favoriteContacts.size() > 3) {
            JsonStickyData m31295a = CallLogStickyHolder.m31295a(AdUtils.m27285a() ? null : JSONStickyDataObject.getDataFromRemoteConfig("stickyBannerFavoritesConfigNew"));
            if (m31295a != null && !Prefs.f26339cJ.get().booleanValue()) {
                if (!m31295a.getNeedBilling() || BillingManager.isBillingAvailable()) {
                    arrayList.add(new PromotionFavoriteData(new MemoryContactItem(), m31295a));
                }
            }
        }
        arrayList.add(new AddContactAsFavoriteData(new MemoryContactItem()));
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.contactListHeader._$$Lambda$FavoritesHeaderContactListHolder$TtRUlIC7mv3bJ2TRlvbfVgs_JIc
            @Override // java.lang.Runnable
            public final void run() {
                FavoritesHeaderContactListHolder.this.m30515a(arrayList, arrayList);
            }
        });
    }

    private void setData(final List<BaseViewTypeData> list) {
        this.f22627w = list;
        BaseCallAppAdapter baseCallAppAdapter = this.f22625u;
        if (baseCallAppAdapter == null) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.contactListHeader.FavoritesHeaderContactListHolder.2
                @Override // java.lang.Runnable
                public void run() {
                    if (!Activities.m27696a((Activity) FavoritesHeaderContactListHolder.this.f22629y.getContext())) {
                        CLog.m27606a(BaseCallAppFragment.class.getSimpleName());
                        return;
                    }
                    FavoritesHeaderContactListHolder favoritesHeaderContactListHolder = FavoritesHeaderContactListHolder.this;
                    favoritesHeaderContactListHolder.f22625u = FavoritesHeaderContactListHolder.m30516a(favoritesHeaderContactListHolder, list);
                    FavoritesHeaderContactListHolder.this.f22624t.setAdapter(FavoritesHeaderContactListHolder.this.f22625u);
                }
            });
        } else {
            baseCallAppAdapter.setData(list);
        }
    }

    private void setExpandButtonVisibility(List<BaseViewTypeData> list) {
        this.f22613A.setColorFilter(ThemeUtils.getColor(2131099784));
        if (list.size() > 4) {
            this.f22613A.setImageDrawable(CallAppApplication.get().getResources().getDrawable(this.f22623s ? 2131231648 : 2131231605));
            this.f22613A.m10743a((FloatingActionButton.AbstractC14569a) null, true);
            return;
        }
        this.f22623s = false;
        this.f22613A.m10738b(null, true);
        this.f22615C.m40562a(1);
        ((FavoritesAdapter) this.f22625u).f23008c = false;
        this.f22623s = false;
        ((FavoritesAdapter) this.f22625u).notifyDataSetChanged();
    }

    /* renamed from: l */
    public final void m30511l() {
        if (!this.f22619G) {
            this.f22619G = true;
            this.f22629y.inflate(2131558670, (ViewGroup) this.itemView);
            DragListView dragListView = (DragListView) this.itemView.findViewById(2131362634);
            this.f22622J = dragListView;
            this.f22624t = dragListView.getRecyclerView();
            GridLayoutManager gridLayoutManager = new GridLayoutManager(this.f22629y.getContext(), this.f22623s ? 2 : 1, 0, false);
            this.f22615C = gridLayoutManager;
            gridLayoutManager.setSmoothScrollbarEnabled(true);
            this.f22615C.setOrientation(0);
            this.f22624t.setLayoutManager(this.f22615C);
            this.f22624t.setBackgroundColor(ThemeUtils.getColor(2131100145));
            this.f22616D.setRecyclerView(this.f22624t);
            this.f22624t.setHasFixedSize(true);
            m30510m();
            this.f22614B = (LinearLayout) this.itemView.findViewById(2131362790);
            this.f22613A = (FloatingActionButton) this.itemView.findViewById(2131362842);
            if (ThemeUtils.isThemeLight()) {
                this.f22614B.setBackgroundColor(ThemeUtils.getColor(2131099907));
                this.f22613A.setBackgroundTintList(ColorStateList.valueOf(ThemeUtils.getColor(2131100228)));
            } else {
                this.f22614B.setBackgroundColor(ThemeUtils.getColor(2131099819));
                this.f22613A.setBackgroundTintList(ColorStateList.valueOf(ThemeUtils.getColor(2131099918)));
            }
            this.f22613A.setClickable(true);
            this.f22613A.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.contactListHeader.FavoritesHeaderContactListHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    FavoritesHeaderContactListHolder.m30517a(FavoritesHeaderContactListHolder.this);
                }
            });
            this.f22613A.setImageDrawable(CallAppApplication.get().getResources().getDrawable(this.f22623s ? 2131231648 : 2131231605));
            this.f22613A.setColorFilter(ThemeUtils.getColor(2131099784));
        }
    }

    /* renamed from: m */
    public final void m30510m() {
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.contactListHeader._$$Lambda$FavoritesHeaderContactListHolder$dU_j7dNYf8o1DanA9E2ujrR5DXg
            @Override // java.lang.Runnable
            public final void run() {
                FavoritesHeaderContactListHolder.this.m30508o();
            }
        });
    }

    /* renamed from: n */
    public final void m30509n() {
        ArrayList arrayList = (ArrayList) this.f22625u.f20245a;
        Long[] lArr = new Long[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            if (((BaseViewTypeData) arrayList.get(i)).getViewType() == 11) {
                lArr[i] = Long.valueOf(((FavoriteMemoryContactItem) arrayList.get(i)).contactId);
            }
        }
        Prefs.f26569gb.set(lArr);
    }
}
