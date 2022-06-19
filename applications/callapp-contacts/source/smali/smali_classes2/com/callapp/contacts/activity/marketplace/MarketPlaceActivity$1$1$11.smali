.class Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$11;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;[Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;",
            ">(TT;[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 338
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isCustomizable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$11;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 341
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v2}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", store thumb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "source"

    aput-object v2, v6, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$11;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->g(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    const-string v1, "Personal Store Item"

    const-string v2, "Thumb clicked"

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 342
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->n:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$11;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 344
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$11;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {v0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Landroid/app/Activity;Landroid/content/Intent;[Landroid/view/View;)V

    return-void
.end method
