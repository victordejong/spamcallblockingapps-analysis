.class Lcom/google/android/material/bottomsheet/a$2;
.super Landroidx/core/h/a;
.source "BottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomsheet/a;->a(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomsheet/a;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/a;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/a$2;->a:Lcom/google/android/material/bottomsheet/a;

    invoke-direct {p0}, Landroidx/core/h/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/h/a/c;)V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0, p1, p2}, Landroidx/core/h/a;->a(Landroid/view/View;Landroidx/core/h/a/c;)V

    .line 232
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a$2;->a:Lcom/google/android/material/bottomsheet/a;

    iget-boolean v0, v0, Lcom/google/android/material/bottomsheet/a;->b:Z

    if-eqz v0, :cond_0

    .line 233
    const/high16 v0, 0x100000

    invoke-virtual {p2, v0}, Landroidx/core/h/a/c;->a(I)V

    .line 234
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/core/h/a/c;->k(Z)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/core/h/a/c;->k(Z)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 242
    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a$2;->a:Lcom/google/android/material/bottomsheet/a;

    iget-boolean v0, v0, Lcom/google/android/material/bottomsheet/a;->b:Z

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a$2;->a:Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->cancel()V

    .line 244
    const/4 v0, 0x1

    .line 246
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/h/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method
