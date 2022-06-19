.class Lcom/allinone/callerid/backup/activitys/BackupActivity$j;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/backup/activitys/BackupActivity;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/backup/activitys/BackupActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$j;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/allinone/callerid/c/b/c;->f(Z)V

    .line 2
    iget-object p2, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$j;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p2}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->X(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 3
    iget-object p2, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$j;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p2}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->X(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4
    iget-object p2, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$j;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p2}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Y(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 5
    iget-object p2, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$j;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p2}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->k0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 6
    iget-object p2, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$j;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p2}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->p0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 7
    iget-object p2, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$j;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p2}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->q0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 8
    invoke-static {}, Lcom/allinone/callerid/c/b/c;->b()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, ""

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$j;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p2, p1}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->s0(Lcom/allinone/callerid/backup/activitys/BackupActivity;Z)Z

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$j;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p1}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->t0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    .line 12
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "backup_enable"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 13
    invoke-static {p1}, Lcom/allinone/callerid/c/b/c;->f(Z)V

    .line 14
    iget-object p2, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$j;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p2}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->X(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 15
    iget-object p2, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$j;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p2}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->X(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 16
    iget-object p2, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$j;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p2}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Y(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 17
    iget-object p2, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$j;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p2}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->k0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 18
    iget-object p2, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$j;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p2}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->p0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 19
    iget-object p2, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$j;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p2}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->q0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 20
    iget-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity$j;->a:Lcom/allinone/callerid/backup/activitys/BackupActivity;

    invoke-static {p1}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->u0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    :goto_0
    return-void
.end method
