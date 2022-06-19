.class Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$3;
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

    .line 213
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$3;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;[Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;",
            ">(TT;[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 217
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isCustomizable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$3;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 220
    :cond_0
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->f:Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$Companion;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$3;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$3;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {v0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Landroid/app/Activity;Landroid/content/Intent;[Landroid/view/View;)V

    return-void
.end method
