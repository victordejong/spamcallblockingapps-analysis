.class Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->a(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/location/Location;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;Landroid/location/Location;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->a:Landroid/location/Location;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;",
            ">;)V"
        }
    .end annotation

    .line 651
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->f(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 653
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->g(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 654
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->h(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;->getCurrentFilter()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->a:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Ljava/util/List;)Ljava/util/List;

    .line 656
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->e(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 657
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->b(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Ljava/util/List;)V

    .line 658
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->c(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Ljava/util/List;)V

    goto :goto_0

    .line 660
    :cond_0
    const-class p1, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Discarding old results for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 662
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a()V

    return-void
.end method

.method public doTask()V
    .locals 5

    .line 576
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->a:Landroid/location/Location;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->a:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->c()Landroidx/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->a:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/b/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 578
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1$2;-><init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;)V

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->a:Ljava/lang/CharSequence;

    .line 586
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->a:Landroid/location/Location;

    .line 587
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->a:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1$1;-><init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;)V

    .line 586
    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1$2;->a(Lcom/callapp/contacts/api/helper/placessearch/PlacesSearchLoadingEvents;)V

    return-void

    .line 641
    :cond_0
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->a(Ljava/util/List;)V

    return-void

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->f(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 646
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a()V

    return-void
.end method
