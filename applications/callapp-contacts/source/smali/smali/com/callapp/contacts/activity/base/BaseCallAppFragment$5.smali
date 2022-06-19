.class Lcom/callapp/contacts/activity/base/BaseCallAppFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->notifyItemChangedEvent(Lcom/callapp/contacts/model/DataChangedInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseCallAppFragment;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$5;->a:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$5;->a:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$5;->a:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$5;->a:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    const/4 v1, 0x0

    .line 1116
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->getItemCount()I

    move-result v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
