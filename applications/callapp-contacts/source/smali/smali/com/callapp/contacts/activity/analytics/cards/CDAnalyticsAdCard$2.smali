.class Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard;->onShowAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard;->access$000(Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard;)V

    return-void
.end method
