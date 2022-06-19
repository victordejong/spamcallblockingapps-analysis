.class Lcom/callapp/contacts/popup/contact/DialogEditText$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/DialogEditText;->getNegativeListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;
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

    .line 85
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogEditText$3;->a:Lcom/callapp/contacts/popup/contact/DialogEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogEditText$3;->a:Lcom/callapp/contacts/popup/contact/DialogEditText;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogEditText;->dismiss()V

    return-void
.end method
