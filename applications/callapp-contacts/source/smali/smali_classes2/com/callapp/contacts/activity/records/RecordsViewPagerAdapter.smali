.class public Lcom/callapp/contacts/activity/records/RecordsViewPagerAdapter;
.super Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeablePagerAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeablePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 17
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 18
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/RecordsViewPagerAdapter;->getPages()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/Fragment;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/callapp/contacts/activity/records/RecordsViewPagerAdapter;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
