.class Lcom/callapp/contacts/activity/base/BaseCallAppFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/NotifyDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->onCreate(Landroid/os/Bundle;)V
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

    .line 104
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$2;->a:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/callapp/contacts/model/DataChangedInfo;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$2;->a:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$2;->a:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->notifyItemChangedEvent(Lcom/callapp/contacts/model/DataChangedInfo;)Z

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$2;->a:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->access$000(Lcom/callapp/contacts/activity/base/BaseCallAppFragment;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
