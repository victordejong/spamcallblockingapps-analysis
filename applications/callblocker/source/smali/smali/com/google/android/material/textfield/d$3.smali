.class Lcom/google/android/material/textfield/d$3;
.super Ljava/lang/Object;
.source "DropdownMenuEndIconDelegate.java"

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$b;


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

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/material/textfield/d$3;->a:Lcom/google/android/material/textfield/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/material/textfield/d$3;->a:Lcom/google/android/material/textfield/d;

    .line 125
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/textfield/d;->a(Lcom/google/android/material/textfield/d;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/google/android/material/textfield/d$3;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/d;->b(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V

    .line 128
    iget-object v1, p0, Lcom/google/android/material/textfield/d$3;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/d;->c(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V

    .line 129
    iget-object v1, p0, Lcom/google/android/material/textfield/d$3;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/d;->d(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V

    .line 130
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 131
    iget-object v1, p0, Lcom/google/android/material/textfield/d$3;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v1}, Lcom/google/android/material/textfield/d;->b(Lcom/google/android/material/textfield/d;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    iget-object v1, p0, Lcom/google/android/material/textfield/d$3;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v1}, Lcom/google/android/material/textfield/d;->b(Lcom/google/android/material/textfield/d;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/material/textfield/d$3;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v0}, Lcom/google/android/material/textfield/d;->c(Lcom/google/android/material/textfield/d;)Lcom/google/android/material/textfield/TextInputLayout$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$a;)V

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 137
    return-void
.end method
