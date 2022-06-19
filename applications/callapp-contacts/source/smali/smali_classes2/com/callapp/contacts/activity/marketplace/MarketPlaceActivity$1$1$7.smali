.class Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$7;
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

    .line 279
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$7;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 283
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$7;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinStoreItemsListActivity;->a(Landroid/content/Context;)V

    return-void
.end method
