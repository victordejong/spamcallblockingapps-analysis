.class Lcom/callapp/contacts/activity/base/BaseCallAppFragment$4;
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
.field final synthetic a:Lcom/callapp/contacts/model/DataChangedInfo;

.field final synthetic b:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseCallAppFragment;Lcom/callapp/contacts/model/DataChangedInfo;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$4;->b:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$4;->a:Lcom/callapp/contacts/model/DataChangedInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$4;->b:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$4;->b:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$4;->b:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->recyclerAdapter:Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$4;->a:Lcom/callapp/contacts/model/DataChangedInfo;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/DataChangedInfo;->getPosition()I

    move-result v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
