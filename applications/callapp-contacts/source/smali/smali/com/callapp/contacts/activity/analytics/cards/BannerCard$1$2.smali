.class Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1$2;
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

    .line 146
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1$2;->a:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 149
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1$2;->a:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1;->b:Lcom/callapp/contacts/activity/analytics/cards/BannerCard;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->updateCardData(Ljava/lang/Object;Z)V

    return-void
.end method
