.class Lcom/callapp/contacts/widget/SimpleSearchBarFragment$1;
.super Lcom/callapp/contacts/widget/SimpleSearchBarFragment$IgnorableTextWatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/SimpleSearchBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$1;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$IgnorableTextWatcher;-><init>(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$1;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->a(Z)V

    .line 131
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$1;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->a(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$1;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->a(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    return-void

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$1;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->b(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 134
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$1;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->a(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$1;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-static {v1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->b(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 145
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1122
    iget-object p4, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$IgnorableTextWatcher;->b:Ljava/util/HashSet;

    invoke-virtual {p4, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 146
    iget-object p3, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$1;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-static {p3}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->c(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 147
    iget-object p3, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$1;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-static {p3}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->c(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;->a(Ljava/lang/CharSequence;I)V

    :cond_0
    return-void
.end method
