.class Lcom/allinone/callerid/backup/activitys/BackupActivity$q;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/backup/activitys/BackupActivity;->F0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/backup/activitys/BackupActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$q;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$q;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {v0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->g0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Lcom/google/api/services/drive/Drive;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a;-><init>(Lcom/allinone/callerid/backup/activitys/BackupActivity$q;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/c/a/a;->c(Lcom/google/api/services/drive/Drive;Lcom/allinone/callerid/c/a/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "backup"

    invoke-static {v2, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
