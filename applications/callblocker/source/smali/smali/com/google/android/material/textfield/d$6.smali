.class Lcom/google/android/material/textfield/d$6;
.super Ljava/lang/Object;
.source "DropdownMenuEndIconDelegate.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/d;->d(Landroid/widget/AutoCompleteTextView;)V
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

    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/android/material/textfield/d$6;->a:Lcom/google/android/material/textfield/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 359
    iget-object v0, p0, Lcom/google/android/material/textfield/d$6;->a:Lcom/google/android/material/textfield/d;

    iget-object v0, v0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconActivated(Z)V

    .line 360
    if-nez p2, :cond_0

    .line 361
    iget-object v0, p0, Lcom/google/android/material/textfield/d$6;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v0, v1}, Lcom/google/android/material/textfield/d;->a(Lcom/google/android/material/textfield/d;Z)V

    .line 362
    iget-object v0, p0, Lcom/google/android/material/textfield/d$6;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v0, v1}, Lcom/google/android/material/textfield/d;->b(Lcom/google/android/material/textfield/d;Z)Z

    .line 364
    :cond_0
    return-void
.end method
