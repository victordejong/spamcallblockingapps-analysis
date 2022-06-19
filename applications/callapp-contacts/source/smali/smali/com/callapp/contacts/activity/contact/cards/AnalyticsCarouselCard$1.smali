.class Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->performOnExpandButtonClick(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->cardRecyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->d(I)V

    return-void
.end method
