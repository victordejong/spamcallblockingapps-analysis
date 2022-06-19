.class Lcom/callapp/contacts/activity/calllog/CallLogFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/calllog/CallLogFragment;->notifyItemChangedEvent(Lcom/callapp/contacts/model/DataChangedInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$4;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$4;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->l(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$4;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->m(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$4;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->o(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$4;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-static {v2}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->n(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
