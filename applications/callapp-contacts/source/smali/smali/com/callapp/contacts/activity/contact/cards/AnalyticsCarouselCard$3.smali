.class Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;Ljava/util/Set;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$3;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$3;->a:Ljava/util/Set;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->excludeAnalytics:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;Z)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->cardRecyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->b(I)V

    .line 136
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->handleFooter()V

    return-void
.end method
