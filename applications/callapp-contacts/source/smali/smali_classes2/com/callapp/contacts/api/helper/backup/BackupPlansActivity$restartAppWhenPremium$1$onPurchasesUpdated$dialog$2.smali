.class public final Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1$onPurchasesUpdated$dialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1;->a(Ljava/util/List;)V
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1$onPurchasesUpdated$dialog$2",
        "Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;",
        "onDialogCancelled",
        "",
        "dialog",
        "Lcom/callapp/contacts/manager/popup/DialogPopup;",
        "onDialogDismissed",
        "onShow",
        "Landroid/content/DialogInterface;",
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
.field final synthetic a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1$onPurchasesUpdated$dialog$2;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1$onPurchasesUpdated$dialog$2;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1;

    iget-object p1, p1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    check-cast p1, Landroid/content/Context;

    const v0, 0x7f120537

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1$onPurchasesUpdated$dialog$2;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1;

    iget-object p1, p1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    check-cast p1, Landroid/content/Context;

    const v0, 0x7f120537

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
