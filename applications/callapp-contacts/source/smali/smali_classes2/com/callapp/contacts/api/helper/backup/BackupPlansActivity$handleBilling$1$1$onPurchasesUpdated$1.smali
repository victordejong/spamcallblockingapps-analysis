.class final Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1;->a(Ljava/util/List;)V
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
        "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;",
        "kotlin.jvm.PlatformType",
        "onDone"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1;

.field final synthetic b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDone(Ljava/lang/Object;)V
    .locals 3

    .line 1106
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1;

    iget-object p1, p1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    invoke-static {p1}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;->a(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1;->b:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1$1;-><init>(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$handleBilling$1$1$onPurchasesUpdated$1;)V

    check-cast v1, Lcom/android/billingclient/api/m;

    const-string v2, "subs"

    invoke-virtual {p1, v2, v0, v1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/m;)V

    :cond_0
    return-void
.end method
