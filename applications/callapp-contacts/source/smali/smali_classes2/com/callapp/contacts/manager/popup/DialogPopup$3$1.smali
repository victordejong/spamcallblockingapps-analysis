.class Lcom/callapp/contacts/manager/popup/DialogPopup$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/popup/DialogPopup$3;->a(Landroid/app/Activity;Landroid/app/Dialog;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/popup/DialogPopup$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/popup/DialogPopup$3;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$3$1;->a:Lcom/callapp/contacts/manager/popup/DialogPopup$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 120
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 121
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$3$1;->a:Lcom/callapp/contacts/manager/popup/DialogPopup$3;

    iget-object p1, p1, Lcom/callapp/contacts/manager/popup/DialogPopup$3;->b:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->onDialogBackPressed()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
