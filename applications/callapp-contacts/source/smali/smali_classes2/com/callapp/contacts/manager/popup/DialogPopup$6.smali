.class Lcom/callapp/contacts/manager/popup/DialogPopup$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/popup/DialogPopup;->getShowListener()Landroid/content/DialogInterface$OnShowListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;

.field final synthetic b:Lcom/callapp/contacts/manager/popup/DialogPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/popup/DialogPopup;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$6;->b:Lcom/callapp/contacts/manager/popup/DialogPopup;

    iput-object p2, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$6;->a:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$6;->a:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;->onShow(Landroid/content/DialogInterface;)V

    return-void
.end method
