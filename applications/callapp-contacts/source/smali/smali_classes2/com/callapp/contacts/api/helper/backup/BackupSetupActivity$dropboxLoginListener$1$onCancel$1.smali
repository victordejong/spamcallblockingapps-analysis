.class final Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1$onCancel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1;->b(Ljava/lang/String;)V
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
.field final synthetic a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1$onCancel$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1$onCancel$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1;

    iget-object v0, v0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1$onCancel$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1;

    iget-object v1, v1, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->getOkBtn()Landroid/widget/TextView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->a(Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;Landroid/view/View;Z)V

    .line 60
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1$onCancel$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1;

    iget-object v0, v0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->getBackViaGroup()Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    return-void
.end method
