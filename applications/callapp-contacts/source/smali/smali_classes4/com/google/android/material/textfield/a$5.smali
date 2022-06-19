.class final Lcom/google/android/material/textfield/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/a;->a()V
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

    .line 118
    iput-object p1, p0, Lcom/google/android/material/textfield/a$5;->a:Lcom/google/android/material/textfield/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/google/android/material/textfield/a$5;->a:Lcom/google/android/material/textfield/a;

    iget-object p1, p1, Lcom/google/android/material/textfield/a;->c:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2537
    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 121
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 123
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/a$5;->a:Lcom/google/android/material/textfield/a;

    iget-object p1, p1, Lcom/google/android/material/textfield/a;->c:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    return-void
.end method
