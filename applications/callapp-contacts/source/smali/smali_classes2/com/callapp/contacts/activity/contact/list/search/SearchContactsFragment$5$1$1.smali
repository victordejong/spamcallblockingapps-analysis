.class Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/api/helper/placessearch/PlacesSearchLoadingEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1$1;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 591
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 592
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 593
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;

    .line 594
    new-instance v5, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;

    invoke-direct {v5}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;-><init>()V

    .line 595
    instance-of v6, v4, Lcom/callapp/contacts/model/contact/GooglePlacesData;

    if-eqz v6, :cond_1

    .line 596
    move-object v6, v4

    check-cast v6, Lcom/callapp/contacts/model/contact/GooglePlacesData;

    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getGooglePlaceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->setPlaceId(Ljava/lang/String;)V

    goto :goto_1

    .line 597
    :cond_1
    instance-of v6, v4, Lcom/callapp/contacts/model/contact/FacebookPlaceData;

    if-eqz v6, :cond_2

    .line 598
    sget-object v6, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->setDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 601
    :cond_2
    :goto_1
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->setPlaceName(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 604
    invoke-virtual {v6}, Lcom/callapp/common/model/json/JSONAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->setPlaceAddress(Ljava/lang/String;)V

    .line 606
    :cond_3
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->getAvgRating()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->setPlaceRatingNumber(D)V

    .line 607
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->setPlaceImageUri(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->setPlacePhoneNumber(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ExtendedPlaceData;->getCategories()Ljava/util/Set;

    move-result-object v4

    .line 611
    invoke-static {v4}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 612
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 613
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 614
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/common/model/json/JSONCategory;

    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONCategory;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->setPlaceType(Ljava/lang/String;)V

    .line 618
    :cond_4
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/4 v6, 0x0

    if-nez v4, :cond_5

    .line 619
    invoke-virtual {v5, v1}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->setPlaceHours(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v5, v6}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->setOpen(Z)V

    goto :goto_3

    .line 622
    :cond_5
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->setOpen(Z)V

    .line 623
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, 0x7f120500

    goto :goto_2

    :cond_6
    const v3, 0x7f1204fe

    :goto_2
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->setPlaceHours(Ljava/lang/String;)V

    .line 626
    :goto_3
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1$1;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;

    iget-object v3, v3, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;

    iget-object v3, v3, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->e(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 627
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 631
    :cond_7
    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->c()Landroidx/b/e;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1$1;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;

    iget-object v2, v2, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->a:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroidx/b/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1$1;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->a(Ljava/util/List;)V

    return-void
.end method
