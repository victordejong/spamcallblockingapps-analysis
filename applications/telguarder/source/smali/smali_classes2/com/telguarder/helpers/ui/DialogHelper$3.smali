.class final Lcom/telguarder/helpers/ui/DialogHelper$3;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 38
    iput-object p1, p0, Lcom/telguarder/helpers/ui/DialogHelper$3;->val$dialogModel:Lcom/telguarder/helpers/ui/DialogModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/telguarder/helpers/ui/DialogHelper$3;->val$dialogModel:Lcom/telguarder/helpers/ui/DialogModel;

    iget-object p1, p1, Lcom/telguarder/helpers/ui/DialogModel;->dialogEventListener:Lcom/telguarder/helpers/ui/DialogEventListener;

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/telguarder/helpers/ui/DialogHelper$3;->val$dialogModel:Lcom/telguarder/helpers/ui/DialogModel;

    iget-object p1, p1, Lcom/telguarder/helpers/ui/DialogModel;->dialogEventListener:Lcom/telguarder/helpers/ui/DialogEventListener;

    invoke-interface {p1}, Lcom/telguarder/helpers/ui/DialogEventListener;->onNegativeSelected()V

    :cond_0
    return-void
.end method
