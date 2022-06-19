.class public final Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0016\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1",
        "Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;",
        "onBillingClientSetupFinished",
        "",
        "onPurchasesUpdated",
        "purchases",
        "",
        "Lcom/android/billingclient/api/Purchase;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;->e(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v0

    if-eqz v0, :cond_0

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
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    const-string v0, "purchases"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    invoke-static {p1}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;->e(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b()V

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    invoke-static {p1}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;->f(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;)V

    .line 183
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hR:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 184
    new-instance p1, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v0, 0x7f120543

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f120542

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f1204ea

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1$onPurchasesUpdated$dialog$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1$onPurchasesUpdated$dialog$1;-><init>(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1;)V

    move-object v6, v0

    check-cast v6, Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    const/4 v7, 0x0

    .line 187
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1$onPurchasesUpdated$dialog$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1$onPurchasesUpdated$dialog$2;-><init>(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1;)V

    move-object v8, v0

    check-cast v8, Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;

    move-object v1, p1

    .line 184
    invoke-direct/range {v1 .. v8}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->setCancelable(Z)V

    .line 200
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    check-cast v1, Landroid/content/Context;

    check-cast p1, Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public synthetic b(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Ljava/util/List;)V

    return-void
.end method
