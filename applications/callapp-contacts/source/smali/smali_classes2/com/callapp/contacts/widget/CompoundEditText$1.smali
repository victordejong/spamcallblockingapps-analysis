.class Lcom/callapp/contacts/widget/CompoundEditText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/CompoundEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/CompoundEditText;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/CompoundEditText;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/callapp/contacts/widget/CompoundEditText$1;->a:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/callapp/contacts/widget/CompoundEditText$1;->a:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-static {v0}, Lcom/callapp/contacts/widget/CompoundEditText;->a(Lcom/callapp/contacts/widget/CompoundEditText;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/widget/CompoundEditText$1;->a:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-static {v0}, Lcom/callapp/contacts/widget/CompoundEditText;->a(Lcom/callapp/contacts/widget/CompoundEditText;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/callapp/contacts/widget/CompoundEditText$1;->a:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-static {v0}, Lcom/callapp/contacts/widget/CompoundEditText;->a(Lcom/callapp/contacts/widget/CompoundEditText;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/callapp/contacts/widget/CompoundEditText$1;->a:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-static {v0}, Lcom/callapp/contacts/widget/CompoundEditText;->a(Lcom/callapp/contacts/widget/CompoundEditText;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/callapp/contacts/widget/CompoundEditText$1;->a:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-static {v0}, Lcom/callapp/contacts/widget/CompoundEditText;->b(Lcom/callapp/contacts/widget/CompoundEditText;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/callapp/contacts/widget/CompoundEditText$1;->a:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-static {v0}, Lcom/callapp/contacts/widget/CompoundEditText;->b(Lcom/callapp/contacts/widget/CompoundEditText;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/CompoundEditText$1;->a:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-static {v0}, Lcom/callapp/contacts/widget/CompoundEditText;->c(Lcom/callapp/contacts/widget/CompoundEditText;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/callapp/contacts/widget/CompoundEditText$1;->a:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-static {v0}, Lcom/callapp/contacts/widget/CompoundEditText;->d(Lcom/callapp/contacts/widget/CompoundEditText;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/widget/CompoundEditText$1;->a:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-static {v0}, Lcom/callapp/contacts/widget/CompoundEditText;->d(Lcom/callapp/contacts/widget/CompoundEditText;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/CompoundEditText$1;->a:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-static {v0}, Lcom/callapp/contacts/widget/CompoundEditText;->a(Lcom/callapp/contacts/widget/CompoundEditText;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/callapp/contacts/widget/CompoundEditText$1;->a:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-static {v0}, Lcom/callapp/contacts/widget/CompoundEditText;->a(Lcom/callapp/contacts/widget/CompoundEditText;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    :cond_3
    return-void
.end method
