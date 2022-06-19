.class Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1$1;->a:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 6

    .line 131
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    move-object v3, p1

    const-wide/16 v4, 0x0

    const-string v1, "Permissions"

    const-string v2, "Default dailer from Insights"

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 132
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->e()V

    .line 133
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1$1;->a:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1;->b:Lcom/callapp/contacts/activity/analytics/cards/BannerCard;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->updateCardData(Ljava/lang/Object;Z)V

    return-void
.end method
