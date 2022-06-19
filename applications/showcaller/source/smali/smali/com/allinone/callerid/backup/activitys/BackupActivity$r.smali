.class Lcom/allinone/callerid/backup/activitys/BackupActivity$r;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/backup/activitys/BackupActivity;->L0()V
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
    iput-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$r;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$r;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p1}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->j0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$r;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p1}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->j0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$r;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/a;->c(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$r;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/a;->c(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->b0(Lcom/allinone/callerid/backup/activitys/BackupActivity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$r;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p1}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->f0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$r;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->e0(Lcom/allinone/callerid/backup/activitys/BackupActivity;Z)Z

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$r;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p1}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->t0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    :goto_0
    return-void
.end method
