.class public Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;
.super Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;
.source "SourceFile"


# instance fields
.field private A:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroidx/recyclerview/widget/GridLayoutManager;

.field private final D:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
            ">;"
        }
    .end annotation
.end field

.field private G:Z

.field private final H:I

.field private final I:I

.field private J:Lcom/callapp/contacts/activity/favorites/DragListView;

.field public s:Z

.field protected t:Landroidx/recyclerview/widget/RecyclerView;

.field protected u:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

.field public v:Z

.field protected w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
            ">;"
        }
    .end annotation
.end field

.field public x:Z

.field private final y:Landroid/view/LayoutInflater;

.field private final z:Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/View;Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;)V
    .locals 0

    .line 73
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;-><init>(Landroid/view/View;)V

    .line 56
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->gc:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->s:Z

    .line 61
    new-instance p2, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    invoke-direct {p2}, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;-><init>()V

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->D:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    .line 63
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->F:Ljava/util/List;

    .line 65
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->gc:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->x:Z

    const/4 p2, 0x0

    .line 66
    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->G:Z

    const/4 p2, 0x1

    .line 68
    iput p2, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->H:I

    const/4 p2, 0x2

    .line 69
    iput p2, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->I:I

    .line 74
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->y:Landroid/view/LayoutInflater;

    .line 75
    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->z:Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;Ljava/util/List;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;
    .locals 3

    .line 6248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6249
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    .line 6250
    check-cast v1, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6252
    :cond_0
    new-instance p1, Lcom/callapp/contacts/activity/favorites/FavoritesAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->D:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    invoke-direct {p1, v0, v1, v2}, Lcom/callapp/contacts/activity/favorites/FavoritesAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;Lcom/callapp/contacts/activity/base/ScrollEvents;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->u:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    .line 6254
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->J:Lcom/callapp/contacts/activity/favorites/DragListView;

    if-eqz v0, :cond_1

    .line 6255
    check-cast p1, Lcom/callapp/contacts/activity/favorites/FavoritesAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/callapp/contacts/activity/favorites/DragListView;->setAdapter(Lcom/callapp/contacts/activity/favorites/DragItemAdapter;Z)V

    .line 6256
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->J:Lcom/callapp/contacts/activity/favorites/DragListView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/favorites/DragListView;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Landroidx/recyclerview/widget/c;

    invoke-direct {v0}, Landroidx/recyclerview/widget/c;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$f;)V

    .line 6257
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->J:Lcom/callapp/contacts/activity/favorites/DragListView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/favorites/DragListView;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 6258
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->J:Lcom/callapp/contacts/activity/favorites/DragListView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/favorites/DragListView;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHorizontalScrollBarEnabled(Z)V

    .line 6259
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->J:Lcom/callapp/contacts/activity/favorites/DragListView;

    new-instance v0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder$3;-><init>(Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/favorites/DragListView;->setDragListListener(Lcom/callapp/contacts/activity/favorites/DragListView$DragListListener;)V

    .line 6270
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->J:Lcom/callapp/contacts/activity/favorites/DragListView;

    new-instance v0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder$4;-><init>(Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/favorites/DragListView;->setDragListCallback(Lcom/callapp/contacts/activity/favorites/DragListView$DragListCallback;)V

    .line 6286
    :cond_1
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->u:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    return-object p0
.end method

.method private static a(Ljava/util/List;[Ljava/lang/Long;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;",
            ">;[",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;",
            ">;"
        }
    .end annotation

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 291
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 292
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 293
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 294
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;

    iget-wide v5, v5, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->contactId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 296
    :cond_0
    array-length v4, p1

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, p1, v3

    .line 297
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 298
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;

    iget-wide v5, v5, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->contactId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 302
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;

    .line 303
    iget-wide v3, p1, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->contactId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 304
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v2
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;)V
    .locals 10

    .line 3133
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->u:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz v0, :cond_6

    .line 3134
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->s:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 3135
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->C:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->a(I)V

    .line 3136
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->u:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast v0, Lcom/callapp/contacts/activity/favorites/FavoritesAdapter;

    .line 4089
    iput-boolean v1, v0, Lcom/callapp/contacts/activity/favorites/FavoritesAdapter;->c:Z

    .line 3137
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->A:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080375

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3138
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->s:Z

    goto :goto_0

    .line 3140
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->C:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->a(I)V

    .line 3141
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->u:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast v0, Lcom/callapp/contacts/activity/favorites/FavoritesAdapter;

    .line 5089
    iput-boolean v3, v0, Lcom/callapp/contacts/activity/favorites/FavoritesAdapter;->c:Z

    .line 3142
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->A:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0803a0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3143
    iput-boolean v3, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->s:Z

    .line 3145
    :goto_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gc:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    iget-boolean v4, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->s:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 3146
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->A:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v4, 0x7f060088

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setColorFilter(I)V

    .line 3148
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->u:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    iget-object v4, v0, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 5311
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 5312
    new-array v6, v5, [Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    .line 5313
    iget-boolean v7, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->s:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    .line 5316
    :goto_1
    div-int/lit8 v8, v5, 0x2

    if-ge v1, v8, :cond_1

    .line 5317
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    add-int/2addr v8, v1

    .line 5318
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    .line 5319
    aput-object v9, v6, v7

    add-int/lit8 v9, v7, 0x1

    .line 5320
    aput-object v8, v6, v9

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v7, v2

    goto :goto_1

    .line 5325
    :cond_1
    rem-int/lit8 v1, v5, 0x2

    if-eqz v1, :cond_5

    sub-int/2addr v5, v3

    .line 5327
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    aput-object v1, v6, v5

    goto :goto_4

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v7, v5, -0x1

    if-ge v1, v7, :cond_3

    .line 5333
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    .line 5334
    aput-object v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    :goto_3
    if-ge v1, v7, :cond_4

    .line 5338
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    .line 5339
    aput-object v5, v6, v2

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    .line 5343
    :cond_4
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    aput-object v1, v6, v7

    .line 5346
    :cond_5
    :goto_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3148
    iput-object v1, v0, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->a:Ljava/lang/Object;

    .line 3149
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->u:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->notifyDataSetChanged()V

    .line 3151
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->y:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010023

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    .line 3152
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->t:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 3153
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->t:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->scheduleLayoutAnimation()V

    .line 3154
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->z:Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;

    if-eqz p0, :cond_6

    .line 3155
    invoke-interface {p0}, Lcom/callapp/contacts/activity/interfaces/DataFragmentsEvents;->scrollToTop()V

    :cond_6
    return-void
.end method

.method private synthetic a(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 197
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->F:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 198
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->F:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->setData(Ljava/util/List;)V

    .line 199
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->u:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz p1, :cond_0

    .line 200
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->setExpandButtonVisibility(Ljava/util/List;)V

    .line 202
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_1

    .line 203
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->B:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 205
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->B:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;)Landroid/view/LayoutInflater;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->y:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;)Z
    .locals 1

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->v:Z

    return v0
.end method

.method public static synthetic lambda$TtRUlIC7mv3bJ2TRlvbfVgs_JIc(Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$dU-j7dNYf8o1DanA9E2ujrR5DXg(Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->o()V

    return-void
.end method

.method private synthetic o()V
    .locals 4

    .line 163
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->getFavoriteContacts()Ljava/util/List;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->E:Ljava/util/List;

    .line 167
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->gb:Lcom/callapp/contacts/manager/preferences/prefs/LongArray;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/LongArray;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->gb:Lcom/callapp/contacts/manager/preferences/prefs/LongArray;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/LongArray;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Long;

    invoke-static {v0, v2}, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->a(Ljava/util/List;[Ljava/lang/Long;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->E:Ljava/util/List;

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->E:Ljava/util/List;

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->E:Ljava/util/List;

    .line 172
    :cond_1
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 173
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->u:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz v2, :cond_2

    .line 174
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->c()V

    .line 176
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_7

    .line 181
    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-string v0, "stickyBannerFavoritesConfigNew"

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JSONStickyDataObject;->getDataFromRemoteConfig(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 182
    :goto_0
    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;->a(Ljava/util/List;)Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 183
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    .line 184
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getNeedBilling()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_7

    .line 186
    new-instance v2, Lcom/callapp/contacts/activity/favorites/PromotionFavoriteData;

    new-instance v3, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-direct {v3}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;-><init>()V

    invoke-direct {v2, v3, v0}, Lcom/callapp/contacts/activity/favorites/PromotionFavoriteData;-><init>(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_7
    new-instance v0, Lcom/callapp/contacts/activity/favorites/AddContactAsFavoriteData;

    new-instance v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-direct {v2}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;-><init>()V

    invoke-direct {v0, v2}, Lcom/callapp/contacts/activity/favorites/AddContactAsFavoriteData;-><init>(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v2, Lcom/callapp/contacts/activity/contact/list/contactListHeader/-$$Lambda$FavoritesHeaderContactListHolder$TtRUlIC7mv3bJ2TRlvbfVgs_JIc;

    invoke-direct {v2, p0, v1, v1}, Lcom/callapp/contacts/activity/contact/list/contactListHeader/-$$Lambda$FavoritesHeaderContactListHolder$TtRUlIC7mv3bJ2TRlvbfVgs_JIc;-><init>(Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
            ">;)V"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->w:Ljava/util/List;

    .line 230
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->u:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-nez v0, :cond_0

    .line 231
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder$2;-><init>(Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void

    .line 243
    :cond_0
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->setData(Ljava/lang/Object;)V

    return-void
.end method

.method private setExpandButtonVisibility(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
            ">;)V"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->A:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f060088

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setColorFilter(I)V

    .line 214
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-gt p1, v2, :cond_0

    const/4 p1, 0x0

    .line 215
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->s:Z

    .line 216
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->A:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 1619
    invoke-virtual {v2, v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;Z)V

    .line 217
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->C:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->a(I)V

    .line 218
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->u:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast v0, Lcom/callapp/contacts/activity/favorites/FavoritesAdapter;

    .line 2089
    iput-boolean p1, v0, Lcom/callapp/contacts/activity/favorites/FavoritesAdapter;->c:Z

    .line 219
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->s:Z

    .line 220
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->u:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast p1, Lcom/callapp/contacts/activity/favorites/FavoritesAdapter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/favorites/FavoritesAdapter;->notifyDataSetChanged()V

    return-void

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->A:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v3, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->s:Z

    if-eqz v3, :cond_1

    const v3, 0x7f0803a0

    goto :goto_0

    :cond_1
    const v3, 0x7f080375

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->A:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 2587
    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;Z)V

    return-void
.end method


# virtual methods
.method public final l()V
    .locals 5

    .line 79
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->G:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->G:Z

    .line 81
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->y:Landroid/view/LayoutInflater;

    const v2, 0x7f0d010e

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->itemView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a034a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/favorites/DragListView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->J:Lcom/callapp/contacts/activity/favorites/DragListView;

    .line 83
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/favorites/DragListView;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->s:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 86
    :goto_0
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->y:Landroid/view/LayoutInflater;

    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->C:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 87
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSmoothScrollbarEnabled(Z)V

    .line 88
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->C:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->setOrientation(I)V

    .line 89
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->t:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->C:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 91
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->t:Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0601f1

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 92
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->D:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->t:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 94
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->t:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->m()V

    .line 97
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a03e6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->B:Landroid/widget/LinearLayout;

    .line 99
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a041a

    .line 1110
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->A:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 1112
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1113
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->B:Landroid/widget/LinearLayout;

    const v2, 0x7f060103

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1114
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->A:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v2, 0x7f060244

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 1116
    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->B:Landroid/widget/LinearLayout;

    const v2, 0x7f0600ab

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1117
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->A:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v2, 0x7f06010e

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1120
    :goto_1
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->A:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setClickable(Z)V

    .line 1121
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->A:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder$1;-><init>(Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1128
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->A:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->s:Z

    if-eqz v2, :cond_2

    const v2, 0x7f0803a0

    goto :goto_2

    :cond_2
    const v2, 0x7f080375

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1129
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->A:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f060088

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setColorFilter(I)V

    :cond_3
    return-void
.end method

.method public final m()V
    .locals 2

    .line 161
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/contactListHeader/-$$Lambda$FavoritesHeaderContactListHolder$dU-j7dNYf8o1DanA9E2ujrR5DXg;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/list/contactListHeader/-$$Lambda$FavoritesHeaderContactListHolder$dU-j7dNYf8o1DanA9E2ujrR5DXg;-><init>(Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final n()V
    .locals 5

    .line 350
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->u:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 351
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    .line 352
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 353
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;->getViewType()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    .line 354
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;

    iget-wide v3, v3, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->contactId:J

    .line 355
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 358
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gb:Lcom/callapp/contacts/manager/preferences/prefs/LongArray;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/LongArray;->set(Ljava/lang/Object;)V

    return-void
.end method
