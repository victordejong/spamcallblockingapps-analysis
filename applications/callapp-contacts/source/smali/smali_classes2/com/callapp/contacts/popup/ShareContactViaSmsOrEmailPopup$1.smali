.class Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->getListener()Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$1;->a:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 70
    :goto_0
    iget-object v2, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$1;->a:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;

    invoke-static {v2}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->b(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$1;->a:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;

    invoke-static {v2}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->c(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;

    .line 72
    iget-boolean v2, v2, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;->c:Z

    if-eqz v2, :cond_0

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$1;->a:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->setChoicesIndexes(Ljava/util/ArrayList;)V

    .line 79
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$1;->a:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;

    invoke-static {v0}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->d(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;)[Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$1;->a:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;

    invoke-virtual {v1}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->a(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;Landroid/app/Activity;[Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f1202a3

    .line 84
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1132
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    :goto_1
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$1;->a:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->dismiss()V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$1;->a:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->setChoicesIndexes(Ljava/util/ArrayList;)V

    .line 61
    iget-object p1, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$1;->a:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;

    invoke-static {p1}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->a(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup$1;->a:Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->a(Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;Landroid/app/Activity;Ljava/util/List;)V

    :cond_0
    return-void
.end method
