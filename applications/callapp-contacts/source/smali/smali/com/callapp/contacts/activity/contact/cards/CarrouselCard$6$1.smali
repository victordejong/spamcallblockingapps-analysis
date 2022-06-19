.class Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$6$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$6;->onVisibilityChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$6;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$6;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$6$1;->a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$6;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$6$1;->a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$6;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$6;->a:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->cardRecyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->d(I)V

    return-void
.end method
