.class Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 410
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$13;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 413
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Store screen"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$13;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->j(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 415
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$13;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->k(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    .line 417
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$13;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->a:Landroid/view/View;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v2, 0x7f0600f3

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 418
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$13;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$13;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "USER_ALREADY_HAS_PROMOTION"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$13;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->l(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$13;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->m(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$13;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->n(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Z

    move-result v0

    .line 433
    :cond_2
    iget-object v3, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$13;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    iget-object v3, v3, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v3, v3, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "SHOW_LOYALTY_POPUP_EXTRA"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 434
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$13;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->o(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)V

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    if-nez v2, :cond_4

    .line 439
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$13;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    .line 1657
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->cO:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_4

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->cQ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1658
    new-instance v2, Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog;-><init>(Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$FreeStoreItemDialogEvents;)V

    .line 1659
    invoke-virtual {v2, v1}, Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog;->setCancelable(Z)V

    .line 1660
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 445
    :cond_4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$13$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$13$1;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$13;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
