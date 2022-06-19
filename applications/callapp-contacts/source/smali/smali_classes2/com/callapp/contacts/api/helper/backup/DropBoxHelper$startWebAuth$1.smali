.class final Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$startWebAuth$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->b(Landroid/app/Activity;)V
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
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "onCancel"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$startWebAuth$1;->a:Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 236
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$startWebAuth$1;->a:Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->getLoginListener()Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "cancel auth webView dialog"

    invoke-interface {p1, v0}, Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;->b(Ljava/lang/String;)V

    .line 237
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$startWebAuth$1;->a:Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    const/4 v0, 0x0

    .line 1017
    iput-object v0, p1, Lcom/callapp/contacts/api/helper/backup/BaseBackup;->a:Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    return-void
.end method
