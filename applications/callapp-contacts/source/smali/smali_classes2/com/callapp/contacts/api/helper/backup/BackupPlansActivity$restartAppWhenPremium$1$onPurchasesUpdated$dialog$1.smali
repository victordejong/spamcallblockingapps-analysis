.class final Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1$onPurchasesUpdated$dialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1;->a(Ljava/util/List;)V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/app/Activity;",
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
.field final synthetic a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1$onPurchasesUpdated$dialog$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 185
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1$onPurchasesUpdated$dialog$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1;

    iget-object p1, p1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity$restartAppWhenPremium$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    check-cast p1, Landroid/content/Context;

    const v0, 0x7f120537

    .line 186
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
