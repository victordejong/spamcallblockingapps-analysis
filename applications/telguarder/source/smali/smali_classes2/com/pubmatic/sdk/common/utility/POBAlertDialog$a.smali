.class final Lcom/pubmatic/sdk/common/utility/POBAlertDialog$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/utility/POBAlertDialog;->build(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/pubmatic/sdk/common/utility/POBAlertDialog$POBDialogListener;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/common/utility/POBAlertDialog$POBDialogListener;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/utility/POBAlertDialog$POBDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/utility/POBAlertDialog$a;->a:Lcom/pubmatic/sdk/common/utility/POBAlertDialog$POBDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBAlertDialog$a;->a:Lcom/pubmatic/sdk/common/utility/POBAlertDialog$POBDialogListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/pubmatic/sdk/common/utility/POBAlertDialog$POBDialogListener;->onCancel(Landroid/content/DialogInterface;I)V

    return-void
.end method
