package com.callapp.contacts.activity.contact.list.contactListHeader;

import android.app.Activity;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.c;
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
    private FloatingActionButton A;
    private LinearLayout B;
    private GridLayoutManager C;
    private List<FavoriteMemoryContactItem> E;
    private DragListView J;
    protected RecyclerView t;
    protected BaseCallAppAdapter u;
    public boolean v;
    protected List<BaseViewTypeData> w;
    private final LayoutInflater y;
    private final DataFragmentsEvents z;
    public boolean s = Prefs.gc.get().booleanValue();
    private final ScrollRecyclerStateTracker D = new ScrollRecyclerStateTracker();
    private List<BaseViewTypeData> F = new ArrayList();
    public boolean x = Prefs.gc.get().booleanValue();
    private boolean G = false;
    private final int H = 1;
    private final int I = 2;

    public FavoritesHeaderContactListHolder(LayoutInflater layoutInflater, View view, DataFragmentsEvents dataFragmentsEvents) {
        super(view);
        this.y = layoutInflater;
        this.z = dataFragmentsEvents;
    }

    static /* synthetic */ BaseCallAppAdapter a(FavoritesHeaderContactListHolder favoritesHeaderContactListHolder, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add((FavoriteMemoryContactItem) ((BaseViewTypeData) it2.next()));
        }
        FavoritesAdapter favoritesAdapter = new FavoritesAdapter(arrayList, null, favoritesHeaderContactListHolder.D);
        favoritesHeaderContactListHolder.u = favoritesAdapter;
        DragListView dragListView = favoritesHeaderContactListHolder.J;
        if (dragListView != null) {
            dragListView.setAdapter(favoritesAdapter, true);
            favoritesHeaderContactListHolder.J.getRecyclerView().setItemAnimator(new c());
            favoritesHeaderContactListHolder.J.getRecyclerView().setVerticalScrollBarEnabled(false);
            favoritesHeaderContactListHolder.J.getRecyclerView().setHorizontalScrollBarEnabled(false);
            favoritesHeaderContactListHolder.J.setDragListListener(new DragListView.DragListListenerAdapter() { // from class: com.callapp.contacts.activity.contact.list.contactListHeader.FavoritesHeaderContactListHolder.3
                @Override // com.callapp.contacts.activity.favorites.DragListView.DragListListenerAdapter, com.callapp.contacts.activity.favorites.DragListView.DragListListener
                public final void a() {
                    FavoritesHeaderContactListHolder.this.v = true;
                }
            });
            favoritesHeaderContactListHolder.J.setDragListCallback(new DragListView.DragListCallbackAdapter() { // from class: com.callapp.contacts.activity.contact.list.contactListHeader.FavoritesHeaderContactListHolder.4
                @Override // com.callapp.contacts.activity.favorites.DragListView.DragListCallbackAdapter, com.callapp.contacts.activity.favorites.DragListView.DragListCallback
                public final boolean a(int i) {
                    return ((FavoriteMemoryContactItem) ((ArrayList) FavoritesHeaderContactListHolder.this.u.f11075a).get(i)).getViewType() == 11;
                }

                @Override // com.callapp.contacts.activity.favorites.DragListView.DragListCallbackAdapter, com.callapp.contacts.activity.favorites.DragListView.DragListCallback
                public final boolean b(int i) {
                    return ((FavoriteMemoryContactItem) ((ArrayList) FavoritesHeaderContactListHolder.this.u.f11075a).get(i)).getViewType() == 11;
                }
            });
        }
        return favoritesHeaderContactListHolder.u;
    }

    private static List<FavoriteMemoryContactItem> a(List<FavoriteMemoryContactItem> list, Long[] lArr) {
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
    static /* synthetic */ void a(FavoritesHeaderContactListHolder favoritesHeaderContactListHolder) {
        int i;
        if (favoritesHeaderContactListHolder.u != null) {
            int i2 = 0;
            int i3 = 0;
            if (favoritesHeaderContactListHolder.s) {
                favoritesHeaderContactListHolder.C.a(1);
                ((FavoritesAdapter) favoritesHeaderContactListHolder.u).f12862c = false;
                favoritesHeaderContactListHolder.A.setImageDrawable(CallAppApplication.get().getResources().getDrawable(2131231605));
                favoritesHeaderContactListHolder.s = false;
            } else {
                favoritesHeaderContactListHolder.C.a(2);
                ((FavoritesAdapter) favoritesHeaderContactListHolder.u).f12862c = true;
                favoritesHeaderContactListHolder.A.setImageDrawable(CallAppApplication.get().getResources().getDrawable(2131231648));
                favoritesHeaderContactListHolder.s = true;
            }
            Prefs.gc.set(Boolean.valueOf(favoritesHeaderContactListHolder.s));
            favoritesHeaderContactListHolder.A.setColorFilter(ThemeUtils.getColor(2131099784));
            BaseCallAppAdapter baseCallAppAdapter = favoritesHeaderContactListHolder.u;
            List list = (List) baseCallAppAdapter.f11075a;
            int size = list.size();
            BaseViewTypeData[] baseViewTypeDataArr = new BaseViewTypeData[size];
            if (favoritesHeaderContactListHolder.s) {
                int i4 = 0;
                while (true) {
                    int i5 = size / 2;
                    if (i3 >= i5) {
                        break;
                    }
                    baseViewTypeDataArr[i4] = (BaseViewTypeData) list.get(i3);
                    baseViewTypeDataArr[i4 + 1] = (BaseViewTypeData) list.get(i5 + i3);
                    i3++;
                    i4 += 2;
                }
                if (size % 2 != 0) {
                    int i6 = size - 1;
                    baseViewTypeDataArr[i6] = (BaseViewTypeData) list.get(i6);
                }
            } else {
                int i7 = 0;
                while (true) {
                    i = size - 1;
                    if (i2 >= i) {
                        break;
                    }
                    baseViewTypeDataArr[i7] = (BaseViewTypeData) list.get(i2);
                    i7++;
                    i2 += 2;
                }
                int i8 = i7;
                for (int i9 = 1; i9 < i; i9 += 2) {
                    baseViewTypeDataArr[i8] = (BaseViewTypeData) list.get(i9);
                    i8++;
                }
                baseViewTypeDataArr[i] = (BaseViewTypeData) list.get(i);
            }
            baseCallAppAdapter.f11075a = new ArrayList(Arrays.asList(baseViewTypeDataArr));
            favoritesHeaderContactListHolder.u.notifyDataSetChanged();
            favoritesHeaderContactListHolder.t.setLayoutAnimation(AnimationUtils.loadLayoutAnimation(favoritesHeaderContactListHolder.y.getContext(), 2130772003));
            favoritesHeaderContactListHolder.t.scheduleLayoutAnimation();
            DataFragmentsEvents dataFragmentsEvents = favoritesHeaderContactListHolder.z;
            if (dataFragmentsEvents != null) {
                dataFragmentsEvents.scrollToTop();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list, List list2) {
        this.F.clear();
        this.F.addAll(list);
        setData(this.F);
        if (this.u != null) {
            setExpandButtonVisibility(list2);
        }
        if (list2.size() <= 1) {
            this.B.setVisibility(8);
        } else {
            this.B.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o() {
        List<FavoriteMemoryContactItem> favoriteContacts = ContactUtils.getFavoriteContacts();
        final ArrayList arrayList = new ArrayList();
        this.E = favoriteContacts;
        if (Prefs.gb.get() != null && CollectionUtils.b(favoriteContacts)) {
            this.E = a(favoriteContacts, Prefs.gb.get());
        }
        if (CollectionUtils.b(this.E)) {
            favoriteContacts = this.E;
        }
        if (CollectionUtils.b(favoriteContacts)) {
            BaseCallAppAdapter baseCallAppAdapter = this.u;
            if (baseCallAppAdapter != null) {
                baseCallAppAdapter.c();
            }
            arrayList.addAll(favoriteContacts);
        }
        if (favoriteContacts.size() > 3) {
            JsonStickyData a2 = CallLogStickyHolder.a(AdUtils.a() ? null : JSONStickyDataObject.getDataFromRemoteConfig("stickyBannerFavoritesConfigNew"));
            if (a2 != null && !Prefs.cJ.get().booleanValue()) {
                if (!a2.getNeedBilling() || BillingManager.isBillingAvailable()) {
                    arrayList.add(new PromotionFavoriteData(new MemoryContactItem(), a2));
                }
            }
        }
        arrayList.add(new AddContactAsFavoriteData(new MemoryContactItem()));
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.contactListHeader._$$Lambda$FavoritesHeaderContactListHolder$TtRUlIC7mv3bJ2TRlvbfVgs_JIc
            @Override // java.lang.Runnable
            public final void run() {
                FavoritesHeaderContactListHolder.this.a(arrayList, arrayList);
            }
        });
    }

    private void setData(final List<BaseViewTypeData> list) {
        this.w = list;
        BaseCallAppAdapter baseCallAppAdapter = this.u;
        if (baseCallAppAdapter == null) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.contactListHeader.FavoritesHeaderContactListHolder.2
                @Override // java.lang.Runnable
                public void run() {
                    if (Activities.a((Activity) FavoritesHeaderContactListHolder.this.y.getContext())) {
                        FavoritesHeaderContactListHolder favoritesHeaderContactListHolder = FavoritesHeaderContactListHolder.this;
                        favoritesHeaderContactListHolder.u = FavoritesHeaderContactListHolder.a(favoritesHeaderContactListHolder, list);
                        FavoritesHeaderContactListHolder.this.t.setAdapter(FavoritesHeaderContactListHolder.this.u);
                        return;
                    }
                    CLog.a(BaseCallAppFragment.class.getSimpleName());
                }
            });
        } else {
            baseCallAppAdapter.setData(list);
        }
    }

    private void setExpandButtonVisibility(List<BaseViewTypeData> list) {
        this.A.setColorFilter(ThemeUtils.getColor(2131099784));
        if (list.size() <= 4) {
            this.s = false;
            this.A.b(null, true);
            this.C.a(1);
            ((FavoritesAdapter) this.u).f12862c = false;
            this.s = false;
            ((FavoritesAdapter) this.u).notifyDataSetChanged();
            return;
        }
        this.A.setImageDrawable(CallAppApplication.get().getResources().getDrawable(this.s ? 2131231648 : 2131231605));
        this.A.a((FloatingActionButton.a) null, true);
    }

    public final void l() {
        if (!this.G) {
            this.G = true;
            this.y.inflate(2131558670, (ViewGroup) this.itemView);
            DragListView dragListView = (DragListView) this.itemView.findViewById(2131362634);
            this.J = dragListView;
            this.t = dragListView.getRecyclerView();
            GridLayoutManager gridLayoutManager = new GridLayoutManager(this.y.getContext(), this.s ? 2 : 1, 0, false);
            this.C = gridLayoutManager;
            gridLayoutManager.setSmoothScrollbarEnabled(true);
            this.C.setOrientation(0);
            this.t.setLayoutManager(this.C);
            this.t.setBackgroundColor(ThemeUtils.getColor(2131100145));
            this.D.setRecyclerView(this.t);
            this.t.setHasFixedSize(true);
            m();
            this.B = (LinearLayout) this.itemView.findViewById(2131362790);
            this.A = (FloatingActionButton) this.itemView.findViewById(2131362842);
            if (ThemeUtils.isThemeLight()) {
                this.B.setBackgroundColor(ThemeUtils.getColor(2131099907));
                this.A.setBackgroundTintList(ColorStateList.valueOf(ThemeUtils.getColor(2131100228)));
            } else {
                this.B.setBackgroundColor(ThemeUtils.getColor(2131099819));
                this.A.setBackgroundTintList(ColorStateList.valueOf(ThemeUtils.getColor(2131099918)));
            }
            this.A.setClickable(true);
            this.A.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.contactListHeader.FavoritesHeaderContactListHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    FavoritesHeaderContactListHolder.a(FavoritesHeaderContactListHolder.this);
                }
            });
            this.A.setImageDrawable(CallAppApplication.get().getResources().getDrawable(this.s ? 2131231648 : 2131231605));
            this.A.setColorFilter(ThemeUtils.getColor(2131099784));
        }
    }

    public final void m() {
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.contactListHeader._$$Lambda$FavoritesHeaderContactListHolder$dU_j7dNYf8o1DanA9E2ujrR5DXg
            @Override // java.lang.Runnable
            public final void run() {
                FavoritesHeaderContactListHolder.this.o();
            }
        });
    }

    public final void n() {
        ArrayList arrayList = (ArrayList) this.u.f11075a;
        Long[] lArr = new Long[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            if (((BaseViewTypeData) arrayList.get(i)).getViewType() == 11) {
                lArr[i] = Long.valueOf(((FavoriteMemoryContactItem) arrayList.get(i)).contactId);
            }
        }
        Prefs.gb.set(lArr);
    }
}
