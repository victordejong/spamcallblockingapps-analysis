.class Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a$a;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a$a;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a$a;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a;

    iget-object v0, v0, Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity$q;

    iget-object v0, v0, Lcom/allinone/callerid/backup/activitys/BackupActivity$q;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a$a;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a;

    iget-object v1, v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity$q;

    iget-object v1, v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$q;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a$a;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a;

    iget-object v0, v0, Lcom/allinone/callerid/backup/activitys/BackupActivity$q$a;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity$q;

    iget-object v0, v0, Lcom/allinone/callerid/backup/activitys/BackupActivity$q;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/c/b/a;->b(Landroid/content/Context;)V

    return-void
.end method
