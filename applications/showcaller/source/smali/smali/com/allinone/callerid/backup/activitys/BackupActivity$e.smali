.class Lcom/allinone/callerid/backup/activitys/BackupActivity$e;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/backup/activitys/BackupActivity;->I0()V
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
    iput-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$e;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$e;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p1}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->n0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$e;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100212

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$e;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p1}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->o0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$e;->d:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p1}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->o0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/allinone/callerid/c/b/c;->h(I)V

    return-void
.end method
