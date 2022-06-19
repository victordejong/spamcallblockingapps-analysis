.class Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/app/Activity;)V
    .locals 1

    .line 506
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    const v0, 0x7f120537

    .line 507
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$5jvYYfQ5qSiSbCLqVBjMTvOhPyY(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4;->a(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->l(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->l(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a()V

    :cond_0
    return-void
.end method

.method public synthetic a(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$a(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    .line 499
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->l(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b()V

    .line 500
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->m(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    .line 502
    new-instance p1, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v0, 0x7f120543

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f120542

    .line 503
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1204ea

    .line 504
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/callapp/contacts/activity/marketplace/planPage/-$$Lambda$PlanPageActivity$4$5jvYYfQ5qSiSbCLqVBjMTvOhPyY;

    invoke-direct {v5, p0}, Lcom/callapp/contacts/activity/marketplace/planPage/-$$Lambda$PlanPageActivity$4$5jvYYfQ5qSiSbCLqVBjMTvOhPyY;-><init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4;)V

    new-instance v7, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4$1;

    invoke-direct {v7, p0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4$1;-><init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    const/4 v0, 0x0

    .line 525
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->setCancelable(Z)V

    .line 527
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public synthetic b(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Ljava/util/List;)V

    return-void
.end method
