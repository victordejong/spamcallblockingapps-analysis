.class public Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeablePagerAdapter;
.super Landroidx/fragment/app/q;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroidx/fragment/app/q;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 18
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeablePagerAdapter;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected final a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeablePagerAdapter;->a:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeablePagerAdapter;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeablePagerAdapter;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeablePagerAdapter;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public getPages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/swipeable/BaseSwipeablePagerAdapter;->a:Ljava/util/Map;

    return-object v0
.end method
