package com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.MultiCardContainer;
import com.callapp.contacts.activity.contact.cards.framework.ContactCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.util.Activities;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard.class */
public abstract class HorizontalGalleryCard<DataItem> extends ContactCard<HorizontalRecyclerViewHolder, List<DataItem>> {
    private List<DataItem> dataList;
    private Object dataListLock = new Object();

    public HorizontalGalleryCard(MultiCardContainer multiCardContainer) {
        super(multiCardContainer, 2131558679);
    }

    public HorizontalGalleryCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131558679);
    }

    public HorizontalGalleryCard(PresentersContainer presentersContainer, int i) {
        super(presentersContainer, i);
    }

    private static int calcAmountOfItemsInEachRow(Context context) {
        return ((int) ((((Activities.getScreenWidth(Activities.getScreenOrientation()) - (CallAppApplication.get().getResources().getDimensionPixelSize(2131165686) * 2)) - 72) - (Activities.a(6.0f) * 2.0f)) - Activities.a(16.0f))) / CallAppApplication.get().getResources().getDimensionPixelSize(2131165684);
    }

    protected int getContainerHeight() {
        return getCardInitHeight();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<DataItem> getDataList() {
        return this.dataList;
    }

    protected abstract String getFooterText();

    protected abstract HorizontalGalleryAdapter getGalleryAdapter();

    protected int getLayoutResourceId() {
        return 2131558679;
    }

    protected abstract View.OnClickListener getOnFooterClickedListener();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract AdapterView.OnItemClickListener getOnItemClickedListener();

    protected abstract AdapterView.OnItemLongClickListener getOnItemLongClickedListener();

    protected abstract View.OnClickListener getOnRightIconClickedListener();

    protected abstract View.OnClickListener getOnRowClickListener();

    protected boolean isScrollable() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBindViewHolder(HorizontalRecyclerViewHolder horizontalRecyclerViewHolder) {
        horizontalRecyclerViewHolder.a(getOnRowClickListener(), getOnRightIconClickedListener(), getOnFooterClickedListener(), getFooterText(), getContainerHeight());
        HorizontalGalleryAdapter horizontalGalleryAdapter = (HorizontalGalleryAdapter) horizontalRecyclerViewHolder.getAdapter();
        ArrayList arrayList = new ArrayList(horizontalGalleryAdapter.getItems());
        synchronized (this.dataListLock) {
            if (!CollectionUtils.a((Collection) arrayList, (Collection) this.dataList)) {
                horizontalGalleryAdapter.a(this.dataList, getOnItemClickedListener(), getOnItemLongClickedListener());
            }
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public HorizontalRecyclerViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        return new HorizontalRecyclerViewHolder(viewGroup, getGalleryAdapter(), getOnFooterClickedListener(), getFooterText());
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public /* bridge */ /* synthetic */ void updateCardData(Object obj, boolean z) {
        updateCardData((List) ((List) obj), z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateCardData(List<DataItem> list, boolean z) {
        synchronized (this.dataListLock) {
            if (!z) {
                if (CollectionUtils.a((Collection) this.dataList, (Collection) list)) {
                    return;
                }
            }
            if (isScrollable()) {
                List<DataItem> list2 = this.dataList;
                if (list2 == null) {
                    this.dataList = new ArrayList();
                } else {
                    list2.clear();
                }
                this.dataList.addAll(list);
            } else {
                int calcAmountOfItemsInEachRow = calcAmountOfItemsInEachRow(getContext());
                List<DataItem> list3 = this.dataList;
                if (list3 == null) {
                    this.dataList = new ArrayList(calcAmountOfItemsInEachRow > 0 ? calcAmountOfItemsInEachRow : 5);
                } else {
                    list3.clear();
                }
                if (list.size() > calcAmountOfItemsInEachRow) {
                    this.dataList.addAll(list.subList(0, calcAmountOfItemsInEachRow));
                } else {
                    this.dataList.addAll(list);
                }
            }
        }
    }
}
