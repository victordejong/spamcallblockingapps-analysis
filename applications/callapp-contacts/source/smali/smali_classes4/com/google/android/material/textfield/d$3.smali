.class final Lcom/google/android/material/textfield/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/d;
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

    .line 98
    iput-object p1, p0, Lcom/google/android/material/textfield/d$3;->a:Lcom/google/android/material/textfield/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/google/android/material/textfield/d$3;->a:Lcom/google/android/material/textfield/d;

    iget-object p1, p1, Lcom/google/android/material/textfield/d;->c:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconActivated(Z)V

    if-nez p2, :cond_0

    .line 103
    iget-object p1, p0, Lcom/google/android/material/textfield/d$3;->a:Lcom/google/android/material/textfield/d;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/material/textfield/d;->a(Lcom/google/android/material/textfield/d;Z)V

    .line 104
    iget-object p1, p0, Lcom/google/android/material/textfield/d$3;->a:Lcom/google/android/material/textfield/d;

    invoke-static {p1, p2}, Lcom/google/android/material/textfield/d;->b(Lcom/google/android/material/textfield/d;Z)Z

    :cond_0
    return-void
.end method
