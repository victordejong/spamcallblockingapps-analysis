.class Lcom/google/android/material/textfield/h$2;
.super Ljava/lang/Object;
.source "PasswordToggleEndIconDelegate.java"

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/textfield/h;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/h;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/material/textfield/h$2;->a:Lcom/google/android/material/textfield/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 56
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 57
    iget-object v2, p0, Lcom/google/android/material/textfield/h$2;->a:Lcom/google/android/material/textfield/h;

    iget-object v2, v2, Lcom/google/android/material/textfield/h;->c:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v3, p0, Lcom/google/android/material/textfield/h$2;->a:Lcom/google/android/material/textfield/h;

    invoke-static {v3}, Lcom/google/android/material/textfield/h;->a(Lcom/google/android/material/textfield/h;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 59
    iget-object v0, p0, Lcom/google/android/material/textfield/h$2;->a:Lcom/google/android/material/textfield/h;

    invoke-static {v0}, Lcom/google/android/material/textfield/h;->b(Lcom/google/android/material/textfield/h;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 60
    iget-object v0, p0, Lcom/google/android/material/textfield/h$2;->a:Lcom/google/android/material/textfield/h;

    invoke-static {v0}, Lcom/google/android/material/textfield/h;->b(Lcom/google/android/material/textfield/h;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 61
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
