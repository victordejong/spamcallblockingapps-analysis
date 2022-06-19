.class Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1;

    iget v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1;->n:I

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1;->o:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4;->a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1;->o:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4;->a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->cardRecyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->d(I)V

    :cond_0
    return-void
.end method
