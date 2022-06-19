.class Lcom/callapp/contacts/popup/contact/DialogEditText$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/DialogEditText;->getNeutralListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogEditText;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/DialogEditText;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogEditText$2;->a:Lcom/callapp/contacts/popup/contact/DialogEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 2

    .line 64
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogEditText$2;->a:Lcom/callapp/contacts/popup/contact/DialogEditText;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/DialogEditText;->a(Lcom/callapp/contacts/popup/contact/DialogEditText;)Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogEditText$2;->a:Lcom/callapp/contacts/popup/contact/DialogEditText;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->a(Lcom/callapp/contacts/manager/popup/DialogPopup;IZ)V

    return-void
.end method
