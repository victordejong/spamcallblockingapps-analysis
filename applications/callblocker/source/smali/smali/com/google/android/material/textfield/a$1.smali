.class Lcom/google/android/material/textfield/a$1;
.super Ljava/lang/Object;
.source "ClearTextEndIconDelegate.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/material/textfield/a$1;->a:Lcom/google/android/material/textfield/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 53
    invoke-static {p1}, Lcom/google/android/material/textfield/a;->a(Landroid/text/Editable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/google/android/material/textfield/a$1;->a:Lcom/google/android/material/textfield/a;

    iget-object v0, v0, Lcom/google/android/material/textfield/a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/google/android/material/textfield/a$1;->a:Lcom/google/android/material/textfield/a;

    invoke-static {v0}, Lcom/google/android/material/textfield/a;->a(Lcom/google/android/material/textfield/a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 56
    iget-object v0, p0, Lcom/google/android/material/textfield/a$1;->a:Lcom/google/android/material/textfield/a;

    invoke-static {v0}, Lcom/google/android/material/textfield/a;->b(Lcom/google/android/material/textfield/a;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/a$1;->a:Lcom/google/android/material/textfield/a;

    invoke-static {v0}, Lcom/google/android/material/textfield/a;->b(Lcom/google/android/material/textfield/a;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 60
    iget-object v0, p0, Lcom/google/android/material/textfield/a$1;->a:Lcom/google/android/material/textfield/a;

    invoke-static {v0}, Lcom/google/android/material/textfield/a;->a(Lcom/google/android/material/textfield/a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method
