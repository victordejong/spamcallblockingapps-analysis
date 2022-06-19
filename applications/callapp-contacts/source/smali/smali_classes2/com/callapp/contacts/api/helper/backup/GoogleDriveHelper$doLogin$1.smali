.class final Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$doLogin$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->a(Landroid/app/Activity;)V
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
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u000e\u0010\u0008\u001a\n \u0004*\u0004\u0018\u00010\t0\tH\n\u00a2\u0006\u0002\u0008\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/app/Activity;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "resultCode",
        "resultData",
        "Landroid/content/Intent;",
        "onActivityResult"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$doLogin$1;->a:Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-ne p3, p1, :cond_1

    if-eqz p4, :cond_0

    .line 271
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$doLogin$1;->a:Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    invoke-static {p1, p4}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->a(Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;Landroid/content/Intent;)V

    :cond_0
    return-void

    .line 274
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$doLogin$1;->a:Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->getLoginListener()Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unable to login, result code: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;->a(Ljava/lang/String;)V

    .line 275
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$doLogin$1;->a:Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    const/4 p2, 0x0

    .line 1017
    iput-object p2, p1, Lcom/callapp/contacts/api/helper/backup/BaseBackup;->a:Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    return-void
.end method
