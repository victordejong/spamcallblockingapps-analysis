.class Lcom/google/android/material/textfield/TextInputLayout$1;
.super Ljava/lang/Object;
.source "TextInputLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/TextInputLayout;->setEditText(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$1;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 1073
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout$1;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$1;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/textfield/TextInputLayout;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->a(Z)V

    .line 1074
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$1;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-boolean v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->b:Z

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$1;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(I)V

    .line 1077
    :cond_0
    return-void

    .line 1073
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 1080
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 1083
    return-void
.end method
