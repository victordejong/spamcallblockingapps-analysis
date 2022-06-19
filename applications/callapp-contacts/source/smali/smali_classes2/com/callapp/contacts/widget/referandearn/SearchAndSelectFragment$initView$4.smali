.class public final Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;
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
        "com/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4",
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
.field final synthetic a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-static {v0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->a(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getSuggestionsAndContacts()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 167
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 168
    iget-object v3, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-static {v3, v2}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->a(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;Ljava/util/List;)V

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v3, "second"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->setFilterableVerticalItems(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_1
    monitor-exit v0

    .line 173
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4$doTask$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4$doTask$2;-><init>(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$4;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    .line 165
    monitor-exit v0

    throw v1
.end method
