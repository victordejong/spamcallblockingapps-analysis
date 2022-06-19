.class Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a$b;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a$b;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/allinone/callerid/c/b/c;->j(J)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a$b;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;

    iget-object v0, v0, Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity$p;

    iget-object v0, v0, Lcom/allinone/callerid/backup/activitys/BackupActivity$p;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {v0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->i0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a$b;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;

    iget-object v2, v2, Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity$p;

    iget-object v2, v2, Lcom/allinone/callerid/backup/activitys/BackupActivity$p;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a$b;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;

    iget-object v2, v2, Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity$p;

    iget-object v2, v2, Lcom/allinone/callerid/backup/activitys/BackupActivity$p;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {v2}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->h0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a$b;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;

    iget-object v0, v0, Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity$p;

    iget-object v0, v0, Lcom/allinone/callerid/backup/activitys/BackupActivity$p;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {v0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->i0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a$b;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;

    iget-object v0, v0, Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity$p;

    iget-object v0, v0, Lcom/allinone/callerid/backup/activitys/BackupActivity$p;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a$b;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;

    iget-object v1, v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$p$a;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity$p;

    iget-object v1, v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$p;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "backup_successful"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    return-void
.end method
