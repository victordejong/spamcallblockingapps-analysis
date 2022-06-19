.class final Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InviteFilter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0014J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0004H\u0014\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;",
        "Landroid/widget/Filter;",
        "(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)V",
        "performFiltering",
        "Landroid/widget/Filter$FilterResults;",
        "constraint",
        "",
        "publishResults",
        "",
        "results",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    const-string v0, "constraint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-static {v1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->a(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 231
    :try_start_0
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getFilterableVerticalItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 233
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getFilterableVerticalItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_1

    .line 235
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 236
    iget-object v3, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-virtual {v3}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getFilterableVerticalItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

    .line 237
    invoke-static {v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget-object v5, v4, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->displayName:Ljava/lang/String;

    const-string v6, "item!!.displayName"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 238
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    :cond_2
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 242
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 244
    :goto_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3

    const-string v0, "constraint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "results"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    const-string p2, "null cannot be cast to non-null type kotlin.collections.List<*>"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 252
    iget-object p2, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-static {p2}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->b(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 253
    iget-object p2, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getViewType()I

    move-result p2

    const-string v0, "null cannot be cast to non-null type com.callapp.contacts.activity.base.BaseViewTypeData"

    if-nez p2, :cond_3

    .line 254
    iget-object p2, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-static {p2}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->c(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-static {p2}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->d(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-static {p2}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->d(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 255
    iget-object p2, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getTopSectionData()Lcom/callapp/contacts/model/SectionData;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 256
    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-static {v1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->b(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_0
    new-instance p2, Lcom/callapp/contacts/activity/invite/MultipleContactsData;

    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-static {v1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->d(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/callapp/contacts/activity/invite/MultipleContactsData;-><init>(Ljava/util/List;)V

    .line 259
    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-static {v1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->b(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_1
    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_4

    .line 262
    iget-object p2, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getBottomSectionData()Lcom/callapp/contacts/model/SectionData;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 263
    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-static {v1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->b(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 266
    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-static {v1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->b(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    :cond_3
    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_4

    .line 271
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 272
    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-static {v1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->b(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 279
    :cond_4
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-static {p1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->e(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;

    move-result-object p1

    if-nez p1, :cond_5

    .line 280
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    new-instance p2, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->b(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-static {v1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->f(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/base/ScrollEvents;

    iget-object v2, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    check-cast v2, Lcom/callapp/contacts/activity/invite/OnSelectChangeListener;

    invoke-direct {p2, v0, v1, v2}, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/activity/invite/OnSelectChangeListener;)V

    invoke-static {p1, p2}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->a(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;)V

    .line 281
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getMainRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-static {p2}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->e(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void

    .line 283
    :cond_5
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-static {p1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->e(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-static {p2}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->b(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;->setData(Ljava/util/List;)V

    return-void
.end method
