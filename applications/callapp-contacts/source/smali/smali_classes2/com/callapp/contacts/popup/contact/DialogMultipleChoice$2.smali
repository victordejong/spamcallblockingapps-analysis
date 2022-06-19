.class Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->getNegativeOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$2;->a:Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 125
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$2;->a:Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->a(Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;)Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$2;->a:Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->a(Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;)Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;->a()V

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$2;->a:Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->dismiss()V

    return-void
.end method
