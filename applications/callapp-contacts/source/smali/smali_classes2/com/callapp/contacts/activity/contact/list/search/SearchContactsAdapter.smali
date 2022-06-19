.class public Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;
.super Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
.source "SourceFile"

# interfaces
.implements La/a/a/a/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter<",
        "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
        "Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;",
        ">;",
        "La/a/a/a/a/b<",
        "Lcom/callapp/contacts/activity/base/SectionViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/contacts/model/SectionData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/callapp/contacts/activity/base/ScrollEvents;

.field private e:Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

.field private f:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/base/ScrollEvents;Ljava/util/List;Ljava/util/Map;Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/base/ScrollEvents;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/contacts/model/SectionData;",
            ">;",
            "Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;-><init>(Ljava/util/List;)V

    .line 51
    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->c:Ljava/util/Map;

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->d:Lcom/callapp/contacts/activity/base/ScrollEvents;

    .line 53
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->getContactItemViewEventsListener()Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->f:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    .line 54
    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->e:Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;)Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->e:Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    return-object p0
.end method

.method private getContactItemViewEventsListener()Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;
    .locals 1

    .line 211
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter$1;-><init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 4

    .line 15074
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 15075
    new-instance v1, Lcom/callapp/contacts/activity/base/SectionViewHolder;

    const v2, 0x7f0d016e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/callapp/contacts/activity/base/SectionViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public final synthetic a(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 2

    .line 42
    check-cast p1, Lcom/callapp/contacts/activity/base/SectionViewHolder;

    .line 14080
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->getItemAt(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    move-result-object p2

    .line 14083
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;->getViewType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 14102
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->c:Ljava/util/Map;

    check-cast p2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getSectionId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/model/SectionData;

    goto :goto_0

    .line 14085
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->c:Ljava/util/Map;

    check-cast p2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getSectionId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/model/SectionData;

    goto :goto_0

    .line 14093
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->c:Ljava/util/Map;

    check-cast p2, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getSectionId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/model/SectionData;

    goto :goto_0

    .line 14097
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->c:Ljava/util/Map;

    check-cast p2, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->getSectionId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/model/SectionData;

    goto :goto_0

    .line 14089
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->c:Ljava/util/Map;

    check-cast p2, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getSectionId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/model/SectionData;

    :goto_0
    if-eqz p2, :cond_4

    .line 14111
    invoke-virtual {p2}, Lcom/callapp/contacts/model/SectionData;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/SectionViewHolder;->setText(Ljava/lang/CharSequence;)V

    .line 14112
    invoke-virtual {p2}, Lcom/callapp/contacts/model/SectionData;->getTextColor()I

    move-result p2

    if-eqz p2, :cond_4

    .line 14114
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/SectionViewHolder;->setTextColor(I)V

    :cond_4
    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V
    .locals 5

    .line 182
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;->getViewType()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0xb

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    check-cast p1, Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder;

    check-cast p2, Lcom/callapp/contacts/activity/contact/list/search/SearchForItemData;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder;->a(Lcom/callapp/contacts/activity/contact/list/search/SearchForItemData;)V

    return-void

    .line 205
    :cond_1
    check-cast p1, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder;

    check-cast p2, Lcom/callapp/contacts/activity/contact/list/search/AddEntryItemData;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder;->a(Lcom/callapp/contacts/activity/contact/list/search/AddEntryItemData;)V

    :goto_0
    return-void

    .line 195
    :cond_2
    check-cast p1, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;

    move-object v0, p2

    check-cast v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->f:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->d:Lcom/callapp/contacts/activity/base/ScrollEvents;

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Lcom/callapp/contacts/activity/base/ScrollEvents;)V

    .line 196
    check-cast p2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->getContextMenuType()Lcom/callapp/contacts/action/Action$ContextType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->getContextMenuAnalyticsTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->f:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void

    .line 199
    :cond_3
    check-cast p1, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;

    check-cast p2, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->f:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->e:Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    const/4 v2, 0x0

    .line 2250
    invoke-virtual {p1, v2, v2}, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->a(Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)V

    .line 2251
    iget-object v2, p2, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->displayName:Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->setProfileText(Ljava/lang/String;)V

    .line 2253
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->getPlaceImageUri()Ljava/lang/String;

    move-result-object v2

    .line 2254
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$6;

    invoke-direct {v4, p1, v2, p2}, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$6;-><init>(Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;Ljava/lang/String;Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;)V

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    .line 3124
    iget-object v2, p1, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->u:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/base/CallAppRow;->isSwipeable()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3125
    iget-object v2, p1, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->x:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$1;

    invoke-direct {v3, p1, p2, v0}, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$1;-><init>(Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3134
    iget-object v2, p1, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->x:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$2;

    invoke-direct {v3, p1, p2, v0}, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$2;-><init>(Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3182
    :cond_4
    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->u:Lcom/callapp/contacts/activity/base/CallAppRow;

    new-instance v2, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$4;

    invoke-direct {v2, p1, p2, v1}, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$4;-><init>(Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerClickListener(Landroid/view/View$OnClickListener;)V

    .line 3189
    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->v:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v2, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$5;

    invoke-direct {v2, p1, p2, v1}, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$5;-><init>(Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2163
    iget-object v0, p2, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2165
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->setPlaceName(Ljava/lang/CharSequence;)V

    .line 2166
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->getPlaceRatingNumber()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->setRating(D)V

    .line 2167
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->getPlaceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->setPlaceType(Ljava/lang/String;)V

    .line 2168
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->getPlaceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->setPlaceAddress(Ljava/lang/String;)V

    .line 2169
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->getPlaceHours()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->isOpen()Z

    move-result p2

    .line 3230
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    .line 3232
    iget-object p2, p1, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->w:Landroid/widget/TextView;

    const v0, 0x7f120500

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3233
    iget-object p2, p1, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->w:Landroid/widget/TextView;

    iget p1, p1, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->z:I

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 3235
    :cond_5
    iget-object p2, p1, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->w:Landroid/widget/TextView;

    const v0, 0x7f1204fe

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3236
    iget-object p2, p1, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->w:Landroid/widget/TextView;

    iget p1, p1, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->y:I

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 3239
    :cond_6
    iget-object p2, p1, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->w:Landroid/widget/TextView;

    const v0, 0x7f1206ff

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3240
    iget-object p2, p1, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->w:Landroid/widget/TextView;

    iget p1, p1, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->A:I

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 189
    :cond_7
    check-cast p1, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;

    check-cast p2, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->d:Lcom/callapp/contacts/activity/base/ScrollEvents;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->f:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-virtual {p1, p2, v0, v1}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->a(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    .line 1228
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->getView()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object v0

    .line 1230
    new-instance v1, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter$2;-><init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    .line 1241
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerClickListener(Landroid/view/View$OnClickListener;)V

    .line 1242
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->getContextMenuType()Lcom/callapp/contacts/action/Action$ContextType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->getContextMenuAnalyticsTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->f:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void

    .line 185
    :cond_8
    check-cast p1, Lcom/callapp/contacts/activity/contact/list/search/SearchContactViewHolder;

    check-cast p2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->f:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->d:Lcom/callapp/contacts/activity/base/ScrollEvents;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->e:Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactViewHolder;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;)V

    .line 186
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->getContextMenuType()Lcom/callapp/contacts/action/Action$ContextType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->getContextMenuAnalyticsTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactViewHolder;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;)V

    return-void
.end method

.method public getContextMenuAnalyticsTag()Ljava/lang/String;
    .locals 1

    const-string v0, "Search"

    return-object v0
.end method

.method public getContextMenuType()Lcom/callapp/contacts/action/Action$ContextType;
    .locals 1

    .line 59
    sget-object v0, Lcom/callapp/contacts/action/Action$ContextType;->CONTACT_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    return-object v0
.end method

.method public getHeaderId(I)J
    .locals 2

    .line 69
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;->getItemAt(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/StickyHeaderSection;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/interfaces/StickyHeaderSection;->getSectionId()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 3

    if-eqz p2, :cond_6

    const/16 v0, 0xb

    if-eq p2, v0, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/4 v0, 0x6

    const/4 v1, 0x0

    const v2, 0x7f0d0164

    if-eq p2, v0, :cond_1

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4166
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4167
    new-instance p2, Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 4171
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4172
    new-instance p2, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 4149
    :cond_2
    new-instance p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_CONTACT_PLUS:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 11079
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4150
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 12074
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4151
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_CALL_BUTTON:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 12084
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->c:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4153
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    .line 4154
    new-instance p2, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;

    const v0, 0x7f0a01a0

    const v1, 0x7f0a01a3

    invoke-direct {p2, p1, v0, v1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;II)V

    return-object p2

    .line 4158
    :cond_3
    new-instance p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_PLACES_LIST:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 13079
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4159
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 14074
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4161
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    .line 4162
    new-instance p2, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V

    return-object p2

    .line 4132
    :cond_4
    new-instance p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_CALL_LOG:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 7079
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4133
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 8074
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4134
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_CALL_BUTTON:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 8084
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->c:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4136
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    .line 4137
    new-instance p2, Lcom/callapp/contacts/activity/contact/list/search/CommonCallViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/contact/list/search/CommonCallViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V

    return-object p2

    .line 4123
    :cond_5
    new-instance p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_CONTACT_SEARCH_LIST:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 5079
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4124
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 6074
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4125
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_CALL_BUTTON:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 6084
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->c:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4127
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    .line 4128
    new-instance p2, Lcom/callapp/contacts/activity/contact/list/search/SearchContactViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V

    return-object p2

    .line 4140
    :cond_6
    new-instance p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_CONTACT_SEARCH_LIST:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 9079
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4141
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 10074
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4142
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_CALL_BUTTON:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 10084
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->c:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4144
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    .line 4145
    new-instance p2, Lcom/callapp/contacts/activity/contact/list/search/SearchContactViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V

    return-object p2
.end method
