.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$12;
.super Landroidx/core/h/a;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$12;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Landroidx/core/h/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/h/a/c;)V
    .locals 1

    .prologue
    .line 402
    invoke-super {p0, p1, p2}, Landroidx/core/h/a;->a(Landroid/view/View;Landroidx/core/h/a/c;)V

    .line 403
    const/high16 v0, 0x100000

    invoke-virtual {p2, v0}, Landroidx/core/h/a/c;->a(I)V

    .line 404
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/core/h/a/c;->k(Z)V

    .line 405
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 409
    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$12;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->e()V

    .line 411
    const/4 v0, 0x1

    .line 413
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/h/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method
