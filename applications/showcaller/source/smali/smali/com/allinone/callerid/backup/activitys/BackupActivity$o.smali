.class Lcom/allinone/callerid/backup/activitys/BackupActivity$o;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/backup/activitys/BackupActivity;->y0(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/e<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/backup/activitys/BackupActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$o;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signed in as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->l0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "backup"

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$o;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {v0, p1}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->b0(Lcom/allinone/callerid/backup/activitys/BackupActivity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$o;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {v0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Z(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->l0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->l0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/c/b/c;->g(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$o;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p1}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->r0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$o;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p1}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->c0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$o;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p1, v0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->s0(Lcom/allinone/callerid/backup/activitys/BackupActivity;Z)Z

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$o;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p1}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->d0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$o;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p1}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->f0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$o;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p1, v0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->e0(Lcom/allinone/callerid/backup/activitys/BackupActivity;Z)Z

    :cond_2
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/backup/activitys/BackupActivity$o;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method
