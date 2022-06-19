.class Lcom/callapp/contacts/popup/ChooseImagePopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/ChooseImagePopup;->getPositiveListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/ChooseImagePopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/ChooseImagePopup;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/callapp/contacts/popup/ChooseImagePopup$1;->a:Lcom/callapp/contacts/popup/ChooseImagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/callapp/contacts/popup/ChooseImagePopup$1;->a:Lcom/callapp/contacts/popup/ChooseImagePopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/ChooseImagePopup;->dismiss()V

    return-void
.end method
