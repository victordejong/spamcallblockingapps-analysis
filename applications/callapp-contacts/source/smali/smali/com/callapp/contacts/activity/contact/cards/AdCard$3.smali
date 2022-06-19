.class Lcom/callapp/contacts/activity/contact/cards/AdCard$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/AdCard;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/AdCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/AdCard;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$3;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$3;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->access$400(Lcom/callapp/contacts/activity/contact/cards/AdCard;)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$3;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->access$400(Lcom/callapp/contacts/activity/contact/cards/AdCard;)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->b()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$3;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/AdCard;)V

    .line 193
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$3;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->access$500(Lcom/callapp/contacts/activity/contact/cards/AdCard;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 195
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$3;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->loadAdOnContactChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/AdCard$3$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/AdCard$3$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/AdCard$3;)V

    .line 201
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/AdCard$3$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_1
    return-void
.end method
