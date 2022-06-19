.class final Lcom/google/android/material/textfield/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 47
    iput-object p1, p0, Lcom/google/android/material/textfield/a$1;->a:Lcom/google/android/material/textfield/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/android/material/textfield/a$1;->a:Lcom/google/android/material/textfield/a;

    iget-object v0, v0, Lcom/google/android/material/textfield/a;->c:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3385
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/a$1;->a:Lcom/google/android/material/textfield/a;

    invoke-static {p1}, Lcom/google/android/material/textfield/a;->a(Landroid/text/Editable;)Z

    move-result p1

    .line 4040
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/a;->b(Z)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
