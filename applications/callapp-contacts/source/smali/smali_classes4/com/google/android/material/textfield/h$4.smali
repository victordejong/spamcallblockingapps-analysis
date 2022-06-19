.class final Lcom/google/android/material/textfield/h$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/h;->a()V
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

    .line 91
    iput-object p1, p0, Lcom/google/android/material/textfield/h$4;->a:Lcom/google/android/material/textfield/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 94
    iget-object p1, p0, Lcom/google/android/material/textfield/h$4;->a:Lcom/google/android/material/textfield/h;

    iget-object p1, p1, Lcom/google/android/material/textfield/h;->c:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2537
    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/google/android/material/textfield/h$4;->a:Lcom/google/android/material/textfield/h;

    invoke-static {v1}, Lcom/google/android/material/textfield/h;->a(Lcom/google/android/material/textfield/h;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    if-ltz v0, :cond_2

    .line 107
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 110
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/h$4;->a:Lcom/google/android/material/textfield/h;

    iget-object p1, p1, Lcom/google/android/material/textfield/h;->c:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    return-void
.end method
