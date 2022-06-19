.class public Lcom/google/android/material/textfield/TextInputLayout$a;
.super Landroidx/core/h/a;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .prologue
    .line 3296
    invoke-direct {p0}, Landroidx/core/h/a;-><init>()V

    .line 3297
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3298
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/h/a/c;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3303
    invoke-super {p0, p1, p2}, Landroidx/core/h/a;->a(Landroid/view/View;Landroidx/core/h/a/c;)V

    .line 3304
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 3305
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 3306
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout$a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v9

    .line 3307
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout$a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v5

    .line 3308
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout$a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterOverflowDescription()Ljava/lang/CharSequence;

    move-result-object v6

    .line 3309
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    .line 3310
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v2

    .line 3311
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    move v8, v2

    .line 3312
    :goto_3
    if-nez v8, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_0
    move v7, v2

    .line 3314
    :goto_4
    if-eqz v1, :cond_a

    .line 3315
    invoke-virtual {p2, v0}, Landroidx/core/h/a/c;->c(Ljava/lang/CharSequence;)V

    .line 3320
    :cond_1
    :goto_5
    if-eqz v4, :cond_3

    .line 3321
    invoke-virtual {p2, v9}, Landroidx/core/h/a/c;->f(Ljava/lang/CharSequence;)V

    .line 3322
    if-nez v1, :cond_2

    if-eqz v4, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {p2, v3}, Landroidx/core/h/a/c;->m(Z)V

    .line 3325
    :cond_3
    if-eqz v7, :cond_4

    .line 3326
    if-eqz v8, :cond_b

    move-object v0, v5

    :goto_6
    invoke-virtual {p2, v0}, Landroidx/core/h/a/c;->g(Ljava/lang/CharSequence;)V

    .line 3327
    invoke-virtual {p2, v2}, Landroidx/core/h/a/c;->j(Z)V

    .line 3329
    :cond_4
    return-void

    .line 3305
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    move v1, v3

    .line 3309
    goto :goto_1

    :cond_7
    move v4, v3

    .line 3310
    goto :goto_2

    :cond_8
    move v8, v3

    .line 3311
    goto :goto_3

    :cond_9
    move v7, v3

    .line 3312
    goto :goto_4

    .line 3316
    :cond_a
    if-eqz v4, :cond_1

    .line 3317
    invoke-virtual {p2, v9}, Landroidx/core/h/a/c;->c(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_b
    move-object v0, v6

    .line 3326
    goto :goto_6
.end method
