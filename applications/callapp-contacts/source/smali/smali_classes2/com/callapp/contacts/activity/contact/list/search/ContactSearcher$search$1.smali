.class public final Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/callapp/contacts/activity/contact/list/search/ContactSearcher$search$1",
        "Lcom/callapp/contacts/manager/task/Task;",
        "doTask",
        "",
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lkotlin/jvm/internal/ab$e;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/internal/ab$e;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$1;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$1;->c:Lkotlin/jvm/internal/ab$e;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$1;->e:Ljava/util/List;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 11

    .line 43
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$1;->a:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$1;->b:Ljava/lang/String;

    .line 1071
    :goto_2
    sget-object v3, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v3, Ljava/util/List;

    .line 45
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$1;->a:Ljava/util/List;

    if-eqz v4, :cond_6

    .line 46
    check-cast v4, Ljava/lang/Iterable;

    .line 439
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 440
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 47
    instance-of v7, v6, Lcom/callapp/contacts/activity/interfaces/StickyHeaderSection;

    if-eqz v7, :cond_4

    check-cast v6, Lcom/callapp/contacts/activity/interfaces/StickyHeaderSection;

    invoke-interface {v6}, Lcom/callapp/contacts/activity/interfaces/StickyHeaderSection;->getSectionId()I

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_3

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 441
    :cond_5
    check-cast v3, Ljava/util/List;

    .line 51
    :cond_6
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$1;->c:Lkotlin/jvm/internal/ab$e;

    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$1;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$1;->e:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    .line 442
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 443
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 52
    instance-of v10, v9, Lcom/callapp/contacts/activity/interfaces/StickyHeaderSection;

    if-eqz v10, :cond_8

    check-cast v9, Lcom/callapp/contacts/activity/interfaces/StickyHeaderSection;

    invoke-interface {v9}, Lcom/callapp/contacts/activity/interfaces/StickyHeaderSection;->getSectionId()I

    move-result v9

    if-nez v9, :cond_8

    const/4 v9, 0x1

    goto :goto_6

    :cond_8
    const/4 v9, 0x0

    :goto_6
    if-eqz v9, :cond_7

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 444
    :cond_9
    check-cast v7, Ljava/util/List;

    .line 51
    invoke-static {v5, v0, v7, v3}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, v4, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    return-void
.end method
