.class Lcom/google/android/material/textfield/d$2;
.super Lcom/google/android/material/textfield/TextInputLayout$a;
.source "DropdownMenuEndIconDelegate.java"


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
.method constructor <init>(Lcom/google/android/material/textfield/d;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/material/textfield/d$2;->a:Lcom/google/android/material/textfield/d;

    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout$a;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/h/a/c;)V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout$a;->a(Landroid/view/View;Landroidx/core/h/a/c;)V

    .line 100
    const-class v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/h/a/c;->b(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p2}, Landroidx/core/h/a/c;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/core/h/a/c;->f(Ljava/lang/CharSequence;)V

    .line 106
    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout$a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/material/textfield/d$2;->a:Lcom/google/android/material/textfield/d;

    iget-object v1, p0, Lcom/google/android/material/textfield/d$2;->a:Lcom/google/android/material/textfield/d;

    iget-object v1, v1, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 112
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/textfield/d;->a(Lcom/google/android/material/textfield/d;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 114
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/material/textfield/d$2;->a:Lcom/google/android/material/textfield/d;

    .line 115
    invoke-static {v1}, Lcom/google/android/material/textfield/d;->a(Lcom/google/android/material/textfield/d;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/google/android/material/textfield/d$2;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/d;->a(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V

    .line 118
    :cond_0
    return-void
.end method
