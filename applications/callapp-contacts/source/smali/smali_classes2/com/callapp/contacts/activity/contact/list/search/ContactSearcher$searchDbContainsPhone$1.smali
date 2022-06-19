.class public final Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$searchDbContainsPhone$1;
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
        "com/callapp/contacts/activity/contact/list/search/ContactSearcher$searchDbContainsPhone$1",
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
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;

.field final synthetic b:Lkotlin/jvm/internal/ab$e;

.field final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Lkotlin/jvm/internal/ab$e;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/ab$e;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .line 340
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$searchDbContainsPhone$1;->a:Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$searchDbContainsPhone$1;->b:Lkotlin/jvm/internal/ab$e;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$searchDbContainsPhone$1;->c:Ljava/util/List;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$searchDbContainsPhone$1;->b:Lkotlin/jvm/internal/ab$e;

    iget-object v0, v0, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "contactsResult"

    .line 343
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 439
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    .line 344
    new-instance v2, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-direct {v2}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;-><init>()V

    .line 345
    invoke-virtual {v2, v1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->a(Lcom/callapp/contacts/model/objectbox/ContactLookupData;)V

    .line 346
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$searchDbContainsPhone$1;->a:Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$searchDbContainsPhone$1;->b:Lkotlin/jvm/internal/ab$e;

    iget-object v3, v3, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->c(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$searchDbContainsPhone$1;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
