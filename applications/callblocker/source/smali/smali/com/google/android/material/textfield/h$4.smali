.class Lcom/google/android/material/textfield/h$4;
.super Ljava/lang/Object;
.source "PasswordToggleEndIconDelegate.java"

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

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/material/textfield/h$4;->a:Lcom/google/android/material/textfield/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/material/textfield/h$4;->a:Lcom/google/android/material/textfield/h;

    iget-object v0, v0, Lcom/google/android/material/textfield/h;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 91
    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 96
    iget-object v2, p0, Lcom/google/android/material/textfield/h$4;->a:Lcom/google/android/material/textfield/h;

    invoke-static {v2}, Lcom/google/android/material/textfield/h;->a(Lcom/google/android/material/textfield/h;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 102
    :goto_1
    if-ltz v1, :cond_0

    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 99
    :cond_2
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_1
.end method
