.class final Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032,\u0010\u0004\u001a(\u0012\u000c\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006\u0018\u0001 \u0007*\u0012\u0012\u000c\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006\u0018\u00010\u00080\u0005H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Lcom/android/billingclient/api/BillingResult;",
        "skuDetailsList",
        "",
        "Lcom/android/billingclient/api/SkuDetails;",
        "kotlin.jvm.PlatformType",
        "",
        "onSkuDetailsResponse"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/k;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1;

    iget-object p1, p1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1;

    iget-object p1, p1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    invoke-static {p1}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;->b(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 108
    move-object p1, p2

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_3

    .line 109
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/k;

    .line 110
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1;

    iget-object v0, v0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1;

    iget-object v0, v0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;->c(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "details"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 112
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1;

    iget-object v1, v1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1;

    iget-object v1, v1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1;

    iget-object v1, v1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    invoke-static {v1, p2}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;->a(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;Lcom/android/billingclient/api/k;)V

    .line 113
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup;

    .line 114
    new-instance v2, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$$special$$inlined$let$lambda$1;

    invoke-direct {v2, v1, p0, p2, v0}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$$special$$inlined$let$lambda$1;-><init>(Landroid/view/ViewGroup;Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1;Lcom/android/billingclient/api/k;Landroid/widget/TextView;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 138
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1;

    iget-object p2, p2, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1;

    iget-object p2, p2, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1;

    iget-object p2, p2, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    check-cast p2, Landroid/content/Context;

    new-instance v7, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v0, 0x7f1203d8

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f1207ec

    .line 139
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1204ea

    .line 140
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$2;-><init>(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1;)V

    move-object v5, v0

    check-cast v5, Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    const/4 v6, 0x0

    move-object v0, v7

    .line 138
    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    check-cast v7, Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {p1, p2, v7}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :cond_4
    return-void
.end method
