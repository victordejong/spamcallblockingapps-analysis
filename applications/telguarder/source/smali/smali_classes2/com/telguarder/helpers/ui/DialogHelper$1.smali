.class final Lcom/telguarder/helpers/ui/DialogHelper$1;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/helpers/ui/DialogHelper;->showAlertDialog(Lcom/telguarder/helpers/ui/DialogModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialogModel:Lcom/telguarder/helpers/ui/DialogModel;


# direct methods
.method constructor <init>(Lcom/telguarder/helpers/ui/DialogModel;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/telguarder/helpers/ui/DialogHelper$1;->val$dialogModel:Lcom/telguarder/helpers/ui/DialogModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 20
    iget-object p2, p0, Lcom/telguarder/helpers/ui/DialogHelper$1;->val$dialogModel:Lcom/telguarder/helpers/ui/DialogModel;

    iget-object p2, p2, Lcom/telguarder/helpers/ui/DialogModel;->dialogEventListener:Lcom/telguarder/helpers/ui/DialogEventListener;

    if-eqz p2, :cond_0

    .line 21
    iget-object p2, p0, Lcom/telguarder/helpers/ui/DialogHelper$1;->val$dialogModel:Lcom/telguarder/helpers/ui/DialogModel;

    iget-object p2, p2, Lcom/telguarder/helpers/ui/DialogModel;->dialogEventListener:Lcom/telguarder/helpers/ui/DialogEventListener;

    invoke-interface {p2}, Lcom/telguarder/helpers/ui/DialogEventListener;->onPositiveSelected()V

    .line 23
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
