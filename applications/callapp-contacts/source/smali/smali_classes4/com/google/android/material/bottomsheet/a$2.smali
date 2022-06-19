.class final Lcom/google/android/material/bottomsheet/a$2;
.super Landroidx/core/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomsheet/a;->a(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/material/bottomsheet/a;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/a;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/a$2;->b:Lcom/google/android/material/bottomsheet/a;

    invoke-direct {p0}, Landroidx/core/view/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/a/c;)V
    .locals 0

    .line 232
    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->a(Landroid/view/View;Landroidx/core/view/a/c;)V

    .line 233
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/a$2;->b:Lcom/google/android/material/bottomsheet/a;

    iget-boolean p1, p1, Lcom/google/android/material/bottomsheet/a;->b:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x100000

    .line 234
    invoke-virtual {p2, p1}, Landroidx/core/view/a/c;->a(I)V

    const/4 p1, 0x1

    .line 235
    invoke-virtual {p2, p1}, Landroidx/core/view/a/c;->k(Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 237
    invoke-virtual {p2, p1}, Landroidx/core/view/a/c;->k(Z)V

    return-void
.end method

.method public final a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a$2;->b:Lcom/google/android/material/bottomsheet/a;

    iget-boolean v0, v0, Lcom/google/android/material/bottomsheet/a;->b:Z

    if-eqz v0, :cond_0

    .line 244
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/a$2;->b:Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/a;->cancel()V

    const/4 p1, 0x1

    return p1

    .line 247
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
