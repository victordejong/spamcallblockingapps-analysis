.class Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Lcom/allinone/callerid/c/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/backup/activitys/BackupActivity$p;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/backup/activitys/BackupActivity$p;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/backup/activitys/BackupActivity$p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity$p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "backup"

    const-string v1, "onError"

    .line 2
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity$p;

    iget-object v0, v0, Lcom/allinone/callerid/backup/activitys/BackupActivity$p;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    new-instance v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a$a;-><init>(Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "backup"

    const-string v1, "Ok"

    .line 2
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity$p;

    iget-object v0, v0, Lcom/allinone/callerid/backup/activitys/BackupActivity$p;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    new-instance v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a$b;-><init>(Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity$p;

    iget-object v0, v0, Lcom/allinone/callerid/backup/activitys/BackupActivity$p;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
