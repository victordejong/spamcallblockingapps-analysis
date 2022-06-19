.class public Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment;
.super Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;Ljava/util/List;)Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;)",
            "Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            "Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusAdapter;

    invoke-direct {v0, p1, p2}, Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusAdapter;-><init>(Lcom/callapp/contacts/activity/base/ScrollEvents;Ljava/util/List;)V

    return-object v0
.end method

.method public final a(Ljava/lang/CharSequence;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->getFavoriteContactPlusItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    .line 59
    invoke-virtual {p0, p1, v1, v2}, Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment;->a(Ljava/lang/CharSequence;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->getContactPlusItemsData()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 61
    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0, p1, v2, v1}, Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment;->a(Ljava/lang/CharSequence;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getAllHeaderText()I
    .locals 1

    const v0, 0x7f120383

    return v0
.end method

.method public getEmptySearchResultText()I
    .locals 1

    const v0, 0x7f12039d

    return v0
.end method

.method public getEmptyViewBoldTitle()I
    .locals 1

    const v0, 0x7f12039f

    return v0
.end method

.method public getEmptyViewImage()I
    .locals 1

    const v0, 0x7f08028e

    return v0
.end method

.method public getEmptyViewTitle()I
    .locals 1

    const v0, 0x7f12039e

    return v0
.end method

.method public getInvalidateDataListener()Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;
    .locals 1

    .line 20
    new-instance v0, Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment$1;-><init>(Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment;)V

    return-object v0
.end method
