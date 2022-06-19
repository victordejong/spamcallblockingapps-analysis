.class final Lcom/google/android/material/textfield/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/textfield/a;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/a;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/google/android/material/textfield/a$3;->a:Lcom/google/android/material/textfield/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 3

    .line 2537
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 75
    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/textfield/a;->a(Landroid/text/Editable;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 77
    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    .line 78
    iget-object p1, p0, Lcom/google/android/material/textfield/a$3;->a:Lcom/google/android/material/textfield/a;

    .line 3040
    iget-object p1, p1, Lcom/google/android/material/textfield/a;->b:Landroid/view/View$OnFocusChangeListener;

    .line 78
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 79
    iget-object p1, p0, Lcom/google/android/material/textfield/a$3;->a:Lcom/google/android/material/textfield/a;

    .line 4040
    iget-object p1, p1, Lcom/google/android/material/textfield/a;->a:Landroid/text/TextWatcher;

    .line 79
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    iget-object p1, p0, Lcom/google/android/material/textfield/a$3;->a:Lcom/google/android/material/textfield/a;

    .line 5040
    iget-object p1, p1, Lcom/google/android/material/textfield/a;->a:Landroid/text/TextWatcher;

    .line 80
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
