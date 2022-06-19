.class Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->getPositiveOnClickListener()Landroid/view/View$OnClickListener;
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

    .line 92
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$1;->a:Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 95
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$1;->a:Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->a(Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;)Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$1;->a:Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;

    iget-object v1, v1, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$1;->a:Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;

    iget-object v1, v1, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;

    .line 99
    iget-boolean v1, v1, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;->c:Z

    if-eqz v1, :cond_0

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 104
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v0, 0x7f1202a3

    .line 105
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1132
    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$1;->a:Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->a(Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;)Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;->a(Ljava/util/ArrayList;)V

    .line 108
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$1;->a:Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->dismiss()V

    return-void

    .line 111
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$1;->a:Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;->dismiss()V

    return-void
.end method
