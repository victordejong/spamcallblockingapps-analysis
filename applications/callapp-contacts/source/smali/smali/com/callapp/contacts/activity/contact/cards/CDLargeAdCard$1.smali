.class Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard;->onAdLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/CardShowingAdEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard;

    const/4 v3, 0x0

    .line 1091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method
