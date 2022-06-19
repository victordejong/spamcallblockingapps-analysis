.class final Lcom/google/android/material/textfield/d$5;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 141
    iput-object p1, p0, Lcom/google/android/material/textfield/d$5;->a:Lcom/google/android/material/textfield/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 3

    .line 2537
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 145
    invoke-static {v0}, Lcom/google/android/material/textfield/d;->a(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/google/android/material/textfield/d$5;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/d;->b(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V

    .line 148
    iget-object v1, p0, Lcom/google/android/material/textfield/d$5;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/d;->c(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V

    .line 149
    iget-object v1, p0, Lcom/google/android/material/textfield/d$5;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/d;->d(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V

    const/4 v1, 0x0

    .line 150
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 151
    iget-object v1, p0, Lcom/google/android/material/textfield/d$5;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v1}, Lcom/google/android/material/textfield/d;->b(Lcom/google/android/material/textfield/d;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 152
    iget-object v1, p0, Lcom/google/android/material/textfield/d$5;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v1}, Lcom/google/android/material/textfield/d;->b(Lcom/google/android/material/textfield/d;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v1, 0x1

    .line 153
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    const/4 v2, 0x0

    .line 154
    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    invoke-static {v0}, Lcom/google/android/material/textfield/d;->b(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/android/material/textfield/d$5;->a:Lcom/google/android/material/textfield/d;

    iget-object v0, v0, Lcom/google/android/material/textfield/d;->e:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroidx/core/view/v;->c(Landroid/view/View;I)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/d$5;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v0}, Lcom/google/android/material/textfield/d;->c(Lcom/google/android/material/textfield/d;)Lcom/google/android/material/textfield/TextInputLayout$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$a;)V

    .line 160
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void
.end method
