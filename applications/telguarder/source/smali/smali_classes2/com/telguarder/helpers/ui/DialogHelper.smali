.class public Lcom/telguarder/helpers/ui/DialogHelper;
.super Ljava/lang/Object;
.source "DialogHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showAlertDialog(Lcom/telguarder/helpers/ui/DialogModel;)V
    .locals 3

    if-eqz p0, :cond_5

    .line 10
    iget-object v0, p0, Lcom/telguarder/helpers/ui/DialogModel;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/telguarder/helpers/ui/DialogModel;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/telguarder/helpers/ui/DialogModel;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 14
    iget-object v1, p0, Lcom/telguarder/helpers/ui/DialogModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 15
    iget-object v1, p0, Lcom/telguarder/helpers/ui/DialogModel;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 16
    iget-object v1, p0, Lcom/telguarder/helpers/ui/DialogModel;->dialogType:Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    sget-object v2, Lcom/telguarder/helpers/ui/DialogModel$DialogType;->POSITIVE:Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/telguarder/helpers/ui/DialogModel;->dialogType:Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    sget-object v2, Lcom/telguarder/helpers/ui/DialogModel$DialogType;->POSITIVE_NEGATIVE:Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    if-ne v1, v2, :cond_2

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/telguarder/helpers/ui/DialogModel;->positiveText:Ljava/lang/String;

    new-instance v2, Lcom/telguarder/helpers/ui/DialogHelper$1;

    invoke-direct {v2, p0}, Lcom/telguarder/helpers/ui/DialogHelper$1;-><init>(Lcom/telguarder/helpers/ui/DialogModel;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 27
    :cond_2
    iget-object v1, p0, Lcom/telguarder/helpers/ui/DialogModel;->dialogType:Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    sget-object v2, Lcom/telguarder/helpers/ui/DialogModel$DialogType;->NEGATIVE:Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/telguarder/helpers/ui/DialogModel;->dialogType:Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    sget-object v2, Lcom/telguarder/helpers/ui/DialogModel$DialogType;->POSITIVE_NEGATIVE:Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    if-ne v1, v2, :cond_4

    .line 28
    :cond_3
    iget-object v1, p0, Lcom/telguarder/helpers/ui/DialogModel;->negativeText:Ljava/lang/String;

    new-instance v2, Lcom/telguarder/helpers/ui/DialogHelper$2;

    invoke-direct {v2, p0}, Lcom/telguarder/helpers/ui/DialogHelper$2;-><init>(Lcom/telguarder/helpers/ui/DialogModel;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 38
    :cond_4
    new-instance v1, Lcom/telguarder/helpers/ui/DialogHelper$3;

    invoke-direct {v1, p0}, Lcom/telguarder/helpers/ui/DialogHelper$3;-><init>(Lcom/telguarder/helpers/ui/DialogModel;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 46
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_5
    :goto_0
    return-void
.end method
