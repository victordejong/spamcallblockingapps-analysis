.class Lcom/google/android/material/textfield/d$1$1;
.super Ljava/lang/Object;
.source "DropdownMenuEndIconDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/d$1;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/AutoCompleteTextView;

.field final synthetic b:Lcom/google/android/material/textfield/d$1;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/d$1;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/material/textfield/d$1$1;->b:Lcom/google/android/material/textfield/d$1;

    iput-object p2, p0, Lcom/google/android/material/textfield/d$1$1;->a:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/material/textfield/d$1$1;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/google/android/material/textfield/d$1$1;->b:Lcom/google/android/material/textfield/d$1;

    iget-object v1, v1, Lcom/google/android/material/textfield/d$1;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/d;->a(Lcom/google/android/material/textfield/d;Z)V

    .line 88
    iget-object v1, p0, Lcom/google/android/material/textfield/d$1$1;->b:Lcom/google/android/material/textfield/d$1;

    iget-object v1, v1, Lcom/google/android/material/textfield/d$1;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/d;->b(Lcom/google/android/material/textfield/d;Z)Z

    .line 89
    return-void
.end method
