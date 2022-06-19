.class public final synthetic Lo8/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/mglab/scm/visual/FragmentStat;

.field public final synthetic b:Lcom/mglab/scm/visual/CallItem;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/mglab/scm/visual/FragmentStat;Lcom/mglab/scm/visual/CallItem;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo8/s;->a:Lcom/mglab/scm/visual/FragmentStat;

    iput-object p2, p0, Lo8/s;->b:Lcom/mglab/scm/visual/CallItem;

    iput-object p3, p0, Lo8/s;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    iget-object p1, p0, Lo8/s;->a:Lcom/mglab/scm/visual/FragmentStat;

    iget-object v0, p0, Lo8/s;->b:Lcom/mglab/scm/visual/CallItem;

    iget-object v1, p0, Lo8/s;->c:Landroid/content/Context;

    sget-object v2, Lcom/mglab/scm/visual/FragmentStat;->g:Lo8/e;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_8

    .line 1
    :pswitch_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result p2

    .line 2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p2, :cond_0

    const p2, 0x7f12012e

    goto :goto_0

    :cond_0
    const p2, 0x7f12000a

    .line 3
    :goto_0
    invoke-direct {v1, p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f11003b

    .line 4
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {v0, v2}, Lcom/mglab/scm/visual/CallItem;->c(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {v0}, Lcom/mglab/scm/visual/CallItem;->f()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1100b3

    sget-object v0, Lf8/k;->c:Lf8/k;

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f11007e

    sget-object v0, Lo8/t;->a:Lo8/t;

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_8

    .line 12
    :pswitch_1
    new-instance p2, Lcom/mglab/scm/visual/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/mglab/scm/visual/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 p1, 0x5

    invoke-virtual {p2, p1, v0}, Lcom/mglab/scm/visual/c;->j(ILcom/mglab/scm/visual/CallItem;)V

    goto/16 :goto_8

    .line 13
    :pswitch_2
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/b0;

    invoke-virtual {v0}, Lcom/mglab/scm/visual/CallItem;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, v2}, Lk8/b0;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 14
    :pswitch_3
    invoke-virtual {v0}, Lcom/mglab/scm/visual/CallItem;->e()Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/mglab/scm/telephony/ForegroundService;

    invoke-direct {p2, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "EXTRA_CHECK_NUMBER"

    .line 16
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_1

    .line 18
    invoke-virtual {v1, p2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_8

    .line 19
    :cond_1
    invoke-virtual {v1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_8

    .line 20
    :pswitch_4
    new-instance p2, Lcom/mglab/scm/visual/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-direct {p2, v1, v4}, Lcom/mglab/scm/visual/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** CALL INFO ***\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "NUMBER: "

    .line 22
    invoke-static {v4}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v5, v5, Lh8/l;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\nID: "

    .line 23
    invoke-static {v4, v5}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget v5, v5, Lh8/l;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 24
    iget-boolean v5, v0, Lcom/mglab/scm/visual/CallItem;->b:Z

    const-string v6, " "

    const-string v7, "\nDATE: "

    if-eqz v5, :cond_2

    const-string v5, "\n\nCALL_LOG\nID: "

    .line 25
    invoke-static {v4, v5}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v5, v5, Lh8/l;->g:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ""

    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v5, v5, Lh8/l;->i:Ljava/sql/Date;

    .line 27
    invoke-static {v5}, Lf8/g;->l(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v5, v5, Lh8/l;->i:Ljava/sql/Date;

    invoke-static {v5}, Lf8/g;->o(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nCOUNTRY_ISO: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v5, v5, Lh8/l;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 28
    :cond_2
    iget-boolean v5, v0, Lcom/mglab/scm/visual/CallItem;->c:Z

    if-eqz v5, :cond_8

    const-string v5, "\n\nRECEIVER\nSIMNO: "

    .line 29
    invoke-static {v4, v5}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v5, v5, Lh8/l;->f:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\nPRESET: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget v5, v5, Lh8/l;->G:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\nRESULT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v5, v5, Lh8/l;->d:Ljava/lang/Integer;

    .line 30
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ln8/d;->e(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nRESULT_CODE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v5, v5, Lh8/l;->d:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v5, v5, Lh8/l;->e:Ljava/sql/Date;

    .line 31
    invoke-static {v5}, Lf8/g;->l(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v5, v5, Lh8/l;->e:Ljava/sql/Date;

    invoke-static {v5}, Lf8/g;->o(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nCHECK_TIME: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-wide v5, v5, Lh8/l;->w:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms\nMEMORY_CHECK: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-boolean v5, v5, Lh8/l;->x:Z

    const-string v6, "true"

    const-string v7, "false"

    if-eqz v5, :cond_3

    move-object v5, v6

    goto :goto_1

    :cond_3
    move-object v5, v7

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\nENDCALL_RESULT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v5, v5, Lh8/l;->D:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nBLOCK_METHOD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget v5, v5, Lh8/l;->L:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\nUSE_DB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-boolean v5, v5, Lh8/l;->n:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\nUSE_BL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-boolean v5, v5, Lh8/l;->o:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\nUSE_WL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-boolean v5, v5, Lh8/l;->p:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\nUSE_FOREIGN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-boolean v5, v5, Lh8/l;->q:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\nUSE_CONTACTS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-boolean v5, v5, Lh8/l;->r:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\nUSE_FOREGROUND: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-boolean v5, v5, Lh8/l;->t:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\nDEFAULT_PHONE_APP (SETTINGS): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-boolean v5, v5, Lh8/l;->S:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\nIS_DEFAULT_PHONE_APP (SYSTEM): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-boolean v5, v5, Lh8/l;->R:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\nDND: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-boolean v5, v5, Lh8/l;->M:Z

    if-eqz v5, :cond_4

    move-object v5, v6

    goto :goto_2

    :cond_4
    move-object v5, v7

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nSYSTEM_VIBRATE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-boolean v5, v5, Lh8/l;->N:Z

    if-eqz v5, :cond_5

    move-object v5, v6

    goto :goto_3

    :cond_5
    move-object v5, v7

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nSECOND_CALL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-boolean v5, v5, Lh8/l;->O:Z

    if-eqz v5, :cond_6

    move-object v5, v6

    goto :goto_4

    :cond_6
    move-object v5, v7

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nUSE_CALENDAR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-boolean v5, v5, Lh8/l;->H:Z

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    move-object v6, v7

    :goto_5
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nCALENDAR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v5, v5, Lh8/l;->I:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nDEBUG: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v5, v5, Lh8/l;->y:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 37
    :cond_8
    iget-boolean v5, v0, Lcom/mglab/scm/visual/CallItem;->b:Z

    if-eqz v5, :cond_9

    iget-boolean v5, v0, Lcom/mglab/scm/visual/CallItem;->c:Z

    if-eqz v5, :cond_9

    const-string v5, "\n\nCL_TIME_DIFF: "

    .line 38
    invoke-static {v4, v5}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v5, v5, Lh8/l;->e:Ljava/sql/Date;

    invoke-virtual {v5}, Ljava/sql/Date;->getTime()J

    move-result-wide v5

    iget-object v7, v0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v7, v7, Lh8/l;->i:Ljava/sql/Date;

    invoke-virtual {v7}, Ljava/sql/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " sec"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 39
    :cond_9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n*** USER CALL INFO ***\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0, v3}, Lcom/mglab/scm/visual/CallItem;->c(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/mglab/scm/visual/FragmentDev;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 42
    iget-object v0, p2, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v0

    .line 43
    new-instance v1, Le2/g$a;

    iget-object v4, p2, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Le2/g$a;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1100b0

    .line 44
    invoke-virtual {v1, v4}, Le2/g$a;->k(I)Le2/g$a;

    const v4, 0x7f06005b

    .line 45
    invoke-virtual {v1, v4}, Le2/g$a;->l(I)Le2/g$a;

    iget-object v5, p2, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    const v6, 0x7f080111

    .line 46
    invoke-static {v5, v6}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 47
    iget-object v6, p2, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    .line 48
    invoke-static {v6, v4}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v4

    .line 49
    invoke-static {v5, v4}, Lf8/g;->H(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 50
    iput-object v4, v1, Le2/g$a;->E:Landroid/graphics/drawable/Drawable;

    const v4, 0x7f06005e

    if-eqz v0, :cond_a

    const v5, 0x7f060091

    goto :goto_6

    :cond_a
    const v5, 0x7f06005e

    .line 51
    :goto_6
    invoke-virtual {v1, v5}, Le2/g$a;->a(I)Le2/g$a;

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    const v4, 0x7f060033

    .line 52
    :goto_7
    invoke-virtual {v1, v4}, Le2/g$a;->c(I)Le2/g$a;

    .line 53
    iput-boolean v3, v1, Le2/g$a;->y:Z

    .line 54
    iput-boolean v3, v1, Le2/g$a;->z:Z

    const v0, 0x7f0c004d

    .line 55
    invoke-virtual {v1, v0, v3}, Le2/g$a;->d(IZ)Le2/g$a;

    const v0, 0x7f1100b1

    .line 56
    invoke-virtual {v1, v0}, Le2/g$a;->i(I)Le2/g$a;

    new-instance v0, Ly2/f;

    invoke-direct {v0, p2, p1}, Ly2/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    iput-object v0, v1, Le2/g$a;->u:Le2/g$c;

    const v0, 0x7f11006e

    .line 58
    invoke-virtual {v1, v0}, Le2/g$a;->g(I)Le2/g$a;

    invoke-virtual {v1}, Le2/g$a;->j()Le2/g;

    move-result-object v0

    sput-object v0, Lcom/mglab/scm/visual/c;->k:Le2/g;

    .line 59
    iget-object v0, v0, Le2/g;->c:Le2/g$a;

    iget-object v0, v0, Le2/g$a;->o:Landroid/view/View;

    const v1, 0x7f09010a

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 61
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090109

    .line 62
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/rengwuxian/materialedittext/MaterialEditText;

    .line 63
    sget-object v0, Lcom/mglab/scm/visual/c;->k:Le2/g;

    sget-object v1, Le2/b;->a:Le2/b;

    invoke-virtual {v0, v1}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 64
    new-instance v0, Lo8/f0;

    invoke-direct {v0, p2}, Lo8/f0;-><init>(Lcom/mglab/scm/visual/c;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_8

    .line 65
    :pswitch_5
    invoke-virtual {v0}, Lcom/mglab/scm/visual/CallItem;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lh8/q;->i(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 66
    new-instance p2, Lcom/mglab/scm/visual/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/mglab/scm/visual/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p2, v3, v0}, Lcom/mglab/scm/visual/c;->d(ILcom/mglab/scm/visual/CallItem;)V

    goto :goto_8

    .line 67
    :cond_c
    new-instance p2, Lcom/mglab/scm/visual/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/mglab/scm/visual/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p2, v3, v0}, Lcom/mglab/scm/visual/c;->j(ILcom/mglab/scm/visual/CallItem;)V

    goto :goto_8

    .line 68
    :pswitch_6
    invoke-virtual {v0}, Lcom/mglab/scm/visual/CallItem;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lh8/q;->c(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x2

    if-nez p2, :cond_d

    .line 69
    new-instance p2, Lcom/mglab/scm/visual/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/mglab/scm/visual/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p2, v2, v0}, Lcom/mglab/scm/visual/c;->d(ILcom/mglab/scm/visual/CallItem;)V

    goto :goto_8

    .line 70
    :cond_d
    new-instance p2, Lcom/mglab/scm/visual/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/mglab/scm/visual/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p2, v2, v0}, Lcom/mglab/scm/visual/c;->j(ILcom/mglab/scm/visual/CallItem;)V

    goto :goto_8

    .line 71
    :pswitch_7
    invoke-virtual {v0}, Lcom/mglab/scm/visual/CallItem;->e()Ljava/lang/String;

    move-result-object p2

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
