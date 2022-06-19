.class Lcom/callapp/contacts/activity/base/BaseCallAppFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;


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

    .line 115
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$3;->a:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateData(Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$3;->a:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$3;->a:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->isCurrentType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$3;->a:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->invalidateDataEvent(Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$3;->a:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->shouldInvalidateFromEvent(Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$3;->a:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->access$100(Lcom/callapp/contacts/activity/base/BaseCallAppFragment;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
