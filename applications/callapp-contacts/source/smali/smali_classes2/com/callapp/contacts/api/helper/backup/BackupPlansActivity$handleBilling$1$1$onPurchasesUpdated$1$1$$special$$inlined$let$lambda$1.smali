.class final Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$$special$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1;->b(Lcom/android/billingclient/api/g;Ljava/util/List;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick",
        "com/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1;

.field final synthetic c:Lcom/android/billingclient/api/k;

.field final synthetic d:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1;Lcom/android/billingclient/api/k;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$$special$$inlined$let$lambda$1;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$$special$$inlined$let$lambda$1;->b:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1;

    iput-object p3, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$$special$$inlined$let$lambda$1;->c:Lcom/android/billingclient/api/k;

    iput-object p4, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$$special$$inlined$let$lambda$1;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 115
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$$special$$inlined$let$lambda$1;->a:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 116
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$$special$$inlined$let$lambda$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 117
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$$special$$inlined$let$lambda$1;->b:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1;

    iget-object p1, p1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1;

    iget-object p1, p1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    new-instance v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$$special$$inlined$let$lambda$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$$special$$inlined$let$lambda$1$1;-><init>(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$$special$$inlined$let$lambda$1;)V

    check-cast v1, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V

    invoke-static {p1, v0}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;->b(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)V

    return-void
.end method
