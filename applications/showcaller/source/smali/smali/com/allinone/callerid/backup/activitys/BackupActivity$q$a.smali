.class Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Lcom/allinone/callerid/c/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/backup/activitys/BackupActivity$q;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/backup/activitys/BackupActivity$q;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/backup/activitys/BackupActivity$q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity$q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity$q;

    iget-object v0, v0, Lcom/allinone/callerid/backup/activitys/BackupActivity$q;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    new-instance v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a$a;-><init>(Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;)V
    .locals 0

    return-void
.end method
