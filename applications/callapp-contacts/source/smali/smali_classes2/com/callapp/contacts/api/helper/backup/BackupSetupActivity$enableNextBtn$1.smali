.class final Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$enableNextBtn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->a(Landroid/view/View;Z)V
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
.field final synthetic a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;

.field final synthetic b:Z

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;ZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$enableNextBtn$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;

    iput-boolean p2, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$enableNextBtn$1;->b:Z

    iput-object p3, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$enableNextBtn$1;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 252
    iget-boolean v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$enableNextBtn$1;->b:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$enableNextBtn$1;->c:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 254
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$enableNextBtn$1;->c:Landroid/view/View;

    const v1, 0x7f08058d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 255
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$enableNextBtn$1;->c:Landroid/view/View;

    new-instance v1, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$enableNextBtn$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$enableNextBtn$1$1;-><init>(Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$enableNextBtn$1;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$enableNextBtn$1;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 275
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$enableNextBtn$1;->c:Landroid/view/View;

    const v1, 0x7f080119

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 276
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$enableNextBtn$1;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
