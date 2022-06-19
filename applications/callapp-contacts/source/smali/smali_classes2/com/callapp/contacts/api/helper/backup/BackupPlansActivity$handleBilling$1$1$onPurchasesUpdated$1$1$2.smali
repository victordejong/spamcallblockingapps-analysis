.class final Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/app/Activity;",
        "kotlin.jvm.PlatformType",
        "onClickListener"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$2;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickListener(Landroid/app/Activity;)V
    .locals 0

    .line 140
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1$2;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1;

    iget-object p1, p1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1;

    iget-object p1, p1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;->finish()V

    return-void
.end method
