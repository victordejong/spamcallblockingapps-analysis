.class Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 296
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$8;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 300
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/activity/marketplace/ThemeStoreItemsListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$8;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
