.class public Lcom/google/android/material/textfield/TextInputLayout$a;
.super Landroidx/core/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final b:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 4243
    invoke-direct {p0}, Landroidx/core/view/a;-><init>()V

    .line 4244
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$a;->b:Lcom/google/android/material/textfield/TextInputLayout;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/view/a/c;)V
    .locals 13

    .line 4250
    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->a(Landroid/view/View;Landroidx/core/view/a/c;)V

    .line 4251
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$a;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4537
    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4252
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 4253
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout$a;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->a()Ljava/lang/CharSequence;

    move-result-object v2

    .line 4254
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout$a;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->d()Ljava/lang/CharSequence;

    move-result-object v3

    .line 4255
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout$a;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->b()Ljava/lang/CharSequence;

    move-result-object v4

    .line 4256
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout$a;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 5480
    iget v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->c:I

    .line 4257
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout$a;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 5489
    iget-boolean v7, v6, Lcom/google/android/material/textfield/TextInputLayout;->b:Z

    if-eqz v7, :cond_1

    iget-boolean v7, v6, Lcom/google/android/material/textfield/TextInputLayout;->d:Z

    if-eqz v7, :cond_1

    iget-object v7, v6, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/TextView;

    if-eqz v7, :cond_1

    .line 5490
    iget-object v0, v6, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4258
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    .line 4259
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v8, v7

    .line 4260
    iget-object v9, p0, Lcom/google/android/material/textfield/TextInputLayout$a;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 6211
    iget-boolean v9, v9, Lcom/google/android/material/textfield/TextInputLayout;->l:Z

    xor-int/2addr v9, v7

    .line 4261
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    xor-int/2addr v10, v7

    if-nez v10, :cond_3

    .line 4262
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v11, 0x1

    :goto_2
    if-eqz v8, :cond_4

    .line 4264
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    const-string v2, ""

    :goto_3
    const-string v8, ", "

    if-eqz v6, :cond_5

    .line 4267
    invoke-virtual {p2, v1}, Landroidx/core/view/a/c;->c(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 4268
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 4269
    invoke-virtual {p2, v2}, Landroidx/core/view/a/c;->c(Ljava/lang/CharSequence;)V

    if-eqz v9, :cond_7

    if-eqz v4, :cond_7

    .line 4271
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroidx/core/view/a/c;->c(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_7

    .line 4274
    invoke-virtual {p2, v4}, Landroidx/core/view/a/c;->c(Ljava/lang/CharSequence;)V

    .line 4277
    :cond_7
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 4278
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-lt v4, v9, :cond_8

    .line 4279
    invoke-virtual {p2, v2}, Landroidx/core/view/a/c;->f(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_8
    if-eqz v6, :cond_9

    .line 4283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4284
    :cond_9
    invoke-virtual {p2, v2}, Landroidx/core/view/a/c;->c(Ljava/lang/CharSequence;)V

    :goto_5
    xor-int/lit8 v2, v6, 0x1

    .line 6794
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v9, :cond_a

    .line 6795
    iget-object v4, p2, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setShowingHintText(Z)V

    goto :goto_6

    :cond_a
    const/4 v4, 0x4

    .line 6797
    invoke-virtual {p2, v4, v2}, Landroidx/core/view/a/c;->a(IZ)V

    :cond_b
    :goto_6
    if-eqz v1, :cond_c

    .line 4291
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v5, :cond_c

    goto :goto_7

    :cond_c
    const/4 v5, -0x1

    .line 7362
    :goto_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_d

    .line 7363
    iget-object v1, p2, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    :cond_d
    if-eqz v11, :cond_f

    if-eqz v10, :cond_e

    goto :goto_8

    :cond_e
    move-object v3, v0

    .line 8104
    :goto_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_f

    .line 8105
    iget-object p2, p2, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    .line 4297
    :cond_f
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p2, v0, :cond_10

    if-eqz p1, :cond_10

    .line 4298
    sget p2, Lcom/google/android/material/a$f;->textinput_helper_text:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setLabelFor(I)V

    :cond_10
    return-void
.end method
