.class final Lcom/google/android/material/textfield/d$1;
.super Lcom/google/android/material/internal/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/textfield/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/d;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/google/android/material/textfield/d$1;->a:Lcom/google/android/material/textfield/d;

    invoke-direct {p0}, Lcom/google/android/material/internal/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/google/android/material/textfield/d$1;->a:Lcom/google/android/material/textfield/d;

    iget-object p1, p1, Lcom/google/android/material/textfield/d;->c:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2537
    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 79
    invoke-static {p1}, Lcom/google/android/material/textfield/d;->a(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/google/android/material/textfield/d$1;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v0}, Lcom/google/android/material/textfield/d;->a(Lcom/google/android/material/textfield/d;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {p1}, Lcom/google/android/material/textfield/d;->b(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/d$1;->a:Lcom/google/android/material/textfield/d;

    iget-object v0, v0, Lcom/google/android/material/textfield/d;->e:Lcom/google/android/material/internal/CheckableImageButton;

    .line 83
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 86
    :cond_0
    new-instance v0, Lcom/google/android/material/textfield/d$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/textfield/d$1$1;-><init>(Lcom/google/android/material/textfield/d$1;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
