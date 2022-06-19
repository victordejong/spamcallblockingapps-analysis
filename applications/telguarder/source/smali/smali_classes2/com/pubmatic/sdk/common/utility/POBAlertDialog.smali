.class public Lcom/pubmatic/sdk/common/utility/POBAlertDialog;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/utility/POBAlertDialog$POBDialogListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/pubmatic/sdk/common/utility/POBAlertDialog$POBDialogListener;)Landroid/app/AlertDialog$Builder;
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v1, v0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    :goto_0
    if-eqz p0, :cond_1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x1030226

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :goto_1
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/pubmatic/sdk/common/utility/POBAlertDialog$c;

    invoke-direct {p1, p3}, Lcom/pubmatic/sdk/common/utility/POBAlertDialog$c;-><init>(Lcom/pubmatic/sdk/common/utility/POBAlertDialog$POBDialogListener;)V

    const-string p2, "YES"

    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/pubmatic/sdk/common/utility/POBAlertDialog$b;

    invoke-direct {p1, p3}, Lcom/pubmatic/sdk/common/utility/POBAlertDialog$b;-><init>(Lcom/pubmatic/sdk/common/utility/POBAlertDialog$POBDialogListener;)V

    const-string p2, "NO"

    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/pubmatic/sdk/common/utility/POBAlertDialog$a;

    invoke-direct {p1, p3}, Lcom/pubmatic/sdk/common/utility/POBAlertDialog$a;-><init>(Lcom/pubmatic/sdk/common/utility/POBAlertDialog$POBDialogListener;)V

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    return-object v1
.end method
