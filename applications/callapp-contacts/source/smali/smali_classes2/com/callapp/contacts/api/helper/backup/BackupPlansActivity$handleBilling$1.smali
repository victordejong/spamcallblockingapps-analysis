.class final Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
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

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    new-instance v1, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v2, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1;-><init>(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1;)V

    check-cast v2, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V

    invoke-static {v0, v1}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;->a(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)V

    return-void
.end method
