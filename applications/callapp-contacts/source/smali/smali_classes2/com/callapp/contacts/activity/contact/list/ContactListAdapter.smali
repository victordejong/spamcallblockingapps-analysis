.class public Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;
.super Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter<",
        "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
        "Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;

.field private e:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

.field private f:Lcom/callapp/contacts/activity/base/ScrollEvents;

.field private g:Z

.field private h:Lcom/callapp/contacts/activity/interfaces/OnSelectChangeListener;

.field private i:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;ZLcom/callapp/contacts/activity/interfaces/OnSelectChangeListener;Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;)V
    .locals 0

    .line 52
    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;-><init>(Landroid/database/Cursor;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;)V

    .line 47
    new-instance p2, Landroid/util/LongSparseArray;

    invoke-direct {p2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->i:Landroid/util/LongSparseArray;

    .line 53
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->f:Lcom/callapp/contacts/activity/base/ScrollEvents;

    .line 54
    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->e:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    .line 55
    iput-boolean p5, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->g:Z

    .line 56
    iput-object p6, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->h:Lcom/callapp/contacts/activity/interfaces/OnSelectChangeListener;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->c:Ljava/util/ArrayList;

    .line 58
    iput-object p7, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->j:Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;)Landroid/util/LongSparseArray;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->i:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;Landroid/view/View;Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V
    .locals 2

    .line 5203
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5204
    invoke-virtual {p3}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    .line 5206
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->b(ZZ)V

    .line 5207
    invoke-virtual {p3, p1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->setChecked(Z)V

    if-eqz p1, :cond_0

    .line 5209
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5211
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5213
    :goto_0
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->h:Lcom/callapp/contacts/activity/interfaces/OnSelectChangeListener;

    invoke-interface {p0}, Lcom/callapp/contacts/activity/interfaces/OnSelectChangeListener;->b()V

    return-void

    .line 5215
    :cond_1
    invoke-static {p1, v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 5216
    sget-object p0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {p0}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result p0

    .line 5217
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->getAdapterPosition()I

    move-result p2

    const/4 v0, 0x2

    .line 5216
    invoke-static {p0, p2, v0}, Lcom/callapp/contacts/model/DataChangedInfo;->create(III)Lcom/callapp/contacts/model/DataChangedInfo;

    move-result-object p0

    .line 5219
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->CALL_LOG_CONTACT_LIST:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const-string v0, "contact list"

    invoke-static {p1, p3, v0, p0, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Ljava/lang/String;Lcom/callapp/contacts/model/DataChangedInfo;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;
    .locals 3

    .line 2225
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->a:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;->getDataAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    if-eqz p1, :cond_0

    .line 2227
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->i:Landroid/util/LongSparseArray;

    iget-wide v1, p1, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->contactId:J

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2229
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->setLoaded(Z)V

    :cond_0
    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 3

    .line 152
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getViewType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Z)V

    .line 154
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->i:Landroid/util/LongSparseArray;

    iget-wide v1, p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->contactId:J

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;->getViewType()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    check-cast p1, Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder;

    check-cast p2, Lcom/callapp/contacts/activity/contact/list/search/SearchForItemData;

    .line 2164
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder;->a(Lcom/callapp/contacts/activity/contact/list/search/SearchForItemData;)V

    return-void

    .line 139
    :cond_2
    check-cast p1, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder;

    check-cast p2, Lcom/callapp/contacts/activity/contact/list/search/AddEntryItemData;

    .line 2160
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder;->a(Lcom/callapp/contacts/activity/contact/list/search/AddEntryItemData;)V

    return-void

    .line 145
    :cond_3
    check-cast p1, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;

    .line 2168
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->l()V

    :goto_0
    return-void

    .line 134
    :cond_4
    check-cast p2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    .line 135
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->setChecked(Z)V

    .line 136
    check-cast p1, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;

    .line 1172
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->e:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->f:Lcom/callapp/contacts/activity/base/ScrollEvents;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;)V

    .line 1173
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->getContextMenuType()Lcom/callapp/contacts/action/Action$ContextType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->getContextMenuAnalyticsTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;)V

    .line 1174
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$2;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->setOnDataLoadListener(Lcom/callapp/contacts/activity/base/BaseContactHolder$OnDataLoadListener;)V

    .line 1183
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->getView()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object v0

    .line 1185
    new-instance v1, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$3;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerClickListener(Landroid/view/View$OnClickListener;)V

    .line 1193
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$4;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$4;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final d()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->d:Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->m()V

    :cond_0
    return-void
.end method

.method public getCheckedItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContextMenuAnalyticsTag()Ljava/lang/String;
    .locals 1

    const-string v0, "Contact List"

    return-object v0
.end method

.method public getContextMenuType()Lcom/callapp/contacts/action/Action$ContextType;
    .locals 1

    .line 63
    sget-object v0, Lcom/callapp/contacts/action/Action$ContextType;->CONTACT_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    return-object v0
.end method

.method public getIndexColumnName()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->a:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/cursor/ContactsAggregatorCursor;->getColumnIdName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemAt(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;
    .locals 0

    if-nez p1, :cond_0

    .line 119
    new-instance p1, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter$1;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;)V

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 126
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->getItemAt(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 112
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x5

    return p1

    .line 106
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 3

    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_4

    if-eqz p2, :cond_3

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/4 v0, 0x6

    const v2, 0x7f0d0164

    if-eq p2, v0, :cond_1

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3089
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3090
    new-instance p2, Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchForViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 3085
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3086
    new-instance p2, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 3093
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00a7

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 3094
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->j:Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;

    invoke-direct {v0, p1, p2, v1}, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/View;Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->d:Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;

    return-object v0

    .line 3077
    :cond_3
    new-instance p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_CONTACT_LIST:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4079
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 3078
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 5074
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 3079
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_CALL_BUTTON:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 5084
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->c:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 3081
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    .line 3082
    new-instance p2, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V

    return-object p2

    .line 3075
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 4050
    new-instance p2, Lcom/callapp/contacts/activity/base/DummyViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/base/DummyViewHolder;-><init>(Landroid/view/LayoutInflater;)V

    return-object p2
.end method

.method public setMultiSelectMode(Z)V
    .locals 0

    .line 242
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactListAdapter;->g:Z

    return-void
.end method
