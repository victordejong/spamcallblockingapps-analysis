.class Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$5;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 572
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$5;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {}, Lcom/callapp/contacts/manager/PromotionManager;->getPromotionType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Ljava/lang/String;)V

    return-void
.end method
